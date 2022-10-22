# WxWeigh
## 称重推送
### 后端接口文档

---
#### 后端语言：** JAVA**

---
#### baseURL ：**/wx/template/**

---
### 接口文档表格

- 判断登录接口 **isLogin**
>请求方式：**GET**
>>##### 请求参数
>> 无
>>##### 返回数据
>>>已登录：```{"userName":"张三"}``` 
未登录：```{"isLogin":"0"}```
- 管理端登录接口 **loginManage**
>请求方式 **POST**
>>##### 请求参数
>> ```{name:'用户名',password: '密码'}```
>>##### 返回数据
>>密码正确：```{name: "张三", state: "1"}```
>>密码错误：```{state: "0"}```
- 用户搜索接口 **getOneUser**
>请求方式 **POST**
>>##### 请求参数
>>```{name: "张三"}``` *支持模糊查询*
>>##### 返回数据
>> **data**可以是多组数据或者为空
>>
```
{
       "msg": "用户获取成功",
       "code": 0,
        "count": 10,
        "data": [  
          {
            "country": "",
            "unionid": "o1NeOwSeuuNL2H68knka-fF1T580",
            "subscribe": 1,
            "city": "",
            "openid": "oEq7rw-udo5FS6D9E3H-H0C3-6S8",
            "sex": 0,
            "groupid": 0,
            "language": "zh_CN",
            "remark": "",
            "province": "",
            "nickname": "",
            "headimgurl": "",
            "name": "颜虎",
            "phone": "13622129921",
            "qr_scene": 0,
            "tagid_list": "[]",
            "subscribe_time": 1665648044,
            "subscribe_scene": "ADD_SCENE_QR_CODE",
            "qr_scene_str": ""
           }
        ]
}
```
- 用户搜索接口 **sendMessageTopopup**
>请求方式 **POST**
>>##### 请求参数
>>`{openid: "oEq7rw-udo5FS6D9E3H-H0C3-6S8"}` *精确查询*
>>##### 返回数据 
>>**data**可以是多组数据或者为空
 ```{
  "msg": "用户获取成功",
  "code": 0,
  "count": 2,
  "data": [
    {  
      "id": 2,
      "openId": "oEq7rw-udo5FS6D9E3H-H0C3-6S8",
      "name": "颜虎",
      "phone": "13622129921",
      "commodity": "货物名称玉米",
      "receiving": "收货单位测试部",
      "delivery": "发货单位测试部",
      "plate": "鲁BAA123",
      "grossWeight": "2000",
      "tareWeight": "1000",
      "moisture": "1000",
      "impurities": "水分1.2",
      "bulkDensity": "2.2",
      "mildew": "560",
      "unitPrice": "3.32",
      "amount": "1.4",
      "money": "3000",
      "skinTime": "2022-10-20",
      "time": "2022-10-20",
      "serialNumber": "2022101802050",
      "operator": "操作员"
    }
  ] 
}
```
- 编辑信息发送接口 **sendSaveMessage**
>请求方式 **POST**
>>##### 请求参数
>>
```
{
    "name": "颜虎",
    "phone": "13622129921",
    "openId": "oEq7rw-udo5FS6D9E3H-H0C3-6S8",
    "id": "2",
    "commodity": "货物名称玉米",
    "receiving": "收货单位测试部",
    "delivery": "发货单位测试部",
    "plate": "鲁BAA123",
    "grossWeight": "2000",
    "tareWeight": "1000",
    "moisture": "1000",
    "impurities": "水分1.2",
    "bulkDensity": "2.2",
    "mildew": "560",
    "unitPrice": "3.32",
    "amount": "1.4",
    "money": "3000",
    "skinTime": "2022-10-20",
    "time": "2022-10-20",
    "serialNumber": "2022101802050",
    "operator": "操作员",
    "note": "",
    "miscellaneous": "",
    "operationDate": "2022-10-22 09:08:59"
}
```
>>##### 返回数据 
>>无
