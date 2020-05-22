<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserMaster.master" CodeFile="ProfessionalProfile.aspx.cs" Inherits="ProfessionalProfile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Content/landing-page.css" rel="stylesheet" />
    <br />
    <br />
    <section class="search-jobs">
        <div class="container">
            <div class="heading">
                <h1>Professional <span>Profile</span></h1>
            </div>
            <div class="job">
                <div class="row">
                    <div class="col-lg-5 col-md-12 page-card">
                        <!-- -------job1------- -->
                        <div class="input-group form-group">
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-tasks"></i></span>
                                </div>
                                <asp:DropDownList runat="server" ID="category" Width="395px">
                                    <asp:ListItem Text="Choose Category" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Information Technology" Value="Information Technology"></asp:ListItem>
                                    <asp:ListItem Text="Architecture" Value="Architecture"></asp:ListItem>
                                    <asp:ListItem Text="Management" Value="Management"></asp:ListItem>
                                    <asp:ListItem Text="Agricultuer" Value="Agriculuter"></asp:ListItem>
                                    <asp:ListItem Text="Computer Science" Value="Computer Science"></asp:ListItem>
                                    <asp:ListItem Text="Finance" Value="Finance"></asp:ListItem>
                                    <asp:ListItem Text="Marketing" Value="Marketing"></asp:ListItem>
                                    <asp:ListItem Text="Educational" Value="Educational"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-briefcase"></i></span>
                                </div>
                                <asp:DropDownList runat="server" ID="workarea" Width="395px">
                                    <asp:ListItem Text="Area of Work" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Business Analytics" Value="Business Analytics"></asp:ListItem>
                                    <asp:ListItem Text="Software" Value="Software"></asp:ListItem>
                                    <asp:ListItem Text="Web" Value="Web"></asp:ListItem>
                                    <asp:ListItem Text="Tester" Value="Tester"></asp:ListItem>
                                    <asp:ListItem Text="Designer" Value="Designer"></asp:ListItem>
                                    <asp:ListItem Text="Teacher" Value="Teacher"></asp:ListItem>
                                    <asp:ListItem Text="Manager" Value="Manager"></asp:ListItem>
                                    <asp:ListItem Text="Operator" Value="Operator"></asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-building-o"></i></span>
                            </div>
                            <asp:TextBox runat="server" ID="company" CssClass="form-control" placeholder="Enter Company Name" />
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-user"></i></span>
                            </div>
                            <asp:TextBox runat="server" ID="role" CssClass="form-control" placeholder="Enter Role" />
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-money"></i></span>
                            </div>
                            <asp:TextBox runat="server" ID="salary" CssClass="form-control" placeholder="Enter Salary" />
                        </div>

                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-history"></i></span>
                            </div>
                            <asp:TextBox runat="server" ID="expe" CssClass="form-control" placeholder="Enter Experiance" />
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-cogs"></i></span>
                            </div>
                            <asp:TextBox runat="server" ID="skills" CssClass="form-control" placeholder="Enter Skills" />
                        </div>
                        <label style="font-size: 20px;">Upload Your Resume</label>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-file"></i></span>
                            </div>
                            <asp:FileUpload ID="resume" runat="server" />
                        </div>
                        <div class="form-group">
                            <asp:Button runat="server" CssClass="btn login_btn" Text="Save" ID="btnprofSave" OnClick="btnProfessionalSave_click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
