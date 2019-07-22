package com.demosever.database.mapper;

import com.demosever.database.data.ShufflingSever;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface
ShufflingMapper {
    @Results(id="shufResults",value = {
            @Result(property = "shufflingId",column = "shuffling_id",id = true),
            @Result(property = "shufflingImg",column = "shuffling_img"),
            @Result(property = "shufflingDescribe",column = "shuffling_describe"),
            @Result(property = "shufflingUrl",column = "shuffling_url"),
    })
    @Select("select * from t_kankan_shuffling")
    public List<ShufflingSever> queryShuffling() throws Exception;
}
