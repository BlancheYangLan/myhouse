package com.demosever.controllers;

import com.demosever.database.data.video;
import com.demosever.database.mapper.queryall;
import com.demosever.database.mapper.videomapper;
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
 * @Author whay
 * @CreateTime 2019年06月2019日 13:28:24
 * @Version 1.0.0
 */
@Controller
public class queryvideoall {
    @Resource
    private queryall queryall;

    @RequestMapping("/queryvideoall.html")
    @ResponseBody
    public String queryvideoall() throws Exception {
        List<video> video = queryall.queryvideoall();
        JSONArray jsonArray =new JSONArray(video);
        Map<String, Object> data =new HashMap<>();
        data.put("voide",jsonArray);
        JSONObject jsonObject = new JSONObject(data);
        String jsondata =jsonObject.toString();
        //System.out.println(jsondata);
        if (jsondata != null) {
            return jsondata;
        }
        return "{\"success\":false,\"error\":\"服务器处理错误！\"}";
    }
}
