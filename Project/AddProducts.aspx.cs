using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class ProductEntry : System.Web.UI.Page
{
    String image, path;
    SqlConnection con = new SqlConnection(@"Data Source= DESKTOP-E68R2JU\SQLEXPRESS;Initial Catalog=FakeProduct;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["product"] == "product")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Product Details Stored in Database !!!');", true);
            Session["product"] = "";
        }
        SqlCommand cmd;
        string a = "select top 1 Pid from Products order by Pid desc";
        con.Open();
        cmd = new SqlCommand(a, con);
        object count = cmd.ExecuteScalar();
        int c = Convert.ToInt32(count);
        if (c != 0)
        {
            c = c + 1;
            Txtprodid.Text = Convert.ToString(c);
            Txtprodid.ReadOnly = true;

        }
        else
        {
            Txtprodid.Text = "101";
            Txtprodid.ReadOnly = true;
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        image = FileUpload1.FileName;
        path = Server.MapPath("~\\images\\");
        FileUpload1.SaveAs(path + image);
        Image1.ImageUrl="images\\" + image;
    }
    public static string RemoveSpecialCharacters(string str)
    {
        StringBuilder sb = new StringBuilder();
        foreach (char c in str)
        {
            if ((c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || c == '.' || c == '_'|| c==' ')
            {
                sb.Append(c);
            }
        }
        return sb.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Insert into Products values('" + Txtprodid.Text + "','" + txtprodname.Text + "','" + Image1.ImageUrl + "','"+DropDownList1.Text+"','" + txtsdesc.Text + "'," + txtprice.Text + ")", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Session["product"] = "product";
        
       
        Response.Redirect("AddProducts.aspx");
        txtprodname.Text = "";
        Image1.ImageUrl = "";
        txtsdesc.Text = "";
        txtprice.Text = "";



    }
}