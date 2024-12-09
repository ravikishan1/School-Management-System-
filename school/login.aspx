<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 109px;
        }
        .auto-style3 {
            width: 315px;
        }
        .auto-style4 {
            width: 235px;
        }
        #form1 {
            position: relative;
            top: 367px;
            left: 503px;
        }
    </style>
</head>
<body style="width: 397px; position: relative">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">Login Id</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="208px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Login Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="208px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="112px" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" Width="99px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
