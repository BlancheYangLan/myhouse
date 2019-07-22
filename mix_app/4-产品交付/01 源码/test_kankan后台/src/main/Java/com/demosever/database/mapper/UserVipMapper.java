package com.demosever.database.mapper;

import com.demosever.database.data.UserVip;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

public interface UserVipMapper {
    /**
     *
     * @param userNumber
     * @return
     * @throws Exception
     */

    @Results(id = "vipDateResult",value = {
            @Result(property = "userVipId",column = "userVip_id"),
            @Result(property = "userNumber",column = "user_number"),
            @Result(property = "vipStartDate",column = "vipStartDate"),
            @Result(property = "vipEndDate",column = "vipEndDate"),
    })
    @Select("select t_kankan_uservip.user_number,t_kankan_uservip.vipStartDate,t_kankan_uservip.vipEndDate from t_kankan_user,t_kankan_uservip where t_kankan_user.user_number=#{userNumber} and  t_kankan_uservip.user_number=#{userNumber}")
    public UserVip queryByVipDate(@Param("userNumber") String userNumber) throws Exception;

}
