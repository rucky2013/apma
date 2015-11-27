package com.dempe.apma.web.service;

import com.dempe.apma.web.dao.MenuDao;
import com.dempe.apma.web.model.Menu;
import com.dempe.apma.web.utils.UUIDMaker;
import org.mongodb.morphia.Key;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Dempe
 * Date: 2015/11/27
 * Time: 14:22
 * To change this template use File | Settings | File Templates.
 */
@Service
public class MenuService {

    @Resource
    private MenuDao menuDao;

    public Key<Menu> addMenu(String name, String info) {
        Menu menu = new Menu();
        menu.setId(UUIDMaker.uuidString());
        menu.setName(name);
        menu.setInfo(info);
        return menuDao.save(menu);
    }

    public List<Menu> listMenu() {
        return menuDao.find().asList();
    }
}
