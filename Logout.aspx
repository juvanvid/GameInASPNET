<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Logout.aspx.cs" Inherits="GameInASPNET.Logout" %>

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
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>
</asp:Content>
