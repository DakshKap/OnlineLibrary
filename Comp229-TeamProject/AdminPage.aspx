<%@ Page Title="" Language="C#" MasterPageFile="~/Library.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Comp229_TeamProject.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <ul class="nav nav-tabs nav-justified">
            <li class="active"><a href="#BooksAvailable">Books Available</a></li>
            <li><a href="#Users">Users</a></li>
            <li><a href="#BooksRented">Books Rented By Users</a></li>

        </ul>
    </div>
    <div class="tab-content" style="padding-top: 70px; padding-bottom: 170px">

        <div id="BooksAvailable" class="tab-pane fade in active">
            <div class="container-fluid bg-2 text-center">
                <div class="container divStyle margin">





                    <h3 class="margin">Books</h3>


                    <div class="row">
                        <div class="col-sm-5">
                            <asp:Label ID="WarningLabel" runat="server" Text="Label" Visible="false"> 
                <div class="alert alert-danger" style="text-align:left">
                    <strong>You cannot edit Book Id !!!</strong>Even if you do it won't work.. :P

                </div> 
                            </asp:Label>

                        </div>
                        <div class="col-sm-2">
                        </div>
                        <div class="col-sm-5">
                        </div>
                    </div>



                    <asp:GridView ID="BooksGrid" runat="server" CssClass="table" AutoGenerateColumns="false" HorizontalAlign="Center" CellPadding="5" CellSpacing="5" OnRowCancelingEdit="BooksGrid_RowCancelingEdit" OnRowDeleting="BooksGrid_RowDeleting" OnRowEditing="BooksGrid_RowEditing" OnRowUpdating="BooksGrid_RowUpdating">
                        <Columns>
                            <asp:BoundField DataField="BookID" HeaderText="Book ID" ItemStyle-Width="100" />
                            <asp:BoundField DataField="Title" HeaderText="Title" ItemStyle-Width="150" />
                            <asp:BoundField DataField="Author" HeaderText="Author" ItemStyle-Width="100" />
                            <asp:BoundField DataField="Publish year" HeaderText="Publish Year" ItemStyle-Width="100" />
                            <asp:BoundField DataField="Genre" HeaderText="Genre" ItemStyle-Width="100" />
                            <asp:BoundField DataField="Description" HeaderText="Description" ItemStyle-Width="200" />
                            <asp:CommandField ShowEditButton="true" ItemStyle-Width="70" />
                            <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="70" />

                        </Columns>
                    </asp:GridView>


                </div>

            </div>
        </div>

        <div id="Users" class="tab-pane fade">
            <div class="container-fluid bg-2 text-center">
                <div class="container divStyle margin">
                    <h3 class="margin">Users</h3>

                    <asp:GridView ID="UsersGrid" runat="server" CssClass="table" AutoGenerateColumns="false" HorizontalAlign="Center" CellPadding="5" CellSpacing="5" OnRowDeleting="UsersGrid_RowDeleting">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="100" />
                            <asp:BoundField DataField="Email" HeaderText="Email ID/Username" ItemStyle-Width="150" />
                            <asp:BoundField DataField="Address" HeaderText="Address" ItemStyle-Width="100" />
                            <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="70" />

                        </Columns>
                    </asp:GridView>

                </div>
            </div>

        </div>
        <div id="BooksRented" class="tab-pane fade">
            <div class="container-fluid bg-2 text-center">
                <div class="container divStyle margin">
                    <h3 class="margin">Books Rented By Users</h3>

                    <asp:GridView ID="UserRent" runat="server" CssClass="table" AutoGenerateColumns="false" HorizontalAlign="Center" CellPadding="5" CellSpacing="5">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="100" />
                            <asp:BoundField DataField="Email" HeaderText="Email ID/Username" ItemStyle-Width="150" />
                            <asp:BoundField DataField="Title" HeaderText="Book Name" ItemStyle-Width="100" />



                        </Columns>
                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>
</asp:Content>


