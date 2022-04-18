<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="sign-up.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Signup
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <section class="py-5">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                    <div class="d-table-cell align-middle">

                        <div class="text-center mt-4">
                            <h1 class="h2">Let's get start with your account to shopping!</h1>
                            <p class="lead">
                                Start creating the best possible user experience for you customers.
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
                                            <label>Name</label>
                                            &nbsp;<asp:TextBox ID="txtName" runat="server" class="form-control form-control-lg" placeholder="Enter your name" required></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Phone</label>
                                            &nbsp;<asp:TextBox ID="phone" runat="server" class="form-control form-control-lg" type="phone" required></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Email</label>
                                            <asp:TextBox ID="textEmail" runat="server" class="form-control form-control-lg" type="email" placeholder="Enter your email" required></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <asp:TextBox ID="textPassword" runat="server" class="form-control form-control-lg" type="password" placeholder="Enter password" TextMode="Password" required></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label>Confirm your Password</label>
                                            <asp:TextBox ID="textConfirmPassword" runat="server" class="form-control form-control-lg" type="password" placeholder="Confirm your password" TextMode="Password" required></asp:TextBox>
                                        </div>
                                        <div class="text-center mt-3">
                                            <asp:Button ID="signupButton" runat="server" Text="Sign up" class="btn btn-lg btn-primary" OnClick="signUP"/>
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

