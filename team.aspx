<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="team.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <head>
<style type="text/css">
.flip3D{ width:240px; height:200px; margin:10px; float:left; }
.flip3D > .back{
position:absolute;
perspective: 600px;
-webkit-transform: rotateY( 180deg );
transform: rotateY( 180deg );
background:#4B610B; width:240px; height:200px; border-radius:7px;
-webkit-backface-visibility: hidden;
backface-visibility: hidden;
transition:-webkit-transform .5s linear 0s;
transition:transform .5s linear 0s;
}
.flip3D > .front{
position:absolute;
perspective: 600px;
-webkit-transform: rotateY( 0deg );
transform: rotateY( 0deg );
background:#FFFFFF; width:240px; height:200px; border-radius:7px;
-webkit-backface-visibility: hidden;
backface-visibility: hidden;
transition:-webkit-transform .5s linear 0s;
transition:transform .5s linear 0s;
}
.flip3D:hover > .back{
perspective: 600px;
-webkit-transform: rotateY( 0deg );
transform: rotateY( 0deg );
}
.flip3D:hover > .front{
perspective:600px;
-webkit-transform: rotateY( -180deg );
transform: rotateY( -180deg );
}
    .auto-style4 {
        font-family: Arial, Helvetica, sans-serif;
        font-size: x-large;
        color: #FFFFFF;
        font-weight: 700;
    }
</style>
</head>

<div class="flip3D">
	<div class="back"><span class="auto-style4">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;Nikhil</span><br class="auto-style4" />
        <span class="auto-style4">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; ECE<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Team Leader</span></div>
	<div class="front">
        <br />
&nbsp;<asp:Image ID="Image3" runat="server" Height="175px" ImageUrl="~/images/nikhil.jpg" />
    </div>
</div>
<div class="flip3D">
	<div class="back"><span class="auto-style4">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Dheeraj<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        CSE<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Engineer</span></div>
	<div class="front">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image7" runat="server" Height="175px" ImageUrl="~/images/dheeraj.jpg" style="text-align: center" />
    </div>
</div>
<div class="flip3D">
	<div class="back"><span class="auto-style4">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hemanth<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; ECE<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Engineer</span></div>
	<div class="front">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image4" runat="server" Height="175px" ImageUrl="~/images/hemanth.jpg" />
    </div>
</div>
<div class="flip3D">
	<div class="back"><span class="auto-style4">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sagar<br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ECE<br />
&nbsp; Marketing &amp; Sales</span></div>
	<div class="front">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image5" runat="server" Height="175px" ImageUrl="~/images/sagar.JPG" />
    </div>
</div>
<div class="flip3D">
	<div class="back"><span class="auto-style4">
        <br />
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Divya<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ECE<br />
&nbsp; Marketing &amp; Sales</span></div>
	<div class="front">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image6" runat="server" Height="175px" ImageUrl="~/images/divya.jpg" />
    </div>
</div>
    
</asp:Content>

