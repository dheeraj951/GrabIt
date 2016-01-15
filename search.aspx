<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 90%;
        }
    .auto-style4 {
        text-align: center;
    }
    .auto-style5 {
        font-family: "Buxton Sketch";
        font-size: x-large;
        font-weight: bold;
        text-align: center;
    }
    .auto-style6 {
        border-style: ridge;
        border-width: 3px;
    }
    .auto-style7 {
        border-style: ridge;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2" align="center">
        <tr>
            <td style="width:100%" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width:100%" colspan="4" class="auto-style4">
                <asp:Label ID="lbl_cat" runat="server" Text="Label"></asp:Label>
                <asp:TextBox ID="txtsearch" runat="server" Width="556px" Height="32px"></asp:TextBox>
                <asp:Button ID="btnsearch" runat="server" Text="Search" Width="96px" OnClick="btnsearch_Click" Height="34px" />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td style="width:100%" colspan="4">
                <asp:Label ID="Label1" runat="server" Text="Brand"></asp:Label>
&nbsp;<asp:DropDownList ID="brand" runat="server">
                    <asp:ListItem>Select Brand</asp:ListItem>
                </asp:DropDownList>
&nbsp; </td>
        </tr>
        <tr>
            <td style="width:50%" colspan="2" class="auto-style5">Flipkart</td>
            <td style="width:50%" colspan="2" class="auto-style5">Snapdeal</td>
        </tr>
        <tr>
            <td style="width:23%" class="auto-style7">
                <asp:UpdatePanel ID="fp_up" runat="server">
                    <ContentTemplate>
                        <asp:Image ID="fp_img" runat="server" Width="173px" />
                        <br />
                        Pricce:<asp:Label ID="fpprice" runat="server"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                         <asp:AsyncPostBackTrigger ControlID="fp_list" EventName="SelectedIndexChanged" />
                    </Triggers>
                </asp:UpdatePanel>
            </td>
            <td style="width:23%" class="auto-style7">
                <asp:ListBox ID="fp_list" runat="server" OnSelectedIndexChanged="fp_list_SelectedIndexChanged" AutoPostBack="True" Height="200px" Width="300px"></asp:ListBox>
            </td>
            <td style="width:23%" class="auto-style6">
                <asp:UpdatePanel ID="sd_up" runat="server">
                    <ContentTemplate>
                        <asp:Image ID="sd_img" runat="server" Width="173px" />
                        <br />
                        Price:<asp:Label ID="sdprice" runat="server"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                         <asp:AsyncPostBackTrigger ControlID="sd_list" EventName="SelectedIndexChanged" />
                     </Triggers>
                </asp:UpdatePanel>
            </td>
            <td style="width:23%" class="auto-style6">
                <asp:ListBox ID="sd_list" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sd_list_SelectedIndexChanged" Height="200px" Width="300px"></asp:ListBox>
            </td>
        </tr>
        <tr>
            <td style="width:50%" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search in Another Category" />
            </td>
            <td style="width:50%" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncmp" runat="server" OnClick="btncmp_Click" Text="Compare" />
            </td>
        </tr>
    </table>
</asp:Content>

