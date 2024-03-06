package testMd5;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class testMD5 {


    private static final String SALT = "mySalt123"; // 固定的盐
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
    public static void main(String[] args) {
        String input1 = "12345";
        String input2 = "12345";
        String encrypted1 = encrypt(input1);
        String encrypted2 = encrypt(input2);
        System.out.println("Encrypted string 1: " + encrypted1);
        System.out.println("Encrypted string 2: " + encrypted2);
        if (encrypted1.equals(encrypted2)) {
            System.out.println("The encrypted strings are equal.");
        } else {
            System.out.println("The encrypted strings are not equal.");
        }
    }
}
