<%@ Page Language="C#" AutoEventWireup="true" CodeFile="classroom_student.aspx.cs" Inherits="classroom_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 166px;
        }
        .auto-style6 {
            width: 166px;
        }
        .auto-style7 {
            height: 23px;
            width: 212px;
        }
        .auto-style8 {
            width: 212px;
        }
        .auto-style9 {
            width: 166px;
            height: 33px;
        }
        .auto-style10 {
            width: 212px;
            height: 33px;
        }
        .auto-style11 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="CLASSROOM ID"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" Width="87px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left: 0px" Width="95px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="NEW" Width="115px" OnClick="Button1_Click1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="STUDENT ID"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" Width="87px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="SAVE" Width="115px" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="DELETE" Width="115px" OnClick="Button3_Click" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    </td>
                <td class="auto-style10">
                    </td>
                <td class="auto-style11">
                    <asp:Button ID="Button4" runat="server" Text="UPDATE" Width="115px" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="ALLSEARCH" Width="115px" OnClick="Button5_Click" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button6" runat="server" Text="PSEARCH" Width="115px" OnClick="Button6_Click" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button7" runat="server" Text="REPORT" Width="115px" OnClick="Button7_Click" />
                </td>
            </tr>
            </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [class_room_student]"></asp:SqlDataSource>
        <a href="classroom_student.aspx">classroom_student.aspx</a><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="511px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="classroom_id" HeaderText="Classroom Id" SortExpression="classroom_id" />
                <asp:BoundField DataField="student_id" HeaderText="Student Id" SortExpression="student_id" />
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
    </form>
    <p>
        `</p>
</body>
</html>
