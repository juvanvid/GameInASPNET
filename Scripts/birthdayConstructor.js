

function createBirthdaySelections(element){
	
	//MONTH
	var monthNames = [ "Month", "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December" ];
	var month = document.createElement("select");
	month.setAttribute('id', "birthdate_month");
	for(i = 0; i < 13; i++){
		var option = document.createElement("option");
		option.setAttribute('value', i);
		option.innerHTML = monthNames[i];
		month.appendChild(option);
	}
	
	//DAY
	var day = document.createElement("select");
	day.setAttribute('id', "birthdate_day");
	var option = document.createElement("option");
	option.setAttribute('value', 0);
	option.innerHTML = "Day";
	day.appendChild(option);
	for(i = 1; i < 32; i++){
		var option = document.createElement("option");
		option.setAttribute('value', i);
		option.innerHTML = i;
		day.appendChild(option);
	}
	
	
	//YEAR
	var year = document.createElement("select");
	year.setAttribute('id', "birthdate_year");
	var option = document.createElement("option");
	option.setAttribute('value', 0);
	option.innerHTML = "Year";
	year.appendChild(option);
	for(i = 2010; i > 1910; i--){
		var option = document.createElement("option");
		option.setAttribute('value', i);
		option.innerHTML = i;
		year.appendChild(option);
	}
	
	document.getElementById(element).appendChild(month);
	document.getElementById(element).appendChild(day);
	document.getElementById(element).appendChild(year);
}