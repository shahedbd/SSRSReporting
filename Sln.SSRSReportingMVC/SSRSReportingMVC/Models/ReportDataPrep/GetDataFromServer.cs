using System.Configuration;
using System.Data.SqlClient;

namespace SSRSReportingMVC.Models.ReportDataPrep
{
    public static class GetDataFromServer
    {
        static SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["MSSQLConn"].ConnectionString);
        public static SqlDataAdapter GetAllTableDataByTableName(string tblName)
        {
            SqlDataAdapter _SqlDataAdapter = new SqlDataAdapter("SELECT * FROM " + tblName, sqlConn);
            return _SqlDataAdapter;
        }
    }
}