<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_deal.aspx.cs" Inherits="burger.admin_deal" %>


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
              
                <table>
                     <tr>
                    <td>
                        
                        <asp:Button ID="Admin_home" runat="server" Text="Admin Home" CssClass="button-1" OnClick="btn_deals_Click" />
                        <asp:Button ID="Deals_description" runat="server" Text="Deals Decription" CssClass="button-1" OnClick="Deals_description_Click"  />
                    </td>
                                        <td>
                        
                    </td>
                </tr>
                      <tr>
                    <td>
                        <h3 align="center" style="color: #FF0000">Deal</h3>
                    </td>
                    
                </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_deal" runat="server" Text="Deal Title"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_deal" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_description" runat="server" Text="Deal Description"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_description" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_price" runat="server" Text="Deal Price"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_Price" runat="server"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>

                        </td>
                        <td>
                             <asp:Image ID="Image1" runat="server"  Height="92px" Width="207px" Visible="false" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_image" runat="server" Text="Image"></asp:Label>

                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload_image" runat="server" />
                        </td>
                        
                    </tr>

                    <tr>
                        <td>
                            <asp:Button ID="btn_submit" runat="server" CssClass="button-2" Text="Submit" OnClick="btn_submit_Click" />
                            <asp:Button ID="btn_cancel" runat="server" CssClass="button-1" Text="Cancel" OnClick="btn_cancel_Click"  />
                        </td>
                        
                    </tr>
                </table>
            </div>
            </div>
           
        </section>
        <footer>
            <div class="main">
                <div class="aligncenter"><span>Copyright &copy; Burger.com<br />
                    Developed by Muhammad Arsalan,Saqib Abbas,Yasir Riaz<br />
                    Department of Computer Science,University of Karachi.</span></div>
            </div>
        </footer>
        <script type="text/javascript">Cufon.now();</script>
        <div align="center"></div>
    </form>
</body>
</html>
