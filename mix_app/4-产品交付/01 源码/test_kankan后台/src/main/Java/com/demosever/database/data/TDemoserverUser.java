package com.demosever.database.data;

/**
 * @Author OuYang
 * @CreateTime 2019年06月27日 17:03:47
 * @Version 1.0.0
 */


import java.sql.Timestamp;

/**
 * 用户表的持久化类（数据封装类
 */

public class TDemoserverUser {
    private Integer userId;  //用户ID
    private String userName;  //用户名
    private String userPassWord; //用户密码
    private String userTelphone;  //练习电话
    private Timestamp operTime;  //用户操作时间
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassWord;
    }

    public void setUserPassword(String userPassword) {
        this.userPassWord = userPassword;
    }

    public String getUserTelphone() {
        return userTelphone;
    }

    public void setUserTelphone(String userTelphone) {
        this.userTelphone = userTelphone;
    }

    public Timestamp getOperTime() {
        return operTime;
    }

    public void setOperTime(Timestamp operTime) {
        this.operTime = operTime;
    }


}
