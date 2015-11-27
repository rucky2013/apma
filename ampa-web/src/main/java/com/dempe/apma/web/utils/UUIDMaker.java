package com.dempe.apma.web.utils;

import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 * User: Dempe
 * Date: 2015/11/27
 * Time: 14:35
 * To change this template use File | Settings | File Templates.
 */
public class UUIDMaker {
    public static String uuidString() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
}
