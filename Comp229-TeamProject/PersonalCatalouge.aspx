<%@ Page Title="" Language="C#" MasterPageFile="~/Library.Master" AutoEventWireup="true" CodeBehind="PersonalCatalouge.aspx.cs" Inherits="Comp229_TeamProject.PersonalCatalouge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg-2 text-center">
        <div class="container divStyle margin">
            <h1 class="margin">Books</h1>

            <asp:DataList EnableViewState="true" ID="DataListProducts" runat="server" OnItemCommand="DataListProducts_ItemCommand" >

                <ItemTemplate>

                    <div class="container well" style="background-color: #ebe6e0; color: #301F0D" id="items">
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-3">
                                <br />
                                <img src="<%#Eval("SmallImageURL") %>" />

                            </div>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-6">
                                <h3><%#Eval("Title") %></h3>
                                <br />
                                <p><b>Publish Year:</b> <%#Eval("Publish year") %></p>
                                <p><b>Genre:</b> <%#Eval("Genre") %></p>
                                <p><b>Author:</b> <%#Eval("Author") %></p>
                                <br />
                                <br />
                                <br />
                                <asp:Button ID="btnGiveBack" CommandName="GiveBack" CssClass="btn btn-default" CommandArgument='<%# Eval("BookID") %>' runat="server" Text="Give Back" />

                            </div>
                        </div>

                    </div>
                    <br />


                </ItemTemplate>

            </asp:DataList>

        </div>
    </div>
</asp:Content>
