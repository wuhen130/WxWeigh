package com.example.wx.service;

import com.example.wx.entity.UserInfoList;
import com.example.wx.vo.DataVo;

import java.util.List;

public interface ITemplateService {
    DataVo<String> sendMessage(String name, String phone, String commodity, String receiving, String delivery, String plate, String grossWeight, String tareWeight, String moisture, String impurities, String bulkDensity, String mildew, String unitPrice, String amount, String money, String skinTime, String time, String serialNumber, String operator,String note,String miscellaneous);

    DataVo<List<UserInfoList>> getUser(Integer page,Integer limit);

    DataVo postNameIsPhone(String openid, String name, String phone);


    DataVo updateUser(String phone, String name, String openid);

    DataVo deleteUser(String phone, String name, String openid);

    String queryUser(String name, String password);

}
