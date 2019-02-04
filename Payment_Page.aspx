<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Page.Master" AutoEventWireup="true" CodeBehind="Payment_Page.aspx.cs" Inherits="Admission_System.Payment_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 481px;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            height: 31px;
            width: 483px;
        }
        .auto-style4 {
            width: 483px;
        }
        .auto-style5 {
            height: 46px;
        }
        .auto-style6 {
            width: 396px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1" rowspan="3">
                    <asp:Label ID="Label2" runat="server" Text="Applicant Name" ></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="DBBL Acount Number" Placeholder="Enter Your DBBL Account Number"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Payment Amount" Placeholder="Pay 500tk"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Box1" runat="server" Width="377px" Placeholder="Enter Your Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="Box2" runat="server" Width="377px" Placeholder="Enter Your DBBL Account Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="Box3" runat="server" Width="377px" Placeholder="Pay 500tk"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
    </p>
    <table align="center;" style="width:60%;margin-left:20%">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style2" colspan="2">
                <asp:Button ID="OK" runat="server" Text="OK" Width="200px" OnClick="Ok_Button_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Width="327px" OnClick="Click_For_Admission_Button" Text="Click Here For Admission form" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>
