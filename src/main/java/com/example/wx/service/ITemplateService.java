package com.example.wx.service;

import com.example.wx.entity.Order;
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

    DataVo<List<UserInfoList>> getOneUser(String name);

    DataVo<String>sendAcquireMessage(String openId,String name, String phone, String commodity, String receiving, String delivery, String plate, String grossWeight, String tareWeight, String moisture, String impurities, String bulkDensity, String mildew, String unitPrice, String amount, String money, String skinTime, String time, String serialNumber, String operator,String note,String miscellaneous);

    DataVo<List<Order>> sendMessageTopopup(String openid);

    DataVo<String> sendSaveMessage (String id,String openId,String name, String phone, String commodity, String receiving, String delivery, String plate, String grossWeight, String tareWeight, String moisture, String impurities, String bulkDensity, String mildew, String unitPrice, String amount, String money, String skinTime, String time, String serialNumber, String operator,String note,String miscellaneous,String operationDate);

    DataVo<List<Order>> getDateUserMessage(String openId,String date);
}
