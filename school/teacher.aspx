<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher.aspx.cs" Inherits="teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 35%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 167px;
        }
        .auto-style4 {
            height: 23px;
            width: 167px;
        }
        .auto-style5 {
            width: 183px;
        }
        .auto-style6 {
            height: 23px;
            width: 183px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="TEACHER_ID"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="NEW" Width="115px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="FNAME"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="SAVE" Width="115px" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="LNAME"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button3" runat="server" Text="DELETE" Width="115px" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="UPDATE" Width="115px" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="PHONE"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="ALLSEARCH" Width="115px" OnClick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Text="MOBILE"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox6" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" Text="PSEARCH" Width="115px" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label9" runat="server" Text="STATUS"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox7" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button7" runat="server" Text="REPORT" Width="115px" OnClick="Button7_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label11" runat="server" Text="ADDRESS"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox8" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="751px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="teacher_id" HeaderText="Teacher Id" SortExpression="teacher_id" />
                <asp:BoundField DataField="fname" HeaderText="Fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Lname" SortExpression="lname" />
                <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [teacher]"></asp:SqlDataSource>
    </form>
</body>
</html>
