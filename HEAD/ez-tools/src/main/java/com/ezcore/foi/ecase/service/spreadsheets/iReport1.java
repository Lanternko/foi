////package com.ezcore.foi.ecase.service.impl.spreadsheets;
//
//
//
///** package com.sage.ireport; */
////package ireport;
//
//import java.io.FileOutputStream;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.Calendar;
//import java.util.HashMap;
//import java.util.Map;
//import net.sf.jasperreports.engine.JRAbstractExporter;
//import net.sf.jasperreports.engine.JRExporterParameter;
//import net.sf.jasperreports.engine.JRResultSetDataSource;
//import net.sf.jasperreports.engine.JasperExportManager;
//import net.sf.jasperreports.engine.JasperFillManager;
//import net.sf.jasperreports.engine.JasperPrint;
//import net.sf.jasperreports.engine.export.JExcelApiExporter;
//import net.sf.jasperreports.engine.export.JRXlsExporterParameter;
//
//import net.sf.jasperreports.engine.export.JRPdfExporter;
//import net.sf.jasperreports.engine.export.JRXlsExporter;
//import net.sf.jasperreports.engine.export.JRRtfExporter;
//import net.sf.jasperreports.engine.export.JRCsvExporter;
//import net.sf.jasperreports.engine.export.JRTextExporter;
//import net.sf.jasperreports.engine.export.JRXmlExporter;
//
///**
// * 產生 iReport報表
// */
//public class iReport1{
//	
//	public static void main(String[] args) {
//    String FileType=args[0];
//    System.out.println("FileType(檔案格式) = "+FileType); 
//		iReport1 ireport = new iReport1();
//		ireport.createReport();
//	}
//	
//	//建立連線方法
//	public Connection createConnection(){ Connection conn;
//		try{
//			
//			String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"; 
//			//String url="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=FEP04"; 
//			String url="jdbc:sqlserver://192.168.0.205:1433;DatabaseName=aaa1test"; 
//			Class.forName(driver);
//			conn = DriverManager.getConnection(url, "nfoi", "12345678"); //建立連線
//			conn.setAutoCommit(false);
//			return conn;
//		}
//		catch(SQLException ex1){ 
//			System.out.println("建立連線錯誤="+ex1.toString());
//		}
//		catch (ClassNotFoundException ex2){ 
//			System.out.println("建立連線錯誤="+ex2.toString());
//		}
//		return null;
//	}
//	
//	//關閉資料庫連線
//	public void CloseConnect(Connection conn){
//		try{ 
//			conn.commit(); 
//			conn.setAutoCommit(true); 
//			conn.close();
//		}
//		catch(Exception e){
//			System.out.println("連線關閉錯誤="+e.toString());
//		}
//	}
//	
//	//建立 PDF 輸出
//	public void createReport(){ 
//	//傳入參數--start*********************
//		String output_filename   ="report_01";
//
//		String directory_template="C:/iReport_print_new2003/template_1/";
//		String template_filename =directory_template + output_filename + ".jasper" ;
//		System.out.println("template 檔案location ---> "+template_filename);
//
//		String filename  ="";
//		String directory_output  ="C:\\iReport_print_new2003\\output_1\\";
//		String output_pdf        =directory_output   + output_filename + ".pdf";
//		String output_xls        =directory_output   + output_filename + ".xls";
//		String output_word       =directory_output   + output_filename + ".doc";
//		String output_text       =directory_output   + output_filename + ".txt";
//		String output_csv        =directory_output   + output_filename + ".csv";
//		String output_xml        =directory_output   + output_filename + ".xml";
//
//		String strDate=""; 
//		String sql="";
//		//取得今天日期
//		Calendar cal=Calendar.getInstance(); 
//		cal.setTimeInMillis(System.currentTimeMillis()); 
//		strDate=String.valueOf(cal.get(Calendar.YEAR))+"-"; 
//		if(cal.get(Calendar.MONTH)<9)
//			strDate+="0"; strDate+=String.valueOf(cal.get(Calendar.MONTH)+1)+"-"; 
//		if(cal.get(Calendar.DATE)<9)
//			strDate+="0";
//		strDate+=String.valueOf(cal.get(Calendar.DATE));
//		Map parameters = new HashMap();
//		parameters.put("rptToday",strDate); //傳入的 parameters 引數
//
//
//		sql ="SELECT TRAX_TYPE as 交易代號,TRAX_NAME as 交易名稱  FROM FEP00.dbo.REF_交易類別";
//		//System.out.println("sql ---> "+sql);
//		
//		Connection conn = this.createConnection(); //建立資料庫連線
//		try {
//			Statement stm = conn.createStatement(); 
//			ResultSet rs  = stm.executeQuery(sql);
//			// 產生 PDF
///**
//			fileName = "C:\\iReport_print\\Template\\report_01.jasper"; 
//			JasperFillManager.fillReportToFile(fileName,parameters,new JRResultSetDataSource(rs));
//			fileName = "C:\\iReport_print\\Template\\report_01.jrprint"; 
//			JasperExportManager.exportReportToPdfFile(fileName);
//*/
//
////  where template_filename
//			template_filename = "C:\\iReport_print_new2003\\Template_1\\report_01.jasper"; 
//		System.out.println("d1 --- "+template_filename);
//
//			JasperPrint report = JasperFillManager.fillReport(template_filename, parameters, new JRResultSetDataSource(rs));
//		System.out.println("d2 --- ");
//
//// 產生 Pdf 
//			System.out.println("建立 Pdf  檔案 ---> "+output_pdf);
//			JRAbstractExporter exporter_pdf = new JRPdfExporter();
////			  FileOutputStream tmp_output_pdf = new FileOutputStream("C:\\iReport_print\\output\\report_01.pdf");
//			FileOutputStream tmp_output_pdf = new FileOutputStream(output_pdf);
//			exporter_pdf.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, false);
//			exporter_pdf.setParameter(JRExporterParameter.JASPER_PRINT,  report);
//			exporter_pdf.setParameter(JRExporterParameter.OUTPUT_STREAM, tmp_output_pdf);
//			exporter_pdf.exportReport();
//			tmp_output_pdf.close();
//// 產生 xls 
//			System.out.println("建立 xls  檔案 ---> "+output_xls);
//			JRAbstractExporter exporter_xls = new JRXlsExporter();
//			FileOutputStream tmp_output_xls = new FileOutputStream(output_xls);
//			exporter_xls.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, false);
//			exporter_xls.setParameter(JRExporterParameter.JASPER_PRINT,  report);
//			exporter_xls.setParameter(JRExporterParameter.OUTPUT_STREAM, tmp_output_xls);
//			exporter_xls.exportReport();
//			tmp_output_xls.close();
//// 產生 Word
//			System.out.println("建立 Word 檔案 ---> "+output_word);
//			JRAbstractExporter exporter_word = new JRRtfExporter();
//			FileOutputStream tmp_output_word = new FileOutputStream(output_word);
//			exporter_word.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, false);
//			exporter_word.setParameter(JRExporterParameter.JASPER_PRINT,  report);
//			exporter_word.setParameter(JRExporterParameter.OUTPUT_STREAM, tmp_output_word);
//			exporter_word.exportReport();
//			tmp_output_word.close();
//
//// ??產生 CSV
//			System.out.println("建立 CSV  檔案 ---> "+output_csv);
//			JRAbstractExporter exporter_csv = new JRRtfExporter();
//			FileOutputStream tmp_output_csv = new FileOutputStream(output_csv);
//			exporter_csv.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, false);
//			exporter_csv.setParameter(JRExporterParameter.JASPER_PRINT,  report);
//			exporter_csv.setParameter(JRExporterParameter.OUTPUT_STREAM, tmp_output_csv);
//			exporter_csv.exportReport();
//			tmp_output_csv.close();
//
//// ??產生 Text
//			System.out.println("建立 TEXT 檔案 ---> "+output_text);
//			JRAbstractExporter exporter_txt = new JRRtfExporter();
//			FileOutputStream tmp_output_txt = new FileOutputStream(output_text);
//			exporter_txt.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, false);
//			exporter_txt.setParameter(JRExporterParameter.JASPER_PRINT,  report);
//			exporter_txt.setParameter(JRExporterParameter.OUTPUT_STREAM, tmp_output_txt);
//			exporter_txt.exportReport();
//			tmp_output_txt.close();
//// ??產生 XML
//			System.out.println("建立 XML  檔案 ---> "+output_xml);
//			JRAbstractExporter exporter_xml = new JRRtfExporter();
//			FileOutputStream tmp_output_xml = new FileOutputStream(output_xml);
//			exporter_xml.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, false);
//			exporter_xml.setParameter(JRExporterParameter.JASPER_PRINT,  report);
//			exporter_xml.setParameter(JRExporterParameter.OUTPUT_STREAM, tmp_output_xml);
//			exporter_xml.exportReport();
//			tmp_output_xml.close();
//		}
//		catch (Exception ex) { 
//			System.out.println("Error : "+ex.toString());
//		}
//		finally { 
//			CloseConnect(conn);
//			conn = null;
//		}
//	}
//
//}
