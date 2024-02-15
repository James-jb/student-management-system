using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace S.Models
{
    public class Functions
    {
        private SqlConnection Con;
        private SqlCommand Cmd;
        private DataTable dt;
        private SqlDataAdapter sda;
        private string ConStr;

        public Functions() {
            ConStr = @"";

            Con = new SqlConnection(ConStr);
            Cmd = new SqlCommand();
            Cmd.Connection = Con;
        }


        private DataTable GetDaa(string Query)
        {
            DataTable dt = new DataTable();
            sda = new SqlDataAdapter(Query, ConStr);
            sda.Fill(dt);
            return dt;
        }


        public int SatData(string Query)
        {
            int cnt = 0;
            if(Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            Cmd.CommandText = Query;
            cnt = Cmd.ExecuteNonQuery();
            return cnt;
        }





    }
}