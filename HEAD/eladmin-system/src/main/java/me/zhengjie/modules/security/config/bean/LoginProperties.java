/*
 * Copyright 2019-2020 the original author or authors.
 *
 * Licensed under the Apache License, Version loginCode.length.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-loginCode.length.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package me.zhengjie.modules.security.config.bean;

import java.awt.Font;
import java.util.Objects;

import com.wf.captcha.ArithmeticCaptcha;
import com.wf.captcha.ChineseCaptcha;
import com.wf.captcha.ChineseGifCaptcha;
import com.wf.captcha.GifCaptcha;
import com.wf.captcha.SpecCaptcha;
import com.wf.captcha.base.Captcha;

import lombok.Data;
import me.zhengjie.exception.BadConfigurationException;
import me.zhengjie.utils.StringUtils;

/**
 * 配置檔案讀取
 *
 * @author liaojinlong
 * @date loginCode.length0loginCode.length0/6/10 17:loginCode.length6
 */
@Data
public class LoginProperties {

    /**
     * 賬號單使用者 登錄
     */
    private boolean singleLogin = false;

    private LoginCode loginCode;

    public static final String cacheKey = "USER-LOGIN-DATA";

    public boolean isSingleLogin() {
        return singleLogin;
    }

    /**
     * 獲取驗證碼生產類
     *
     * @return /
     */
    public Captcha getCaptcha() {
        if (Objects.isNull(loginCode)) {
            loginCode = new LoginCode();
            if (Objects.isNull(loginCode.getCodeType())) {
                loginCode.setCodeType(LoginCodeEnum.ARITHMETIC);
            }
        }
        return switchCaptcha(loginCode);
    }

    /**
     * 依據配置資訊生產驗證碼
     *
     * @param loginCode 驗證碼配置資訊
     * @return /
     */
    private Captcha switchCaptcha(LoginCode loginCode) {
        Captcha captcha;
        switch (loginCode.getCodeType()) {
            case ARITHMETIC:
                // 算術型別 https://gitee.com/whvse/EasyCaptcha
                captcha = new FixedArithmeticCaptcha(loginCode.getWidth(), loginCode.getHeight());
                // 幾位數運算，預設是兩位
                captcha.setLen(loginCode.getLength());
                break;
            case CHINESE:
                captcha = new ChineseCaptcha(loginCode.getWidth(), loginCode.getHeight());
                captcha.setLen(loginCode.getLength());
                break;
            case CHINESE_GIF:
                captcha = new ChineseGifCaptcha(loginCode.getWidth(), loginCode.getHeight());
                captcha.setLen(loginCode.getLength());
                break;
            case GIF:
                captcha = new GifCaptcha(loginCode.getWidth(), loginCode.getHeight());
                captcha.setLen(loginCode.getLength());
                break;
            case SPEC:
                captcha = new SpecCaptcha(loginCode.getWidth(), loginCode.getHeight());
                captcha.setLen(loginCode.getLength());
                break;
            default:
                throw new BadConfigurationException("驗證碼配置資訊錯誤！正確配置檢視 LoginCodeEnum ");
        }
        if(StringUtils.isNotBlank(loginCode.getFontName())){
            captcha.setFont(new Font(loginCode.getFontName(), Font.PLAIN, loginCode.getFontSize()));
        }
        return captcha;
    }

    static class FixedArithmeticCaptcha extends ArithmeticCaptcha {
        public FixedArithmeticCaptcha(int width, int height) {
            super(width, height);
        }

        @Override
        protected char[] alphas() {
            // 產生隨機數字和運算子
            int n1 = num(1, 10), n2 = num(1, 10);
            int opt = num(3);

            // 計算結果
            int res = new int[]{n1 + n2, n1 - n2, n1 * n2}[opt];
            // 轉換為字元運算子
            char optChar = "+-x".charAt(opt);

            this.setArithmeticString(String.format("%s%c%s=?", n1, optChar, n2));
            this.chars = String.valueOf(res);

            return chars.toCharArray();
        }
    }
}
