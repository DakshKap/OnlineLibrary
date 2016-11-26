<%@ Page Title="" Language="C#" MasterPageFile="~/Library.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Comp229_TeamProject.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg-2 margin">
        <div class="container text-center">
            
         <span class="glyphicon glyphicon-user"></span>&nbsp; The Librarian.<br />
         <span class="glyphicon glyphicon-map-marker"></span>&nbsp; 3211, Hypothetical Street,<br />
                                                             &nbsp;&nbsp; Toronto, Ontario<br />
                                                             &nbsp;&nbsp; CANADA.<br />
            <span class="glyphicon glyphicon-phone"></span>&nbsp; +1 (647)-XXX-XXXX <br />
             <span class="glyphicon glyphicon-envelope"></span>&nbsp; contact@dslibrary.ca <br />
        </div>
    </div>







    <div id="map" style="display:inline; height: auto" ></div>

    <%-- Google API --%>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBPv5FLg4cIeRJETnebK6pm9fFZcj4YYsk&callback=initMap"
        async="async" defer="defer"></script>
</asp:Content>
<%--Services Page created by shilpa gandhi--%>
