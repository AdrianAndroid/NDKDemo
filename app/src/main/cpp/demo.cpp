#include <string>
#include <iostream>
#include <android/log.H>
#include "student.h"
#include "log.h"

//// 定义函数
//int add(int a, int b){
//    return a+b; // 执行加法操作
//}

//int add(int a, int b, int c, int d,int e,short f,char h){
//    return a+b+c+d+e+f+h;
//}

//int hello(){
//    int a = 10;
//    int b = a;
//    printf("%d",b);

//    int num1 = 89;
//    int num2 = 100;
//    printf("%d",num1+num2);
//    printf("%d",num1-num2);
//    printf("%d",num1*num2);
//    printf("%d",num1/num2);
//    printf("%d",num1%num2);

//    int num1 = 50;
//    int num2 = 100;
//    int sum = add(num1,num2);
//    printf("sum: %d",sum);

//    int sum = add(1,2,3,4,5,6,'A');
//    printf("sum: %d",sum);

//    int num = 10;
//    if (num >= 15){
//        num = num + 5;
//    } else {
//        num = num - 5;
//    }
//    printf("num: %d",num);

//    int op = 1;
//    int num1 = 20;
//    int num2 = 30;
//    int sum = 0;
//    switch (op) {
//        case 1:
//            sum = num1 +num2;
//            break;
//        case 2:
//            sum = num1 - num2;
//            break;
//        case 3:
//            sum = num1 * num2;
//        case 4:
//            sum = num1 / num2;
//            break;
//    }
//    sum = sum && num1;
//    sum = sum || num2;
//    printf("sum: %d", sum);
//    return 0;
//}

//void Text(){
//    int i = 0;
//    int sum = 0;
//    while (i < 8){
//        i++;
//        sum = sum +i;
//    }
//    printf("sum: %d",sum);

//    int i = 0;
//    int sum = 0;
//    do{
//        i++;
//        sum = sum +i;
//    } while (i < 8);
//    printf("sum: %d",sum);

//    int i = 0;
//    int sum = 0;
//    for (i = 0; i < 8; ++i) {
//        sum = sum +i;
//    }
//    printf("sum: %d",sum);
//}

// 结构体
//struct Stud{
//    std::string name; // 姓名
//    int age; // 年龄
//    char16_t sex; //  性别
//};

//struct Stud{
//    char16_t name; // 姓名
//    int age; // 年龄
//    char16_t sex; //  性别
//};

// 共用体
//union unType{
//    char ch;
//    short sh;
//    int in;
//    long lo;
//};

//int main() {
//    int num1 = 24;
//    int num2 = 36;
//    int num3 = 40;
//    LOGV("num1: %d,num2: %d, num3: %d",num1,num2,num3);

//    Stud stud;
//    stud.name = "hello";
//    stud.age = 18;
//    stud.sex = 'A'; // A:表示男  B:表示女
//    LOGD("name: %s, age: %d, sex: %d",stud.name.c_str(),stud.age,stud.sex);

//    Stud stud;
//    stud.name = 'A';
//    stud.age = 18;
//    stud.sex = 'A'; // A:表示男  B:表示女
//    LOGD("name: %d, age: %d, sex: %d",stud.name,stud.age,stud.sex);

//    unType untype;
//    untype.ch = 'A';
//    LOGI("ch: %d",untype.ch); // 65
//    untype.in = 6655;
//    LOGI("ch: %d",untype.ch); // 6655
//    LOGI("in: %d",untype.in); // 6655


//    Student student;
//    student.setAge();
//    int age = student.getAge();
//    LOGW("age: %d", age);
//    student.age = 20 ;
//    LOGE("age: %d",student.age);
//    LOGE("sex: %s",student.sex);


//    student.setId();
//    student.setName();
//    std::cout << "编号:" << std::endl;
//    std::cout << student.getId() << std::endl;
//    std::cout << "姓名:" << std::endl;
//    std::cout << student.getName()<< std::endl;

//    std::cout << "===========================" << std::endl;

//    Student* pStudent = &student;
//    pStudent->setAge();
//    pStudent->setSex();
//    std::cout << "年龄:" << pStudent->getAge() <<std::endl;
//    std::cout << "性别:" << pStudent->getSex() <<std::endl;
//
//    std::cout << "===========================" << std::endl;
//
//    Student stu("0002","李四");
//    std::cout << "编号:" << stu.getId() <<std::endl;
//    std::cout << "姓名:" << stu.getName() << std::endl;
//    return 0;
//}

extern "C" void text01(){
    // 1.声明两个字符数组
    const char* str="qianyu"; // 定义char*变量
    int size=strlen(str); // 获取字符串长度
    char rstr[size]; // 定义char类型的数组
    LOGV("%d\n",size);
    int i; // 声明变量i
    for(i=0; i<size; i++){
        rstr[size-i-1]=str[i];
    }
    LOGV("反转后的字符串:%s\n",rstr);
}


// 定义全局变量num
int num = 54321;

int algorithm(int x, int y){
    int key = 0;
    x = x ^ y;
    y = x ^ y;
    x = x ^ y;
    int X = x ^ y;
    int Y = x & y;
    Y= Y << 1;
    int X0 = X ^ Y;
    int Y0 = X & Y;
    Y0 = Y0 << 1;
    if (Y0==0)
    {
        key = X0+4543;
    }
    return key;
}

extern "C" void text02(){
    int key = algorithm(2,3);
    int encrypt = num ^ key;
    int decrypt = encrypt ^ key;
    LOGD("加密前：%d\n",num);
    LOGD("加密后值：%d\n",encrypt);
    LOGD("解密后值：%d\n", decrypt);
}


void order(int* p,int n){ // n:表示数组的长度
    int i,j;
    int k;
    for(i=0; i<n-1; i++)
    {
        for(j=0;j<n-1-i;j++)
        {
            if(*(p+j)>*(p+j+1))
            {
                k=*(p+j);        //  k=a
                *(p+j)=*(p+j+1); //  a=b
                *(p+j+1)=k;      //  b=k
            }
        }
    }
    LOGI("排序后的数组为:");
    for(i=0;i<n;i++)
    {
        if(i%5==0)
            LOGI("\n");
        LOGI("%4d",*(p+i));
    }
    LOGI("\n");
}

extern "C" void text03(){
    int len = 10;
    int sum[] = {1,3,8,2,4,9,0,5,7,6};
    order(sum,len); // 实现冒泡排序
}


void uuid_checksum(char* random_str, int size) __attribute((__annotate__(("bcf"))));

void uuid_checksum(char* random_str, int size) {
    const char* table = "0123456789abcdef";
    random_str[0x17] = random_str[0x18];
    unsigned char r1 = 0xff;
    unsigned int r2 = 0;
    for (int i = 0; i < size - 2; ++i) {
        if (i == 8 || i == 0xd || i == 0xe || i == 0x12 || i == 0x18) {
            if (i == 8 || i == 0xd || i == 0x12 || i == 0x18) {
                random_str[i] = '-';
            } else if (i == 0xe) {
                random_str[i] = '4';
            }
            continue;
        }
        unsigned char r0 = (unsigned char)random_str[i];
        r1 = r1 ^ r0;
        r2 = r2 + r0;
    }
    r1 = r1 & 0xF;
    r2 = r2 - (r2 & ~0xF);
    random_str[0x23] = table[r1];
    random_str[0x22] = table[r2];
}

extern "C" void text04(){
    const char* lp_uuid="c7jkYUTAfPQ7LXIUF8GJAmybsnnEJ8OhtK6r";
    int length = strlen(lp_uuid);
    char* uuid = strdup(lp_uuid);
    uuid_checksum(uuid, length);
    __android_log_print(ANDROID_LOG_DEBUG, "yijincc","i：%s", uuid);
}
