<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        text-align: center;
    }
    .auto-style6 {
        font-family: "Bauhaus 93";
        font-size: xx-large;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%" align="center">
    <tr>
        <td style="width:25%">&nbsp;</td>
        <td style="width:50%" class="auto-style6" colspan="2">Categories</td>
        <td style="width:25%">&nbsp;</td>
    </tr>
    <tr>
        <td style="width:25%" class="auto-style5">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="77px" ImageUrl="~/images/automotive.jpeg" Width="108px" OnClick="ImageButton1_Click" />
            <br />
            <strong>Automotive</strong></td>
        <td style="width:25%" class="auto-style5">
            <asp:ImageButton ID="ImageButton2" runat="server" Height="74px" ImageUrl="~/images/babycare.jpeg" Width="97px" OnClick="ImageButton2_Click" />
            <br />
            <strong>Baby Care</strong></td>
        <td style="width:25%" class="auto-style5">
            <asp:ImageButton ID="ImageButton3" runat="server" Height="69px" ImageUrl="~/images/camera.jpeg" Width="79px" OnClick="ImageButton3_Click" />
            <br />
            <strong>Cameras</strong></td>
        <td style="width:25%" class="auto-style5">
            <asp:ImageButton ID="ImageButton4" runat="server" Height="69px" ImageUrl="~/images/computer pheripherals.jpeg" Width="81px" OnClick="ImageButton4_Click" />
            <br />
            <strong>Computer Pheripherals</strong></td>
    </tr>
    <tr>
        <td style="width:25%" class="auto-style5">
            &nbsp;</td>
        <td style="width:25%" class="auto-style5">
            &nbsp;</td>
        <td style="width:25%" class="auto-style5">
            &nbsp;</td>
        <td style="width:25%" class="auto-style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <br />
            <asp:ImageButton ID="ImageButton5" runat="server" Height="70px" ImageUrl="~/images/eyewear.jpeg" Width="104px" OnClick="ImageButton5_Click" />
            <br />
            <strong>Eyewear</strong></td>
        <td class="auto-style5">
            <br />
            <asp:ImageButton ID="ImageButton6" runat="server" Height="63px" ImageUrl="~/images/furniture.jpeg" Width="106px" OnClick="ImageButton6_Click" />
            <br />
            <strong>Furniture</strong></td>
        <td class="auto-style5">
            <asp:ImageButton ID="ImageButton7" runat="server" Height="61px" ImageUrl="~/images/gaming.jpeg" Width="92px" OnClick="ImageButton7_Click" />
            <br />
            <strong>Gaming</strong><br />
            </td>
        <td class="auto-style5">
            <asp:ImageButton ID="ImageButton8" runat="server" Height="57px" ImageUrl="~/images/home appliances.jpeg" Width="57px" OnClick="ImageButton8_Click" />
            <br />
            <strong>Home Appliances</strong><br />
            </td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <br />
            <asp:ImageButton ID="ImageButton10" runat="server" Height="64px" ImageUrl="~/images/home improvement tools.jpeg" Width="48px" OnClick="ImageButton10_Click" />
            <br />
            <strong>Home Improvement Tools</strong></td>
        <td class="auto-style5">
            <asp:ImageButton ID="ImageButton13" runat="server" Height="68px" ImageUrl="~/images/kitchen appliances.jpeg" Width="95px" OnClick="ImageButton13_Click" />
            <br />
            <strong>Kitchen Appliances</strong></td>
        <td class="auto-style5">
            <asp:ImageButton ID="ImageButton16" runat="server" Height="75px" ImageUrl="~/images/mobiles.jpeg" Width="78px" OnClick="ImageButton16_Click" />
            <br />
            <strong>Mobiles</strong></td>
        <td class="auto-style5">
            <asp:ImageButton ID="ImageButton17" runat="server" Height="76px" ImageUrl="~/images/watches.jpeg" Width="98px" OnClick="ImageButton17_Click" />
            <br />
            <strong>Watches</strong><br />
            </td>
    </tr>
    </table>
</asp:Content>

