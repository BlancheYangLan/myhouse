package com.demosever.database.mapper;

import com.demosever.database.data.VipInfo;
import com.demosever.database.data.VipInfo;
import com.demosever.database.data.VipInfo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface VipInfoMapper {
    /**
     *
     * @return
     * @throws Exception
     */
    @Results(id = "vipResult",value = {
            @Result(property = "vipId",column = "vip_id"),
            @Result(property = "vipServiceType",column = "vip_service_type"),
            @Result(property = "price",column = "price"),
            @Result(property = "describe",column = "describe"),
    })
    @Select("select * from t_kankan_vip")
    public List<VipInfo> queryByVip();
}
