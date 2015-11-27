package com.dempe.apma.web.dao;

import com.dempe.apma.web.model.Menu;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.dao.BasicDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: Dempe
 * Date: 2015/11/27
 * Time: 14:22
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class MenuDao extends BasicDAO<Menu, Serializable> {

    @Autowired
    protected MenuDao(Datastore dataStore) {
        super(dataStore);
        ensureIndexes();// 自动创建索引
    }
}