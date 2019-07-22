package com.demosever.controllers;


import com.demosever.database.data.video;

import com.demosever.database.mapper.queryall;
import com.demosever.database.mapper.videobf;
import com.demosever.database.mapper.videomapper;
import org.apache.commons.codec.digest.DigestUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



/**
 * @Author whay
 * @CreateTime 2019年06月2019日 14:55:59
 * @Version 1.0.0
 */
@Controller
public class videobfcontroller {
    @Resource
    private videobf videobf;


    @RequestMapping("/videobf.html")
    @ResponseBody
    public String videobfcontroller(String videoid) {

        List<video>  video;
        int videoids =  Integer.parseInt(videoid);

        try {
            video = videobf.videobfsp(videoids);
            JSONArray jsonArray =new JSONArray(video);
            Map<String, Object> data =new HashMap<>();
            data.put("voidebf",jsonArray);
            JSONObject jsonObject = new JSONObject(data);
            String jsondata =jsonObject.toString();
            //System.out.println(jsondata);
            if (jsondata != null) {
                return jsondata;

            } else {
                return "{\"success\":false,\"error\":\"没有视频\"}";
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "{\"success\":false,\"error\":\"服务器处理错误！\"}";



    }

}
