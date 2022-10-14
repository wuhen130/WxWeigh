package com.example.wx.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import java.time.LocalDateTime;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 发送模板消息表
 * </p>
 *
 * @author jobob
 * @since 2021-07-08
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("wx_task")
public class Task implements Serializable {

    private static final long serialVersionUID = 1L;

    private String templateId;

    private String jwid;

    private String sendType;

    private String tagId;

    private String openid;

    private String redirectMode;

    private String url;

    private String miniAppid;

    private String pagepath;

    private String color;

    private Integer totalCount;

    private Integer successCount;

    private LocalDateTime createDate;

    private LocalDateTime taskSendTime;

    private String taskSendStatus;

    private LocalDateTime sendTime;

    private String dataJson;

    private String title;


}
