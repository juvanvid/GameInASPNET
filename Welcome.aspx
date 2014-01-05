<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Welcome.aspx.cs" Inherits="GameInASPNET.Welcome" %>

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
<section id="content_section">
	<div class="english">
	<h1 id="content_header">Introduction</h1>
	
	<p>Hello and Welcome to GameIn.</p>
	<p>GameIn is a browser web game. To access the game content, please first login or register.</p>
	<p>With registration, you will gain your own account and your game content.</p>
	<p>After login/registration, you can change your account settings in "Account" tab.</p>
	<p>To acces the game, click on "Game" tab or "PLAY" tab. Enjoy!</p>
	</div>
	
	<div class="slovenian">
	<h1 id="content_header">Predstavitev</h1>
	
	<p>Pozdravljeni in dobrodosli v GameIn.</p>
	<p>GameIn je internetna igra. Za dostop do igralniskega vmesnika se prosimo prvo prijavite, ali registrirajte.</p>
	<p>Z registracijo boste dobili svoj profil in svojo igralnisko vsebino.</p>
	<p>Po prijavi/registraciji lahko spremenite nastavitve svojega profila v "Account" zavihku.</p>
	<p>Za dostop do igre kliknite zavihek "Game" ali zavihek "PLAY". Veliko uzitka!</p>
	</div>
	
	<div>
		<br>
		<span id="CL_SLO" class="lowButton">Slovensko</span>
		<span id="CL_ENG" class="lowButton">English</span>
	</div>
	
</section>

<script type="text/javascript" charset="utf-8">
    initLangSupport();
</script>
</asp:Content>
