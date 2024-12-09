<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
        }
        .auto-style3 {
            width: 228px;
        }
        .auto-style5 {
            width: 228px;
            height: 33px;
        }
         .img {
             background-image: url("pic5.jpg");
             background-repeat: no-repeat;
             background-size: cover;
         }
        .auto-style6 {
            width: 222px;
        }
        .auto-style7 {
            width: 222px;
            height: 33px;
        }
        #form1 {
            position: relative;
            top: 216px;
            left: 201px;
            height: 114px;
            width: 478px;
            font-weight: 700;
        }
    </style>
     
        

    
</head>
<body class="img" style="width: 427px" >
    <form id="form1" runat="server">
        <table border=3 class="auto-style1" aria-busy="True">
            <tr>
                <td class="auto-style6">Login Id</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Login Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td  class="auto-style7" >
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/login.aspx">Already I have account</asp:LinkButton>
                </td>
                <td class="auto-style5" style="margin-left: 800px" >
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" style="position: relative; top: -1px; left: 69px; width: 99px;" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
