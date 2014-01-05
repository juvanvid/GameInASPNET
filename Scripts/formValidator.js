function validateGPForm(){
	var nickname=document.forms["gpForm"]["nickname"].value;
	var oldCharacter= document.getElementById("characterCurrentBig").style.backgroundColor;
	var newCharacter= document.getElementById("characterSelectedBig").style.backgroundColor;

	if(nickname.length == 0 && oldCharacter == newCharacter){
		alert("No changes made!");
		return false;
	}
	
	//Dodas character v POST data
	$('<input />').attr('type', 'hidden')
            .attr('name', 'character')
            .attr('value', newCharacter)
            .appendTo('#gpForm');
	
	return true;
}

function validateRegisterForm(){
	var pass1=document.forms["regForm"]["password"].value;
	var pass2=document.forms["regForm"]["password2"].value;
	var agree=document.forms["regForm"]["agree"];
	if(!agree.checked){
		alert("Must agree to the Terms of Use!");
		return false;
	}
	if (pass1 != pass2){
		alert("Passwords must match!");
		return false;
	}
	return true;
}

function validateGSForm(){

}

function validatePPForm(){
	var name=document.forms["ppForm"]["name"].value;
	var surname=document.forms["ppForm"]["surname"].value;
	var username=document.forms["ppForm"]["username"].value;
	var password=document.forms["ppForm"]["password"].value;
	if(password.length > 0 && password.length < 8){
		alert("Password must be at least 8 characters long!");
		return false;
	}
	if(name.length == 0 && surname.length == 0
	&& username.length == 0 && password.length == 0){
		alert("No changes made!");
		return false;
	}
	return true;
}