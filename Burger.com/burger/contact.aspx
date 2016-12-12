<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="burger.slider" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxImageSlider" TagPrefix="dx" %>


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

                </div>
            </div>
        </div>
        <div>
    
                <dx:ASPxImageSlider  ID="ASPxImageSlider1" runat="server" ClientInstanceName="ImageSlider"
        EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});" Height="360px" Width="100%">
        <SettingsImageArea ImageSizeMode="ActualSizeOrFit" NavigationButtonVisibility="None"
            ItemTextVisibility="Always" EnableLoopNavigation="true" />
        <SettingsNavigationBar Mode="Thumbnails" />
        <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false" PlayPauseButtonVisibility="Faded"></SettingsSlideShow>
        <Items>
            <dx:ImageSliderItem ImageUrl="images/UBIT.jpg" 
                NavigateUrl="1">
                <TextTemplate>
                    <h3 class='isdemoH3'>UBIT</h3>
                    <p>  UBIT  <a tabindex="-1" href='javascript:void(1);'>Details »</a></p>
                </TextTemplate>
            </dx:ImageSliderItem>
            <dx:ImageSliderItem ImageUrl="images/ZAIN.jpg"
                                NavigateUrl="2">
                <TextTemplate>
                    <h3 class='isdemoH3'>UBIT</h3>
                    <p> UBIT <a tabindex="-1" href='javascript:void(2);'>Details»</a></p>
                </TextTemplate>
            </dx:ImageSliderItem>
            <dx:ImageSliderItem ImageUrl="images/TJ.jpg"
                NavigateUrl="3">
                <TextTemplate>
                    <h3 class='isdemoH3'>Paper</h3>
                    <p>No piece of paper can be folded in half more than eight times. <a tabindex="-1" href='javascript:void(3);'>Details »</a></p>
                </TextTemplate>
            </dx:ImageSliderItem>
            <dx:ImageSliderItem ImageUrl="images/badar.jpg"
                NavigateUrl="4">
                <TextTemplate>
                    <h3 class='isdemoH3'> UBIT </h3>
                    <p>  UBIT <a tabindex="-1" href='javascript:void(4);'>Details »</a></p>
                </TextTemplate>
            </dx:ImageSliderItem>
           
        </Items>

<SettingsAutoGeneratedImages ImageHeight="400px" ImageWidth="100%"></SettingsAutoGeneratedImages>

        <Styles>
            <ImageArea Width="100%" Height="313" />
        </Styles>
    </dx:ASPxImageSlider>
        </div>
    </header>
    <section id="content">
        <div class="main">
            <div class="wrapper">
                <article class="col-1">
                    <div class="indent-left">
                        <h3 class="p1">Our Contacts</h3>
                        <figure class="indent-bot">
                            <div style="width: 180px"><iframe width="180" height="240" src="http://regiohelden.de/google-maps/map_en.php?width=180&amp;height=240&amp;hl=en&amp;q=Shop%20No.%2056%2C%20Saima%20Mall%2C%20Johar%20moor%2C%20Karachi+(Burger.Com)&amp;ie=UTF8&amp;t=&amp;z=18&amp;iwloc=A&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a href="http://www.regiohelden.de/google-maps/">Google Maps Script</a> von <a href="http://www.regiohelden.de/">RegioHelden</a></iframe><br /></div>
                        </figure>
                        <dl>
                            <dt class="p1">Shop No. 56, Saima Mall, Johar moor, Karachi</dt>
                            <dd><span>Freephone:</span> 0800 287437 (Burger)</dd>
                            <dd><span>Telephone:</span> +92 21 34801290</dd>
                            <dd><span>Telephone:</span> +92 21 34801291</dd>
                            <dd><span>Email:</span><a class="color-2" href="#">mail@Burger.Com</a></dd>
                        </dl>
                    </div>
                </article>
                <article class="col-2">
                    <h3 class="p1">Contact Form</h3>
                    <p class="p1">
                        <asp:Label ID="Lbl_name" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Txt_name" runat="server"></asp:TextBox>
                    </p>
                    <p class="p1">
                        <asp:Label ID="Lbl_Email" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Txt_Email" runat="server"></asp:TextBox>
                    </p>
                    <p class="p1">
                        <asp:Label ID="Lbl_Comment" runat="server" Text="Comments"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Txt_Comments" runat="server" Height="94px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </p>
                    <p class="p1">
                        <asp:Button ID="Btn_Send" runat="server" CssClass="button-1" Text="Send" OnClick="Btn_Send_Click" />
                    </p>
                    <p class="p1">&nbsp;</p>
                    <p class="p1">&nbsp;</p>
                    <form id="contact-form" action="#" method="post" enctype="multipart/form-data">
                        
                    </form>
                </article>
            </div>
        </div>
    </section>
    <!--==============================footer=================================-->
    <footer>
        <div class="main">
            <div class="aligncenter"><span>Copyright &copy; Burger.Com </span>&nbsp;Developed by Muhamma Arsalan, Saqib Abbas, Yasir Riaz
                <br />
                Department of Computer Science,University of karachi</div>
        </div>
    </footer>
    <script type="text/javascript">Cufon.now();</script>
    <div align="center"></div>
</form>
</body>
</html>

