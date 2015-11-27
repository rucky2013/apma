package com.dempe.apma.web.action;

import com.dempe.apma.web.model.Menu;
import com.dempe.apma.web.service.MenuService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * 菜单业务
 * User: Dempe
 * Date: 2015/11/27
 * Time: 14:22
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

    @Resource
    private MenuService menuService;

    @RequestMapping("/add")
    public String add(@RequestParam String menuName, @RequestParam String info) {
        if (StringUtils.isNotBlank(menuName)) {
            menuService.addMenu(menuName, info);
        }
        return "redirect:/index";
    }

    @RequestMapping("/list")
    public String list(Model model) {
        List<Menu> menus = menuService.listMenu();
        model.addAttribute("menus", menus);
        return "menu";
    }

    @RequestMapping("/addPage")
    public String addPage(Model model) {
        List<Menu> menus = menuService.listMenu();
        model.addAttribute("menus", menus);
        return "addmenu";
    }

}
