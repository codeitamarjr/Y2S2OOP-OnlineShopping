using System;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyOnlineShoppingDB"].ConnectionString))
        {
            using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM product", conn))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    repeaterItem.DataSource = dt;
                    repeaterItem.DataBind();
                }
            }
        }
    }
}