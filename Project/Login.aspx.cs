using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Sockets;
using System.IO;
using System.Text.RegularExpressions;



public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source= DESKTOP-E68R2JU\SQLEXPRESS;Initial Catalog=FakeProduct;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["fname"] = "login";
        //if (!IsPostBack)
        //{
        //    IPHostEntry host;
        //    string localIP = "?";
        //    host = Dns.GetHostEntry(Dns.GetHostName());
        //    foreach (IPAddress ip in host.AddressList)
        //    {
        //        if (ip.AddressFamily == AddressFamily.InterNetwork)
        //        {
        //            localIP = ip.ToString();
        //        }
        //    }
        //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + localIP + "');", true);


        //}
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["id"] = txtusername.Text;
        if (txtusername.Text == "Admin" && txtpassword.Text == "Admin")
        {
            Session["fname"] = "admin";
            Response.Redirect("AddProducts.aspx");
        }
        try
        {
            SqlDataAdapter da3 = new SqlDataAdapter("Select fname,mname,lname,contact,uid,email from Login where Uid='" + txtusername.Text + "' and password='" + txtpassword.Text + "'", con);
            DataSet ds3 = new DataSet();
            da3.Fill(ds3);

            Session["fname"] = Convert.ToString(ds3.Tables[0].Rows[0][0]);
            Session["mname"] = Convert.ToString(ds3.Tables[0].Rows[0][1]);
            Session["lname"] = Convert.ToString(ds3.Tables[0].Rows[0][2]);
            Session["contact"] = Convert.ToString(ds3.Tables[0].Rows[0][3]);
            Session["uid"] = Convert.ToString(ds3.Tables[0].Rows[0][4]);
            Session["email"] = Convert.ToString(ds3.Tables[0].Rows[0][5]);


            SqlDataAdapter da2 = new SqlDataAdapter("Select uid,password from Login where Uid='" + txtusername.Text + "' and password='" + txtpassword.Text + "'", con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            if (ds2.Tables[0].Rows.Count != 0)
            {
                Session["type"] = "user";
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmsg + "');", true);
                Response.Redirect("ViewProducts.aspx");
            }
            else
            {
                String alertmsg = "Enter valid username / Password";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmsg + "');", true);
            }
        }
        catch (Exception exx)
        {
            String alertmsg = "Enter valid username / Password";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmsg + "');", true);
        }
    }
}
