package com.example.wx.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.wx.entity.Open;
import com.example.wx.entity.Order;
import com.example.wx.entity.UserInfoList;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 */
public interface OrderMapper extends BaseMapper<Order> {

    @Select("SELECT * FROM order WHERE #{id}")
     Order SelectOnes(@Param("id") String id);
}
