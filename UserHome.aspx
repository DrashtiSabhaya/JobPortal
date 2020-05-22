<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.master" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

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
                        <h2>Find the Right Job. Right Now.</h2>
                        <p>your job search starts and ends with us.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/slider/slider2.jpg">
                    <div class="carousel-caption">
                        <h2>Find the Right Job. Right Now.</h2>
                        <p>your job search starts and ends with us.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/slider/slider3.jpg">
                    <div class="carousel-caption">
                        <h2>Find the Right Job. Right Now.</h2>
                        <p>your job search starts and ends with us.</p>
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
                        <h5>Search Your Job</h5>
                    </div>
                    <div class="col-lg-6 col-md-8 col-sm-12">
                        <form>
                            <ul class="list-unstyled list-group list-group-horizontal">
                                <li>
                                    <input type="text" name="name" placeholder="Enter Name">
                                </li>
                                <li>
                                    <input type="text" name="location" placeholder="Enter Location">
                                </li>
                                <li>
                                    <button class="btn">Search</button>
                                </li>
                            </ul>
                        </form>
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
                          <h5 style="overflow:hidden">  We at Jobpoint HR & Training Consultants are focussed on providing right resources to Management Consulting firms, IT/ITES, BPO, BFSI, Travel and Manufacturing industries.Our culture of client work is enshrined in just one line i.e."We begin, where your search ends"Our impact on the industries we work within is significant as we have evolved as pioneers in providing Middle and Senior Management Profiles across these Industry Verticals. Right from initiation we have come to be recognized within the recruitment industry as a company that timely delivers the right candidate to the right business.</h5>
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
