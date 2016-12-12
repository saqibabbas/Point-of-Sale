<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="burger.orders" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

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
    <script src="js/jquery.equalheights.js" type="text/javascript"></script>
    <script src="js/jquery.bxSlider.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#slider').bxSlider({
                pager: true,
                controls: false,
                moveSlideQty: 1,
                displaySlideQty: 3
            });
        });
    </script>
    <!--[if lt IE 9]><script type="text/javascript" src="js/html5.js"></script><![endif]-->
</head>
<body id="page2">
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
                                    <asp:HyperLink ID="lnk_user" runat="server" NavigateUrl="~/user.aspx"></asp:HyperLink>
                                </li>
                                <li>
                                    <asp:HyperLink ID="lnk_contact" runat="server" NavigateUrl="~/contact.aspx">Contact us</asp:HyperLink>
                                </li>

                                <li>
                                    <asp:TextBox ID="txt_search" runat="server"></asp:TextBox>
                                </li>


                                <asp:Button class="button-3" ID="btn_search" runat="server" Text="Search" BackColor="#A3C303" OnClick="btn_search_Click" />
                                <asp:HyperLink ID="lnk_logout" runat="server" Visible="false" Text="Log out" NavigateUrl="~/logout.aspx" ForeColor="Red"></asp:HyperLink>
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
            </div>
        </header>
        <section id="content">
            <div class="main">
                <table>
                    <tr>
                        <td>
                            <dx:ASPxGridView ID="order_grid" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <dx:GridViewDataColumn Caption="Deals" FieldName="Title"></dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Price" FieldName="Price"></dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn FieldName="Id" Visible="false"></dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn>
                                        <DataItemTemplate>
                                            <asp:LinkButton ID="lnk_delete" Text="Delete" PostBackUrl='<%#string.Concat(delete_page,Eval("Id")) %>' runat="server"></asp:LinkButton>
                                        </DataItemTemplate>
                                    </dx:GridViewDataColumn>
                                </Columns>
                                <Settings ShowFilterRow="True" />
                            </dx:ASPxGridView>

                        </td>
                        <td>
                            <asp:Image ID="Image1" runat="server" ImageUrl= "~/images/cart.png" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="btn_order" Text="Order" runat="server" CssClass="button-2" OnClick="btn_order_Click" />
            </div>
        </section>
        <!--==============================footer=================================-->
        <footer>
            <div class="main">
                <div class="aligncenter"><span>Copyright &copy; Burger.com<br />
                    Developed by Muhammad Arsalan,Saqib Abbas,Yasir Riaz<br />
                    Depatment of Computer Science,University of Karachi.</span></div>
            </div>
        </footer>
        <script type="text/javascript">Cufon.now();</script>
        <div align="center"></div>
    </form>
</body>
</html>
