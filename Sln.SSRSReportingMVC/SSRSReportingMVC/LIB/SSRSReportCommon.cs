using Microsoft.Reporting.WebForms;
using System;

namespace SSRSReportingMVC.LIB
{
    public static class SSRSReportCommon
    {
        public static ReportParameter[] GetParametersLocal()
        {
            ReportParameter p1 = new ReportParameter("ReportTitle", "User Details Info Report");
            ReportParameter p2 = new ReportParameter("ReportDate", DateTime.Now.ToString());
            return new ReportParameter[] { p1, p2 };
        }
    }
}