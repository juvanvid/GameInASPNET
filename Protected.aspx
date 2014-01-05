<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Protected.aspx.cs" Inherits="GameInASPNET.Protected" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link rel="stylesheet" href="Styles/common.css"/>
	<link rel="stylesheet" href="Styles/buttons.css"/>
	<link rel="stylesheet" href="Styles/dropdown.css"/>
	
	<link rel="stylesheet" href="Styles/wrapper_top.css"/>
	<link rel="stylesheet" href="Styles/wrapper_middle.css"/>
	<link rel="stylesheet" href="Styles/wrapper_bottom.css"/>
	
	<link rel="stylesheet" href="Styles/sponsor.css"/>
	<link rel="stylesheet" href="Styles/news.css"/>
	
	<link rel="stylesheet" href="Styles/welcome.css"/>
	
	<link rel="stylesheet" href="Styles/anim.css"/>
	<script type="text/javascript" src="Scripts/jquery.js"></script>
	<script type="text/javascript" src="Scripts/langSupport.js"></script>
</asp:Content>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<h2>Sorry, you need to be logged in to do that.</h2>
<p>Please log in or register</p>
</asp:Content>
