<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Edit_profile.aspx.cs" Inherits="burger.User_Edit_profile" %>

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

                <h3 align="center" style="color: #FF0000">Edit User Info </h3>
                <table>
                    
                    <tr>
                        <td>
                            <span class="text-form">Name </span>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_name" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span class="text-form">Email </span>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_Email" runat="server" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_Email" ErrorMessage="Please Enter Correct Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_Email" ErrorMessage="Please Enter Email"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
  <tr>
                        <td>
                            <span class="text-form">Phone no </span>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_phone" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_phone" ErrorMessage="Please Enter Phone Number"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                   <tr>
                        <td>
                            <span class="text-form">Country </span>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_country" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_country" ErrorMessage="Please Enrer country name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <span class="text-form">City </span>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_city" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_city" ErrorMessage="Please Entr city Name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <span class="text-form">Address </span>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_address" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_address" ErrorMessage="Please Enter Address"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <span class="text-form">Password </span>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_password" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <span class="text-form">Re-enter password </span>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_repassword" runat="server" TextMode="Password" />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_repassword" ErrorMessage="Please Enter Matching password"></asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_repassword" ErrorMessage="Please Reenter Password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>

                            <asp:Button ID="btn_submit" runat="server" CssClass="button-2" Text="Update" OnClick="btn_submit_Click" />

                        </td>
                        <td>
                            
                            
                            <asp:HyperLink ID="HyperLink1"  CssClass="button-1" runat="server" NavigateUrl="~/user.aspx">Cancel</asp:HyperLink>
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
                    Department of Computer Science ,University of Karachi.</span></div>
            </div>
        </footer>
        <script type="text/javascript">Cufon.now();</script>
        <div align="center"></div>
    </form>
</body>
</html>
