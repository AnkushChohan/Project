using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class pay : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source= DESKTOP-E68R2JU\SQLEXPRESS;Initial Catalog=FakeProduct;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
      
        con.Open();
        string s = "select User_id,Item,sum(Quantity) as qty,sum(cost) as cost,sum(Total_cost) as tot from cart group by User_id,Item";
        SqlDataAdapter sda = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind(); 
        int i=ds.Tables[0].Rows.Count;
        int tot=0;
        while(i>0)
        {

            tot +=(Convert.ToInt32( ds.Tables[0].Rows[i-1][4].ToString()));
            i--;
        }
        Label7.Text = tot.ToString();

      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string type = RadioButtonList1.SelectedValue;
        if (type != "")
        {
            SqlConnection con = new SqlConnection(@"Data Source= DESKTOP-E68R2JU\SQLEXPRESS;Initial Catalog=FakeProduct;Integrated Security=True");
          
            string s = "select Username,Fname,Contact from Login where Uid='" + Session["uid"].ToString() + "'";
            SqlDataAdapter sda = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
        


            con.Open();
            string str = " ";
            string name = "";
            string s1 = "select item,Quantity,Total_cost from cart";
            SqlDataAdapter sda1 = new SqlDataAdapter(s1, con);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1);
            int sum = 0;
            int i = ds1.Tables[0].Rows.Count;

            while (i > 0)
            {
                str += ds1.Tables[0].Rows[i - 1][1].ToString() + " ,";
                name += ds1.Tables[0].Rows[i - 1][0].ToString() + ",";
                sum += Convert.ToInt32(ds1.Tables[0].Rows[i - 1][2].ToString());
                i--;
            }
            con.Close();

            con.Open();

            string s0 = "insert into order1 values ('" + Session["uid"] + "','" + name + "','" + str + "','" + ds1.Tables[0].Rows[0][2].ToString() + "','"+sum+"','"+type+"','"+DateTime.Now.ToShortDateString()+"')";
            SqlCommand cmd = new SqlCommand(s0, con);
            cmd.ExecuteNonQuery();
            con.Close();

            cmd = new SqlCommand("Delete From Cart where User_ID='" + Session["uid"] + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Session["msg"] = "";
            Session["trans"] = "Success";
            Response.Redirect("ViewProducts.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Please Select Payment Type');", true);
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "Debit Card" || RadioButtonList1.SelectedValue == "Credit Card")
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }
}