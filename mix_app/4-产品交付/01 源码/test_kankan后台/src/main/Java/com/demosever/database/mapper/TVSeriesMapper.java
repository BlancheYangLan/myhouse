package com.demosever.database.mapper;


import com.demosever.database.data.TVSeriesServer;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface TVSeriesMapper {
    @Results(id = "tvResult",value = {
            @Result(property = "Id",column = "id",id=true),
            @Result(property = "tvseriesImg",column = "tvseries_img"),
            @Result(property = "tvseriesName",column = "tvseries_name"),
            @Result(property = "tvseriesIntroduction",column = "tvseries_introduction"),
            @Result(property = "tvseriesBlues",column = "tvseries_blues"),
            @Result(property = "tvseriesScore",column = "tvseries_score"),
            @Result(property = "tvseriesPlays",column = "tvseries_plays"),
            @Result(property = "tvseriesShow",column = "tvseries_show"),
            @Result(property = "trailersId",column = "trailers_id"),
            @Result(property = "trailersImg",column = "trailers_img"),
            @Result(property = "trailersDescribe",column = "trailers_describe"),
            @Result(property = "trailersUrl",column = "trailers_url"),
            @Result(property = "bluesId",column = "blues_id"),
            @Result(property = "bluesName",column = "blues_name"),
            @Result(property = "bluesUrl",column = "blues_url"),
            @Result(property = "bluesBlue",column = "blues_blue"),
    })
    @Select("select * from t_kankan_tvseries where t_kankan_tvseries.id=#{tvseriesid} ")
    public List<TVSeriesServer> queryByLogin(@Param("tvseriesid") String tvseriesid) throws Exception;

    @ResultMap(value = "tvResult")
    @Select("select t_kankan_trailers.trailers_id,t_kankan_trailers.trailers_img,t_kankan_trailers.trailers_describe,t_kankan_trailers.trailers_url from t_kankan_tvseries,t_kankan_trailers where t_kankan_tvseries.id=#{tvseriesid} and t_kankan_trailers.trailers_id=#{tvseriesid} limit 4 ")
    public List<TVSeriesServer> queryByLogins(@Param("tvseriesid") String tvseriesid) throws Exception;

    @ResultMap(value = "tvResult")
    @Select("select t_kankan_trailers.trailers_id,t_kankan_trailers.trailers_img,t_kankan_trailers.trailers_describe,t_kankan_trailers.trailers_url from t_kankan_tvseries,t_kankan_trailers where t_kankan_tvseries.id=#{tvseriesid} and t_kankan_trailers.trailers_id=#{tvseriesid} ")
    public List<TVSeriesServer> queryByall(@Param("tvseriesid") String tvseriesid) throws Exception;

    @ResultMap(value = "tvResult")
    @Select("select blues_id,blues_name,blues_url,blues_blue from t_kankan_tvseries_blues where blues_id=#{tvseriesid}")
    public List<TVSeriesServer> queryBlues(@Param("tvseriesid") String tvseriesid) throws Exception;


}
