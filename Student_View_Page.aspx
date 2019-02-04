<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Page.Master" AutoEventWireup="true" CodeBehind="Student_View_Page.aspx.cs" Inherits="Admission_System.Student_View_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;
        <table align="center;" style="width:60%;margin-left:20%">
            <tr>
                <td>
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="Enter Your Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Email" runat="server" Width="315px" Placeholder="Enter your Email"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="View Student Information" Width="245px" OnClick="Student_Info_Button_Click" />
                    <br />
                    <br />
                    <asp:Button ID="Merit" runat="server" OnClick="Merit_Button_Click" Text="Cheke Merit List" Width="245px" />
                    <br />
                    <br />
                    <asp:Button ID="Registration" runat="server" OnClick="Registration_Button_Click" Text="Registration" Width="245px" />
                    <br />
                    <br />
                    <asp:Button ID="Registration0" runat="server" OnClick="LogOut_Button_Click" Text="LogOut" Width="245px" />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
