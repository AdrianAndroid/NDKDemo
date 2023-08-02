#ifndef C___PROJECT_STUDENT_H
#define C___PROJECT_STUDENT_H

// 定义类关键字 class
// Student就是类名
// 花括号开始{ 花括号结尾} 后面跟分号;
// c/c++ 头文件 .h文件 引入外部文件里面函数或变量时
// .h分为两类 一类是系统提供的 通过该符号<>引入  另一类就是自己写的 通过该符号“”引入
class Student{
//private:
//    std::string id;
//    std::string name;
public:
    static int age;
    const char* sex = "hello";
public:
    /* 无参构造函数 */
    Student(){

    }

    /* 有参构造函数 */
//    Student(std::string id, std::string name){
//        this->id = id;
//        this->name = name;
//    }

    /* 析构函数 */
    ~Student(){

    }

//    void setId(){
//        this->id = "0001";
//    }
//
//    std::string getId(){
//        return this->id;
//    }
//
//    /* 虚函数 */
//    virtual void setName(){
//        this->name = "张三";
//    }
//
//    /* 虚函数 */
//    virtual std::string getName(){
//        return this->name;
//    }

    /* 虚函数 */
//    virtual void setAge(){
//        this->age = 24;
//    }

    /* 虚函数 */
//    virtual int getAge(){
//        return this->age;
//    }

//    void setSex();
//    const char* getSex();
};

#endif //C___PROJECT_STUDENT_H
