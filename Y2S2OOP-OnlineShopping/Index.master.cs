﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySql.Data.MySqlClient;

public partial class Index : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            publicArea.Visible = false;
        }
        else userArea.Visible = false;

        BindCardNumber();
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/index.aspx");
    }
    public void BindCardNumber()
    {
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyOnlineShoppingDB"].ConnectionString))
        {
            Int64 productid = Convert.ToInt64(Request.QueryString["idproduct"]);

            using (MySqlCommand cmd = new MySqlCommand("SELECT count(*) FROM cart", conn))
            {
                //string items = cmd.ExecuteScalar().ToString();
                pCount.InnerText = "1";
            }
        }
            pCount.InnerText = "0";
    }
}
