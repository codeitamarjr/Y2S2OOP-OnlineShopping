﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyOnlineShoppingDB"].ConnectionString))
        {
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM users WHERE username=@username and password=@pwd", conn);
            cmd.Parameters.AddWithValue("@username", textUsername.Text);
            cmd.Parameters.AddWithValue("@pwd", textPassword.Text);

            cmd.ExecuteNonQuery();

            MySqlDataReader status = cmd.ExecuteReader();

            if ( status.HasRows)
            {
                
                Response.Write("<script> alert('Login Succefully'); </script>");
                Session["username"] = textUsername.Text.Trim();
                conn.Close();
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                Response.Write("<script> alert('Username or Password incorrect.'); </script>");
                
            }
           
        }
    }
}