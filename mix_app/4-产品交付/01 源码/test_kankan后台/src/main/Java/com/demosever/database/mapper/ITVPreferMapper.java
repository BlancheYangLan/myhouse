package com.demosever.database.mapper;
import com.demosever.database.data.TViodhot;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;


import java.util.List;
/**
 * 用户表数据访问映射接口
 * @Author likepeng*
 * CreateTime 2019年06月27日  17:03:13
 * @Version 1.0.0
 **/
public interface ITVPreferMapper {
    /**
     * 登录查询验证
     * @param
     * @param
     * @return
     * @throws Exception
     */
    @Results(id = "userResult",value = {
            @Result(property = "videoId", column="videoId", id = true),
            @Result(property = "makerId", column="makerId"),
            @Result(property = "makeName", column="makeName"),
            @Result(property = "videoType", column="videoType"),
            @Result(property = "videoMask", column="videoMask"),
            @Result(property = "videoDiscribe", column="videoDiscribe"),
            @Result(property = "videoCollectNumber", column="videoCollectNumber"),
            @Result(property = "videoDianzan", column="videoDianzan")
    })
    @Select("UPDATE t_kankan_hotvideo SET videoCollectNumber = #{prefernum} WHERE videoId = #{id};")
    public List<TViodhot> querypreview(@Param("prefernum") Integer prefernum,@Param("id") Integer id) throws Exception;
}
