<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/CompanyMaster.master" CodeFile="CompanyHome.aspx.cs" Inherits="CompanyHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />

    <section class="slider">
        <div id="demo" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/slider/slider1.jpg">
                    <div class="carousel-caption">
                        <h2>Find the Best Employee. Right Now.</h2>
                        <p>your jobs starts and ends with us.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/slider/slider2.jpg">
                    <div class="carousel-caption">
                        <h2>Find the Best Employee. Right Now.</h2>
                        <p>your jobs starts and ends with us.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/slider/slider3.jpg">
                    <div class="carousel-caption">
                        <h2>Find the Best Employee. Right Now.</h2>
                        <p>your jobs starts and ends with us.</p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <i class="fa fa-angle-left"></i>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <i class="fa fa-angle-right"></i>
            </a>

        </div>
    </section>
    <section class="job-point">
       <div class="part1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-4 col-sm-12">
                        <h5>Find Best Employee Here...</h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="part2">
            <div class="container">
                <div class="heading">
                    <h1><span>Job </span>Point</h1>
                </div>
                <div class="job-text">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 p1">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <img src="images/image1.jpg">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
