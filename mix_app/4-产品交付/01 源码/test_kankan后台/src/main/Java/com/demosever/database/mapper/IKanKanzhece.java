package com.demosever.database.mapper;

import com.demosever.database.data.KanKanserverUser;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IKanKanzhece {

    @Results(id="userResults", value = {
            @Result(property = "userId",column = "user_id", id = true),  //userId是KanKanserverUser.java的属性，user_id是数据表的字段名
            @Result(property = "userPhone",column = "user_number"),
            @Result(property = "userName",column = "user_name"),
            @Result(property = "userPassword",column = "user_password"),
            @Result(property = "userIcon",column = "user_icon"),
            @Result(property = "vipType",column = "user_type"),
    })

    @Select("select * from t_kankan_user where user_name=#{userName} or user_number=#{userPhone}")   //注册查询
    public List<KanKanserverUser> queryzece(@Param("userName") String nameIme, @Param("userPhone") String phoneIme) throws Exception;



    @Insert({ "insert into t_kankan_user(user_number,user_name,user_password,user_icon) " +            //插入数据
            "values(#{userPhone},#{userName},#{userPassword},#{userIcon})" })
    public void queryzece1(@Param("userPhone") String phoneIme,
                           @Param("userName") String nameIme,
                           @Param("userPassword") String passIme,
                           @Param("userIcon") String userIcon) throws Exception;


}
