<%@ Page Language="C#" EnableViewState="true" AutoEventWireup="true" MasterPageFile="~/Library.Master" CodeBehind="CataloguePage.aspx.cs" Inherits="Comp229_TeamProject.CataloguePage" %>

<%-- Created By Daksh Kapur --%>


<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <%-- This is only a crude design will refine it in next Iteration --%>

    <div class="container-fluid bg-2 text-center">
        <div class="container divStyle margin">
            <h1 class="margin">Books</h1>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:DataList EnableViewState="true" ID="DataListProducts" runat="server">

                <ItemTemplate>

                    <div class="container well" id="items">
                        <div class="row">
                            <div class="col-sm-4">
                                <img class="img-responsive" src="Assets/LogoLibrary.png" />
                            </div>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-6">
                                <h3><%#Eval("Name") %></h3>
                                <br />
                                <p><b>Genre:</b> <%#Eval("Genre") %></p>
                                <p><b>Author:</b> <%#Eval("Author") %></p>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4"></div>
                            <div class="col-sm-1">
                            </div
                            <div class="col-sm-6">
                                <asp:Button ID="Button1" CommandName="Details" CssClass="btn btn-default" CommandArgument='<%# Eval("BookID") %>' runat="server" Text="Details" />
                                
                              <%--  <div class="btn btn-default">

                      
                                <asp:LinkButton runat="server"  CommandName="Details"
                                    CommandArgument='<%# Eval("BookID") %>' ID="Details">
                                    Details</asp:LinkButton></div>--%>
                            </div>
                        </div>
                    </div>
                    <br />


                </ItemTemplate>

            </asp:DataList>

        </div>
    </div>



</asp:Content>
