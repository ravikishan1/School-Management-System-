<%@ Page Language="C#" AutoEventWireup="true" CodeFile="parent.aspx.cs" Inherits="parent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 49%;
        }
        .auto-style2 {
            height: 12px;
            width: 2838px;
        }
        .auto-style17 {
            height: 12px;
            width: 404px;
        }
        .auto-style22 {
            width: 2838px;
        }
        .auto-style23 {
            width: 2875px;
        }
        .auto-style24 {
            height: 12px;
            width: 2875px;
        }
        .auto-style26 {
            width: 404px;
        }
        .auto-style27 {
            width: 2875px;
            height: 33px;
        }
        .auto-style28 {
            width: 404px;
            height: 33px;
        }
        .auto-style29 {
            width: 2838px;
            height: 33px;
        }
    </style>
</head>
    <body>
        <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label1" runat="server" Text="PARENT ID"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style22">
                    <asp:Button ID="Button1" runat="server" Text="NEW" Width="115px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label2" runat="server" Text="F-NAME"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style22">
                    <asp:Button ID="Button2" runat="server" Text="SAVE" Width="115px" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label3" runat="server" Text="L-NAME"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox3" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style22">
                    <asp:Button ID="Button3" runat="server" Text="DELETE" Width="115px" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label4" runat="server" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox4" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style22">
                    <asp:Button ID="Button8" runat="server" Text="UPDATE" Width="115px" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label5" runat="server" Text="PHONE"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox5" runat="server" Width="216px" style="margin-left: 0px"></asp:TextBox>
                </td>
                <td class="auto-style22">
                    <asp:Button ID="Button5" runat="server" Text="ALLSEARCH" Width="115px" OnClick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Label ID="Label6" runat="server" Text="MOBILE"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox6" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button6" runat="server" Text="PSEARCH" Width="115px" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label7" runat="server" Text="STATUS"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:TextBox ID="TextBox7" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style29">
                    <asp:Button ID="Button7" runat="server" Text="REPORT" Width="115px" OnClick="Button7_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
        </table>
    <div style="width: 509px">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="164px" Width="488px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="parent_id" HeaderText="Parent Id" SortExpression="parent_id" />
                <asp:BoundField DataField="fname" HeaderText="Fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Fname" SortExpression="lname" />
                <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [parent]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
