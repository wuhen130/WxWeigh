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

    @Insert("INSERT INTO order VALUES #{name},#{phone}")
     Order inserts(@Param("name") String name, @Param( "phone") String phone);
}
