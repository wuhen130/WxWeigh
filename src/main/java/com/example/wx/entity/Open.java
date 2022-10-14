package com.example.wx.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author jobob
 * @since 2021-07-08
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("wx_open")
public class Open implements Serializable {

    private static final long serialVersionUID = 1L;

    private String openId;

    private String phone;

    private String name;


}
