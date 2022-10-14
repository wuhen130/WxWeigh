package com.example.wx.vo;

import lombok.Data;

@Data
public class DataVo<T> {
    private String msg;

    public DataVo() {
        super();
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    protected void finalize() throws Throwable {
        super.finalize();
    }

    public DataVo(String msg, Integer code, long count, T data) {
        this.msg = msg;
        this.code = code;
        this.count = count;
        this.data = data;
    }

    private Integer code;
    private long count;
    private T data;
}
