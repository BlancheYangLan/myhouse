package com.demosever.database.mapper;

import com.demosever.database.data.MovieCarousel;
import com.demosever.database.data.SelectPlayMovie;
import com.demosever.database.data.SelectPlayMovie;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 查询指定电影表数据访问映射接口
 * @cuthor luoxiaojiang
 * @createTime 2019年07月04日09:05:20
 * @Verson 1.0.0
 */

public interface ISelectPlayMovieMapper {

    @Results(value = {
            @Result(property = "movieid",column = "movie_id",id = true),
            @Result(property = "moviename",column = "movie_name"),
            @Result(property = "movietype",column = "movie_type"),
            @Result(property = "movieyear",column = "movie_year"),
            @Result(property = "movieintroduction",column = "movie_introduction"),
            @Result(property = "moviedirector",column = "movie_director")
    })
    @Select("select * from t_test_movie where movie_id = #{movieid}")
    public List<SelectPlayMovie> queryByselectmovie(@Param("movieid") Integer movieid) throws Exception;
}
