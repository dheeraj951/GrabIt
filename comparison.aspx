<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="comparison.aspx.cs" Inherits="comparison" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 90%;
        }
    .auto-style4 {
        font-family: "Buxton Sketch";
        font-size: x-large;
        font-weight: bold;
    }
    .auto-style5 {
            border-width: 1px;
            padding: 1px 4px;
            border-style: dotted;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2" align="center">
        <tr>
            <td style="width:20%">&nbsp;</td>
            <td style="width:40%" class="auto-style4">&nbsp;</td>
            <td style="width:40%" class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td style="width:20%">&nbsp;</td>
            <td style="width:40%" class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp; Flipkart</td>
            <td style="width:40%" class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp; Snapdeal</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Title</td>
            <td class="auto-style5">
                <asp:Label ID="fp_name" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="sd_name" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Image</td>
            <td class="auto-style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="fp_img" runat="server" Width="173px" />
            </td>
            <td class="auto-style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="sd_img" runat="server" Width="173px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Brand</td>
            <td class="auto-style5">
                <asp:Label ID="fp_br" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="sd_br" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MRP</td>
            <td class="auto-style5">
                <asp:Label ID="fp_mrp" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="sd_mrp" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Price</td>
            <td class="auto-style5">
                <asp:Label ID="fp_price" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="sd_price" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description</td>
            <td class="auto-style5">
                <asp:TextBox ID="fp_desc" runat="server" Height="110px" TextMode="MultiLine" Width="318px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="sd_desc" runat="server" Height="110px" Width="318px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Stock</td>
            <td class="auto-style5">
                <asp:Label ID="fp_stk" runat="server"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="sd_stk" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shop</td>
            <td>Buy this Product from
                <asp:LinkButton ID="fp_lnk" runat="server" OnClick="fp_lnk_Click">Flipkart</asp:LinkButton>
            </td>
            <td>Buy this Product from
                <asp:LinkButton ID="sd_lnk" runat="server" OnClick="sd_lnk_Click">Snapdeal</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <br />
                <asp:LinkButton ID="back" runat="server" OnClick="back_Click">Go back to compare different product </asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

