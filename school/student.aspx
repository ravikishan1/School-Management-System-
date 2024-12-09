<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 191px;
        }
        .auto-style8 {
            height: 26px;
            width: 191px;
        }
        .auto-style9 {
            width: 223px;
        }
        .auto-style10 {
            height: 26px;
            width: 223px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="STUDENT_ID"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="NEW" Width="115px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Text="FNAME"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="SAVE" Width="115px" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label5" runat="server" Text="LNAME"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox3" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="DELETE" Width="115px" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Text="DOB"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="UPDATE" Width="115px" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label7" runat="server" Text="PHONE"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox5" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" style="margin-right: 0px" Text="ALLSEARCH" Width="115px" OnClick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label8" runat="server" Text="MOBILE"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox6" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" Text="PSEARCH" Width="115px" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label9" runat="server" Text="PARENT_ID"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox7" runat="server" Width="98px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button7" runat="server" Text="REPORT" Width="115px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label10" runat="server" Text="DATE_OF_JOIN"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox8" runat="server" Width="216px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label11" runat="server" Text="STATUS"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox9" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    </td>
                <td class="auto-style10">
                    </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="student_id" HeaderText="Student Id" SortExpression="student_id" />
                <asp:BoundField DataField="fname" HeaderText="Fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Lname" SortExpression="lname" />
                <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                <asp:BoundField DataField="parent_id" HeaderText="Parent Id" SortExpression="parent_id" />
                <asp:BoundField DataField="date_of_join" HeaderText="Date of Join" SortExpression="date_of_join" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
    </form>
</body>
</html>
