<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="burger.Members" %>



<!DOCTYPE html>



<html lang="en">
<head>
    <title>Burger.com</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
    <script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="js/cufon-yui.js" type="text/javascript"></script>
    <script src="js/cufon-replace.js" type="text/javascript"></script>
    <script src="js/Dynalight_400.font.js" type="text/javascript"></script>
    <script src="js/FF-cash.js" type="text/javascript"></script>
    <!--[if lt IE 9]><script type="text/javascript" src="js/html5.js"></script><![endif]-->
</head>
<body id="page6">
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <header>
            <div class="row-top">
                <div class="main">
                    <div class="wrapper">
                        <h1><a href="Home.aspx">Burger<span>.com</span></a></h1>
                        <nav>
                            <ul class="menu">
                                <li>
                                    <asp:HyperLink ID="lnk_home" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                                </li>
                                <li>
                                    <asp:HyperLink ID="lnk_deals" runat="server" NavigateUrl="~/Deals.aspx">Deals</asp:HyperLink>
                                </li>
                                <li>
                                    <asp:HyperLink ID="lnk_members" runat="server" NavigateUrl="~/Members.aspx">Members</asp:HyperLink>
                                </li>
                                    <li>
                                    <asp:HyperLink  ID="lnk_user" runat="server" NavigateUrl="~/user.aspx"></asp:HyperLink>
                                </li>
                               
                                 <li>
                                    <asp:HyperLink ID="lnk_contact" runat="server" NavigateUrl="~/contact.aspx">Contact us</asp:HyperLink>
                                </li>
                               
                               

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="row-bot">
                <div class="row-bot-bg">
                    <div class="main">
                        <h2>Impressive Selection <span>for any Occasion</span></h2>

                    </div>
                </div>
            </div>
        </header>
        <section id="content">

            <div class="main">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_login" runat="server" Text="Log In" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            Email</td>
                        <td>
                            <asp:TextBox ID="txt_email" runat="server" />
                        </td>
                        <td>
                            <asp:Label ID="lbl_logfail" runat="server" Text="Invalid Email and Password !" Visible="False" ForeColor="Red"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="Please Enter Email"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="text-form">Password </span>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_password" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                          
                            <asp:Button class="button-2" ID="btn_login" runat="server"  Text="Log in" BackColor="#90B302" BorderStyle="None" ForeColor="White" OnClick="btn_login_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <a href="Registration.aspx">New user?? Get registered </a>
                        </td>
                    </tr>
                </table>

            </div>
            </div>
        </section>
        <!--==============================footer=================================-->
        <footer>
            <div class="main">
                <div class="aligncenter"><span>Copyright &copy; Burger.Com</span> Develped by Muhammad Arsalan,Saqib Abbas,Yasir Riaz<br />
                    Department of Computer Science,University of karachi</div>
            </div>
        </footer>
        <script type="text/javascript">Cufon.now();</script>
        <div align="center"></div>
    </form>
</body>
</html>


