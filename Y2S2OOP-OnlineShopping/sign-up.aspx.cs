using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void signUP(object sender, EventArgs e)
    {
        MySqlConnection conn = new MySqlConnection();
        conn.ConnectionString = "server=localhost;user id=root;password=327538;database=onlineshopping";

        conn.Open();
        MySqlCommand cmd = new MySqlCommand("INSERT INTO users (username, password, email, name, phone) VALUES ('" + @textUsername.Text + "', '" + @textPassword.Text + "', '" + @textEmail.Text + "', '" + @txtName.Text + "','" + @phone.Text + "')", conn);

        cmd.ExecuteNonQuery();
        conn.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Registration Succefully'); window.location ='sign-in.aspx';", true);
    }
}