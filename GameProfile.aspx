<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="GameProfile.aspx.cs" Inherits="GameInASPNET.GameProfile" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link rel="stylesheet" href="Styles/common.css"/>
	<link rel="stylesheet" href="Styles/buttons.css"/>
	<link rel="stylesheet" href="Styles/dropdown.css"/>
	
	<link rel="stylesheet" href="Styles/wrapper_top.css"/>
	<link rel="stylesheet" href="Styles/wrapper_middle.css"/>
	<link rel="stylesheet" href="Styles/wrapper_bottom.css"/>
	
	<link rel="stylesheet" href="Styles/sponsor.css"/>
	<link rel="stylesheet" href="Styles/news.css"/>
	
	<link rel="stylesheet" href="Styles/game_profile.css"/>
	
	<link rel="stylesheet" href="Styles/anim.css"/>
	
	<script type = "text/javascript" src = "Scripts/formValidator.js" ></script>
	<script type = "text/javascript" src = "Scripts/tableConstructor.js" > </script>
	<script type="text/javascript" src="Scripts/jquery.js"></script>
</asp:Content>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
 
<div id="wrapper_gp">		
	<div id="menu_gp">
		<a class="switchSelectedButton" href="">Game Settings</a>
		<a class="switchButton" href="">Controls</a>
	</div>
	
	<div id="content_gp">
		<br>
		<div id="wrapper_character">
		<h2>Choose your character</h2>
		
		
		<table id="chararcter_table">
			<script type = "text/javascript" >
			    createCharacterTable("chararcter_table");
			</script>
		</table>
		
		
		<div id="character_selection">
			<div id="characterCurrentBig" style="background-color: #300000; border: 1px solid black; height: 80px; width: 80px;"></div>
			<div id="characterSelectedBig" style="background-color: #300000;"></div>
		</div>
		
		<form name="gpForm" id="gpForm" method="POST" action="GameProfile.php" onsubmit="return validateGPForm()">
		<div id="character_specifications">
			<div style="border: 1px solid black; padding: 5px 0px;"><h2><?php echo($user_data["nickname"])?></h2></div><br>
			<label for="nickname" > New Nickname: </label>
			<input id="nickname" name="nickname" placeholder=""/>
		</div>
		
		
		
		<div id="form_gp">
            <a id="applyChangeCharacter" class="submitButton" type="submit" style="cursor: pointer;">Change Settings</a>
		</div>
		</form>
		
        </div>
	
	</div>
	
	
</div>

</asp:Content>
