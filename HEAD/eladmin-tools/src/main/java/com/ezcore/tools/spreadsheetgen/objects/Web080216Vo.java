package com.ezcore.tools.spreadsheetgen.objects;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Web080216Vo {
    private Date date;
    private Integer customService;
    private Integer onlineCounsult1998;
    private Integer onlineAppeal1998;
    private Integer onlineCounsult0800;
    private Integer onlineAppeal0800;
    private Integer counterAppeal;
    private Integer counterReview;
    private Integer counterCounsult;
    private Integer counterAfterReview;
    private Integer writtenAppeal;
    private Integer writtenReview;
    private Integer writtenCounsult;
    private Integer writtenAfterReview;
    private Integer mailAppeal;
    private Integer mailReview;
    private Integer mailCounsult;
    private Integer mailAfterReview;
    private Integer insuranceBureau;
    private Integer bankBureau;
    private Integer securiFutureBureau;
    private Integer other;
}
