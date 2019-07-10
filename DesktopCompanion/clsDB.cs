using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesktopCompanion
{
    public static class clsDB
    {
        public static SqlConnection Get_DB_Connecton()
        {
            string cn_String = Properties.Settings.Default.database;
            SqlConnection cn_connection = new SqlConnection(cn_String);
            if (cn_connection.State != System.Data.ConnectionState.Open) cn_connection.Open();

            return cn_connection;
        }

        public static DataSet Get_DataTable(string SQL_Text)
        {
            SqlConnection cn_connection = Get_DB_Connecton();

            DataSet table = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(SQL_Text, cn_connection);
            adapter.Fill(table);
            return table;
        }

        public static void Execute_SQL(string SQL_Text)
        {
            SqlConnection cn_connection = Get_DB_Connecton();

            SqlCommand cmd_Command = new SqlCommand(SQL_Text, cn_connection);
            cmd_Command.ExecuteNonQuery();
        }
    }
}
