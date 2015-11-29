package com.dempe.apma.web.utils;

import com.github.abel533.echarts.axis.CategoryAxis;
import com.github.abel533.echarts.axis.ValueAxis;
import com.github.abel533.echarts.code.Magic;
import com.github.abel533.echarts.code.MarkType;
import com.github.abel533.echarts.code.Tool;
import com.github.abel533.echarts.code.Trigger;
import com.github.abel533.echarts.data.PointData;
import com.github.abel533.echarts.feature.MagicType;
import com.github.abel533.echarts.json.GsonOption;
import com.github.abel533.echarts.series.Bar;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/11/29
 * Time: 上午9:58
 * To change this template use File | Settings | File Templates.
 */
public class ApmaOptionMaker extends GsonOption {


    public static String makeBarOptionStr(String title, String subtext, String legend, String barName,
                                          List<Object> xAxisList, List<Object> yAxisList) {
        GsonOption option = new GsonOption();
        option.title().text(title).subtext(subtext);
        option.tooltip().trigger(Trigger.axis);
        option.legend(legend);
        option.toolbox().show(true).feature(Tool.mark, Tool.dataView, new MagicType(Magic.line, Magic.bar).show(true),
                Tool.restore, Tool.saveAsImage);
        option.calculable(true);
        option.xAxis(new CategoryAxis().data(xAxisList));
        option.yAxis(new ValueAxis());
        Bar bar = new Bar(barName);
        bar.setData(yAxisList);
        bar.markPoint().data(new PointData().type(MarkType.max).name("最大值"), new PointData().type(MarkType.min).name("最小值"));
        bar.markLine().data(new PointData().type(MarkType.average).name("平均值"));
        option.series(bar);
        return option.toString();

    }

}
