<%@ Page Title="" Language="C#" MasterPageFile="~/Library.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="Comp229_TeamProject.ProfilePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid bg-2 text-center margin">
        <div class="container">
            <h2>Your Details</h2>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <div class="row pad">
                <div class="col-sm-3"></div>
                <div class="col-sm-6"></div>
                <div class="col-sm-3">
                    <asp:Button ID="btnEdit" runat="server" class="btn btn-sm" Text="Edit" OnClick="btnEdit_Click" />
                </div>

            </div>
            <div class="row pad">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-user"></span>
                        <asp:TextBox ID="txtBoxName" CssClass="form-control" placeholder="Full Name*" runat="server"></asp:TextBox><br />
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="*" ControlToValidate="txtBoxName" ValidationGroup="validateProfile">*Cannot Be left Blank</asp:RequiredFieldValidator>


                </div>
                <div class="col-sm-2"></div>
            </div>

            <div class="row pad">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div class="input-group">
                        <span class="input-group-addon glyphicon glyphicon-envelope"></span>
                        <asp:TextBox ID="txtBoxEmail" CssClass="form-control" placeholder="Email*" runat="server" ReadOnly="True"></asp:TextBox>

                    </div>
                    <small>**You cannot edit your Username</small>

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

                </div>
                <div class="col-sm-2"></div>
            </div>


            <div class="row pad">
                <div class="col-sm-4"></div>
                <div class="col-sm-2">

                    <asp:Button ID="btnConfirm" Visible="false" runat="server" class="btn btn-lg" Text="Confirm" ValidationGroup="validateProfile" OnClick="btnConfirm_Click" />
                </div>
                <div class="col-sm-3">

                    <asp:Button ID="btnCancel" Visible="false" runat="server" class="btn btn-lg" Text="Cancel" OnClick="btnCancel_Click" />
                </div>

                <div class="col-sm-3"></div>
            </div>
        </div>
    </div>

</asp:Content>
