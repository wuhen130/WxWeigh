package com.example.wx.service.impl;

import com.example.wx.entity.Task;
import com.example.wx.mapper.TaskMapper;
import com.example.wx.service.ITaskService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 发送模板消息表 服务实现类
 * </p>
 *
 * @author jobob
 * @since 2021-07-08
 */
@Service
public class TaskServiceImpl extends ServiceImpl<TaskMapper, Task> implements ITaskService {

}
