<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="PlayAchv.aspx.cs" Inherits="GameInASPNET.PlayAchv" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link rel="stylesheet" href="Styles/common.css"/>
	<link rel="stylesheet" href="Styles/buttons.css"/>
	<link rel="stylesheet" href="Styles/dropdown.css"/>
	
	<link rel="stylesheet" href="Styles/wrapper_top.css"/>
	<link rel="stylesheet" href="Styles/wrapper_middle.css"/>
	<link rel="stylesheet" href="Styles/wrapper_bottom.css"/>
	
	<link rel="stylesheet" href="Styles/sponsor.css"/>
	<link rel="stylesheet" href="Styles/news.css"/>
	
	<link rel="stylesheet" href="Styles/play.css"/>
	<link rel="stylesheet" href="Styles/play_achv.css"/>
	
	<link rel="stylesheet" href="Styles/anim.css"/>
	
	<script type = "text/javascript" src = "Scripts/readxml.js" > </script>
	<script type = "text/javascript" src = "Scripts/xmlToHtml.js" > </script>
	<script type="text/javascript" src="Scripts/jquery.js"></script>
</asp:Content>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div id="wrapper_play">		
	<div id="menu_play">
		<a class="switchButton" href="Play.aspx">Play a Map</a>
		<a class="switchButton" href="PlayBoss.aspx">Play a Boss</a>
		<a class="switchSelectedButton" href="PlayAchv.aspx">Achievement Overview</a>
	</div>
	
	<div id="content_play">
		<script type = "text/javascript" >
		    getAchievementsForUser("user");
		</script>
	</div>
</div>
</asp:Content>
