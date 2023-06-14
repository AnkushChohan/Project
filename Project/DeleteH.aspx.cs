using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class DeleteH : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source= DESKTOP-E68R2JU\SQLEXPRESS;Initial Catalog=FakeProduct;Integrated Security=True");
    
   protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["delete"] == "delete")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Product Deleted !!!')", true);
            Session["delete"] = "";
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "--Select--" )
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Select Product Type  !!!')", true);
        }
        if (DropDownList2.Text == "--Select--")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Select  Product Name !!!')", true);
        }
        else
        {


            SqlCommand cmd = new SqlCommand("Select Pimg,PName from Products where PName='" + DropDownList2.SelectedItem + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Image1.ImageUrl = dr[0].ToString();
                Session["name"] = dr[1].ToString();
                Panel3.Visible = true;
                Button1.Visible = false;
                DropDownList1.Enabled = false;
                DropDownList2.Enabled = false;


            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Invalid Type');", true);
            }
            con.Close();
        }
            }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Popup(true);
    }
         void Popup(bool isDisplay)
    {
        StringBuilder builder = new StringBuilder();
        if (isDisplay)
        {
            builder.Append("<script language=JavaScript> ShowPopup(); </script>\n");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowPopup", builder.ToString());
        }
        else
        {
            builder.Append("<script language=JavaScript> HidePopup(); </script>\n");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "HidePopup", builder.ToString());
        }
    }

       
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteH.aspx");
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        DropDownList2.Items.Add("--Select--");
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string a = "select PName from Products where type='" + DropDownList1.SelectedItem + "'";
        da = new SqlDataAdapter(a, con);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DropDownList2.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Delete From Products where PName like '%" + Session["name"].ToString() + "%'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["delete"] = "delete";
        Response.Redirect("DeleteH.aspx");
    }
    protected void b2_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteH.aspx");
    }
}
