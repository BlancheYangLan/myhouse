package com.demosever.controllers;


import com.demosever.database.data.video;
import com.demosever.database.mapper.videomapper;
import com.demosever.database.data.video;
import com.demosever.database.mapper.queryall;
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
public class videocontroller {
    @Resource
    private com.demosever.database.mapper.videomapper videomapper;


    @RequestMapping("/videocontroller.html")
    @ResponseBody
    public String videocontroller(String videopx,String videodq,String videolx) {

        List<video>  video;
        try {
            //System.out.println(videopx + "," + videodq+","+videolx);

            video = videomapper.queryByviode(videopx,videodq,videolx);
            JSONArray jsonArray =new JSONArray(video);


            Map<String, Object> data =new HashMap<>();
            data.put("voide",jsonArray);
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
