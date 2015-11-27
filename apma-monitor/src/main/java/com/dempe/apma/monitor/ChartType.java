package com.dempe.apma.monitor;

/**
 * Created with IntelliJ IDEA.
 * User: Dempe
 * Date: 2015/11/27
 * Time: 11:38
 * To change this template use File | Settings | File Templates.
 */
public enum ChartType {

    LINE_CHART(1), AREA_CHART(2), BAR_CHART(3), PIE_CHART(4), SCATTER_POT_CHART(5);

    int type;

    private ChartType(int type) {
        this.type = type;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
