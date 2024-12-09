<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyMenu.aspx.cs" Inherits="MyMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <style>
         .img {
             background-image: url("pic1.jpg");
             background-repeat: no-repeat;
             background-size: cover;
         }

     </style>
    <title>
 
    </title>
</head>
<body class="img">
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" StaticSubMenuIndent="10px" Orientation="Horizontal">
            <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#E3EAEB" />
            <DynamicSelectedStyle BackColor="#1C5E55" />
            <Items>
                <asp:MenuItem Text="Student" Value="Student">
                    <asp:MenuItem NavigateUrl="~/student.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/reportstudent.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Course" Value="Course">
                    <asp:MenuItem NavigateUrl="~/course.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/reportcourse.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Attendance" Value="Attendance">
                    <asp:MenuItem NavigateUrl="~/attendance.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportAttendance.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Classroom Student" Value="Classroom Student">
                    <asp:MenuItem NavigateUrl="~/classroom_student.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/reportclassroom_student.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Exam" Value="Exam">
                    <asp:MenuItem NavigateUrl="~/exam.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/reportexam.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Exam Result" Value="Exam Result">
                    <asp:MenuItem NavigateUrl="~/exam_result.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/reportexam_result.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Exam Type" Value="Exam Type">
                    <asp:MenuItem NavigateUrl="~/exam_type.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/reportexam_type.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Grade" Value="Grade">
                    <asp:MenuItem NavigateUrl="~/grade.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/reportgrade.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Parent" Value="Parent">
                    <asp:MenuItem NavigateUrl="~/parent.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/reportparent.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Teacher" Value="Teacher">
                    <asp:MenuItem NavigateUrl="~/teacher.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/reportteacher.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Classroom" Value="Classroom">
                    <asp:MenuItem NavigateUrl="~/classroom.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ReportClassRoom.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#666666" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#1C5E55" />
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
