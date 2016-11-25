<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Library.Master" CodeBehind="CataloguePage.aspx.cs" Inherits="Comp229_TeamProject.CataloguePage" %>

<%-- Created By Daksh Kapur --%>


<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <%-- This is only a crude design will refine it in next Iteration --%>

    <div class="container-fluid bg-2 text-center">
        <div class="container divStyle margin">
            <h3 class="margin">Books</h3>

            <asp:GridView ID="BooksGrid" runat="server" CssClass="table" AutoGenerateColumns="false" HorizontalAlign="Center" CellPadding="5" CellSpacing="5">
                <Columns>
                    
                    <asp:BoundField DataField="Name" HeaderText="Title" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Author" HeaderText="Author" ItemStyle-Width="100" />
                    <asp:BoundField DataField="Publish year" HeaderText="Publish Year" ItemStyle-Width="100" />
                    <asp:BoundField DataField="Genre" HeaderText="Genre" ItemStyle-Width="100" />
                   
                </Columns>
            </asp:GridView>

            </div>
        </div>

    <div class="container-fluid">

    </div>

    </asp:Content>
