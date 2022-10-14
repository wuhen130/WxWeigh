package com.example.wx.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.wx.entity.UserInfoList;
import com.example.wx.entity.UserList;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserInfoMapper extends BaseMapper<UserInfoList> {

//    @Select("SELECT * FROM user_info_list #{page}")
//    List<UserInfoList> newPage(@Param("page") IPage<UserInfoList> page);

//
   @Select("SELECT * FROM user_info_list LIMIT #{page},#{limit}")

  List<UserInfoList> newPage(@Param("page") int page,@Param( "limit") int limit);
}
