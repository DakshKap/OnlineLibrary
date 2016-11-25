<%@ Page Language="C#" MasterPageFile="~/Library.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Comp229_TeamProject.RegisterPage" %>

<%-- Created By- Shilpa Gandhi StudentId- 300901448 --%>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
   <link rel="icon" type="image/png" href="Assets/favicon.ico"/>
    <div class="bg-2 container-fluid text-center">
        <div class="container">
            <h2>REGISTER HERE</h2>
            <br />
            Already have an account?<a href="#"><u>Sign In</u></a>



            <div class="row pad">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-user"></span>
                        <asp:TextBox ID="txtBoxName" CssClass="form-control" placeholder="Full Name*" runat="server"></asp:TextBox>
                    </div>

                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row pad">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-envelope"></span>
                        <asp:TextBox ID="txtBoxEmail" CssClass="form-control" placeholder="Email*" runat="server"></asp:TextBox>

                    </div>
                    <small style="text-align: left">**Your email will be you username.</small>

                </div>
                <div class="col-sm-2"></div>
            </div>


            <div class="row pad">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-lock"></span>
                        <asp:TextBox ID="txtBoxPassword" CssClass="form-control" placeholder="Password*" runat="server"></asp:TextBox>
                    </div>

                </div>
                <div class="col-sm-2"></div>
            </div>



            <div class="row pad">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-lock"></span>
                        <asp:TextBox ID="txtBoxConfirmPassword" CssClass="form-control" placeholder="Confirm Password*" runat="server"></asp:TextBox>
                    </div>

                </div>
                <div class="col-sm-2"></div>
            </div>




            <div class="row pad">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-home"></span>
                        <asp:TextBox ID="txtBoxAddress" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    *Mandatory Feilds

                </div>
                <div class="col-sm-2"></div>
            </div>


            <div class="row pad">
                <div class="col-sm-3"></div>
                <div class="col-sm-3">

                    <asp:Button ID="btnConfirm" runat="server" class="btn btn-lg" Text="Confirm" OnClick="btnConfirm_Click" />
                </div>
                <div class="col-sm-3">

                    <asp:Button ID="btnCancel" runat="server" class="btn btn-lg" Text="Cancel" />
                </div>

                <div class="col-sm-3"></div>
            </div>

        </div>

    </div>
   
</asp:Content>
