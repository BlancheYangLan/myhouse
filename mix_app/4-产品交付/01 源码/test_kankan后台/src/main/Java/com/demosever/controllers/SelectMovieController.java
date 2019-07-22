package com.demosever.controllers;

import com.demosever.database.data.SelectPlayMovie;
import com.demosever.database.mapper.ISelectPlayMovieMapper;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @cuthor luoxiaojiang
 * @createTime 2019年07月04日09:17:10
 * @Verson 1.0.0
 */
@Controller
public class SelectMovieController {
    @Resource
    private ISelectPlayMovieMapper selectPlayMovieMapper;
    @RequestMapping("/selectMovie.html")
    @ResponseBody
    public String SelectMovie(Integer ids){
        try {
            List<SelectPlayMovie> selectResult = selectPlayMovieMapper.queryByselectmovie(ids);
            JSONArray jsonArray = new JSONArray(selectResult);
            String str = jsonArray.toString();
            return str;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "{\"success\":false, \"error\":\"服务器处理错误！\"}";
    }

}
