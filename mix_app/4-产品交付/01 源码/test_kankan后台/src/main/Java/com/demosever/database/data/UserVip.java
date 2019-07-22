package com.demosever.database.data;

/**
 * @Author Wujinyang
 * @CreateTime 2019年07月01日16:44:26
 * @Varsion 1.0.0
 */

import java.util.Date;

/**
 * VIP用户的持久化类（数据封装）
 */
public class UserVip {
    private Integer userVipId;
    private String userNumber;
    private String vipStartDate;
    private String vipEndDate;

    public Integer getUserVipId() {
        return userVipId;
    }

    public void setUserVipId(Integer userVipId) {
        this.userVipId = userVipId;
    }

    public String getUserNumber() {
        return userNumber;
    }

    public void setUserNumber(String userNumber) {
        this.userNumber = userNumber;
    }

    public String getVipStartDate() {
        return vipStartDate;
    }

    public void setVipStartDate(String vipStartDate) {
        this.vipStartDate = vipStartDate;
    }

    public String getVipEndDate() {
        return vipEndDate;
    }

    public void setVipEndDate(String vipEndDate) {
        this.vipEndDate = vipEndDate;
    }
}
