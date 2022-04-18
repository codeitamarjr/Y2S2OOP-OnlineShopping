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

    protected void addProduct_Click(object sender, EventArgs e)
    {
        MySqlConnection conn = new MySqlConnection();
        conn.ConnectionString = "server=localhost;user id=root;password=327538;database=onlineshopping";

        conn.Open();
        MySqlCommand cmd = new MySqlCommand("INSERT INTO product (product_quantity, product_name, product_description, product_price, product_category)" +
            "VALUES('" + @quantity.Text + "', '" + productName.Text + "', '" + descriptionItem.Text + "', '" + priceItem.Text + "', '" + categoryProduct.Text + "')", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Product added Succefully'); window.location ='index.aspx';", true);
    }
}