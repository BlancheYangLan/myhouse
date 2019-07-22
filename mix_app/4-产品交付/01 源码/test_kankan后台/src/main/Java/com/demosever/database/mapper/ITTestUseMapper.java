package com.demosever.database.mapper;


import com.demosever.database.data.TTestUse;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ITTestUseMapper {

    @Results(id = "userResult123", value = {
            @Result(property = "u_id",column = "user_id",id = true),
            @Result(property = "u_name",column = "user_name"),
            @Result(property = "u_avatar",column = "user_icon"),
            @Result(property = "u_sex",column = "user_sex"),
            @Result(property = "u_data",column = "user_data"),
            @Result(property = "u_address",column = "user_address"),
            @Result(property = "u_signature",column = "user_signature")

    })
    @Select("select * from t_kankan_user where user_id = #{u_id}")
    public List<TTestUse> selectbyuse(@Param("u_id") Integer u_id) throws Exception;

    //user_name = #{u_name},user_icon = #{u_avatar},
    @Update("update t_kankan_user set user_sex = #{u_sex},user_data = #{u_data},user_address = #{u_address},user_signature = #{u_signature} where user_id = #{u_id}")
    public void updatebyadd(@Param("u_id") Integer u_id,/*@Param("u_avatar") String u_avatar, @Param("u_name") String u_name,*/ @Param("u_sex") String u_sex, @Param("u_data") String u_data, @Param("u_address") String u_address, @Param("u_signature") String u_signature) throws Exception;

}
