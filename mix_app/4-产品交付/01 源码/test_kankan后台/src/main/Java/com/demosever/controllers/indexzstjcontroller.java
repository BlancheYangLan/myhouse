package com.demosever.controllers;

import com.demosever.database.data.video;
import com.demosever.database.mapper.indexcnzz;
import com.demosever.database.mapper.indexzstj;
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
 * @CreateTime 2019年06月2019日 22:39:17
 * @Version 1.0.0
 */
@Controller
public class indexzstjcontroller {
    @Resource
    private indexzstj indexzstj;
    @RequestMapping("/zstj.html")
    @ResponseBody
    public String indexzstjcontroller() throws Exception {
        List<video> zstj = indexzstj.zstj();
        JSONArray jsonArray =new JSONArray(zstj);
        Map<String, Object> data =new HashMap<>();
        data.put("zstj",jsonArray);

        JSONObject jsonObject = new JSONObject(data);
        String jsondata =jsonObject.toString();
        //System.out.println(jsondata);
        if (jsondata != null) {
            return jsondata;
        }
        return "{\"success\":false,\"error\":\"服务器处理错误！\"}";
    }
}
