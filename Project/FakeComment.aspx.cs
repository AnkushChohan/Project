using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class FakeComment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source= DESKTOP-E68R2JU\SQLEXPRESS;Initial Catalog=FakeProduct;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Delete from FakeC",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct Top 10 IP from Comment Where Flag = 'Yes' ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        int row = ds.Tables[0].Rows.Count;

        string[] ip = new string[row];
        int[] cou = new int[row];
        int[] rows = new int[row];

        for (int i = 0; i < row; i++)
        {
            ip[i] = ds.Tables[0].Rows[i][0].ToString();
        }


        for (int i = 0; i < row; i++)
        {
            da = new SqlDataAdapter("Select Rate from Comment where IP = '" + ip[i] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            int row1 = ds.Tables[0].Rows.Count;
            string[] rate = new string[row];
            int sum=0;
            for (int j = 0; j < row1; j++)
            {
                sum  += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }

            cou[i] = sum / row1;
            rows[i] = row1;

            cmd = new SqlCommand("Insert into FakeC Values ('"+ip[i]+"','"+cou[i]+"','"+rows[i]+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        da = new SqlDataAdapter("Select * from FakeC",con);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            string i1 = Convert.ToString(e.CommandArgument.ToString());
            Session["Ip"] = i1;
            Response.Redirect("Details.aspx");
        }
    }
}