package com.example.wx.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.wx.entity.UserInfoList;
import com.example.wx.entity.login;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface LoginUpMapper extends BaseMapper<login> {

//    @Select("SELECT * FROM user_info_list #{page}")
//    List<UserInfoList> newPage(@Param("page") IPage<UserInfoList> page);


   //@Select("SELECT * FROM login WHERE #{name},#{password}")

  //String<login> newPage(@Param("name") int name,@Param( "password") int password);
}
