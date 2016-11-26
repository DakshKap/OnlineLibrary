<%@ Page Title="" Language="C#" MasterPageFile="~/Library.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Comp229_TeamProject.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid bg-2 text-center">
        <div class="container divStyle margin">
            <h3 class="margin">Books</h3>

            <asp:GridView ID="BooksGrid" runat="server" CssClass="table" AutoGenerateColumns="false" HorizontalAlign="Center" CellPadding="5" CellSpacing="5">
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="Book ID" ItemStyle-Width="100" />
                    <asp:BoundField DataField="Name" HeaderText="Title" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Author" HeaderText="Author" ItemStyle-Width="100" />
                    <asp:BoundField DataField="Publish year" HeaderText="Publish Year" ItemStyle-Width="100" />
                    <asp:BoundField DataField="Genre" HeaderText="Genre" ItemStyle-Width="100" />
                    <asp:CommandField ShowEditButton="true" ItemStyle-Width="70" />
                    <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="70" />
                   
                </Columns>
            </asp:GridView>

            <button class="btn btn-default">Add New Book</button>

            </div>

        </div>

     <div class="container-fluid bg-2 text-center">
        <div class="container divStyle margin">
            <h3 class="margin">Users</h3>

            <asp:GridView ID="UsersGrid" runat="server" CssClass="table" AutoGenerateColumns="false" HorizontalAlign="Center" CellPadding="5" CellSpacing="5">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="100" />
                    <asp:BoundField DataField="Email" HeaderText="Email ID/Username" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Address" HeaderText="Address" ItemStyle-Width="100" />
                   <asp:CommandField ShowEditButton="true" ItemStyle-Width="70" />
                    <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="70" />
                   
                </Columns>
            </asp:GridView>

            </div>
        </div>

</asp:Content>


