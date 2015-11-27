package com.dempe.apma.web.model;

import org.mongodb.morphia.annotations.Entity;
import org.mongodb.morphia.annotations.Id;

/**
 * 菜单
 * User: Dempe
 * Date: 2015/11/27
 * Time: 14:21
 * To change this template use File | Settings | File Templates.
 */
@Entity(value = "menu")
public class Menu {
    @Id
    private String id;
    private String name;
    private String info;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
