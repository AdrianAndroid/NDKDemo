package com.yijincc.ndkdemo;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    private String name = "yijincc";
    private int age = 7;
    private char sex = '1'; // 1表示男 0表示女

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Log.d("yijincc","string:"+stringFromJNI());

        callJava();
        callJavaStatic();

        Log.d("yijincc","+："+add(2,4));
        Log.d("yijincc","-："+sub(2,4));
        Log.d("yijincc","*："+mul(2,4));
        Log.d("yijincc","/："+div(2,4));
    }

    // 定义native方法
    // 如果一个方法被native修饰 那么的它的逻辑在c/c++代码里面
    // c/c++代码是由ndk进行编译生成相应的文件 动态链接库(.so) 可执行文件(没有后缀) 静态链接库(.a)
    public native String stringFromJNI();// java <=> c/c++ JNI接口  定义一套规则

    public long rand(char ch, int num){
        return ch + num;
    }
    public static boolean isRel(short num1, short num2){
        return num1 == num2? true : false;
    }

    public native void callJava();
    public native void callJavaStatic();
    public static native int add(int num1,int num2); // 加法操作
    public static native int sub(int num1,int num2); // 减法操作
    public static native float mul(float num1,float num2); // 乘法操作
    public static native float div(float num1,float num2); // 除法操作

}