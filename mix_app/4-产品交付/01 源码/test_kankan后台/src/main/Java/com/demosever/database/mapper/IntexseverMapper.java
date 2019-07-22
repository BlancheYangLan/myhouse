package com.demosever.database.mapper;

import com.demosever.database.data.Indexserver;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface IntexseverMapper {
    @Results(id="indexResults",value = {
            @Result(property = "Id",column = "id",id=true),
            @Result(property = "tvseriesImg",column = "tvseries_img"),
            @Result(property = "tvseriesName",column = "tvseries_name"),
            @Result(property = "tvseriesIntroduction",column = "tvseries_introduction"),
            @Result(property = "tvseriesBlues",column = "tvseries_blues"),
            @Result(property = "vipId",column = "vip_id"),
            @Result(property = "vipJpg",column = "vip_jpg"),
            @Result(property = "bluesUrl",column = "blues_url"),
    })
    @Select("select * from t_kankan_tvseries,t_kankan_vip_icon where t_kankan_tvseries.tvseries_vip_id=t_kankan_vip_icon.vip_id  order by rand() limit 6" )
    public List<Indexserver> queryByLogin() throws Exception;

    @ResultMap(value = "indexResults")
    @Select("select * from t_kankan_tvseries,t_kankan_vip_icon where t_kankan_tvseries.tvseries_vip_id=t_kankan_vip_icon.vip_id  order by rand() limit 12" )
    public List<Indexserver> queryChasing() throws Exception;

    @ResultMap(value = "indexResults")
    @Select("select * from t_kankan_tvseries,t_kankan_vip_icon where t_kankan_tvseries.tvseries_vip_id=t_kankan_vip_icon.vip_id  order by rand() limit 1" )
    public List<Indexserver> recommended() throws Exception;

}
