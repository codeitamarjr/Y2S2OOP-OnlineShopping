<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="viewProduct.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Product View
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">



<div class="container">
    <div class="card">
        <asp:Repeater ID="viewProduct" runat="server">
            <ItemTemplate>
        <div class="card-body">
            <div class="row">
                <div class="col">
                    <div class="white-box text-center">
                        <img src="img/productsImg/<%# Eval("product_img") %>" class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-7 col-md-7 col-sm-6">
                    <h4 class="box-title mt-5"><%# Eval("product_name") %></h4>
                    <p><%# Eval("product_description") %></p>
                    <h2 class="mt-5">
                        $<%# Eval("product_price") %></h2>
                    <p>Availability: <%# Eval("product_quantity") %><br />
                    Color: <%# Eval("product_color") %><br />
                    Size: <%# Eval("product_size") %><br />
                    </p>
                    <asp:Button ID="addToCart" runat="server" Text="Add to cart" class="btn btn-primary btn-rounded" OnClick="addToCart_Click" />
                </div>
            </div>
        </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>


 

</asp:Content>

