<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="burger.admin" %>

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
                                <asp:HyperLink ID="lnk_edit" runat="server" Visible="true" Text="Edit profile" NavigateUrl="~/Admin_Edit_profile.aspx" ForeColor="Red"></asp:HyperLink>
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

            <divfor any Occasion</span></h2>

                    </div>
                </div>
            </div>
        </header>
        <section id="Section1">

            <div class="main">
            <table>
                <tr>
                    <td>
                       
                         <asp:Button ID="Button1" runat="server" Text="All approved orders" CssClass="button-1" OnClick="btn_all_orders_Click"  />
                         <asp:Button ID="btn_deals" runat="server" Text="Deals Decription" CssClass="button-1" OnClick="btn_deals_Click" />
                    </td>
                                        <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <h3 align="center" style="color: #FF0000">Customers order</h3>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <dx:ASPxGridView ID="order_approval" runat="server" AutoGenerateColumns="false">
                            <Columns>
                                <dx:GridViewDataColumn Caption="Customer Name" FieldName="Name" ></dx:GridViewDataColumn>
                                <dx:GridViewDataColumn Caption="Contact no" FieldName="Phone no" ></dx:GridViewDataColumn>
                                <dx:GridViewDataColumn Caption="Address" FieldName="Address" ></dx:GridViewDataColumn>
                                <dx:GridViewDataColumn Caption="Deal ordered" FieldName="Title" ></dx:GridViewDataColumn>
                                <dx:GridViewDataColumn Caption="Date" FieldName="Date"></dx:GridViewDataColumn>
                                <dx:GridViewDataColumn Caption="Price" FieldName="Price" ></dx:GridViewDataColumn>
                                <dx:GridViewDataColumn  Visible="false" FieldName="Id" ></dx:GridViewDataColumn>
                                <dx:GridViewDataColumn  Visible="false" FieldName="user_id" ></dx:GridViewDataColumn>

                                <dx:GridViewDataColumn>
                                    <DataItemTemplate>
                                        <asp:LinkButton ID="lnk_approve" PostBackUrl='<%#string.Concat("Deal_approve.aspx?user=",Eval("user_id"),"&deal=",Eval("Id")) %>' runat="server">Approve</asp:LinkButton>
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
            <span>
        <footer>
            <div class="main">
                <div class="aligncenter">Copyright &copy; Burger.Com All Rights Reserved
                    <br />
                    Design by Muhammad Arsalan, Saqib Abbas, Yasir Riaz</div>
            </div>
        </footer>
    </form>
</body>
</html>
