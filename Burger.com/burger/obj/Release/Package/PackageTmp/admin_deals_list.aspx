<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_deals_list.aspx.cs" Inherits="burger.admin_deals_list" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


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
                            <asp:Button ID="btn_newdeal" runat="server" Text="Add new deal" CssClass="button-1" OnClick="btn_newdeal_Click" />
                        </td>
                    </tr>
                      <tr>
                    <td>
                        <h3 align="center" style="color: #FF0000">All deals</h3>
                    </td>
                    
                </tr>
                    <tr>
                        <td>
                            <dx:ASPxGridView ID="deals_grid" runat="server">
                                <Columns>
                                    <dx:GridViewDataColumn Caption="Deal Name" FieldName="Title"></dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Description" FieldName="Description"></dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="Price" FieldName="Price"></dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn Caption="ID" FieldName="Id" Visible="false"></dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn>
                                        <DataItemTemplate>
                                            <asp:LinkButton ID="lnk_edit" runat="server" PostBackUrl='<%#string.Concat(page_edit,Eval("Id")) %>'>Edit</asp:LinkButton>
                                        </DataItemTemplate>
                                    </dx:GridViewDataColumn>
                                    <dx:GridViewDataColumn>
                                        <DataItemTemplate>
                                            <asp:LinkButton ID="lnk_edit" runat="server" PostBackUrl='<%#string.Concat(page_delete,Eval("Id")) %>'>Delete</asp:LinkButton>
                                        </DataItemTemplate>
                                    </dx:GridViewDataColumn>
                                </Columns>
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
                    Developed by Muhammad Arsalan,Saqib Abbas,Yasir Riaz<br />
                    Department of Computer Science,University of Karachi.</span></div>
            </div>
        </footer>
        <script type="text/javascript">Cufon.now();</script>
        <div align="center"></div>
    </form>
</body>
</html>
