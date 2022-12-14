package com.example.wx.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.wx.entity.*;
import com.example.wx.entity.template.*;
import com.example.wx.mapper.*;
import com.example.wx.service.ITemplateService;
import com.example.wx.util.HttpRequest;
import com.example.wx.vo.DataVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.*;


@Slf4j
@Service
public class TemplateServiceImpl extends ServiceImpl<MessageMapper, Message> implements ITemplateService {

    @Autowired
    private UserInfoMapper mapper;
    @Autowired
    private LoginUpMapper loginMapper;
    @Autowired
    private OrderMapper orderMapper;

    /**
     * @param name         姓名       x
     * @param phone        手机号    s
     * @param commodity    货物名称   h
     * @param receiving    收货地址       s
     * @param delivery     发货地址     f
     * @param plate        车牌号码       c
     * @param grossWeight  毛重    m
     * @param tareWeight   皮重      p
     * @param moisture     净重        j
     * @param impurities   水分 s
     * @param bulkDensity  杂质     z
     * @param mildew       容重    r
     * @param unitPrice    霉变  m
     * @param amount       单价    z
     * @param money        金额 j
     * @param skinTime     过皮时间    g
     * @param time         过毛时间       g
     * @param serialNumber 流水号      l
     * @param operator     操作员       c
     * @return
     */

    @Override
    public DataVo<String> sendMessage(String name, String phone, String commodity, String receiving, String delivery, String plate, String grossWeight, String tareWeight, String moisture, String impurities, String bulkDensity, String mildew, String unitPrice, String amount, String money, String skinTime, String time, String serialNumber, String operator,String note,String miscellaneous) {

        //用戶列表信息
        UserInfoList userInfoList;
        //获取token
        String token = HttpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/token", "grant_type=client_credential&appid=wx8ac6ce191e5e5537&secret=ee48e6ff750fdad237ef04b75c6d0c74");
        DataVo<String> dataVo = new DataVo<>();

        JSONObject tokenJson = JSONObject.parseObject(token);
        ToKens tokens = JSON.toJavaObject(tokenJson, ToKens.class);
        Message message = new Message();

        Data data = new Data();
        First first = new First();
        Keyword1 keyword1 = new Keyword1();
        Keyword2 keyword2 = new Keyword2();
        Keyword3 keyword3 = new Keyword3();
        Keyword4 keyword4 = new Keyword4();
        Miniprogram miniprogram = new Miniprogram();
        Remark remark = new Remark();
        first.setValue("车牌号: " + plate);
        first.setColor("#173177");  // 车牌号
        keyword1.setValue(commodity); //货物名称
        keyword1.setColor("#173177");
        keyword2.setValue(receiving);//收货单位
        keyword2.setColor("#173177");
        keyword3.setValue(delivery);//发货单位
        keyword3.setColor("#173177");
        keyword4.setValue("姓名：" + name + "\n毛重：" + grossWeight + "\n皮重：" + tareWeight + "\n净重：" + moisture + "\n水分：" + impurities + "\n杂质：" + bulkDensity + "\n并肩杂：" + miscellaneous +"\n容重：" + mildew + "\n霉变：" + unitPrice + "\n单价：" + amount + "\n金额：" + money + "\n过皮时间：" + skinTime + "\n过毛时间：" + time + "\n流水号" + serialNumber + "\n过磅员：" + operator);
        keyword4.setColor("#173177");
        remark.setValue(note);
        remark.setColor("#173177");
        data.setFirst(first);
        data.setKeyword1(keyword1);
        data.setKeyword2(keyword2);
        data.setKeyword3(keyword3);
        data.setKeyword4(keyword4);
        data.setRemark(remark);
        miniprogram.setAppid("");
        miniprogram.setPagepath("");
        String template_id = "Ds7-uA5A6Jdn_zr1Hk85RDOXjyOFSzv9qrao9aHNS14";
        message.setTemplateId(template_id);

        QueryWrapper wrapper = new QueryWrapper();

        wrapper.eq("name", name);


        userInfoList = mapper.selectOne(wrapper);

        if (userInfoList == null) {
            dataVo.setCode(500);
            dataVo.setMsg("数据不存在，请录入信息");
            return dataVo;
        }

        if(userInfoList.getOpenid() != null && miscellaneous != "0"){

            sendAcquireMessage(userInfoList.getOpenid(),name, phone, commodity, receiving, delivery, plate, grossWeight, tareWeight,moisture, impurities, bulkDensity, mildew, unitPrice, amount, money, skinTime, time, serialNumber, operator,note,miscellaneous);

        }

        String openid = userInfoList.getOpenid();

        message.setTouser(openid);
        message.setMiniprogram(miniprogram);
        message.setUrl("");
        message.setData(data);


        String s = JSONObject.toJSONString(message);

        //整理好用户信息后发送给用户
        String str = HttpRequest.sendPost("https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + tokens.getAccessToken(), s);
        JSONObject jsonObject = JSONObject.parseObject(str);
        Code code = JSON.toJavaObject(jsonObject, Code.class);
        log.info(s.toString());

        if (!code.getErrmsg().equals("ok")) {
            dataVo.setMsg(code.getErrmsg());
            dataVo.setCode(code.getErrcode());
            return dataVo;

        }
        dataVo.setData(str);

        return dataVo;
    }

    /**
     * @param name         姓名       x
     * @param phone        手机号    s
     * @param commodity    货物名称   h
     * @param receiving    收货地址       s
     * @param delivery     发货地址     f
     * @param plate        车牌号码       c
     * @param grossWeight  毛重    m
     * @param tareWeight   皮重      p
     * @param moisture     净重        j
     * @param impurities   水分 s
     * @param bulkDensity  杂质     z
     * @param mildew       容重    r
     * @param unitPrice    霉变  m
     * @param amount       单价    z
     * @param money        金额 j
     * @param skinTime     过皮时间    g
     * @param time         过毛时间       g
     * @param serialNumber 流水号      l
     * @param operator     操作员       c
     * @return
     */
    //新增用户订单信息
    @Override
    public DataVo<String> sendAcquireMessage(String openId,String name, String phone, String commodity, String receiving, String delivery, String plate, String grossWeight, String tareWeight, String moisture, String impurities, String bulkDensity, String mildew, String unitPrice, String amount, String money, String skinTime, String time, String serialNumber, String operator, String note, String miscellaneous) {
        //1.拿到所有的值
        Order orderAll = new Order();
        //SELECT MAX(id) FROM `order`
        Integer maxId = orderMapper.selectMaxIdMapper();
//        if(maxId != null){
//            orderAll.setId(maxId+1);
//        }else {
//
//        }
        orderAll.setId(maxId+1);
        basicsMessage(openId, name, phone, commodity, receiving, delivery, plate, grossWeight, tareWeight, moisture, impurities, bulkDensity, mildew, unitPrice, amount, money, skinTime, time, serialNumber, operator, orderAll);

        Date date = new Date();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        System.out.println(dateFormat.format(date));

        orderAll.setOperationDate(dateFormat.format(date));
//        System.out.printf(orderAll.getName());
        //2.进行插入
        int a = orderMapper.insert(orderAll);
        System.out.printf(String.valueOf(a));

        return null;
    }

    //返回订单信息
    @Override
    public DataVo<List<Order>> sendMessageTopopup(String openid) {

        HashMap<String,Object> mapOrder = new HashMap<>();
        mapOrder.put("open_id",openid);
        List<Order> orders = orderMapper.selectByMap(mapOrder);
        System.out.println(orders);
        DataVo dataVo = new DataVo("用户获取成功", 0,2, orders);
        return dataVo;
    }
    //修改并调用发送接口
    @Override
    public DataVo<String> sendSaveMessage(String id,String openId,String name, String phone, String commodity, String receiving, String delivery, String plate, String grossWeight, String tareWeight, String moisture, String impurities, String bulkDensity, String mildew, String unitPrice, String amount, String money, String skinTime, String time, String serialNumber, String operator, String note, String miscellaneous,String operationDate) {

        //先进行 修改  根据ID修改
        Order orderUp = new Order();
        orderUp.setId(Integer.valueOf(id));
        basicsMessage(openId, name, phone, commodity, receiving, delivery, plate, grossWeight, tareWeight, moisture, impurities, bulkDensity, mildew, unitPrice, amount, money, skinTime, time, serialNumber, operator, orderUp);
        orderUp.setOperationDate(operationDate);
        int aUp = orderMapper.updateById(orderUp);
        System.out.println(aUp);
        if(aUp == 1){
            //在进行查询发送
            //orderMapper.selectByMap();
            sendMessage(name, phone, commodity, receiving, delivery, plate, grossWeight, tareWeight,
                    moisture, impurities, bulkDensity, mildew, unitPrice, amount, money, skinTime, time, serialNumber, operator,note,"0");
        }
        return null;
    }

    private void basicsMessage(String openId, String name, String phone, String commodity, String receiving, String delivery, String plate, String grossWeight, String tareWeight, String moisture, String impurities, String bulkDensity, String mildew, String unitPrice, String amount, String money, String skinTime, String time, String serialNumber, String operator, Order orderUp) {
        orderUp.setOpenId(openId);
        orderUp.setName(name);
        orderUp.setPhone(phone);
        orderUp.setCommodity(commodity);//货物名称
        orderUp.setReceiving(receiving);//收货地址
        orderUp.setDelivery(delivery);//发货地址
        orderUp.setPlate(plate);//车牌号
        orderUp.setGrossWeight(grossWeight);//毛重
        orderUp.setTareWeight(tareWeight);//皮重
        orderUp.setMoisture(moisture);//a净重
        orderUp.setImpurities(impurities);//水分
        orderUp.setBulkDensity(bulkDensity);//杂质
        orderUp.setMildew(mildew);//容重
        orderUp.setUnitPrice(unitPrice);//霉变
        orderUp.setAmount(amount);//单价
        orderUp.setMoney(money);//金额
        orderUp.setSkinTime(skinTime);//过皮时间
        orderUp.setTime(time);//过毛时间
        orderUp.setSerialNumber(serialNumber);//流水号
        orderUp.setOperator(operator);//操作员
    }

    @Override
    public DataVo<List<Order>> getDateUserMessage(String openId, String date) {

        LambdaQueryWrapper<Order> lqwOrder = new LambdaQueryWrapper<>();
        lqwOrder.likeRight(Order::getSkinTime,date).eq(Order::getOpenId,openId);
        List<Order> orders = orderMapper.selectList(lqwOrder);
        System.out.println(orders);
        DataVo dataVo = new DataVo("用户获取成功", 0,2, orders);
        return dataVo;

    }

    @Override
    public DataVo<List<UserInfoList>> getUser(Integer page, Integer limit) {
        QueryWrapper wrapper = new QueryWrapper(null);


        IPage<UserInfoList> userInfoListPage = new Page<>(page, limit);

        IPage<UserInfoList> userInfoListList = mapper.selectPage(userInfoListPage, wrapper);


        DataVo dataVo = new DataVo("用户获取成功", 0, userInfoListList.getTotal(), userInfoListList.getRecords());
        return dataVo;


    }
    @Override
    public DataVo postNameIsPhone(String openid, String name, String phone) {
        QueryWrapper wrapper = new QueryWrapper();


        if (name == null || name == "" && phone != null && phone != "") {
            wrapper.eq("openid", openid);
            UserInfoList userInfoList = mapper.selectOne(wrapper);


//           mapper.update(@Param())


        }
        if (phone == null || phone == "") {

        }


        return null;
    }

    @Override
    public DataVo updateUser(String phone, String name, String openid) {
        DataVo dataVo = new DataVo();
        if (phone == null || phone == "") {
            dataVo.setMsg("手机号不能为空");
            dataVo.setCode(500);
            dataVo.setCount(0);
            return dataVo;
        }
        if (name == null || name == "") {
            dataVo.setMsg("姓名不能为空");
            dataVo.setCode(500);
            dataVo.setCount(0);
            return dataVo;
        }
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("openid", openid);


        UserInfoList userInfoList = mapper.selectOne(wrapper);

        if (userInfoList == null) {
            String token = HttpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/token", "grant_type=client_credential&appid=wx8ac6ce191e5e5537&secret=ee48e6ff750fdad237ef04b75c6d0c74");
            JSONObject tokenJson = JSONObject.parseObject(token);
            ToKens tokens = JSON.toJavaObject(tokenJson, ToKens.class);
            log.info(tokens.getAccessToken());
            log.info("https://api.weixin.qq.com/cgi-bin/user/info?access_token=" + tokens.getAccessToken() + "&openid=" + openid + "&lang=zh_CN");
            String user = HttpRequest.sendPost("https://api.weixin.qq.com/cgi-bin/user/info", "access_token=" + tokens.getAccessToken() + "&openid=" + openid + "&lang=zh_CN");
            log.info(user);
            UserInfoList shop = JSONObject.parseObject(user, UserInfoList.class);


            shop.setPhone(phone);
            shop.setName(name);
            shop.setOpenid(openid);
            log.info(shop + "");

            mapper.insert(shop);

            dataVo.setMsg("添加成功");
            dataVo.setCode(0);
            dataVo.setCount(0);
            return dataVo;

        }

        userInfoList.setPhone(phone);
        userInfoList.setName(name);
        dataVo.setMsg("绑定成功");
        return dataVo;
    }
    @Override
    public DataVo deleteUser(String phone, String name, String openid) {
        DataVo dataVo = new DataVo();
        if (phone == null || phone == "") {
            dataVo.setMsg("手机号不能为空");
            dataVo.setCode(500);
            dataVo.setCount(0);
            return dataVo;
        }
        if (name == null || name == "") {
            dataVo.setMsg("姓名不能为空");
            dataVo.setCode(500);
            dataVo.setCount(0);
            return dataVo;
        }
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("openid", openid);


        UserInfoList userInfoList = mapper.selectOne(wrapper);


        if (userInfoList == null) {
            String token = HttpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/token", "grant_type=client_credential&appid=wx8ac6ce191e5e5537&secret=ee48e6ff750fdad237ef04b75c6d0c74");
            JSONObject tokenJson = JSONObject.parseObject(token);
            ToKens tokens = JSON.toJavaObject(tokenJson, ToKens.class);
            log.info(tokens.getAccessToken());
            log.info("https://api.weixin.qq.com/cgi-bin/user/info?access_token=" + tokens.getAccessToken() + "&openid=" + openid + "&lang=zh_CN");
            String user = HttpRequest.sendPost("https://api.weixin.qq.com/cgi-bin/user/info", "access_token=" + tokens.getAccessToken() + "&openid=" + openid + "&lang=zh_CN");
            log.info(user);
            UserInfoList shop = JSONObject.parseObject(user, UserInfoList.class);


            shop.setPhone(phone);
            shop.setName(name);
            shop.setOpenid(openid);
            log.info(shop + "");

            mapper.insert(shop);

            dataVo.setMsg("添加成功");
            dataVo.setCode(0);
            dataVo.setCount(0);
            return dataVo;


        }
        mapper.delete(wrapper);
        //删除用户后判断是否删除成功，成功后删除相应订单信息
        /*userInfoList.setPhone(phone);
        userInfoList.setName(name);*/
        dataVo.setMsg("1");
        return dataVo;
    }

    @Override
    public String queryUser(String name,String password) {
        //QueryWrapper wrapper = new QueryWrapper(null);
        //用戶登录信息
        login userName;
        String returnErrerData = "0";
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("name", name);
        userName = loginMapper.selectOne(wrapper);
        //User user = mapper.selectOne(new QueryWrapper<User>().eq("username", username));
        if(userName != null){
            if (userName.getName() == null || userName.getPassword() == null){
                //throw new UsernameNotFoundException("用户不存在");
                System.out.printf("登录失败1");
                return returnErrerData;
            }else if(name.equals(userName.getName()) && password.equals(userName.getPassword())){
                System.out.printf("登录成功");
        //            Map mapName = new HashMap<>();
        //            mapName.put("userName",name);
                return name;
            }else {
                System.out.printf("登录失败2");
                return returnErrerData;
            }
        }else{
            return returnErrerData;
        }
    }

    @Override
    public DataVo<List<UserInfoList>> getOneUser(String name) {
        //判断是否为空

        //用戶列表信息

        /*QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("name", name);*/

        QueryWrapper<UserInfoList> queryWrapper = new QueryWrapper<>();
        // like 表示包含某个字符
        // likeLeft 表示以某个字符结尾
        // likeRight 表示以某个字符开头的
        queryWrapper.likeRight("name",name);
        //用戶列表信息
        IPage<UserInfoList> userInfoListPage = new Page<>(1, 10);

        List<UserInfoList> userInfoLista = mapper.selectList(queryWrapper);

        DataVo dataVo = new DataVo("用户获取成功", 0, 10, userInfoLista);
        return dataVo;

    }


}



