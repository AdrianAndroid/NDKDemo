package com.yijincc.ndkdemo;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

public class LoginActivity extends AppCompatActivity {

    // 静态语句块 执行时机早 所以一般动态链接库(.so)文件都是静态语句块加载
    static {
        // 使用该api加载动态链接库  lib native-lib .so
        System.loadLibrary("native-lib"); // 相对路径加载、
        // System.load(); // 绝对路径形式加载
    }

    private String account = "319280648@qq.com";
    private static String password = "0123456789";

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout_login);
        Button btn_login=findViewById(R.id.btn_login);
        btn_login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                login("迁羽","123456");
            }
        });
    }

    // 该方法逻辑部分是由c、c++实现的
    public native void login(String account,String password);
}
