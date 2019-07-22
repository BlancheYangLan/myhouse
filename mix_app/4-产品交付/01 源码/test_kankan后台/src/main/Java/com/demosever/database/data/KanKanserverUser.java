package com.demosever.database.data;

import java.sql.Timestamp;

/**
 * 用户表的持久化类（数据封装类）
 * @Author Theacher
 * @CreateTime 2019年06月27日17:03:47
 * @Version 1.0.0
 *
 */
public class KanKanserverUser {
    private Integer userId;  //用户ID
    private String userPhone;
    private String userName;
    private String userPassword;
    private String userIcon;
    private String vipType;
    private Integer userVouchers;
    private String userSex;
    private String userData;
    private String userAddress;
    private String userSignature;

    public Integer getUserVouchers() {
        return userVouchers;
    }

    public void setUserVouchers(Integer userVouchers) {
        this.userVouchers = userVouchers;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public String getUserData() {
        return userData;
    }

    public void setUserData(String userData) {
        this.userData = userData;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserSignature() {
        return userSignature;
    }

    public void setUserSignature(String userSignature) {
        this.userSignature = userSignature;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserIcon() {
        return userIcon;
    }

    public void setUserIcon(String userIcon) {
        this.userIcon = userIcon;
    }

    public String getVipType() {
        return vipType;
    }

    public void setVipType(String vipType) {
        this.vipType = vipType;
    }
}
