package com.demosever.controllers;

import com.demosever.database.data.Indexserver;
import com.demosever.database.data.ShufflingSever;
import com.demosever.database.mapper.ShufflingMapper;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author OuYang
 * @CreateTime 2019年07月01日 10:55:00
 * @Version 1.0.0
 */

@Controller
public class ShufflingController {
    @Resource
    private ShufflingMapper shufflingMapper;
    @RequestMapping("/shuffling.html")
    @ResponseBody
    public String shufflingReruest(HttpServletRequest request)throws  Exception{
        String severAddress = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
        List<ShufflingSever> list=shufflingMapper.queryShuffling();
        for (ShufflingSever shufflingSever :list){
            shufflingSever.setShufflingImg(severAddress+"/img/"+shufflingSever.getShufflingImg());
        }
        JSONArray jsonArray=new JSONArray(list);

        return jsonArray.toString();
    }
}
