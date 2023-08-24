<<後端程式使用說明>><br>
開發環境 : windows10、11<br>
使用工具 : powershell、Eclipse、sql server express 2016、Redis 5.0.14 for Windows、Maven 3.8.6<br>
<br>
-------------------------------------------------------------------<br>
安裝工具 :<br>
1.安裝Eclipse<br>
https://www.eclipse.org/downloads/packages/<br>
請安裝「Eclipse IDE for Enterprise Java and Web Developers」版本<br>
<br>
2.安裝lombok (安裝時請先關閉eclipse)<br>
https://projectlombok.org/download<br>
<br>
於lombok.jar下載地點開啟powershell，執行指令<br>
java -jar lombok.jar<br>
<br>
開啟installer後，點選「Specify location...」按鍵，選擇eclipse安裝路徑<br>
ex : /java/ide/eclipse/jee-2022-09/eclipse<br>
<br>
3.安裝Redis for Windows<br>
https://github.com/tporadowski/redis/releases/tag/v5.0.14.1<br>
請下載zip版本，解壓縮後放到想放的地方<br>
<br>
4.安裝Maven<br>
https://maven.apache.org/download.cgi<br>
請下載zip格式<br>
<br>
新增windows環境變數 :<br>
(設定前請先關閉開啟中的powershell)<br>
系統變數新增變數名稱「MAVEN_HOME」，變數值為「C:\maven\apache-maven-3.8.6」(版本號請依下載的為準)<br>
系統變數Path新增「%MAVEN_HOME%\bin」<br>
<br>
下面指令測試是否安裝、設定成功<br>
mvn -v<br>
(出現版本號等訊息代表成功)<br>
<br>
5. 安裝資料庫<br>
(若是連測試區則不需要裝)<br>
此部分較繁瑣，請至公司teams檔案區<br>
文件 > General > 06_環境建置 > 開發環境建立 > 02_後端開發環境說明.docx<br>
參照說明進行安裝<br>
-------------------------------------------------------------------<br>
開發準備 :<br>
1.(僅初次)匯入專案<br>
import時選擇「Maven >> Existing Maven Projects」<br>
Root Directory為「eladmin」<br>
<br>
2.(僅初次)執行maven指令<br>
使用eclipse時，對最上層的pom.xml檔案點滑鼠右鍵，依序點擊「Run As >> Maven install」<br>
目的為於target資料夾下產生必要的檔案<br>
<br>
3.啟動Redis<br>
於Redis資料夾內開啟powershell，執行<br>
./redis-server.exe redis.windows.conf<br>
<br>
4.啟動eladmin後端<br>
使用eclipse找到程式進入點(路徑如下)<br>
eladmin/ez-tools/src/main/java/com/ezcore/Entry.java<br>
滑鼠右鍵Run As >> Java Application 或 Spring Boot App<br>
<br>
4.瀏覽器開啟<br>
http://localhost:8000/<br>
看到"Backend service started successfully"訊息表示準備完成<br>
<br>
***使用eclipse請注意 :<br>
此匯入方式會直接使用填入路徑的專案資料夾，而非copy一份至你的workspace，若要將專案從workspace移除但要在disk保留時請小心。<br>