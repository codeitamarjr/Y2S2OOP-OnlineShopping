<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="addProduct.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <div class="container-xl px-4 mt-4">
    <!-- Account page navigation-->
    <div class="row">
        <div class="col-xl-4">
            <!-- Profile picture card-->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header">Product Picture</div>
                <div class="card-body text-center">
                    <!-- Profile picture image-->
                    <img class="img-account-profile rounded-circle mb-2" src="img/default-product-image.png" alt="Default image"/ width="250px" height="100%">
                    <!-- Profile picture help block-->
                    <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                    <!-- Profile picture upload button-->
                    <asp:FileUpload ID="productImage" runat="server" class="form-control" />
                </div>
            </div>
        </div>
        <div class="col-xl-8">
            <!-- Product details card-->
            <div class="card mb-4">
                <div class="card-header">Product Details</div>
                <div class="card-body">
                        <!-- Form Group (product name)-->
                        <div class="mb-3">
                            <label class="small mb-1">Product Name (how your name will appear to other users on the site)</label>
                            <asp:TextBox ID="productName" runat="server" class="form-control" placeholder="Enter the product name" required></asp:TextBox>
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (product quantity)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputFirstName">Quantity</label>
                                <asp:TextBox ID="quantity" runat="server" class="form-control" placeholder="Quantity of this product" required></asp:TextBox>
                            </div>
                            <!-- Form Group (product price)-->
                            <div class="col-md-6">
                                <label class="small mb-1">Price</label>
                                <asp:TextBox ID="priceItem" runat="server" class="form-control" placeholder="Price" required></asp:TextBox>
                            </div>
                        </div>
                        <!-- Form Row  -->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (category)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputOrgName">Category</label>
                                <asp:DropDownList ID="categoryProduct" runat="server" class="form-select" required>

                                    <asp:ListItem Selected="True" Value="Smart watches"> Smart watches </asp:ListItem>
                                    <asp:ListItem Value="Laptops"> Laptops </asp:ListItem>
                                    <asp:ListItem Value="TV  Entertainment"> TV & Entertainment </asp:ListItem>
                                    <asp:ListItem Value="Phones"> Phones </asp:ListItem>
                                    <asp:ListItem Value="Gaming"> Gaming </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <!-- Form Group (location)-->
                            <div class="col-md-6">
                                <label class="small mb-1" for="inputLocation">Extra</label>
                                <input class="form-control" id="extra" type="text" placeholder="Enter your location"/>
                            </div>
                        </div>
                        <!-- Form Group (email address)-->
                        <div class="mb-3">
                            <label class="small mb-1">Product description</label>
                            <asp:TextBox ID="descriptionItem" runat="server" class="form-control" placeholder="This description will appear for the public"></asp:TextBox>
                        </div>
                        <!-- Form Row-->
                        <!-- Save changes button-->
                        <asp:Button ID="addProduct" runat="server" Text="Insert Product" class="btn btn-primary" OnClick="addProduct_Click"/>

                </div>
            </div>
        </div>
    </div>
</div>
    <br />
</asp:Content>

