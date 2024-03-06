package testMd5;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class DynamicMD5Encryption {

//    随机加密
// 创建一个加密方法
public static String encrypt(String input) {
    try {
        // 创建一个强随机数生成器
        SecureRandom random = SecureRandom.getInstanceStrong();
        // 创建一个16字节的字节数组作为盐
        byte[] salt = new byte[16];
        // 生成盐
        random.nextBytes(salt);

        // 创建一个MD5消息摘要实例
        MessageDigest md = MessageDigest.getInstance("MD5");
        // 使用盐更新摘要
        md.update(salt);
        // 使用输入的字节更新摘要
        md.update(input.getBytes());
        // 获取摘要
        byte[] digest = md.digest();

        // 创建一个字符串生成器
        StringBuilder sb = new StringBuilder();
        // 遍历摘要字节数组
        for (byte b : digest) {
            // 将每个字节转换为两位十六进制字符串并拼接到字符串生成器上
            sb.append(String.format("%02x", b & 0xff));
        }
        // 返回加密后的字符串
        return sb.toString();
    } catch (NoSuchAlgorithmException e) {
        e.printStackTrace();
        return null;
    }
}

    public static void main(String[] args) {
        // 创建一个要加密的字符串
        String input1 = "12345";
        String input2 = "12345";

        // 调用加密方法
        String encrypted1 = encrypt(input1);
        String encrypted2 = encrypt(input2);

        // 打印加密后的字符串
        System.out.println("Encrypted string 1: " + encrypted1);
        System.out.println("Encrypted string 2: " + encrypted2);

        // 比较两个加密后的字符串是否相等
        if (encrypted1.equals(encrypted2)) {
            System.out.println("The encrypted strings are equal.");
        } else {
            System.out.println("The encrypted strings are not equal.");
        }
    }



}
