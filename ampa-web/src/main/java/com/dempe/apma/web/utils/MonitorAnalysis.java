package com.dempe.apma.web.utils;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/11/29
 * Time: 上午10:09
 * To change this template use File | Settings | File Templates.
 */
public class MonitorAnalysis {

    public static final Map<String, Integer> map = new ConcurrentHashMap<String, Integer>();

    public static List<String> getXList(TimeType type) {
        switch (type){
            case MINUTE:
                break;
            case FIVE_MINUTE:
                break;
            case HALF_HOUR:
                break;
            case  HOUR:
                break;

        }
        return null;
    }

    public static List<Integer> getYList(TimeType type) {
        return null;
    }


    private void handMinuteXList(){

    }

}
