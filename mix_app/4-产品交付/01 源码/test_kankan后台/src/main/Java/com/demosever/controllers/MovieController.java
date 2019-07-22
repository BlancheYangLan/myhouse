package com.demosever.controllers;

import com.demosever.database.data.MovieCarousel;
import com.demosever.database.data.TTestMovie;
import com.demosever.database.mapper.ITTestMovieMapper;
import com.demosever.database.data.TTestMovie;
import com.demosever.database.mapper.ITTestMovieMapper;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @cuthor luoxiaojiang
 * @createTime 2019年07月01日10:35:30
 * @Verson 1.0.0
 */
@Controller
public class MovieController {

    @Resource
    private ITTestMovieMapper movieMapper;
    @RequestMapping("/movieshow.html")
    @ResponseBody
    public String handlerRequest(HttpServletRequest request){
        //获得服务器的地址
        String serverAddress = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
        try {
            //每日推荐的内容
            List<TTestMovie> tTestMovies = movieMapper.queryByrecommend();//获取数据表中在页面上显示的数据
            for( TTestMovie tTestMovie: tTestMovies) {//给图片添加网络ip
                tTestMovie.setMoviepicture(serverAddress + tTestMovie.getMoviepicture());
            }
            JSONArray recommend = new JSONArray(tTestMovies);

            //每日热片的内容
            List<TTestMovie> hot_films = movieMapper.queryByhot_film();//获取数据表中在页面上显示的数据
            for( TTestMovie hotfilm: hot_films) {//给图片添加网络ip
                hotfilm.setMoviepicture(serverAddress + hotfilm.getMoviepicture());
            }
            JSONArray hot_film = new JSONArray(hot_films);
            //个人推荐的内容
            List<TTestMovie> Personal_recommendations = movieMapper.queryByPersonal_recommendation();//获取数据表中在页面上显示的数据
            for( TTestMovie tTestMovie: Personal_recommendations) {//给图片添加网络ip
                tTestMovie.setMoviepicture(serverAddress + tTestMovie.getMoviepicture());
            }
            JSONArray Personal_recommendation = new JSONArray(Personal_recommendations);

            //网络大电影的内容
            List<TTestMovie> big_movies = movieMapper.queryBybig_movie();//获取数据表中在页面上显示的数据
            for( TTestMovie tTestMovie: big_movies) {//给图片添加网络ip
                tTestMovie.setMoviepicture(serverAddress + tTestMovie.getMoviepicture());
            }
            JSONArray big_movie = new JSONArray(big_movies);

            //最新影片
            List<TTestMovie> Latest_movies = movieMapper.queryByLatest_movie();//获取数据表中在页面上显示的数据
            for( TTestMovie tTestMovie: Latest_movies) {//给图片添加网络ip
                tTestMovie.setMoviepicture(serverAddress + tTestMovie.getMoviepicture());
            }
            JSONArray Latest_movie = new JSONArray(Latest_movies);

            //青春实力派内容
            List<TTestMovie> Youth_movies = movieMapper.queryByYouth_movie();//获取数据表中在页面上显示的数据
            for( TTestMovie tTestMovie: Youth_movies) {//给图片添加网络ip
                tTestMovie.setMoviepicture(serverAddress + tTestMovie.getMoviepicture());
            }
            JSONArray Youth_movie = new JSONArray(Youth_movies);

            //轮播内容
            List<MovieCarousel> movieCarousels = movieMapper.queryBycarousel();
            for( MovieCarousel movieCarousel : movieCarousels) {
                movieCarousel.setMoviepicture(serverAddress + movieCarousel.getMoviepicture());
            }
            JSONArray carousel = new JSONArray(movieCarousels);
            //创建图集合Map，封装电影数据
            Map<String,Object> data =new HashMap<>();
            //封装数据
            data.put("recommended_daily",recommend);//每日推荐
            data.put("hot_film",hot_film);//每日热片
            data.put("big_movie",big_movie);//大电影
            data.put("Personal_recommendation",Personal_recommendation);//个人推荐
            data.put("Latest_movie",Latest_movies);//最新影片
            data.put("Youth_movie",Youth_movie);//青春实力派
            data.put("carousel",carousel);//轮播图片
            JSONObject jsonObject =new JSONObject(data);
            String JSONdata = jsonObject.toString();
            return JSONdata;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
