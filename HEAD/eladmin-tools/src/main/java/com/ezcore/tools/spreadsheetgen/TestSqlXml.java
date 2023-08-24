package com.ezcore.tools.spreadsheetgen;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TestSqlXml {

    public static void main(String[] args) {
        try {
            File file = new File("src/main/resources/ReportSql.xml");  // relative path
            DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
            documentBuilderFactory.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
            DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
            Document document = documentBuilder.parse(file);
            document.getDocumentElement().normalize();

            NodeList nodeList = document.getElementsByTagName("query");

            for (int i = 0; i < nodeList.getLength(); i++) {
                Node node = nodeList.item(i);
                if (node.getNodeType() == Node.ELEMENT_NODE) {
                    Element element = (Element) node;
                    String id = element.getAttribute("id");
                    if ("LOG_REPORT".equals(id)) {
                        String query = element.getTextContent();
//                      SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                        String startDate = "2023-05-01";
                        String endDate = "2023-06-21";

                        query = query.replace(":startDate", "'" + startDate + "'");
                        query = query.replace(":endDate", "'" + endDate + "'");
                        System.out.println("SQL: " + query);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
