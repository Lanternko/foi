package com.ezcore.common.utils;

import java.text.Normalizer;
import java.util.List;
import java.util.regex.Pattern;

import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.entity.CaseCompanyReply;
import com.ezcore.foi.ecase.dao.entity.CaseExaminer;
import com.ezcore.foi.ecase.dao.entity.CaseFlow;
import com.ezcore.foi.ecase.dao.entity.CaseMaster;
import com.ezcore.foi.ecase.dao.entity.CaseMediate;
import com.ezcore.foi.ecase.dao.entity.CaseMediateContact;
import com.ezcore.foi.ecase.dao.entity.CaseMeetPlanRefDoc;
import com.ezcore.foi.ecase.dao.entity.CaseReceiveAppl;
import com.ezcore.foi.ecase.dao.entity.CaseReceiveOther;
import com.ezcore.foi.ecase.dao.entity.CaseTree;
import com.ezcore.foi.ecase.dao.entity.Meeting;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;

import me.zhengjie.exception.BadRequestException;

public class VerifyInputs {
	
	/**
	 * 檢查物件是否為null<br>
	 * 是，直接丟出BadRequestException
	 */
	public static Object isNull(Object obj, String errMsg) {
		if (errMsg == null || errMsg.isEmpty()) {
			errMsg = "傳入物件為空值(null)";
		}
		
		if (obj == null) {
			throw new BadRequestException(errMsg);
		}
		return obj;
	}
	public static String isStringNull(String obj, String errMsg) {
		if (errMsg == null || errMsg.isEmpty()) {
			errMsg = "傳入物件為空值(null)";
		}
		
		if (obj == null) {
			throw new BadRequestException(errMsg);
		}
		return obj;
	}

	/**
	 * 檢查代碼是否存在、種類(kind)是否正確
	 */
	public static CodeDetailDto checkCode(String kind, CodeDetailDto code) {
		if (code == null || !kind.equals(code.getKind())) {
			throw new BadRequestException("傳入代碼參數錯誤");
		}
		return code;
	}
	
	/**
	 * 檢查案件主檔(case_master)是否存在
	 */
	public static CaseMaster checkCaseMaster(CaseMaster master) {
		if (master == null) {
			throw new BadRequestException("資料庫找不到該筆案件主檔的紀錄");
		}
		return master;
	}
	
	/**
	 * 檢查 CodeDetailDto 是否存在
	 */
	public static CodeDetailDto checkCodeDetailDto(CodeDetailDto codedetail) {
	    if (codedetail == null) {
	        throw new BadRequestException("傳入的 CodeDetailDto 參數錯誤");
	    }
	    return codedetail;
	}
	
	/**
	 * 檢查案件流程(case_flow)是否存在
	 */
	public static CaseFlow checkCaseFlow(CaseFlow flow) {
		if (flow == null) {
			throw new BadRequestException("傳入流程參數錯誤");
		}
		return flow;
	}
	
	/**
	 * 檢查案件流程(case_flow)是否存在
	 */
	public static CaseTree checkCaseTree(CaseTree tag) {
		if (tag == null) {
			throw new BadRequestException("傳入案件標籤參數錯誤");
		}
		return tag;
	}
	
	/**
	 * 檢查大會(meeting)是否存在
	 */
	public static Meeting checkMeeting(Meeting meeting) {
		if (meeting == null) {
			throw new BadRequestException("傳入大會參數錯誤");
		}
		return meeting;
	}
	
	/**
	 * 檢查提會資料(case_meet_plan_ref_doc)是否存在
	 */
	public static CaseMeetPlanRefDoc checkCaseMeetPlanRefDoc(CaseMeetPlanRefDoc refDoc) {
		if (refDoc == null) {
			throw new BadRequestException("傳入提會資料參數錯誤");
		}
		return refDoc;
	}

	/**
	 * 檢查調處聯絡紀錄(case_mediate_contact)是否存在
	 */
	public static CaseMediateContact checkCaseMediateContact(CaseMediateContact mediateContact) {
		if (mediateContact == null) {
			throw new BadRequestException("傳入調處聯絡紀錄參數錯誤");
		}
		return mediateContact;
	}
	
	/**
	 * 檢查調處紀錄(case_mediate)是否存在
	 */
	public static CaseMediate checkCaseMediate(CaseMediate mediate) {
		if (mediate == null) {
			throw new BadRequestException("傳入調處紀錄參數錯誤");
		}
		return mediate;
	}
	
	/**
	 * 檢查案關文號(case_receive_appl)是否存在
	 */
	public static CaseReceiveAppl checkCaseReceiveAppl(CaseReceiveAppl receiveAppl) {
		if (receiveAppl == null) {
			throw new BadRequestException("傳入案關文號參數錯誤");
		}
		return receiveAppl;
	}
	
	/**
	 * 檢查爭議公司回覆(case_company_reply)是否存在
	 */
	public static CaseCompanyReply checkCaseCompanyReply(CaseCompanyReply companyReply) {
		if (companyReply == null) {
			throw new BadRequestException("傳入爭議公司回覆參數錯誤");
		}
		return companyReply;
	}
	
	/**
	 * 檢查立委/法院來文(case_receive_other)是否存在
	 */
	public static CaseReceiveOther checkCaseReceiveOther(CaseReceiveOther receiveOther) {
		if (receiveOther == null) {
			throw new BadRequestException("傳入立委/法院來文參數錯誤");
		}
		return receiveOther;
	}
	
	/**
	 * 檢查預審委員(case_examiner)是否存在
	 */
	public static CaseExaminer checkCaseExaminer(CaseExaminer examiner) {
		if (examiner == null) {
			throw new BadRequestException("傳入預審委員參數錯誤");
		}
		return examiner;
	}

	
	/*
	 * 檢查數字是否符合格式，
	 * input為(string, 最少幾位數，最多幾位數)
	 */
	public static boolean isValidDigitString(String str, int minDigits, int maxDigits) {
	    // 驗證是否只包含數字
	    if (!str.matches("\\d+")) {
	        return false;
	    }
	    int len = str.length();
	    return len >= minDigits && len <= maxDigits;
	}
	/*
	 * 檢查文字是否符合格式，
	 * input為(string, 最少幾位數，最多幾位數)
	 */
	public static boolean isValidWordString(String str, int minChars, int maxChars) {
	    // 驗證是否只包含中英文字符
	    if (!str.matches("[\\p{L}]+")) {
	        return false;
	    }
	    int len = str.length();
	    return len >= minChars && len <= maxChars;
	}
	/*
	 * 檢查“中英文的文字+數字”是否符合格式，
	 * input為(string, 最少幾位數，最多幾位數)
	 */
	public static boolean isValidWordAndDigitString(String str, int minChars, int maxChars) {
		// 驗證是否只包含文字和數字
		if (!str.matches("[\\p{IsAlphabetic}\\p{IsDigit}]+")) {
	        return false;
	    }
		
		int len = str.length();
	    return len >= minChars && len <= maxChars;
	}
	
	/*
	 * 驗證是否全為半形
	 */
	public static boolean isHalfWidth(String input) {
		for (char c : input.toCharArray()) {
			if (!Normalizer.normalize(String.valueOf(c), Normalizer.Form.NFKC).equals(String.valueOf(c))) {
				return false;
			}
		}
		return true;
	}
	/*
	 * 驗證是否全為全形
	 */
	public static boolean isFullWidth(String input) {
		for (char c : input.toCharArray()) {
			if (Normalizer.normalize(String.valueOf(c), Normalizer.Form.NFKC).equals(String.valueOf(c))) {
				return false;
			}
		}
		return true;
	}
	/*
	 * 驗證是否為32位數字的UUID
	 */
	public static boolean isValidUUID(String uuid) {
	    String regex = "^[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}$";
	    return uuid.matches(regex);
	}

	/*
	 * 驗證電話號碼：室內或手機都可以
	 */
	public static boolean isValidPhoneNumber(String phoneNumber) {
	    // 驗證是否只包含數字
	    if (!phoneNumber.matches("\\d+")) {
	        return false;
	    }

	    // 驗證市內電話格式：0x xxxx xxxx
	    String landlinePattern = "^0\\d{9}$";

	    // 驗證行動電話格式： 09xx xxx xxx
	    String mobilePattern = "^09\\d{8}$";

	    if (phoneNumber.matches(landlinePattern) || phoneNumber.matches(mobilePattern)) {
	        return true;
	    }

	    return false;
	}
	public static void isContainHash(String phoneNumber) {
	    if (phoneNumber.contains(FoiConstants.HASHTAG)) {
	        throw new IllegalArgumentException(FoiConstants.NO_HASHTAG);
	    }
	}
	/*
	 * 驗證電子郵件帳號
	 */
	public static boolean isValidEmail(String email) {
		// 電子郵件地址的正則表達式模式
		String emailPattern = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";

		// 使用正則表達式進行匹配
		return Pattern.matches(emailPattern, email);
	}

	/*
	 * 驗證身分證字號(或居留證）
	 */
	public static boolean isValidID(String id) {
		id = id.toUpperCase();

		if (id.length() != 10) {
			return false; // 長度不為10
		}

		String letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		int[] intMapping = new int[]{
			10, 11, 12, 13, 14, 15, 16, 17, 34,		// A-I
			18, 19, 20, 21, 22, 35, 23, 24, 25,		// J-R
			26, 27, 28, 29, 32, 30, 31, 33			// S-Z
		};

		int sum = intMapping[letters.indexOf(id.charAt(0))];
		sum = (sum / 10) + ((sum % 10) * 9);

		for (int i = 1; i < 9; i++) {
			if (!Character.isDigit(id.charAt(i))) {
				return false; 						// 出現非數字符號
			}
			sum += Integer.parseInt(String.valueOf(id.charAt(i))) * (9 - i);
		}

		if (!Character.isDigit(id.charAt(9))) {
			return false; 							// 尾碼出現非數字符號
		}

		sum += Integer.parseInt(String.valueOf(id.charAt(9)));
		if (sum % 10 != 0) {
	    	throw new IllegalArgumentException(FoiConstants.ID_NO_EXCEPTION);
	    }
		
		if (sum % 10 == 0) return true; 			//合法
		return false; 								// 驗證碼不正確
	}
	/*
	 * 驗證統一編號（統編）
	 */
	public static boolean isValidTaxID(String taxID) {
	    if (taxID.length() != 8 || !taxID.matches("\\d{8}")) {
	        return false; // length should be 8 and contain only digits
	    }

	    int[] weights = {1, 2, 1, 2, 1, 2, 4, 1};
	    int sum = 0;

	    for (int i = 0; i < 8; i++) {
	        int tmp = Character.getNumericValue(taxID.charAt(i)) * weights[i];
	        sum += tmp / 10 + tmp % 10; // decompose into two digits
	    }

	    int checkNumber = 5 ;
	    boolean isLegal = sum % checkNumber == 0 || ((sum + 1) % checkNumber == 0 && taxID.charAt(6) == '7');
	    
	    if (!isLegal) {
	    	throw new IllegalArgumentException(FoiConstants.TAXID_NO_EXCEPTION);
	    }
	    return isLegal;
	}


	/*
	 * 驗證姓名、及其長度 
	 */
	public static boolean isValidName(String name, int length) {
		// 驗證姓名格式：只包含中文、英文字母、空格、橫線和單引號
		String namePattern = "^[\\p{L} '-]+$";
		return Pattern.matches(namePattern, name) && name.length() <= length;
	}
	
	/*
	 * 驗證西元日期
	 */
	public static boolean isValidDate(String date) {
		// 2000-02-20
		String datePattern = "^\\d{4}-(0[1-9]|1[0-2])-(0[1-9]|1[0-9]|2[0-9]|3[01])$";
		if (!Pattern.matches(datePattern, date)) {
			return false;
		}
		String[] parts = date.split("-");
		int year = Integer.parseInt(parts[0]);
		// 年分在2000至2200之間
		if (year < 2000 || year > 2200) {
			return false;
		}

		int month = Integer.parseInt(parts[1]);
		int day = Integer.parseInt(parts[2]);

		if (month == 2) {
			// 2月最多29天
			if (day > 29) {
				return false;
			}
		} else if (month == 4 || month == 6 || month == 9 || month == 11) {
			// 4、6、9、11月最多30天
			if (day > 30) {
				return false;
			}
		}

		return true;
	}
	/* 驗證民國日期
	 *
	 */
	public static boolean isValidTWDate(String date) {
		// 112-12-25
		String datePattern = "^([1-9][0-9]{0,2})-(0[1-9]|1[0-2])-(0[1-9]|1[0-9]|2[0-9]|3[01])$";
		if (!Pattern.matches(datePattern, date)) {
			return false;
		}

		// 年分在80至200之間
		String[] parts = date.split("-");
		int year = Integer.parseInt(parts[0]);
		if (year < 80 || year > 200) { // 評議中心101年成立
			return false;
		}

		int month = Integer.parseInt(parts[1]);
		int day = Integer.parseInt(parts[2]);

		if (month == 2) {
			// 2月最多29天
			if (day > 29) {
				return false;
			}
		} else if (month == 4 || month == 6 || month == 9 || month == 11) {
			// 4、6、9、11月最多30天
			if (day > 30) {
				return false;
			}
		}

		return true;
	}
	/*
	 * 驗證12小時制時間
	 */
	public static boolean isValid12HourTime(String time) {
		// 符合12小時制的時間
		String timePattern = "(1[0-2]|0[1-9]):[0-5][0-9]:[0-5][0-9]";
		return Pattern.matches(timePattern, time);
	}
	/*
	 * 驗證24小時制時間
	 */
	public static boolean isValid24HourTime(String time) {
		// 符合24小時制的時間
		String timePattern = "(2[0-3]|[01][0-9]):[0-5][0-9]:[0-5][0-9]";
		return Pattern.matches(timePattern, time);
	}
	/*
	 * 驗證檔案格式，input(String, List<String>) 後者輸入多種允許的檔案格式縮寫 TODO
	 */
	public static boolean isValidFileName(String fileName, List<String> allowedFileTypes) {
        String filePattern = ".*\\.(" + String.join("|", allowedFileTypes) + ")$";
        return Pattern.matches(filePattern, fileName);
    }

 //-----------------------------------------------------------------------------------------------------------------------------------//
	/*
	 * 測試TESTING： 電話號碼、email、姓名......
	 */
	public static void main(String[] args) {
		String[][] inputs = {
                {"132789", "6", "6"},
                {"1352", "5", "8"},
                {"123456", "4", "7"},
                {"fsadhkj", "1", "9"}
        };

        for (String[] input : inputs) {
            String str = input[0].trim();
            int minDigits = Integer.parseInt(input[1].trim());
            int maxDigits = Integer.parseInt(input[2].trim());

            System.out.println("輸入: " + str + ", 最小長度: " + minDigits + ", 最大長度: " + maxDigits);

            boolean isValid = isValidDigitString(str, minDigits, maxDigits);

            if (isValid) {
                System.out.println(str + " 合乎規定");
            } else {
                System.out.println(str + " 不合規定");
            } 
        }
        System.out.println();
//        檢查文字
        String[][] wordinputs = {
                {"132789", "6", "6"},
                {"鼠牛虎兔龍蛇", "5", "8"},
                {"123456", "4", "7"},
                {"fsadhkj", "1", "9"}
        };

        for (String[] input : wordinputs) {
            String str = input[0].trim();
            int minDigits = Integer.parseInt(input[1].trim());
            int maxDigits = Integer.parseInt(input[2].trim());

            System.out.println("輸入: " + str + ", 最小長度: " + minDigits + ", 最大長度: " + maxDigits);

            boolean isValid = isValidWordString(str, minDigits, maxDigits);

            if (isValid) {
                System.out.println(str + " 合乎規定");
            } else {
                System.out.println(str + " 不合規定");
            } 
        }
        System.out.println();
        // 測試中英文數字
        String[][] digwordinputs = {
                {"132da9", "6", "6"},
                {"柯文哲郭台銘", "5", "8"},
                {"吃了1根香蕉", "4", "7"},
                {"fsadhkj阿薩姆紅茶", "1", "9"}
        };

        for (String[] digword : digwordinputs) {
            String str = digword[0].trim();
            int minDigits = Integer.parseInt(digword[1].trim());
            int maxDigits = Integer.parseInt(digword[2].trim());

            System.out.println("輸入: " + str + ", 最小長度: " + minDigits + ", 最大長度: " + maxDigits);

            boolean isValid = isValidWordAndDigitString(str, minDigits, maxDigits);

            if (isValid) {
                System.out.println(str + " 合乎規定");
            } else {
                System.out.println(str + " 不合規定");
            } 
        }
        System.out.println();
        
        // 半形or全形測試案例	
        String[] testCasesHalfWidth = {
                "abc123",    // 只包含半形字符，應該返回 true
                "ＡＢＣ１２３",  // 只包含全形字符，應該返回 false
                "abc１２３"    // 同時包含半形和全形字符，應該返回 false
        };
        
        String[] testCasesFullWidth = {
                "abc123",    // 只包含半形字符，應該返回 false
                "ＡＢＣ１２３",  // 只包含全形字符，應該返回 true
                "abc１２３"    // 同時包含半形和全形字符，應該返回 false
        };

        // 運行測試
        System.out.println("Testing isHalfWidth function:");
        for (String testCase : testCasesHalfWidth) {
            System.out.println("Input: " + testCase + ", Result: " + isHalfWidth(testCase));
        }
        System.out.println();
        
        System.out.println("Testing isFullWidth function:");
        for (String testCase : testCasesFullWidth) {
            System.out.println("Input: " + testCase + ", Result: " + isFullWidth(testCase));
        }
        System.out.println();
        
		// 家用電話號碼範例
        String[] somePhoneNumbers = {
        	"0223456789", // 正確
        	"02-2345-6789", // 有符號
        	"0800091000", // 非家用電話
        	"0987654321", // 正確
        	"0987-654-321", // 有符號
        	"9988777555", // 非09開頭
        	"09876" // 長度不對
        };
       
        
        for (String number : somePhoneNumbers) {
            if (isValidPhoneNumber(number)) {
                System.out.println(number + " 是有效的電話號碼");
            } else {
                System.out.println(number + " 不是有效的電話號碼");
            }
        }
        System.out.println();
        
        // email的正確格式
        String[] emails = {
                "john@example.com",
                "jane.doe@example.co.uk",
                "invalid.email", // 沒有@
                "!??:>345@example.com" // 含有非法符號
            };

        for (String email : emails) {
            if (isValidEmail(email)) {
                System.out.println(email + " 是有效的電子郵件地址");
            } else {
                System.out.println(email + " 不是有效的電子郵件地址");
            }
        }
        System.out.println();
        
        // 身分證字號的測試
        String[] ids = {
                "J1413388179",
                "E113312577",
                "BB13896834",
                "G25153540;",
                
                "M153335480", "I218753168", "U179493886", "V279596429", 
//                "X114167044", "N218291626", "K256874850", "P138934621", "H146446368",
//                "T164908020", "I250250402", "P253326010", "J269146097", "A280429940",
//                "E232446457", "G179266619", "H184539291", "Q159850578", "N284000531",
//                "C238793211", "N247747342", "G199445554", "Q217149974", "K211400741",
//                "T129626192", "D299423708", "M269998806", "K142112078", "E254248491",
//                "A230328452", "X121852227", "N200432686", "W160640325", "U114929196",
//                "D142368207", "O266028686", "H113694229", "W159123215", "F132055651",
//                "O124891178", "N174822247", "N264658997", "X107456634", "Q117049593",
//                "O217968488", "B233611320", "G227196611", "M164808529", "O252174620",
//                "K124113844", "B229280004", "D161792009", "Q277789038", "T181108300",
//                "K190952355", "M268025466", "I223563836", "D125706614", "K268238739",
//                "I165565301", "F145751662", "A188353781", "A266229760", "M115059203",
//                "P243576106", "W206991263", "H157379216", "G108919656", "D202202062",
//                "A120564319", "E292218193", "M271091330", "P236557468", "E126336644",
//                "A149335623", "M285351901", "D238917801", "D187713866", "B111932266",
//                "W181693193", "K132116439", "M284438730", "M251649894", "O111922806",
//                "D258620318", "K101375668", "G226044378", "P267166577", "V154738429",
//                "O137108851", "A216146752", "E171335464", "U164818764", "C166024587",
//                "V129661148", "B175169310", "K237036385", "H135213022", "Q161525366"
            };
        for (String id : ids) {
            boolean result = isValidID(id);
            if (result) System.out.println(id + ": 身分證字號合法");
            else System.out.println(id + ": 驗證碼不正確或格式錯誤");   
        }
        System.out.println();
            
        // 姓名的測試
        String[] names = {
                // 姓名範例
                "John Doe",
                "張三",
                "Emily Johnson", // 太長
                "李四123", // 含有數字
                "Mary@Doe", // 含有特殊字符
                "王五-" // 含有合法的特殊字符
            };
        int[] lengths = {10,10,10,10,10,10} ;
        for (int i = 0; i < names.length; i++) {
            if (isValidName(names[i], lengths[i])) { 
                System.out.println(names[i] + " 是有效的姓名");
            } else {
                System.out.println(names[i] + " 不是有效的姓名");
            }
        }
        System.out.println();
         
        // 測試 isValidDate
        System.out.println("2023-04-31: " + isValidDate("2023-04-31")); // 應該輸出 false
        System.out.println("2223-12-25: " + isValidDate("2223-12-25")); // 應該輸出 false

        // 測試 isValidTWDate
        System.out.println("(民國)105-02-30: " + isValidTWDate("105-02-30")); // 應該輸出 false
        System.out.println("(民國)222-02-28: " + isValidTWDate("222-02-28")); // 應該輸出 false

        // 測試 isValid12HourTime
        System.out.println("12:60:00: " + isValid12HourTime("12:60:00")); // 應該輸出 false
        System.out.println("13:00:00: " + isValid12HourTime("13:00:00")); // 應該輸出 false
        
        // 測試 isValid24HourTime
        System.out.println("(24hr)19:10:00: " + isValid24HourTime("19:10:00")); // 應該輸出 true
        System.out.println("(24hr)25:00:00: " + isValid24HourTime("25:00:00")); // 應該輸出 false
	}
}