#include <jni.h>
#include <string>
#include <android/log.h>
#include "demo.h"


// D:\Utils\sdk\ndk\21.1.6352462\toolchains\llvm\prebuilt\windows-x86_64\bin

// clang++ -target armv7a-linux-androideabi21 main.cpp -o main
// clang++ -target aarch64-linux-android21 main.cpp -o main
// clang++ -target i686-linux-android21 main.cpp -o main
// clang++ -target x86_64-linux-android21 main.cpp -o main

// 预编译阶段
// clang++ -target armv7a-linux-androideabi21 -E main.cpp -o main.i
// 汇编文件
// clang++ -target armv7a-linux-androideabi21 -S main.i -o main.S
// clang++ -target armv7a-linux-androideabi21 -c main.S -o main.o
// clang++ -target armv7a-linux-androideabi21 main.o -o main
// clang++ -target armv7a-linux-androideabi21 main.cpp -o main

//int my_thumb(int dummy)
//{
//    __asm__(
//    "mov r0,#1 \t\n"
//    "mov r1,#2 \t\n"
//    "add r0,r0,r1 \t\n"
//    "bx lr"
//    );
//}


extern "C" JNIEXPORT void JNICALL
Java_com_yijincc_ndkdemo_LoginActivity_login(JNIEnv *env, jobject obj, jstring account,jstring password) {
    // jclass (*GetObjectClass)(JNIEnv*, jobject);
    jclass clazz = env->GetObjectClass(obj);
    // jclass (*FindClass)(JNIEnv*, const char*);
    // jclass clazz=env->FindClass("com/yijincc/ndkdemo02/LoginActivity");

    // jfieldID (*GetFieldID)(JNIEnv*, jclass, const char*, const char*);
    jfieldID fieldId=env->GetFieldID(clazz, "account", "Ljava/lang/String;");

    // jobject (*GetObjectField)(JNIEnv*, jobject, jfieldID);
    jstring jAccount = (jstring)(env->GetObjectField(obj, fieldId));
    const char* cAccount = env->GetStringUTFChars(jAccount,0);
    __android_log_print(ANDROID_LOG_DEBUG,"yijincc","account: %s",cAccount);

    const char* strAccount = "迁羽";
    jstring j_strAccount = env->NewStringUTF(strAccount);
    // void (*SetObjectField)(JNIEnv*, jobject, jfieldID, jobject);
    env->SetObjectField(obj, fieldId, j_strAccount);
    jAccount = (jstring)(env->GetObjectField(obj, fieldId));

    // jfieldID (*GetStaticFieldID)(JNIEnv*, jclass, const char*, const char*);
    jfieldID s_fieldID = env->GetStaticFieldID(clazz, "password", "Ljava/lang/String;");

    // jobject (*GetStaticObjectField)(JNIEnv*, jclass, jfieldID);
    jstring jPassword = (jstring)(env->GetStaticObjectField(clazz,s_fieldID));
    const char* cPassword = env->GetStringUTFChars(jPassword,0);
    __android_log_print(ANDROID_LOG_DEBUG,"yijincc","password: %s",cPassword);

    jstring j_strPassword = env->NewStringUTF("123456");
    //void (*SetStaticObjectField)(JNIEnv*, jclass, jfieldID, jobject);
    env->SetStaticObjectField(clazz, s_fieldID, j_strPassword);
    jPassword = (jstring)(env->GetStaticObjectField(clazz,s_fieldID));

    // jclass (*FindClass)(JNIEnv*, const char*);
    jclass context_clazz = env->FindClass("android/content/ContextWrapper");
    // jmethodID (*GetMethodID)(JNIEnv*, jclass, const char*, const char*);
    jmethodID context_methodId = env->GetMethodID(context_clazz,"getApplicationContext", "()Landroid/content/Context;");
    // jobject (*AllocObject)(JNIEnv*, jclass);
    // jobject obj2 = env->AllocObject(context_clazz);
    // jobject (*CallObjectMethod)(JNIEnv*, jobject, jmethodID, ...);
    jobject context_obj = env->CallObjectMethod(obj, context_methodId);

    // jstring (*NewStringUTF)(JNIEnv*, const char*);
    // NewStringUTF函数作用将char*类型转换为jstring
    // strcmp函数用来比较字符串是否相等
    char* info="登录失败";

    // const char* (*GetStringUTFChars)(JNIEnv*, jstring, jboolean*);
    // GetStringUTFChars函数作用就是将jstring类型转换为char*类型
    const char* c_str_account = env->GetStringUTFChars(account, 0);
    const char* c_str_password = env->GetStringUTFChars(password, 0);
    if (strcmp(c_str_account, env->GetStringUTFChars(jAccount, 0)) == 0){
        if (strcmp(c_str_password, env->GetStringUTFChars(jPassword, 0)) == 0){
            // jclass (*FindClass)(JNIEnv*, const char*);
            jclass intent_clazz = env->FindClass("android/content/Intent");

            // jmethodID (*GetMethodID)(JNIEnv*, jclass, const char*, const char*);
            jmethodID intent_init_methodID = env->GetMethodID(intent_clazz, "<init>","(Landroid/content/Context;Ljava/lang/Class;)V");

            // jclass (*FindClass)(JNIEnv*, const char*);
            jclass main_clazz = env->FindClass("com/yijincc/ndkdemo/MainActivity");

            // jobject (*NewObject)(JNIEnv*, jclass, jmethodID, ...);
            jobject intent_obj = env->NewObject(intent_clazz, intent_init_methodID, context_obj, main_clazz);
            // 获取非静态方法ID
            // jmethodID (*GetMethodID)(JNIEnv*, jclass, const char*, const char*);
            jmethodID methodId = env->GetMethodID(clazz, "startActivity", "(Landroid/content/Intent;)V");
            // 反射调用java层方法
            // void (*CallVoidMethod)(JNIEnv*, jobject, jmethodID, ...);
            env->CallVoidMethod(obj, methodId, intent_obj);
            info="登录成功";
        } else{
            info="密码错误请重新输入!";
        }
    } else{
        info="账号错误请重新输入!";
    }

    // jclass (*FindClass)(JNIEnv*, const char*);
    jclass toast_clazz = env->FindClass("android/widget/Toast");
    // jmethodID (*GetStaticMethodID)(JNIEnv*, jclass, const char*, const char*);
    jmethodID makeText_methodID = env->GetStaticMethodID(toast_clazz, "makeText","(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;");
    // jobject (*CallStaticObjectMethod)(JNIEnv*, jclass, jmethodID, ...);
    jstring jInfo = env->NewStringUTF(info);
    // jfieldID (*GetStaticFieldID)(JNIEnv*, jclass, const char*,const char*);
    jfieldID length_long_fieldID = env->GetStaticFieldID(toast_clazz, "LENGTH_LONG", "I");
    // jint (*GetStaticIntField)(JNIEnv*, jclass, jfieldID);
    jint length_long = env->GetStaticIntField(toast_clazz,length_long_fieldID);
    jobject makeText_obj = env->CallStaticObjectMethod(toast_clazz, makeText_methodID, context_obj, jInfo, length_long);
    jmethodID show_methodID = env->GetMethodID(toast_clazz, "show", "()V");
    env->CallVoidMethod(makeText_obj,show_methodID);
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_yijincc_ndkdemo_MainActivity_stringFromJNI(JNIEnv* env, jobject obj) {
    // 获取jclass
    jclass clazz = env->FindClass("com/yijincc/ndkdemo/MainActivity");
    // 获取字段ID
    jfieldID fieldId_name = env->GetFieldID(clazz,"name","Ljava/lang/String;");
    // 获取对应字段的值
    jstring jString = static_cast<jstring>(env->GetObjectField(obj, fieldId_name));
    // 将jstring类型转换为const char*类型
    const char * cString = env->GetStringUTFChars(jString,0);
    // 打印获取到的值
    __android_log_print(ANDROID_LOG_INFO,"yijincc","name: %s", cString);
    env->SetObjectField(obj,fieldId_name,env->NewStringUTF("hello world!"));
    jString = static_cast<jstring>(env->GetObjectField(obj, fieldId_name));
    cString = env->GetStringUTFChars(jString,0);
    __android_log_print(ANDROID_LOG_INFO,"yijincc","name: %s", cString);

    // 获取字段
    jfieldID fieldId_age = env->GetFieldID(clazz,"age","I");
    int age = env->GetIntField(obj,fieldId_age);
    __android_log_print(ANDROID_LOG_INFO,"yijincc","age: %d",age);
    env->SetIntField(obj,fieldId_age,99);
    age = env->GetIntField(obj,fieldId_age);
    __android_log_print(ANDROID_LOG_INFO,"yijincc","age: %d",age);

    jfieldID fieldId_sex = env->GetFieldID(clazz,"sex","C");
    char sex = env->GetCharField(obj,fieldId_sex);
    __android_log_print(ANDROID_LOG_INFO,"yijincc","sex: %c",sex);
    env->SetCharField(obj,fieldId_sex,'0');
    sex= env->GetCharField(obj,fieldId_sex);
    __android_log_print(ANDROID_LOG_INFO,"yijincc","sex: %c",sex);
    // 调用其他cpp文件里面的函数
    text01();
    text02();
    text03();
    text04();

    std::string hello = "Hello from C++";
    return env->NewStringUTF(hello.c_str());
}


// 动态注册
void callJava(JNIEnv* env, jobject obj){
    jclass clazz = env->FindClass("com/yijincc/ndkdemo/MainActivity");
    jmethodID methodId = env->GetMethodID(clazz,"rand","(CI)J");
    long rand = env->CallLongMethod(obj,methodId,'A',2022);
    __android_log_print(ANDROID_LOG_INFO,"yijincc","rand: %ld",rand);
}

void callJavaStatic(JNIEnv* env, jobject obj){
    jclass clazz = env->FindClass("com/yijincc/ndkdemo/MainActivity");
    jmethodID methodId = env->GetStaticMethodID(clazz,"isRel", "(SS)Z");
    jboolean isRel = env->CallStaticBooleanMethod(clazz, methodId, 12, 24);
    __android_log_print(ANDROID_LOG_INFO,"yijincc","isRel: %d", isRel);
}

jint add(JNIEnv* env, jclass clazz,jint num1,jint num2){
    return num1+num2;
}

jint sub(JNIEnv* env, jclass clazz,jint num1,jint num2){
    return num1-num2;
}

jfloat mul(JNIEnv* env, jclass clazz,jfloat num1,jfloat num2){
    return num1*num2;
}

jfloat _div(JNIEnv* env, jclass clazz,jfloat num1,jfloat num2){
    return num1/num2;
}

// typedef struct {
//    const char* name;      // java层native方法名称
//    const char* signature; // java层native方法签名信息
//    void*       fnPtr;     // C/C++函数
//} JNINativeMethod;
JNINativeMethod nativeMethods[] = {
        //java方法      方法签名          C++函数
        {"callJava","()V",(void*)callJava},
        {"callJavaStatic","()V",(void*)callJavaStatic},
        {"add","(II)I",(void*)add},
        {"sub","(II)I",(void*)sub},
        {"mul","(FF)F",(void*)mul},
        {"div","(FF)F",(void*)_div}
};

// 动态注册 在JNI_OnLoad函数中完成java native方法注册，使其与c/c++函数建立联系
JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved){
    // 定义指针变量env
    JNIEnv* env = nullptr;
    if(vm->GetEnv((void**)&env,JNI_VERSION_1_6) != JNI_OK){
        return JNI_ERR;
    }
    // 反射获取对应的类
    jclass clazz = env->FindClass("com/yijincc/ndkdemo/MainActivity");

    __android_log_print(ANDROID_LOG_INFO,"yijincc","%d",sizeof(nativeMethods));
    __android_log_print(ANDROID_LOG_INFO,"yijincc","%d",sizeof(nativeMethods[0]));

    // 注册native方法
    // jint (*RegisterNatives)(JNIEnv*, jclass, const JNINativeMethod*,jint);
    if(env->RegisterNatives(clazz,nativeMethods,sizeof(nativeMethods)/sizeof(nativeMethods[0])) != JNI_OK){
        return JNI_ERR;
    }
    return JNI_VERSION_1_6;
}
