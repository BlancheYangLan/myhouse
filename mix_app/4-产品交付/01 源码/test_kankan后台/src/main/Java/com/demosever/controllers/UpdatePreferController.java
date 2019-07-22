package com.demosever.controllers;
import com.demosever.database.data.TViodhot;
import com.demosever.database.mapper.ITInsertMapper;
import com.demosever.database.mapper.ITVPreferMapper;
import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author likepeng*
 * CreateTime 2019年07月04日  10:44:08
 * @Version 1.0.0
 **/
@Controller
public class UpdatePreferController {
    //依赖注入用户访问表映射接口的对象
    //查找用户注入资源
    @Resource
    private ITVPreferMapper Updateprefer;

    @RequestMapping("/UpdatePrefer_main.html")
    @ResponseBody
    public void loginValidate(Integer prefernum,Integer id) throws  Exception {
        if (id==null){
            id=0;
        }
        if (prefernum==null){
            prefernum=0;
        }
        List<TViodhot> list =  Updateprefer.querypreview(prefernum,id);
    }
}
