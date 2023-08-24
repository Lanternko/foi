package com.ezcore.tools.spreadsheetgen.objects;

import java.util.Date;

public interface LogDataProjection {
	Date getDate();
    Long getOk();
    Long getErrNormal();
    Long getErrLogin();
    Long getErrPermit();
    Long getErrFatal();
}
