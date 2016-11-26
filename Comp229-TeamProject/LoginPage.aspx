<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Library.Master" CodeBehind="LoginPage.aspx.cs" Inherits="Comp229_TeamProject.LoginPage" %>

<%--Created By Daksh Kapur --%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="icon" type="image/png" href="Assets/favicon.ico"/>
    <div class="container-fluid text-center">
        <div class="container">
            <h2>Login</h2>
            <br />
            <ul class="nav nav-tabs nav-justified">
                <li class="active"><a href="#user">User</a></li>
                <li><a href="#admin">Admin</a></li>
            </ul>

            <div class="tab-content" style="padding-top:70px; padding-bottom:170px" >
                <div id="user" class="tab-pane fade in active">

                    <div class="row pad">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon glyphicon glyphicon-user"></span>
                                <asp:TextBox ID="txtBoxUserName" CssClass="form-control" placeholder="UserName" runat="server"></asp:TextBox>
                            </div>

                        </div>
                        <div class="col-sm-2"></div>
                    </div>

                    <div class="row pad">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon glyphicon glyphicon-lock"></span>
                                <asp:TextBox ID="txtBoxPassword" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                            </div>

                        </div>
                        <div class="col-sm-2"></div>
                    </div>

                    <div class="row pad">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">

                            <asp:Button ID="btnLoginUser" runat="server" class="btn btn-lg" Text="Login" />
                        </div>
                        <div class="col-sm-2"></div>
                    </div>


                </div>
                <div id="admin" class="tab-pane fade">

                    <div class="row pad">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon glyphicon glyphicon-user"></span>
                                <asp:TextBox ID="txtBoxUserNameAdmin" CssClass="form-control" placeholder="UserName" runat="server"></asp:TextBox>
                            </div>

                        </div>
                        <div class="col-sm-2"></div>
                    </div>

                    <div class="row pad">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon glyphicon glyphicon-lock"></span>
                                <asp:TextBox ID="txtBoxPasswordAdmin" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                            </div>

                        </div>
                        <div class="col-sm-2"></div>
                    </div>

                    <div class="row pad">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">

                            <asp:Button ID="btnLoginAdmin" runat="server" class="btn btn-lg" Text="Login" />
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
                </div>

            </div>
        </div>


        
    </div>
</asp:Content>
