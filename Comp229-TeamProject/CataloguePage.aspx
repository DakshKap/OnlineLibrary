<%@ Page Language="C#" EnableViewState="true" AutoEventWireup="true" MasterPageFile="~/Library.Master" CodeBehind="CataloguePage.aspx.cs" Inherits="Comp229_TeamProject.CataloguePage" %>

<%-- Created By Daksh Kapur --%>


<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
   

    <div class="container-fluid bg-2 text-center">
        <div class="container divStyle margin">
            <h1 class="margin">Books</h1>
           
            <asp:DataList EnableViewState="true" ID="DataListProducts" runat="server" OnItemCommand="DataListProducts_ItemCommand">

                <ItemTemplate>

                    <div class="container well" style="background-color:#ebe6e0; color:#301F0D" id="items">
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-3" ><br />
                                <img  src="<%#Eval("SmallImageURL") %>" />
                               
                            </div>
                            <div class="col-sm-1">
                            </div>
                            <div class="col-sm-6">
                                <h3><%#Eval("Name") %></h3>
                                <br />
                                <p><b>Publish Year:</b> <%#Eval("Publish year") %></p>
                                <p><b>Genre:</b> <%#Eval("Genre") %></p>
                                <p><b>Author:</b> <%#Eval("Author") %></p>
                                <br />
                                <br />
                                <br />
                                <asp:Button ID="Button1" CommandName="More" CssClass="btn btn-default" CommandArgument='<%# Eval("BookID") %>' runat="server" Text="More.." />

                            </div>
                        </div>
                       
                    </div>
                    <br />


                </ItemTemplate>

            </asp:DataList>

        </div>
    </div>



</asp:Content>
