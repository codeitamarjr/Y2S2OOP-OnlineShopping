<%@ Page Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="sign-in.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Sign in
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <!-- Section-->
    <section class="py-5">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                    <div class="d-table-cell align-middle">

                        <div class="text-center mt-4">
                            <h1 class="h2">Welcome back!</h1>
                            <p class="lead">
                                Let's login to start shopping!
                            </p>
                        </div>

                        <div class="card">
                            <div class="card-body">
                                <div class="m-sm-4">
                                    <div class="form-group">
                                        <label>Username</label>
                                        &nbsp;<asp:TextBox ID="textUsername" runat="server" class="form-control form-control-lg" placeholder="Enter your name" required></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <asp:TextBox ID="textPassword" runat="server" class="form-control form-control-lg" type="password" placeholder="Enter password" TextMode="Password" required></asp:TextBox>
                                    </div>

                                    <div class="text-center mt-3">
                                        <asp:Button ID="login" runat="server" Text="Log in" class="btn btn-lg btn-primary" OnClick="login_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

