package com.demosever.database.data;

/**
 * @Author Wujinyang
 * @CreateTime 2019年07月01日16:50:08
 * @Varsion 1.0.0
 */

import java.sql.Timestamp;
import java.util.Date;

/**
 * 用户订单表的持久化类（数据封装）
 */
public class OrderListInfo {
    private Integer id;
    private String orderNumber;
    private String userNumber;
    private String vipType;
    private Timestamp orderDate;
    private Integer price;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getUserNumber() {
        return userNumber;
    }

    public void setUserNumber(String userNumber) {
        this.userNumber = userNumber;
    }

    public String getVipType() {
        return vipType;
    }

    public void setVipType(String vipType) {
        this.vipType = vipType;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }
}
