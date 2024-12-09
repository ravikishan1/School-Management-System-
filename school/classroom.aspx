<%@ Page Language="C#" AutoEventWireup="true" CodeFile="classroom.aspx.cs" Inherits="classroom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 240px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style5 {
            width: 157px;
        }
        .auto-style6 {
            height: 23px;
            width: 157px;
        }
        .auto-style7 {
            width: 226px;
        }
        .auto-style8 {
            height: 23px;
            width: 226px;
        }
        #form1 {
            width: 647px;
        }
    </style>
     <style>
         .img {
             background-image: url('pic2.jpg');
             background-repeat: no-repeat;
             background-size: cover;
             position: relative;
             top: 57px;
             left: 823px;
             width: 675px;
         }

     </style>
</head>
<body class="img">&nbsp;<form id="form1" runat="server" aria-orientation="horizontal">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="CLASSROOM ID"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="NEW" Width="115px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="YEAR"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="SAVE" Width="115px" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="GRADE ID"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox3" runat="server" Width="100px" ReadOnly="True"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="DELETE" Width="115px" OnClick="Button3_Click1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="SECTION"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox4" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="UPDATE" Width="115px" OnClick="Button4_Click1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="STATUS"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox5" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button5" runat="server" Text="ALLSEARCH" Width="115px" OnClick="Button5_Click1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Text="REMARKS"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox6" runat="server" Width="216px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" Text="PSEARCH" Width="115px" OnClick="Button6_Click1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="TEACHER ID"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox7" runat="server" Width="100px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button7" runat="server" Text="REPORT" Width="115px" OnClick="Button7_Click" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="635px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="classroom_id" HeaderText="Classroom Id" SortExpression="classroom_id" />
                <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                <asp:BoundField DataField="grade_id" HeaderText="Grade Id" SortExpression="grade_id" />
                <asp:BoundField DataField="section" HeaderText="Section" SortExpression="section" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
                <asp:BoundField DataField="teacher_id" HeaderText="Teacher Id" SortExpression="teacher_id" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [classroom]"></asp:SqlDataSource>
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </form>
</body>
</html>
