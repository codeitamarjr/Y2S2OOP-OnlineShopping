using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;


public partial class signup : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
 
    }
    protected void signUP(object sender, EventArgs e)
    {
        MySqlConnection conn = new MySqlConnection();
        conn.ConnectionString = "server=localhost;user id=root;password=327538;database=onlineshopping";

        conn.Open();
        MySqlCommand cmd = new MySqlCommand("INSERT INTO users (username, password, email, name) VALUES ('"+@textUsername.Text+ "', '" + @textPassword.Text + "', '" + @textEmail.Text + "', '" + @txtName.Text + "')", conn);

        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Registration Succefully'); </script>");
        conn.Close();
        Response.Redirect("~/signin.aspx");
    }

}