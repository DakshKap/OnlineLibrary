<%@ Page Language="C#" MasterPageFile="~/Library.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Comp229_TeamProject.RegisterPage" %>

<%-- Created By- Shilpa Gandhi StudentId- 300901448 --%>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
   
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
                    <asp:RequiredFieldValidator ID="txtBoxNameValidator" ForeColor="Red" runat="server" ErrorMessage="Name Not entered" ValidationGroup="RegisterPageValidator" ControlToValidate="txtBoxName">*Enter Your Name</asp:RequiredFieldValidator>
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
                    <small style="text-align: left">**Your email will be you username.</small><br />
                     <asp:RequiredFieldValidator ID="txtBoxEmailValidator" runat="server" ForeColor="Red" ErrorMessage="Name Not entered" ValidationGroup="RegisterPageValidator" ControlToValidate="txtBoxEmail">*Enter Email</asp:RequiredFieldValidator>

                </div>
                <div class="col-sm-2"></div>
            </div>


            <div class="row pad">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-lock"></span>
                        <asp:TextBox ID="txtBoxPassword" CssClass="form-control" placeholder="Password*" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" ForeColor="Red" runat="server" ErrorMessage="Name Not entered" ValidationGroup="RegisterPageValidator" ControlToValidate="txtBoxPassword">*Enter Password</asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-2"></div>
            </div>



            <div class="row pad">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-lock"></span>
                        <asp:TextBox ID="txtBoxConfirmPassword" CssClass="form-control" placeholder="Confirm Password*" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ForeColor="Red" ErrorMessage="CompareValidator" ValidationGroup="RegisterPageValidator" ControlToValidate="txtBoxConfirmPassword" ControlToCompare="txtBoxPassword">*Passwords Do not Match</asp:CompareValidator>
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

                    <asp:Button ID="btnConfirm" runat="server" class="btn btn-lg" Text="Confirm" OnClick="btnConfirm_Click" ValidationGroup="RegisterPageValidator" />
                </div>
                <div class="col-sm-3">

                    <asp:Button ID="btnCancel" runat="server" class="btn btn-lg" Text="Cancel" />
                </div>

                <div class="col-sm-3"></div>
            </div>

        </div>

    </div>

</asp:Content>
