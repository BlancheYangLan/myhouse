package com.demosever.controllers;

import com.demosever.database.data.video;
import com.demosever.database.mapper.indexjx;
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
 * @CreateTime 2019年06月2019日 21:16:15
 * @Version 1.0.0
 */
@Controller
public class indexjxcontroller {
    @Resource
    private indexjx indexjx;
    @RequestMapping("/indexjx.html")
    @ResponseBody
    public String queryvideoall() throws Exception {
        List<video> jx = indexjx.indexjxall();
        List<video> lb = indexjx.indexjxall();



        JSONArray jsonArray =new JSONArray(jx);
        JSONArray jsonArray1 =new JSONArray(lb);

        Map<String, Object> data =new HashMap<>();
        data.put("jx",jsonArray);
        data.put("sis",jsonArray1);
        JSONObject jsonObject = new JSONObject(data);
        String jsondata =jsonObject.toString();
        //System.out.println(jsondata);
        if (jsondata != null) {
            return jsondata;
        }
        return "{\"success\":false,\"error\":\"服务器处理错误！\"}";
    }


}
