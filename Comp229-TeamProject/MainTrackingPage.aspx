<%@ Page Language="C#" MasterPageFile="~/Library.Master" AutoEventWireup="true" CodeBehind="MainTrackingPage.aspx.cs" Inherits="Comp229_TeamProject.MainTrackingPage" %>

<%-- Created By- Daksh Kapur StudentId- 300910369 The whole Page --%>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

    <div id="customCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#customCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#customCarousel" data-slide-to="1"></li>
            <li data-target="#customCarousel" data-slide-to="2"></li>
            <li data-target="#customCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item">
                <img src="Assets/Carousel-Images/rsz_library-1.jpg" class="img-responsive" alt="lib-1" />
                <div class="carousel-caption">
                    <h3>D.S Library</h3>
                    <p>For Fun. For Learning. For Everyone.</p>
                </div>
            </div>

            <div class="item active">
                <img src="Assets/Carousel-Images/rsz_library-2.jpg" class="img-responsive" alt="lib-2" />
                <div class="carousel-caption">
                    <h3>D.S Library</h3>
                    <p>For Fun. For Learning. For Everyone.</p>
                </div>
            </div>

            <div class="item">
                <img src="Assets/Carousel-Images/rsz_library-3.jpg" class="img-responsive" alt="lib-3" />
                <div class="carousel-caption">
                    <h3>D.S Library</h3>
                    <p>For Fun. For Learning. For Everyone.</p>
                </div>
            </div>


        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#customCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#customCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="container-fluid text-color-custom text-center">
        <div class="container">
            <div class="row">


                <div class="col-sm-3">
                    <h2>Wide Range of Books</h2>
                    <br />

                    <p>
                        We have one of the biggest collection of books available in the city with varoius diffrent generes.

                    </p>
                    <br />
                    <a href="CataloguePage.aspx" style="color: #9d8062"><u>See Catalogue</u></a>

                </div>

                <div class="col-sm-1"></div>

                <div class="col-sm-3">
                    <h2>One Click Rentals</h2>
                    <br /><br />
                    <p>
                        Renting a book was never this easy, rent a book just at single click.
                    </p>
                </div>

                <div class="col-sm-1"></div>

                <div class="col-sm-3">
                    <h2>Personalized Collection.</h2>
                    <br /><br />
                    <p>You can have your own personal collection.</p>
                    <br />
                    <a href="RegisterPage.aspx" style="color: #9d8062"><u>Register for more.</u></a>

                </div>


            </div>
        </div>
    </div>



    <%--<div class="container-fluid">
        <a class="btn btn-social-icon btn-twitter">
            <span class="fa fa-twitter"></span>
        </a>
    </div>--%>
</asp:Content>
