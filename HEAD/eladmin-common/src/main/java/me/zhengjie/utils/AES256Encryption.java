package me.zhengjie.utils;

import java.nio.charset.StandardCharsets;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

public class AES256Encryption {

    private static final String ALGORITHM = "AES/CTR/NoPadding";

    private SecretKey secretKey;
    private SecureRandom secureRandom;
    private byte[] ivBytes;

    public AES256Encryption() throws NoSuchAlgorithmException {
        KeyGenerator keyGen = KeyGenerator.getInstance("AES");
        secureRandom = new SecureRandom();
        
        keyGen.init(256, secureRandom);
        secretKey = keyGen.generateKey();
    }

    public String encrypt(String value) {
        try {
            ivBytes = new byte[16];
            secureRandom.nextBytes(ivBytes);
            IvParameterSpec iv = new IvParameterSpec(ivBytes);

            Cipher cipher = Cipher.getInstance(ALGORITHM);
            cipher.init(Cipher.ENCRYPT_MODE, secretKey, iv);

            byte[] encrypted = cipher.doFinal(value.getBytes(StandardCharsets.UTF_8));
            
            // prepend the IV to the encrypted data
            byte[] ivAndEncrypted = new byte[ivBytes.length + encrypted.length];
            System.arraycopy(ivBytes, 0, ivAndEncrypted, 0, ivBytes.length);
            System.arraycopy(encrypted, 0, ivAndEncrypted, ivBytes.length, encrypted.length);
            
            return Base64.getEncoder().encodeToString(ivAndEncrypted);
        } catch (Exception ex) {
            throw new EncryptionException("Error while encrypting", ex);
        }
    }

    public String decrypt(String encryptedBase64) {
    	if (encryptedBase64 == null) {
            return encryptedBase64;
        }
    	if (encryptedBase64.length() != 52) {
    		return encryptedBase64+"(解密失敗)";
    	}
        try {
            byte[] ivAndEncrypted = Base64.getDecoder().decode(encryptedBase64);

            // extract the IV from the prefixed encrypted data
            ivBytes = Arrays.copyOfRange(ivAndEncrypted, 0, 16);
            byte[] encrypted = Arrays.copyOfRange(ivAndEncrypted, 16, ivAndEncrypted.length);
            
            IvParameterSpec iv = new IvParameterSpec(ivBytes);

            Cipher cipher = Cipher.getInstance(ALGORITHM);
            cipher.init(Cipher.DECRYPT_MODE, secretKey, iv);

            byte[] original = cipher.doFinal(encrypted);

            return new String(original, StandardCharsets.UTF_8);
        } catch (Exception ex) {
            throw new EncryptionException("Error while decrypting", ex);
        }
    }


    public static void main(String[] args) throws NoSuchAlgorithmException {
        AES256Encryption aesEncryption = new AES256Encryption();
        String originalString = "Hello^@()@^七六五!";
        System.out.println("Original string: " + originalString);

        String encryptedString = aesEncryption.encrypt(originalString);
        System.out.println("Encrypted string: " + encryptedString);

        String decryptedString = aesEncryption.decrypt(encryptedString);
        System.out.println("Decrypted string: " + decryptedString);
        System.out.println(encryptedString.length());

        String wrongFormatString = aesEncryption.decrypt("hotdog");
        System.out.println("Decrypted wrong format string: " + wrongFormatString);
    }

    class EncryptionException extends RuntimeException {
        EncryptionException(String message, Throwable cause) {
            super(message, cause);
        }
    }
}

