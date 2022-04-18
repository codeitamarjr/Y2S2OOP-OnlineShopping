using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySql.Data.MySqlClient;


public partial class _Default : System.Web.UI.Page
{

    public static String CS = ConfigurationManager.ConnectionStrings["MyOnlineShoppingDB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProduct();
        }
    }
    private void BindProduct()
    {
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyOnlineShoppingDB"].ConnectionString))
        {
            Int64 productid = Convert.ToInt64(Request.QueryString["idproduct"]);
            using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM product WHERE idproduct = '" + productid + "'", conn))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    viewProduct.DataSource = dt;
                    viewProduct.DataBind();
                }
            }
        }
    }

 

    protected void addToCart_Click(object sender, EventArgs e)
    {
        Int64 productID = Convert.ToInt64(Request.QueryString["idproduct"]);
        if (Session["username"] == null)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('You have to log in to buy a product'); window.location ='sign-in.aspx';", true);
        }
        else
        {
                MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyOnlineShoppingDB"].ConnectionString);
                conn.Open();

                MySqlCommand cmd = new MySqlCommand("INSERT INTO cart (username, idproduct, product_quantity, product_price, status) VALUES('" + Session["username"] + "', '" + productID + "', '1', '', 'cart')", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Product added to your cart'); window.location ='cart.aspx';", true);
            
        }
    }
}