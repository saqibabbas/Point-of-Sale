
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="burger.main" %>

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
    <script src="js/tms-0.3.js" type="text/javascript"></script>
    <script src="js/tms_presets.js" type="text/javascript"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/jquery.equalheights.js" type="text/javascript"></script>

    <!--[if lt IE 9]><script type="text/javascript" src="js/html5.js"></script><![endif]-->
</head>
<body id="page1">
    <form id="form1" runat="server">
        <!--==============================header=================================-->&nbsp;<header>
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
                                    <asp:HyperLink  ID="lnk_user"  Visible="false" runat="server" NavigateUrl="~/user.aspx"></asp:HyperLink>
                                </li>
                               
                                 <li>
                                    <asp:HyperLink ID="lnk_contact" runat="server" NavigateUrl="~/contact.aspx">Contact us</asp:HyperLink>
                                </li>
                                <li>
                                    <asp:TextBox ID="txt_search" runat="server"></asp:TextBox>
                                </li>
                                
                                <asp:Button class="button-3" ID="btn_search" runat="server" Text="Search" BackColor="#A3C303" OnClick="btn_search_Click" />
                                
                                 <asp:HyperLink   ID ="lnk_logout" runat="server"  Visible="false" Text="Log out" NavigateUrl="~/logout.aspx" ForeColor="Red"></asp:HyperLink>
                                    
                                
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="row-bot">
                <div class="row-bot-bg">
                    <div class="main">
                        <h2>Impressive Selection <span>for any Occasion</span></h2>
                        <div class="slider-wrapper">
                            <div class="slider">
                                <ul class="items">
                                    <li>
                                        <img src="images/slider-img1.jpg" alt="" />
                                    </li>
                                    <li>
                                        <img src="images/slider-img2.jpg" alt="" />
                                    </li>
                                    <li>
                                        <img src="images/slider-img3.jpg" alt="" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!--==============================content================================-->
        <section id="content">
            <div class="main">
                <div class="wrapper img-indent-bot">
                    <article class="col-1">
                        <a href="#">
                            <img class="img-border" src="images/banner-1.jpg" alt=""></a>
                    </article>
                    <article class="col-1">
                        <a href="#">
                            <img class="img-border" src="images/banner-2.jpg" alt=""></a>
                    </article>
                    <article class="col-2">
                        <a href="#">
                            <img class="img-border" src="images/banner-3.jpg" alt=""></a>
                    </article>
                </div>
                <div class="wrapper">
                    <article class="column-1">
                        <div class="indent-left">
                            <div class="maxheight indent-bot">
                                <h3>Our Services</h3>
                                <ul class="list-1">
                                    <li>More than 700 hund</li>
                                    <li><a href="#">Free Home Deleivery </a></li>
                                    <li>More Than 25 Frienchices</li>
                                    <li><a href="#">F</a>ast Food</li>
                                    <li>Kids Food</li>
                                    <li>Chiness Food</li>
                                    <li>Italian Food</li>
                                </ul>
                            </div>
                            <a class="button-1" href="#">Read More</a>
                        </div>
                    </article>
                    <article class="column-2">
                        <div class="maxheight indent-bot">
                            <h3 class="p1">About the Burger.Com</h3>
                            <h6 class="p2">&nbsp;A restaurant depicting the legendary grandeur of splendid and noble past. A vivid and conspicuous realization of the glory of our brilliant esthetical essence. All the way a combination and innovation. Adorned with courtesy of mughlai era we offer you to dine out authentic Mughlai , Tandori , Live Bar-B-Que &amp; Traditional Pakistani cuisine.</h6>
                            <p class="p2">Five years from now, Burger.Com will have its Franchise restaurants spread over in the world by consistently providing the unique International &amp; local cuisine, prepared with the finest available ingredients, and outstanding service that creates an extraordinary Buffet dining experience.</p>
                            &nbsp;</div>
                        <a class="button-2" href="#">Read More</a>
                    </article>
                </div>
            </div>
        </section>
        <!--==============================footer=================================-->
        <footer>
            <div class="main">
                <div class="aligncenter"><span>Copyright &copy; Burger.Com</span> Developd by Muhammad Arsalan, Saqib Abbas, Yasir Riaz 
                    <br />
                    Department of Computer Science,University of karachi.</div>
            </div>
        </footer>
        <script type="text/javascript">Cufon.now();</script>
        <script type="text/javascript">
            $(window).load(function () {
                $('.slider')._TMS({
                    duration: 1000,
                    easing: 'easeOutQuint',
                    preset: 'slideDown',
                    slideshow: 7000,
                    banners: false,
                    pauseOnHover: true,
                    pagination: true,
                    pagNums: false
                });
            });
        </script>

        <div align="center"></div>
    </form>
</body>
</html>
