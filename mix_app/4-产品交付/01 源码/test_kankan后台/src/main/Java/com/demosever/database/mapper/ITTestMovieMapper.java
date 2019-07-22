package com.demosever.database.mapper;

import com.demosever.database.data.MovieCarousel;
import com.demosever.database.data.TTestMovie;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * 电影表数据访问映射接口
 * @cuthor luoxiaojiang
 * @createTime 2019年07月01日10:26:25
 * @Verson 1.0.0
 */

public interface ITTestMovieMapper {

    @Results(id = "movieResult", value = {
            @Result(property = "movieid",column = "movie_id",id = true),
            @Result(property = "moviename",column = "movie_name"),
            @Result(property = "moviepicture",column = "movie_picture"),
            @Result(property = "movieurl",column = "movie_url")
    })
    @Select("select * from t_test_movie order by rand() limit 6")
    public List<TTestMovie> queryByrecommend() throws Exception;

    //热片
    @ResultMap("movieResult")
    @Select("select * from t_test_movie order by rand() limit 6")
    public List<TTestMovie> queryByhot_film() throws Exception;

    //大电影
    @ResultMap("movieResult")
    @Select("select * from t_test_movie order by rand() limit 6")
    public List<TTestMovie> queryBybig_movie() throws Exception;

    //个人推荐
    @ResultMap("movieResult")
    @Select("select * from t_test_movie order by rand() limit 10")
    public List<TTestMovie> queryByPersonal_recommendation() throws Exception;

    //最新影片
    @ResultMap("movieResult")
    @Select("select * from t_test_movie order by movie_year desc limit 6")
    public List<TTestMovie> queryByLatest_movie() throws Exception;

    //青春实力派
    @ResultMap("movieResult")
    @Select("select * from t_test_movie where movie_type = '青春'")
    public List<TTestMovie> queryByYouth_movie() throws Exception;

    //Youth_movie


    @Results(id = "carouselResult", value = {
            @Result(property = "movieid",column = "movie_id",id = true),
            @Result(property = "moviename",column = "movie_name"),
            @Result(property = "moviepicture",column = "movie_picture"),
            @Result(property = "movieurl",column = "movie_url")
    })
    @Select("select * from t_test_movie order by movie_id desc limit 0,4")
    public List<MovieCarousel> queryBycarousel() throws Exception;



}
