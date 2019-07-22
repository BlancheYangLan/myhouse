package com.demosever.database.mapper;


import com.demosever.database.data.KanKanserverUser;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 *用户表数据访问映射接口
 * @Author Theacher
 * @CreateTime 2019年06月27日17:11:47
 * @Version 1.0.0
 *
 */
public interface IKanKanserverUserMaer {
    /**
     *
     * @param userName
     * @param password
     * @return
     * @throws Exception
     */
    @Results(id="userResult", value = {
            @Result(property = "userId",column = "user_id", id = true),  //userId是KanKanserverUser.java的属性，user_id是数据表的字段名
            @Result(property = "userPhone",column = "user_number"),
            @Result(property = "userName",column = "user_name"),
            @Result(property = "userPassword",column = "user_password"),
            @Result(property = "userIcon",column = "user_icon"),
            @Result(property = "vipType",column = "user_type"),
            @Result(property = "userVouchers",column = "user_type"),
            @Result(property = "userSex",column = "user_type"),
            @Result(property = "userData",column = "user_type"),
            @Result(property = "userAddress",column = "user_type"),
            @Result(property = "userSignature",column = "user_signature"),
    })
    @Select("select * from t_kankan_user where user_name=#{userName} and user_password=#{userPassword} or user_number=#{userName} and user_password=#{userPassword}")    //@Param("userName")指定参数名称
    public KanKanserverUser queryBylogin(@Param("userName") String userName,
                                         @Param("userPassword") String password) throws Exception;  //登录查询验证


    /*@ResultMap("userResult")
    @Select("select * from t_kankan_user")
    public List<KanKanserverUser> queryAll() throws Exception;
     */
}
