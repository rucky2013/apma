package com.dempe.apma.web.utils;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/11/29
 * Time: 上午10:16
 * To change this template use File | Settings | File Templates.
 */
public enum TimeType {

    MINUTE(1), FIVE_MINUTE(2), HALF_HOUR(3), HOUR(4);

    private int type;

    private TimeType(int type) {
        this.type = type;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
