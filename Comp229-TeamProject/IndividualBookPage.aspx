<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Library.Master" CodeBehind="IndividualBookPage.aspx.cs" Inherits="Comp229_TeamProject.IndividualBookPage" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container-fluid bg-2">
        <div class="container">

            <asp:DataList EnableViewState="true" ID="DataListIndividual" runat="server" OnItemCommand="DataListIndividual_ItemCommand">

                <ItemTemplate>
                    <div class="row">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-6">
                            <img src="<%#Eval("ImageURL") %>" />
                        </div>
                        <div class="col-sm-4">
                            <h2><%#Eval("Title") %></h2>
                            <br />
                            <p><b>Publish Year:</b> <%#Eval("Publish year") %></p>
                            <p><b>Genre:</b><%#Eval("Genre") %></p>
                            <p><b>Author:</b><%#Eval("Genre") %></p>
                            <br />
                            <p>
                                <b>Description:</b><br />
                                <%#Eval("Description") %>
                            </p>
                            <br />
                            <br />
                            <br />

                            <asp:Button ID="btnRent" CommandName="Rent" CssClass="btn btn-default" CommandArgument='<%# Eval("BookID") %>' runat="server" Text="Rent" />
                            
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-6"></div>
                <div class="col-sm-4">
                    <asp:Label ID="label1" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </div>



</asp:Content>

