using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Net;
using System.Net.Sockets;

public partial class Comment : System.Web.UI.Page
{
    string[] mkeys = new string[40];
    string[] skeys = new string[40];
    SqlConnection con = new SqlConnection(@"Data Source= DESKTOP-E68R2JU\SQLEXPRESS;Initial Catalog=FakeProduct;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["msg"] == "msg")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Thank You. Item has been Placed in Cart');", true);
            Session["msg"] = "";
        }

        SqlDataAdapter da = new SqlDataAdapter("Select Rate from Comment where product_name='" + Session["name"] + "' And Flag = 'Yes'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int row = ds.Tables[0].Rows.Count;
        int sum = 0;
        if (row != 0)
        {
            for (int i = 0; i < row; i++)
            {
                sum += Convert.ToInt32(ds.Tables[0].Rows[i][0].ToString());
            }
            if (sum < 0)
            {
                Label7.Text = "Negative Rating";
            }
            else
            {
                Label8.Text = "Rating Based On "+row+" Comments.";
                Label8.Visible = true;
                try
                {
                    sum = sum * 100;
                    sum = sum / row;
                    if (sum >= 0 && sum <= 19)
                    {
                        Label7.Text = "1 /10";
                    }
                    else if (sum >= 20 && sum <= 29)
                    {
                        Label7.Text = "2 /10";
                    }
                    else if (sum >= 30 && sum <= 49)
                    {
                        Label7.Text = "3 /10";
                    }
                    else if (sum >= 50 && sum <= 79)
                    {
                        Label7.Text = "4 /10";
                    }
                    else if (sum >= 80 && sum <= 99)
                    {
                        Label7.Text = "5 /10";
                    }
                    else if (sum >= 100 && sum <= 149)
                    {
                        Label7.Text = "6 /10";
                    }
                    else if (sum >= 150 && sum <= 199)
                    {
                        Label7.Text = "7 /10";
                    }
                    else if (sum >= 200 && sum <= 249)
                    {
                        Label7.Text = "8 /10";
                    }
                    else if (sum >= 250 && sum <= 299)
                    {
                        Label7.Text = "9 /10";
                    }
                    else if (sum >= 300)
                    {
                        Label7.Text = "10 /10";
                    }
                }
                catch (Exception ep)
                {
                    Label7.Text = "0 /10";
                }
            }
        }
        else
        {
            Label7.Text = "No Comments Yet";
            Label8.Visible = false;
        }

        
        Panel1.Visible = false;
        SqlCommand cmd;
        string l = "select top 1 id from comment order by id desc";
        con.Open();
        cmd = new SqlCommand(l, con);
        object count = cmd.ExecuteScalar();
        int c = Convert.ToInt32(count);
        if (c != 0)
        {
            c = c + 1;
            Label3.Text = Convert.ToString(c);

        }
        else
        {
            Label3.Text = "1";
        }
        con.Close();
        Label2.Text = Session["name"].ToString();
        Image1.ImageUrl = Session["image"].ToString();
        Label5.Text = Session["price"].ToString();
        Label4.Text = Session["desc"].ToString();
        ds = new DataSet();
        string a = "select UserID,Comment,rate from comment where product_name='" + Session["name"] + "' And flag = 'Yes'";
        da = new SqlDataAdapter(a, con);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
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


    protected void add_Click(object sender, EventArgs e)
    {
        if (TextBox4.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Enter Comment!!!')", true);
            Popup(true);
        }
        else
        {
            string aa = ((Button)sender).CommandArgument;
            string s1 = TextBox4.Text.ToLower();
            string a1 = rankmaster(s1);

            int rate = Convert.ToInt32(a1);
            IPHostEntry host;
            string localIP = "?";
            host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (IPAddress ip in host.AddressList)
            {
                if (ip.AddressFamily == AddressFamily.InterNetwork)
                {
                    localIP = ip.ToString();
                }
            }
            SqlCommand cmd1 = new SqlCommand("select Type from products where Pname='" + Session["name"] + "'", con);
            con.Open();
            SqlDataReader dr = cmd1.ExecuteReader();
            dr.Read();
            string type = dr[0].ToString();
            con.Close();

            SqlCommand cmd;
            string s = "insert into comment values('" + Session["uid"].ToString() + "','" + TextBox4.Text + "','" + Label2.Text + "','" + Label3.Text + "',"+rate+",'"+localIP+"','"+type+"','Yes')";
            con.Open();
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox4.Text = "";
            Response.Redirect("Comment.aspx");
        }
    }


    public string rankmaster(String s)
    {
        SqlCommand cmd1 = new SqlCommand("Update Multikey set flag='0'", con);
        con.Open();
        cmd1.ExecuteNonQuery();
        con.Close();

        cmd1 = new SqlCommand("Update Singlekey set flag='0'", con);
        con.Open();
        cmd1.ExecuteNonQuery();
        con.Close();

        String k1 = "", s1 = "", k2 = "", s2 = "", loopstr;

        int score = 0;
        Array.Clear(mkeys, 0, mkeys.Length);
        Array.Clear(skeys, 0, skeys.Length);
        mkeyfiller();
        skeyfiller();
        SqlDataAdapter odb = new SqlDataAdapter("select * from Multikey where flag = '0'", con);
        DataSet adb2 = new DataSet();
        odb.Fill(adb2);
        SqlDataAdapter odc = new SqlDataAdapter("select * from Singlekey where flag = '0'", con);
        DataSet adc2 = new DataSet();
        odc.Fill(adc2);
        String mkcount = Convert.ToString(adb2.Tables[0].Rows.Count);
        String skcount = Convert.ToString(adc2.Tables[0].Rows.Count);
        /*       for (int j = 0; j < Convert.ToInt32(ads2.Tables[0].Rows.Count); j++)
               {
                   ListBox1.Items.Add(keys[j]);
 
               }  */



        //Mkey detection and marking
        for (int i = 0; i <= Convert.ToInt32(mkcount) - 1; i++)
        {

            if (s.Contains(mkeys[i]))
            {
                score = score + Convert.ToInt32(getmultiscore(mkeys[i]));
                con.Open();
                SqlCommand cmd = new SqlCommand("Update Multikey set flag = '1' where keyword = '" + mkeys[i] + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                //set flag for skeys contained in matched mkey
                for (int j = 0; j <= Convert.ToInt32(skcount) - 1; j++)
                {
                    if (mkeys[i].Contains(skeys[j]))
                    {

                        con.Open();
                        SqlCommand cmd2 = new SqlCommand("Update Singlekey set flag = '1' where keyword = '" + skeys[j] + "'", con);
                        cmd2.ExecuteNonQuery();
                        con.Close();

                    }
                }
            }
        }
        Array.Clear(skeys, 0, skeys.Length);
        skeyfiller();
        SqlDataAdapter odd = new SqlDataAdapter("select * from Singlekey where flag = '0'", con);
        DataSet add2 = new DataSet();
        odd.Fill(add2);
        skcount = Convert.ToString(add2.Tables[0].Rows.Count);
        //Skey detection and marking
        for (int i = 0; i <= Convert.ToInt32(skcount) - 1; i++)
        {
            if (s.Contains(skeys[i]))
            {
                score = score + Convert.ToInt32(getsinglescore(skeys[i]));
                con.Open();
                SqlCommand cmd = new SqlCommand("Update Singlekey set flag = '1' where keyword = '" + skeys[i] + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();

            }

        }

        return Convert.ToString(score);


    }

    public String getsinglescore(String s)
    {
        SqlDataAdapter oda = new SqlDataAdapter("select score from Singlekey where keyword= '" + s + "'", con);
        DataSet ads2 = new DataSet();
        oda.Fill(ads2);
        return (Convert.ToString(ads2.Tables[0].Rows[0][0]));
    }

    public String getmultiscore(String s)
    {
        SqlDataAdapter oda = new SqlDataAdapter("select score from Multikey where keyword= '" + s + "'", con);
        DataSet ads2 = new DataSet();
        oda.Fill(ads2);
        return (Convert.ToString(ads2.Tables[0].Rows[0][0]));
    }

    public void mkeyfiller()
    {
        SqlDataAdapter oda = new SqlDataAdapter("select keyword,score from Multikey where flag = '0'", con);
        DataSet ads2 = new DataSet();
        oda.Fill(ads2);
        for (int i = 0; i < Convert.ToInt32(ads2.Tables[0].Rows.Count); i++)
        {
            mkeys[i] = ads2.Tables[0].Rows[i][0].ToString();
        }

    }

    public void skeyfiller()
    {
        SqlDataAdapter oda3 = new SqlDataAdapter("select keyword,score from Singlekey where flag = '0'", con);
        DataSet ads3 = new DataSet();
        oda3.Fill(ads3);
        for (int i = 0; i < Convert.ToInt32(ads3.Tables[0].Rows.Count); i++)
        {
            skeys[i] = ads3.Tables[0].Rows[i][0].ToString();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox5.Text == "")
        {
            String alertmsg = "Enter Qauntity";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + alertmsg + "');", true);
        }
        else
        {
            int c = Convert.ToInt32(TextBox5.Text);
            int fc = Convert.ToInt32(Label5.Text) * c;
            try
            {
                string id = Session["uid"].ToString();
                string quantity = TextBox5.Text;
                Session["q"] += quantity;
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into cart values('" + id + "','" + Label2.Text + "-" + TextBox5.Text + "','" + c + "','" + Label5.Text + "','" + fc + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Session["msg"] = "msg";
                Response.Redirect("ViewProducts.aspx");
            }
            catch (HttpException exx)
            {
            
            }
        }
    }
}
