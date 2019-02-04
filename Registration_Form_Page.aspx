<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Page.Master" AutoEventWireup="true" CodeBehind="Registration_Form_Page.aspx.cs" Inherits="Admission_System.Registration_Form_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 31px;
        }
        .auto-style7 {
        }
        .auto-style8 {
            height: 31px;
            width: 436px;
        }
        .auto-style9 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <table align="center;" style="width:60%;margin-left:20%">
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Registration Form"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="Applicant Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="A_name" runat="server" Width="424px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label6" runat="server" Text="Department Name"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox5" runat="server" Width="425px" Enabled="False">Department Of SWE</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label7" runat="server" Text="Semister"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="425px" Enabled="False">Summer 2018</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                Email Address</td>
            <td>
                <asp:TextBox ID="email" runat="server" Width="424px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Course Offerins"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Course Code"></asp:Label>
            </td>
            <td class="auto-style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="Course Title"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox7" runat="server" Width="425px" Enabled="False">SWE313</asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="425px" Enabled="False">.Net Proggraming With Lab</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox9" runat="server" Width="425px" Enabled="False">SWE323</asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" Width="425px" Enabled="False">Documentation of Software Engineering</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                &nbsp;</td>
            <td>
                <br />
                <asp:Button ID="Button1" runat="server" Height="41px" OnClick="Button1_Click" Text="OK" Width="235px" />
                <br />
            </td>
        </tr>
    </table>
    <br />
</p>
<p>
</p>
</asp:Content>
