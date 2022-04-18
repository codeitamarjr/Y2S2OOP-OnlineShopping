<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Cart
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"/>
<div class="container">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-md-9">
            <div class="ibox">

                <asp:Repeater ID="viewCart" runat="server">
                <ItemTemplate>

                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table shoping-cart-table">
                            <tbody>
                            <tr>
                                <td width="90">
                                </td>
                                <td class="desc">
                                    <h3>
                                    <a href="#" class="text-navy">
                                        <%# Eval("idproduct") %>
                                    </a>
                                    </h3>
                                    <p class="small">
                                        It is a long established fact that a reader will be distracted by the readable
                                        content of a page when looking at its layout. The point of using Lorem Ipsum is
                                    </p>
                                </td>

                                <td>
                                    $<%# Eval("product_price") %></td>
                                <td width="65">
                                    <input type="text" class="form-control" placeholder="1">
                                </td>
                                <td>
                                    <h4>
                                        $<%# Eval("product_price") %></h4>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>

                </ItemTemplate>
                </asp:Repeater>
               
            </div>

        </div>
        <div class="col-md-3">
            <div class="ibox">
                <div class="ibox-title">
                    <h5>Cart Summary</h5>
                </div>
                <div class="ibox-content">
                    <span>
                        Total
                    </span>
                    <h2 class="font-bold">
                        $390,00
                    </h2>

                    <hr>
                    <span class="text-muted small">
                        *Free parcel service
                    </span>
                    <div class="m-t-sm">
                        <div class="btn-group">
                        <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-shopping-cart"></i> Checkout</a>
                        </div>
                    </div>
                </div>
            </div>

          

            <div class="ibox">
                <div class="ibox-content">
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</asp:Content>

