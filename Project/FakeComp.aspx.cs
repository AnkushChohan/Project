using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class FakeComp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source= DESKTOP-E68R2JU\SQLEXPRESS;Initial Catalog=FakeProduct;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Delete from FakeB", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        SqlDataAdapter da = new SqlDataAdapter("Select Distinct Top 10 IP from Comment Where Flag = 'Yes' ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        int row = ds.Tables[0].Rows.Count;

        string[] ip = new string[row];
        string[] brand = new string[3];
        int[] count = new int[3];
        int[] rate = new int[3];

        for (int i = 0; i < row; i++)
        {
            ip[i] = ds.Tables[0].Rows[i][0].ToString();
        }


        for (int i = 0; i < row; i++)
        {
            string com = "SELECT TOP (3) product_company, COUNT(product_company) AS Expr1 FROM comment WHERE (Ip = '" + ip[i] + "' AND flag = 'Yes') GROUP BY product_company ORDER BY Expr1 DESC";
            da = new SqlDataAdapter(com, con);
            ds = new DataSet();
            da.Fill(ds);

            int row1 = ds.Tables[0].Rows.Count;
            for (int j = 0; j < row1; j++)
            {
                brand[j] += ds.Tables[0].Rows[j][0].ToString();
            }

            for (int j = 0; j < row1; j++)
            {
                da = new SqlDataAdapter("Select Rate from Comment where Product_company='" + brand[j] + "' And Ip = '" + ip[i] + "' And Flag ='Yes'", con);
                ds = new DataSet();
                da.Fill(ds);

                int row2 = ds.Tables[0].Rows.Count;
                int rate1 = 0;
                int count1 = 0;
                for (int p = 0; p < row2; p++)
                {
                    rate1 += Convert.ToInt32(ds.Tables[0].Rows[p][0].ToString());
                    count1 += 1;
                }

                rate[j] = rate1 / count1;
                count[j] = count1;
            }

            int maxValue = rate.Max();
            int maxIndex = rate.ToList().IndexOf(maxValue);

            double per = maxValue * 0.4;
            int max = maxValue + Convert.ToInt32(per);
            int min = maxValue - Convert.ToInt32(per);
            int[] nrate = rate.Where(val => val != maxValue).ToArray();

            if (!(min <= nrate[0] && nrate[0] <= max))
            {
                if (!(min <= nrate[1] && nrate[1] <= max))
                {
                    cmd = new SqlCommand("Insert into FakeB Values ('" + ip[i] + "','" + brand[0] + "','" + rate[0] + "', '" + count[0] + "','" + brand[1] + "','" + rate[1] + "', '" + count[1] + "','" + brand[2] + "','" + rate[2] + "', '" + count[2] + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        da = new SqlDataAdapter("Select * from FakeB", con);
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