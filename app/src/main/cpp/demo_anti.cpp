#include <string>
#include <cstdlib>
#include <unistd.h>
#include <dirent.h>
#include <pthread.h>
#include <android/log.h>
#include "log.h"

extern "C" void check_anti_01(){
    const char* rootPath = "/data/local/tmp";
    DIR* dir;
    dir = opendir(rootPath);
    int pid = getpid();
    LOGD("进程PID：%d",pid);
    if (dir!= NULL) {
        dirent *currentDir;
        while ((currentDir = readdir(dir)) != NULL) {
            //readdir()方法就像java中迭代器的next()方法一样
            //currentDir->d_name; //文件名，目录名
            //currentDir->d_type; //类型，是目录还是文件啥的
            LOGD("%s",currentDir->d_name);
            if(strncmp(currentDir->d_name,"android_server",14)==0 || strncmp(currentDir->d_name,"android_server64",16)==0
               || strncmp(currentDir->d_name,"gdbserver",9)==0 || strncmp(currentDir->d_name,"gdb",3)==0){
                LOGI("%s",currentDir->d_name);
                kill(pid,SIGKILL);
            }
        }
        closedir(dir); //用完要关掉，要不然会出错
    } else{
        LOGW("打开/data/local/tmp失败！");
    }
}


extern "C" void check_anti_02(){
    FILE* pfile=NULL;
    char buf[0x1000]={0};
    pfile=popen("ps","r");
    if(pfile == NULL){
        LOGE("popen打开命令失败！\n");
    }
    while (fgets(buf,sizeof(buf),pfile)){
        // 打印进程信息
        LOGI("PID：%s\n",buf);
        // 查找字符串
        if(strstr(buf,"android_server") || strstr(buf,"gdbserver") || strstr(buf,"gdb")){
            // 执行到这里判定为调试状态
            LOGI("debugging：%s\n",buf);
        }
    }
    pclose(pfile);
}



/**
 * IDA 调试端口检测
 * 原理：
 * 调试器远程调试时，会占用一些固定的端口号。23946
 *
 * 做法：
 * 读取/proc/net/tcp，查找IDA远程调试所用的23946端口，若发现说明进程正在被IDA调试。
 * （也可以运行netstat -apn结果中搜索23946端口）
 *
 * 更改IDA调式默认端口
 * root@generic:/data/local/tmp # ./as -p31928
 * IDA Android 32-bit remote debug server(ST) v1.19. Hex-Rays (c) 2004-2015
 * Listening on port #31928...
 * */
extern "C" void check_anti_03(){
    FILE* pfile=NULL;
    char buf[0x1000]={0};
    // 执行命令
    const char* strCatTcp= "cat /proc/net/tcp |grep :5D8A";
    // const char* strNetstat="netstat |grep :23946";
    pfile=popen(strCatTcp,"r");
    int pid=getpid();
    if(NULL==pfile){
        LOGW("打开命令失败!\n");
        return;
    }
    // 获取结果
    while(fgets(buf,sizeof(buf),pfile)){
        // 执行到这里，判定为调试状态
        LOGI("执行cat /proc/net/tcp |grep :5D8A的结果:\n");
        LOGW("%s",buf);
        int ret=kill(pid,SIGKILL);
    }
    pclose(pfile);
}


#define TRACERPID "TracerPid:"
#define TRACERPID_LEN (sizeof(TRACERPID) - 1)

bool check_debugger(pid_t pid){
    const int pathSize = 256;
    const int bufSize = 1024;
    char path[pathSize];
    char line[bufSize];

    snprintf(path, sizeof(path) - 1, "/proc/%d/status", pid);

    bool result = true;
    FILE *fp = fopen(path, "rt");
    if (fp != NULL){
        while (fgets(line, sizeof(line), fp)){
            if (strncmp(line, TRACERPID, TRACERPID_LEN) == 0){
                pid_t tracerPid = 0;
                sscanf(line, "%*s%d", &tracerPid);
                if (!tracerPid) result = false;
                LOGE("%s", line);
                break;
            }
        }
        fclose(fp);
    }
    return result;
}

void *anti_debugger_thread(void *data){
    pid_t pid = getpid();
    while (true){
        check_debugger(pid);
        sleep(1);
    }
}

void anti_debugger(){
    pthread_t tid;
    pthread_create(&tid, NULL, &anti_debugger_thread, NULL);
}

void loop(){
    while(true){
        sleep(60);
    }
}

extern "C" void check_anti_04(){
    anti_debugger();
    loop();
}
