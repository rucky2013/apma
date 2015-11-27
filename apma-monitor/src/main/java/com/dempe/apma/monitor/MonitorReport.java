package com.dempe.apma.monitor;

/**
 * Created with IntelliJ IDEA.
 * User: Dempe
 * Date: 2015/11/27
 * Time: 11:35
 * To change this template use File | Settings | File Templates.
 */
public interface MonitorReport {

    /**
     * 数据上报接口
     *
     * @param menuId 菜单id
     * @param type   图标类型
     * @param data   上报数据
     */
    void report(String menuId, ChartType type, Object data);
}
