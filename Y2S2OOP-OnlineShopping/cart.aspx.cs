using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProductCart();
        }
    }

    private void BindProductCart()
    {
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyOnlineShoppingDB"].ConnectionString))
        {
            Int64 productid = Convert.ToInt64(Request.QueryString["idproduct"]);
            using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM cart WHERE username = '" + Session["username"] + "'", conn))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    viewCart.DataSource = dt;
                    viewCart.DataBind();
                }
            }
        }
    }
}