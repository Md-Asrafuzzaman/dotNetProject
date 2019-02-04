<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Page.Master" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="Admission_System.Home_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    <table align="center;" style="width:60%;margin-left:20%">
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Admin" runat="server" Text="ADMIN" Width="350px" OnClick="Admin_Button_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="APPLICANT" Width="350px" OnClick="Applicant_Button_Click" />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Admission Information" Width="350px" style="margin-left: 22px" OnClick="Admission_Information_Click" />
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" Text="Click Here For Admission" Width="350px" style="margin-left: 22px" OnClick="Click_For_Admission" />
            </td>
        </tr>
        </table>
    <br />
</p>
<p>
</p>
<p>
</p>
</asp:Content>
