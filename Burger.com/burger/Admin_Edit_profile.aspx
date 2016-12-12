<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Edit_profile.aspx.cs" Inherits="burger.Edit_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <form id="form1" runat="server">
        <header>
            <div class="row-top">
                <div class="main">
                    <div class="wrapper">
                        <h1><a href="Home.aspx">Burger<span>.com</span></a></h1>
                        <nav>
                            <ul class="menu">
                                <asp:HyperLink ID="lnk_logout" runat="server" Visible="true" Text="Log out" NavigateUrl="~/logout.aspx" ForeColor="Red"></asp:HyperLink>
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

                <h3 align="center" style="color: #FF0000">Edit Admin Info </h3>
                <table>

                    <tr>
                        <td></td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_Email" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_Email" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>


                    <tr>
                        <td>

                            <asp:Button ID="btn_submit" runat="server" CssClass="button-2" Text="Update" OnClick="btn_submit_Click" />

                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink1"  CssClass="button-1" runat="server" NavigateUrl="~/admin.aspx">Cancel</asp:HyperLink>

                        </td>
                    </tr>
                </table>
            </div>
            </div>
           
        </section>
        <footer>
            <div class="main">
                <div class="aligncenter"><span>Copyright &copy; Burger.com<br />
                    Developed By Muhammad Arsalan,Saqib Abbas,Yasir Riaz<br />
                    Department of Computer Science,University of Karachi.</span></div>
            </div>
        </footer>
        <script type="text/javascript">Cufon.now();</script>
        <div align="center"></div>
    </form>
</body>
</html>
