package com.demosever.database.mapper;

import com.demosever.database.data.Indexserver;
import com.demosever.database.data.TvSerlesPngServer;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface TvSerlesPngMapper {
    @Results(id="indexResults",value = {
            @Result(property = "Id",column = "id",id=true),
            @Result(property = "tvseriesPng",column = "tvseries_png"),
            @Result(property = "tvseriesDescribe",column = "tvseries_describe")
    })
    @Select("select * from t_kankan_png")
    public List<TvSerlesPngServer> queryByPng() throws Exception;
}
