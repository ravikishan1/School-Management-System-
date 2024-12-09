<%@ Page Language="C#" AutoEventWireup="true" CodeFile="grade.aspx.cs" Inherits="grade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 88%;
        }
        .auto-style2 {
            width: 285px;
        }
        .auto-style4 {
            width: 682px;
        }
        #form1 {
            width: 508px;
        }
        .auto-style5 {
            width: 2411px;
        }
    </style>
</head>
<body style="width: 532px">
    <form id="form1" runat="server" aria-atomic="False" aria-hidden="False" class="auto-style5">
        <table class="auto-style1" border="0">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="GRADE ID"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="NEW" Width="109px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="NAME"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="SAVE" Width="109px" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="DESC"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button3" runat="server" Text="DELETE" Width="109px" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button4" runat="server" Text="UPDATE" Width="109px" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button5" runat="server" Text="ALL-SEARCH" Width="109px" OnClick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button6" runat="server" Text="P-SEARCH" Width="109px" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button7" runat="server" Text="REPORT" Width="109px" OnClick="Button7_Click" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="435px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="grade_id" HeaderText="Grade Id" SortExpression="grade_id" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="desc1" HeaderText="Description" SortExpression="desc1" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [grade]"></asp:SqlDataSource>
    </form>
</body>
</html>
