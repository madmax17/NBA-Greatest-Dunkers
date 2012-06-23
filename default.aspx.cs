using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class main : System.Web.UI.Page
{
    string connstr = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\baza.accdb";
    int c;
    int p;

    protected void Page_Load(object sender, EventArgs e)
    {
      count();
    }
    public void count()
    {

        OleDbConnection conn = new OleDbConnection(connstr);
        OleDbCommand cmdread = new OleDbCommand("SELECT count FROM main WHERE id=1", conn);
        try
        {
            conn.Open();
            p = (int)cmdread.ExecuteScalar();
            conn.Close();
            label1.Text = p.ToString();
            if (p < 10)
                label1.Text = "000" + label1.Text;
            else if (p < 100)
                label1.Text = "00" + label1.Text;
            else if (p < 1000)
                label1.Text = "0" + label1.Text;

            if ((int)Application["numVisitors"] != 0)
            {
                c = (int)Application["numVisitors"];
                int r = p + c;

                OleDbCommand cmd = new OleDbCommand("UPDATE main SET [count]=@count", conn);  /*"UPDATE main SET [count]=@count WHERE [id]=1"*/

                cmd.Parameters.AddWithValue("count", r);

                /*p = (int)cmd.Parameters.AddWithValue("@count", 4).Value;*/

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                label1.Text = r.ToString();
                if (r < 10)
                    label1.Text = "000" + label1.Text;
                else if (r < 100)
                    label1.Text = "00" + label1.Text;
                else if (r < 1000)
                    label1.Text = "0" + label1.Text;

                Application["numVisitors"] = 0;
            }
        }
        finally
        {
            conn.Close();
        }

    }
}