package com.fz.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {
    private static final String SALT = "mySalt123"; // 固定的盐

//    加密方法
    public static String encrypt(String input) {
        try {
            // 获取MD5摘要实例
            MessageDigest md = MessageDigest.getInstance("MD5");
            // 使用固定的盐与输入字符串更新摘要
            md.update(SALT.getBytes());
            md.update(input.getBytes());
            byte[] digest = md.digest();
            StringBuilder sb = new StringBuilder();
            // 将加密后的字节转换为十六进制字符串
            for (byte b : digest) {
                sb.append(String.format("%02x", b & 0xff));
            }
            // 将固定盐添加到加密后的字符串中
            sb.append(SALT);
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }


    }


}