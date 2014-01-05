<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="PersonalProfile.aspx.cs" Inherits="GameInASPNET.PersonalProfile" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link rel="stylesheet" href="Styles/common.css"/>
	<link rel="stylesheet" href="Styles/buttons.css"/>
	<link rel="stylesheet" href="Styles/dropdown.css"/>
	
	<link rel="stylesheet" href="Styles/wrapper_top.css"/>
	<link rel="stylesheet" href="Styles/wrapper_middle.css"/>
	<link rel="stylesheet" href="Styles/wrapper_bottom.css"/>
	
	<link rel="stylesheet" href="Styles/sponsor.css"/>
	<link rel="stylesheet" href="Styles/news.css"/>
	
	<link rel="stylesheet" href="Styles/personal_profile.css"/>
	
	<link rel="stylesheet" href="Styles/anim.css"/>
	
	<script type = "text/javascript" src = "Scripts/formValidator.js" ></script>
	<script type="text/javascript" src="Scripts/jquery.js"></script>
</asp:Content>


<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<h1>Personal Profile</h1>
<form name="ppForm" method="post" action="PersonalProfile.php" onsubmit="return validatePPForm()">
<asp:Literal runat="server" id="Message" EnableViewState="false" />
<table id="PP_table">
	<thead>
		<tr>
			<td>
				
			</td>
			<td>
				Current Value
			</td>
			<td>
				Desired Value
			</td>
		</tr>
	</thead>
	<tbody>
        <tr>
			<td>
				Email:
			</td>
			<td>
                <asp:Literal runat="server" id="EmailBox" EnableViewState="false" />
			</td>
			<td>
                <asp:TextBox id="EmailTextBox" MaxLength="128" Columns="30" runat="server" />
			</td>
		</tr>
		<tr>
			<td>
				Name:
			</td>
			<td>
                <asp:Literal runat="server" id="NameBox" EnableViewState="false" />
			</td>
			<td>
                <%-- <asp:TextBox id="NameTextBox" MaxLength="128" Columns="30" runat="server" /> --%>
			</td>
		</tr>
		<%-- <tr>
			<td>
				Surname:
			</td>
			<td>
				 <asp:Literal runat="server" id="SurnameBox" EnableViewState="false" />
			</td>
			<td>
				<asp:TextBox id="SurnameTextBox" MaxLength="128" Columns="30" runat="server" />
			</td>
		</tr>--%>
		<tr>
			<td>
				Username
			</td>
			<td>
				 <asp:Literal runat="server" id="UsernameBox" EnableViewState="false" />
			</td>
			<td>
				<%-- <asp:TextBox id="UsernameTextBox" MaxLength="128" Columns="30" runat="server" /> --%>
			</td>
		</tr>
        <tr>
			<td>
				Old Password
			</td>
			<td>
				******
			</td>
			<td>
				<asp:TextBox id="OldPasswordTextBox" MaxLength="128" Columns="30" runat="server" />
			</td>
		</tr>
		<tr>
			<td>
				New Password
			</td>
			<td>
				******
			</td>
			<td>
				<asp:TextBox id="PasswordTextBox" MaxLength="128" Columns="30" runat="server" />
			</td>
		</tr>
	</tbody>
	<tfoot>
	<tr>
		<td colspan="3">
			<br>
		</td>
	</tr>
</tfoot>
</table>

<asp:Button class="submitButton" OnClick="UpdateUser" runat="server" CommandName="UpdateUser" Text="Update User" ValidationGroup="LoginUserValidationGroup"/>
</form>
</asp:Content>
