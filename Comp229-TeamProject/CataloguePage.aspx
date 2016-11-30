<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Library.Master" CodeBehind="CataloguePage.aspx.cs" Inherits="Comp229_TeamProject.CataloguePage" %>

<%-- Created By Daksh Kapur --%>


<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <%-- This is only a crude design will refine it in next Iteration --%>

    <div class="container-fluid bg-2 text-center">
        <div class="container divStyle margin">
            <h1 class="margin">Books</h1>

            <asp:DataList ID="DataListProducts" runat="server">

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
                                <div class="btn btn-default">
                                <asp:LinkButton runat="server"  CommandName="ShowProducts"
                                    CommandArgument='<%# Eval("BookID") %>' ID="ShowProducts">
                                    Details</asp:LinkButton></div>
                            </div>
                        </div>
                    </div>
                    <br />


                </ItemTemplate>

            </asp:DataList>

        </div>
    </div>



</asp:Content>
