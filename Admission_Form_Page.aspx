<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Page.Master" AutoEventWireup="true" CodeBehind="Admission_Form_Page.aspx.cs" Inherits="Admission_System.Admission_Form_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 31px;
    }
    .auto-style2 {
    }
    .auto-style3 {
        height: 31px;
        width: 350px;
    }
    .auto-style4 {
        width: 350px;
        height: 33px;
    }
    .auto-style5 {
        height: 33px;
    }
    .auto-style6 {
        height: 89px;
    }
    .auto-style7 {
        height: 35px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table align="center;" style="width:60%;margin-left:20%" >
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Admission Form Summer 2018"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" Text="Applicant Name"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="A_name" Placeholder="Enter Your Name" runat="server" Width="424px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Mother Name"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="M_name" Placeholder="Enter Your Mother Name" runat="server" Width="425px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Father Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="F_name" Placeholder="Enter Your Father Name" runat="server" Width="425px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Contuct Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="C_number" Placeholder="Enter Contuct Number +880" runat="server" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="Email Address"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="Email"  Placeholder="Enter Email Address" runat ="server" Width="425px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Text="Present Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Present" Placeholder="Enter Your Present Address" runat="server" Height="92px" Width="425px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label9" runat="server" Text="Permanent Address"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="Permanent" Placeholder="Enter Your Permanent Address" runat="server" Height="79px" Width="425px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GPA</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label11" runat="server" Text="HSC"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="HSC" Placeholder="0.00" runat="server" Width="222px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label12" runat="server" Text="SSC"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="SSC" Placeholder="0.00" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label13" runat="server" Text="Please Create Password "></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="Create" Type="Password" Placeholder="Enter Your Password" runat="server" Width="425px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label14" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="Confirm" Type="Password" Placeholder="Enter Your Confirm Password" runat="server" Width="426px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Submit" runat="server" Height="53px" Text="Submit" Width="222px" OnClick="Submit_button_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
    </table>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
