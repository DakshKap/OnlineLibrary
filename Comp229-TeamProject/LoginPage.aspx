<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Library.Master" CodeBehind="LoginPage.aspx.cs" Inherits="Comp229_TeamProject.LoginPage" %>

<%--Created By Daksh Kapur --%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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

                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ForeColor="Red" ErrorMessage="*Cannot be Left Blank" ControlToValidate="txtBoxUserName" ValidationGroup="UserLoginValidator">*Cannot Be Left Blank</asp:RequiredFieldValidator>
                            

                        </div>
                        <div class="col-sm-2"></div>
                    </div>

                    <div class="row pad">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon glyphicon glyphicon-lock"></span>
                                <asp:TextBox ID="txtBoxPassword" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                
                            </div>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ForeColor="Red" ErrorMessage="*Cannot be Left Blank" ValidationGroup="UserLoginValidator" ControlToValidate="txtBoxPassword">*Cannot be left blank</asp:RequiredFieldValidator>
                            <br /><asp:Label ID="ErrorUser" runat="server" Text=""></asp:Label><br />
                            Not a user. &nbsp; <a href="RegisterPage.aspx"><u>Sign up.</u></a>
                        </div>
                        <div class="col-sm-2"></div>
                    </div>

                    <div class="row pad">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">

                            <asp:Button ID="btnLoginUser" runat="server" class="btn btn-lg" Text="Login" OnClick="btnLoginUser_Click" ValidationGroup="UserLoginValidator" />
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
                            <asp:RequiredFieldValidator ID="AdminUsernameValidator" runat="server" ForeColor="Red" ErrorMessage="*Cannot be Left Blank" ValidationGroup="AdminLoginValidator" ControlToValidate="txtBoxUserNameAdmin">*Cannot be left blank</asp:RequiredFieldValidator>

                        </div>
                        <div class="col-sm-2"></div>
                    </div>

                    <div class="row pad">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon glyphicon glyphicon-lock"></span>
                                <asp:TextBox ID="txtBoxPasswordAdmin" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                
                            
                            </div>
                             <asp:RequiredFieldValidator ID="AdminPasswordValidator" runat="server" ForeColor="Red" ErrorMessage="*Cannot be Left Blank" ValidationGroup="AdminLoginValidator" ControlToValidate="txtBoxPasswordAdmin">*Cannot be left blank</asp:RequiredFieldValidator><br />
                            <asp:Label ID="ErrorAdmin" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="col-sm-2"></div>
                    </div>

                    <div class="row pad">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">

                            <asp:Button ID="btnLoginAdmin" ValidationGroup="AdminLoginValidator" runat="server" class="btn btn-lg" Text="Login" OnClick="btnLoginAdmin_Click" />
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
                </div>

            </div>
        </div>


        
    </div>
</asp:Content>
