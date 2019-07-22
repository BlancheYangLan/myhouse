package com.demosever.controllers;

import com.demosever.database.mapper.indexcnzz;
import com.demosever.database.data.video;
import com.demosever.database.mapper.indexcnzz;
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
 * @CreateTime 2019年06月2019日 22:30:50
 * @Version 1.0.0
 */
@Controller
public class indexcnzzcontroller {
    @Resource
    private com.demosever.database.mapper.indexcnzz indexcnzz;
    @RequestMapping("/cnzz.html")
    @ResponseBody
    public String indexcnzzcontroller() throws Exception {
        List<video> cnzz = indexcnzz.cnzz();
        JSONArray jsonArray =new JSONArray(cnzz);
        Map<String, Object> data =new HashMap<>();
        data.put("cnzz",jsonArray);

        JSONObject jsonObject = new JSONObject(data);
        String jsondata =jsonObject.toString();
        //System.out.println(jsondata);
        if (jsondata != null) {
            return jsondata;
        }
        return "{\"success\":false,\"error\":\"服务器处理错误！\"}";
    }
}
