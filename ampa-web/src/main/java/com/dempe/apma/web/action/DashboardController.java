package com.dempe.apma.web.action;

import com.codahale.metrics.annotation.Timed;
import com.dempe.apma.web.model.Menu;
import com.dempe.apma.web.service.MenuService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Dempe
 * Date: 2015/11/27
 * Time: 14:53
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/")
public class DashboardController {

    @Resource
    private MenuService menuService;

    @Timed
    @RequestMapping("/index")
    public String index(Model model) {
        List<Menu> menus = menuService.listMenu();
        model.addAttribute("menus", menus);
        return "index";
    }
}
