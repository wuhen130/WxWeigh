package com.example.wx.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;


@Data
@TableName("`order`")
public class Order {

    //private Integer id;
    private String openId;
    private String name;
    private String phone;

    //货物名称
    private String commodity;
    //收货地址
    private String receiving;
    //发货地址
    private String delivery;
    //车牌号码
    private String plate;
    //毛重
    private String gross_weight;
    //皮重
    private String tare_weight;
    //净重
    private String moisture;
    //水分
    private String impurities;
    //杂质
    private String bulkDensity;
    //容量
    private String mildew;
    //霉变
    private String unitPrice;
    //单价
    private String amount;
    //金额
    private String money;
    //过皮时间
    private String skinTime;
    //过毛时间
    private String time;
    // 流水号
    private String serialNumber;
    //操作员
    private String operator;

    

}