<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deals.aspx.cs" Inherits="burger.de" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Burger.com</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="js/bootstrap.js" type="text/css" media="screen">
    <link rel="stylesheet" href="js/bootstrap.min.js" type="text/css" media="screen">
    <link rel="stylesheet" href="js/npm.js" type="text/css" media="screen">
    <link rel="stylesheet" href="css/bootstrap-theme.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen">
    <script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="js/cufon-yui.js" type="text/javascript"></script>
    <script src="js/cufon-replace.js" type="text/javascript"></script>
    <script src="js/Dynalight_400.font.js" type="text/javascript"></script>
    <script src="js/FF-cash.js" type="text/javascript"></script>
    <script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
    <script src="js/hover-image.js" type="text/javascript"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/jquery.bxSlider.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#slider-2').bxSlider({
                pager: true,
                controls: false,
                moveSlideQty: 1,
                displaySlideQty: 4
            });
            $("a[data-gal^='prettyPhoto']").prettyPhoto({
                theme: 'facebook'
            });
        });
    </script>
    <!--[if lt IE 9]><script type="text/javascript" src="js/html5.js"></script><![endif]-->
</head>
<body id="page3">
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
        </header>
        <section id="content">
            <div class="main">

                <div class="container1">
                    <h3  align="center">All Deals</h3>
                 
                    <h4 id="log_message" runat="server" class="prev-indent-bot" align="center"  ><a style="color: #FF0000" href="Members.aspx">Please log in first (click here)</a></h4>
                    <%--<asp:HyperLink ID="hyp_login" runat="server" class="prev-indent-bot" align="center" style="color: #FF0000">Please log in first (click here)</asp:HyperLink>--%>
                    <asp:LinkButton CssClass="button-2" ID="lnk_cart"  PostBackUrl="~/orders.aspx" Text="Your cart" runat="server"  Visible="false" />
                    <p class="prev-indent-bot"></p>
                    <div>
                        <div>
                            <div class="p4">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <%--                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                                <Columns>
                                                    <asp:BoundField DataField="Deal_id" HeaderText="Deal_id" SortExpression="Deal_id" />
                                                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                    <asp:BoundField DataField="Image url" HeaderText="Image url" SortExpression="Image url" />
                                                </Columns>
                                            </asp:GridView>--%>
                                            <h4><b><u>Deals by price</u></b></h4>
                                            <ul class="price-list p2">

                                                <li><a id="price_100" runat="server">00-200 Rs</a></li>
                                                <li><a id="price_200" runat="server">200-400 Rs</a></li>
                                                <li><a id="price_300" runat="server">400-600 Rs</a></li>
                                                <li><a id="price_400" runat="server">600-800 Rs</a></li>
                                                <li><a id="price_500" runat="server">800-1000 Rs</a></li>
                                                <li><a id="price_600" runat="server">1000-1200 Rs</a></li>
                                                <li><a id="price_700" runat="server">1200-1400 Rs</a></li>
                                                <li><a id="price_800" runat="server">1400-1600 Rs</a></li>
                                                <li><a id="price_900" runat="server">1600-1800 Rs</a></li>

                                            </ul>

                                        </div>

                                        <div class="col-md-6">
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Image url") %>' Height="150" Width="300" BorderStyle="Double" BorderColor="#FF6600" BorderWidth="2" />
                                                            </td>
                                                            <td>
                                                                <%--for additional column--%>
                                                                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/set.png" Width="20" Height="20" />
                                                            </td>
                                                            <td>
                                                                <table>
                                                                    <tr>
                                                                        <td>
                                                                            <%--for adding some space on top--%>
                                                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/set.png" Width="10" Height="20" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Label ID="lbl_title" runat="server" Text='<%#Eval("Title") %>' Font-Bold="True" ForeColor="#999999" Font-Size="Large"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Label class="p1" ID="lbl_des" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Label CssClass="color-2" ID="lbl_price" runat="server" Text='<%#Eval("Price") %>' Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <%--<asp:Button class="button-1" ID="Button1" runat="server" Text="Add" />--%>
                                                                            <asp:HyperLink CssClass="button-1" ID="hyper_add"  NavigateUrl='<%#string.Concat((select),Eval("Id")) %>' runat="server">Add to Cart</asp:HyperLink>
                                                                            <%--<asp:Label ID="Label1" runat="server" Text='<%#string.Concat((select),Eval("Deal_id")) %>' ></asp:Label>--%>
                                                                        </td>
                                                                    </tr>

                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <%--for some space between two ads--%>
                                                                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/set.png" Width="10" Height="20" />
                                                            </td>
                                                        </tr>

                                                    </table>

                                                </ItemTemplate>
                                            </asp:Repeater>

                                        </div>
                                        <div class="col-md-4">
                                            <%--                                            <asp:GridView ID="cart_grid" runat="server" AutoGenerateColumns="False" DataSource="g" >
                                                <Columns>
                                                    
                                                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />

                                                </Columns>
                                            </asp:GridView>--%>
                                            <%--      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                                                <Columns>
                                                     <asp:BoundField DataField="Title" HeaderText="Title"  />
                                                    <asp:BoundField DataField="Description" HeaderText="Description"  />
                                                    <asp:BoundField DataField="Price" HeaderText="Price"  />


                                                </Columns>
                                            </asp:GridView>--%>

                                        </div>

                                    </div>

                                </div>
                                <div>
                                </div>
                            </div>
                        </div>
                    </div>
        </section>
        <!--==============================footer=================================-->
        <footer>
            <div class="main">
                <div class="aligncenter"><span>Copyright &copy; Burger.Com</span> Developed by Muhammad Arsalan ,Saqib Abbas, Yasir Riaz
                    <br />
                    Department of Computer Science,University of karachi.</div>
            </div>
        </footer>
        <script type="text/javascript">Cufon.now();</script>
        <div align="center"></div>
    </form>
</body>
</html>
