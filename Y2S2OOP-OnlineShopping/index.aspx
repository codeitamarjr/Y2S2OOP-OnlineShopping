<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Welcome to my Online Shopping
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <!-- Section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

                <asp:Repeater ID="repeaterItem" runat="server">
                    <ItemTemplate>
                        <!-- Product CARD Start-->
                        <div id="itemBlock" class="col mb-5">
                            <div class="card h-100">
                                <!-- Sale badge-->
                                <div id="badge" class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem"><%# Eval("product_sale") %></div>
                                <!-- Product image-->
                                <img class="card-img-top" src="img/productsImg/<%# Eval("product_img") %>" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">
                                            <a class="nav-link" href="<%# Eval("idproduct") %>">
                                                <%# Eval("product_name") %>
                                            </a>
                                        </h5>
                                        <!-- Product price-->
                                        $<%# Eval("product_price") %>
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                    <asp:Button ID="addToCart" runat="server" Text="Add to cart" class="btn btn-outline-dark mt-auto"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Product CARD Ends-->
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </section>
</asp:Content>

