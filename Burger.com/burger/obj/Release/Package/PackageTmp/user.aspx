<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="burger.user" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExtreme.WebForms.v14.1, Version=14.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExtreme.WebForms" TagPrefix="devextreme" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

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
                                <asp:HyperLink ID="lnk_edit" runat="server" Text="Edit profile" NavigateUrl="~/User_Edit_profile.aspx" ForeColor="Red"></asp:HyperLink>
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
        </header>
        <section id="content">

            <div class="main">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_welcome" Text="Welcome" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#E36928"></asp:Label>

                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_name" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_contact_title" runat="server" Text="Contact number : "></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbl_contact" runat="server" Font-Size="Medium"></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btn_new_order" runat="server" Text="Order New Deal" CssClass="button-1" OnClick="btn_new_order_Click" />
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <h3 align="center" style="color: #FF0000">Recent orders</h3>
                        </td>
                        <td>
                            <h3 align="center" style="color: #FF0000">Previous orders</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <dx:ASPxGridView ID="New_order" runat="server" AutoGenerateColumns="false" EnablePagingCallbackAnimation="True">
                                <Columns>
                                    <dx:GridViewDataColumn Caption="Deal name" FieldName="Title"></dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Price" FieldName="Price"></dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Date" FieldName="Date"></dx:GridViewDataColumn>

                                    <dx:GridViewDataColumn Caption="Delivery status">
                                        <DataItemTemplate>
                                            <asp:Image ID="img_oending" runat="server" ImageUrl="~/images/pending.png" />
                                        </DataItemTemplate>
                                    </dx:GridViewDataColumn>
                                </Columns>

                                <SettingsPager>
                                    <PageSizeItemSettings Visible="true" Items="5" />
                                </SettingsPager>
                                <Settings ShowFilterRow="True" />
                                <Settings ShowFilterBar="Visible" />
                            </dx:ASPxGridView>
                        </td>
                        <td>
                            <dx:ASPxGridView ID="Delivered_order" runat="server">
                                <Columns>
                                    <dx:GridViewDataColumn Caption="Deal name" FieldName="Title"></dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Price" FieldName="Price"></dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Date" FieldName="Date"></dx:GridViewDataColumn>

                                    <dx:GridViewDataColumn Caption="Delivery status">
                                        <DataItemTemplate>
                                            <asp:Image ID="img_oending" runat="server" ImageUrl="~/images/delivered.jpg" />
                                        </DataItemTemplate>
                                    </dx:GridViewDataColumn>
                                </Columns>


                                <SettingsPager>
                                    <PageSizeItemSettings Visible="true" Items="5" />
                                </SettingsPager>
                                <Settings ShowFilterRow="True" />
                                <Settings ShowFilterBar="Visible" />
                            </dx:ASPxGridView>
                        </td>
                    </tr>
                </table>
            </div>
            </div>
        </section>
        <footer>
            <div class="main">
                <div class="aligncenter"><span>Copyright &copy; Burger.com<br />
                    Developed by Muhammad Arsalan,Saqib Abbas.Yasir Riaz<br />
                    Department of Computer Science,University of Karachi.</span></div>
            </div>
        </footer>
        <script type="text/javascript">Cufon.now();</script>
        <div align="center"></div>
    </form>
</body>
</html>
