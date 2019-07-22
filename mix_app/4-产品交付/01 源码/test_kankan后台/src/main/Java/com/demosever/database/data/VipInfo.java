package com.demosever.database.data;

/**
 * @Author Wujinyang
 * @CreateTime 2019年07月01日16:37:29
 * @Varsion 1.0.0
 */

/**
 * VIP套餐表的持久化类（数据封装）
 */
public class VipInfo {
    private Integer vipId;
    private String vipServiceType;
    private Integer price;
    private String describe;

    public Integer getVipId() {
        return vipId;
    }

    public void setVipId(Integer vipId) {
        this.vipId = vipId;
    }

    public String getVipServiceType() {
        return vipServiceType;
    }

    public void setVipServiceType(String vipServiceType) {
        this.vipServiceType = vipServiceType;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }
}
