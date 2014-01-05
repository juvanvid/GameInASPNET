
function getAchievementsForUser(username){
	xmlDocUI =loadXMLDoc("xml/UserInfo.xml");
	user =xmlDocUI.getElementsByTagName("user")[0];//mam sam enga, ni se logina
	maps = user.getElementsByTagName("maps")[0].getElementsByTagName("map");
	
	var div = document.createElement("div");
	div.setAttribute('id', "achvTableDiv");
	var table = document.createElement("table");
	table.setAttribute('border', "1");
	table.setAttribute('id', "achvTable");
	var body = document.createElement("tbody");
	for(j = 0; j < maps.length; j++){
		mapname = (maps[j].getElementsByTagName("name")[0].childNodes[0].nodeValue);
		var tr_map = document.createElement("tr");
		
		var td_map = document.createElement("td");
		td_map.setAttribute('colspan', "4");
		td_map.setAttribute('class', "achvTableTdMap");
		td_map.innerHTML = mapname;
		
		tr_map.appendChild(td_map);
		body.appendChild(tr_map);
		
		achievements = maps[j].getElementsByTagName("achievements")[0].getElementsByTagName("achievement");
		for(i = 0; i < achievements.length; i = i+2){
			name = (achievements[i].getElementsByTagName("name")[0].childNodes[0].nodeValue);
			loc = (achievements[i].getElementsByTagName("location")[0].childNodes[0].nodeValue);
			state = (achievements[i].getElementsByTagName("state")[0].childNodes[0].nodeValue);
			description = (achievements[i].getElementsByTagName("description")[0].childNodes[0].nodeValue);
			
			
			var tr = document.createElement("tr");
			
			
			
			var td1 = document.createElement("td");
			var td2 = document.createElement("td");
			td1.setAttribute('class', "achvTableTdImg");
			td2.setAttribute('class', "achvTableTdDesc");
			var img1 = document.createElement("img");
			img1.setAttribute('src', loc + "/achvImage.png");
			//img.setAttribute('height', "60");
			td1.appendChild(img1);
			td2.innerHTML = "<h2>" + name + "</h2>" + description;
			
			
			
			var td3 = document.createElement("td");
			var td4 = document.createElement("td");
			td3.setAttribute('class', "achvTableTdImg");
			td4.setAttribute('class', "achvTableTdDesc");
			
			if(achievements.length > (i+1)){
				name2 = (achievements[i].getElementsByTagName("name")[0].childNodes[0].nodeValue);
				loc2 = (achievements[i].getElementsByTagName("location")[0].childNodes[0].nodeValue);
				state2 = (achievements[i].getElementsByTagName("state")[0].childNodes[0].nodeValue);
				description2 = (achievements[i].getElementsByTagName("description")[0].childNodes[0].nodeValue);

			
				var img2 = document.createElement("img");
				img2.setAttribute('src', loc2 + "/achvImage.png");
				//img.setAttribute('height', "60");
				td3.appendChild(img2);
				td4.innerHTML = "<h2>" + name2 + "</h2>" + description2;
			}
			
			
			
			tr.appendChild(td1);
			tr.appendChild(td2);
			tr.appendChild(td3);
			tr.appendChild(td4);
			body.appendChild(tr);
		}
	}
	
	table.appendChild(body);
	div.appendChild(table);
	document.getElementById("content_play").appendChild(div);
}

function getBossesForUser(username){
	xmlDocUI =loadXMLDoc("xml/UserInfo.xml");
	user =xmlDocUI.getElementsByTagName("user")[0];//mam sam enga, ni se logina
	bosses = user.getElementsByTagName("bosses")[0].getElementsByTagName("boss");
	for(j = 0; j < bosses.length; j++){
		//from XML
		name = (bosses[j].getElementsByTagName("name")[0].childNodes[0].nodeValue);
		state = (bosses[j].getElementsByTagName("state")[0].childNodes[0].nodeValue);
		time = (bosses[j].getElementsByTagName("time")[0].childNodes[0].nodeValue);
		achv = (bosses[j].getElementsByTagName("achv")[0].childNodes[0].nodeValue);
		loc = (bosses[j].getElementsByTagName("location")[0].childNodes[0].nodeValue);
		imgSrc = loc + "/bossImage" + ".jpg";
		
		//DIV
		var div = document.createElement("div");
		div.setAttribute('id', name);
		div.setAttribute('class', "map");
		//div.setAttribute('onclick', "play();");
		div.addEventListener('click', play, false);
		//DIV STATUS
		var divStatus = document.createElement("div");
		if(state == "Completed"){
			divStatus.setAttribute('class', "mapStatusYes");
		}else{
			divStatus.setAttribute('class', "mapStatusNo");
		}
		//DIV INFO
		var divInfo = document.createElement("div");
		divInfo.setAttribute('class', "mapInfo");
		//INFO CONTENT
		var ul = document.createElement("ul");
		var li1 = document.createElement("li");
		li1.innerHTML = "State: " + state;
		var li2 = document.createElement("li");
		li2.innerHTML = "Time Spent: " + time;
		var li3 = document.createElement("li");
		li3.innerHTML = "Achievements Earned: " + achv;
		
		//IMG
		var img = document.createElement("img");
		img.setAttribute('src', imgSrc);
		img.setAttribute('alt', "");
		
		//SESTAVLJANJE
		ul.appendChild(li1);
		ul.appendChild(li2);
		ul.appendChild(li3);
		divInfo.appendChild(ul);
		
		div.appendChild(divStatus);
		div.appendChild(img);
		divStatus.appendChild(divInfo);
		document.getElementById("content_play").appendChild(div);
	}
}


function getMapsForUser(username){
	xmlDocUI =loadXMLDoc("xml/UserInfo.xml");
	user =xmlDocUI.getElementsByTagName("user")[0];//mam sam enga, ni se logina
	maps = user.getElementsByTagName("maps")[0].getElementsByTagName("map");
	for(j = 0; j < maps.length; j++){
		//from XML
		name = (maps[j].getElementsByTagName("name")[0].childNodes[0].nodeValue);
		state = (maps[j].getElementsByTagName("state")[0].childNodes[0].nodeValue);
		time = (maps[j].getElementsByTagName("time")[0].childNodes[0].nodeValue);
		achv = (maps[j].getElementsByTagName("achv")[0].childNodes[0].nodeValue);
		loc = (maps[j].getElementsByTagName("location")[0].childNodes[0].nodeValue);
		imgSrc = loc + "/mapImage" + ".jpg";
		
		//DIV
		var div = document.createElement("div");
		div.setAttribute('id', name);
		div.setAttribute('class', "map");
		//div.setAttribute('onclick', "play();");
		div.addEventListener('click', play, false);
		//DIV STATUS
		var divStatus = document.createElement("div");
		if(state == "Completed"){
			divStatus.setAttribute('class', "mapStatusYes");
		}else{
			divStatus.setAttribute('class', "mapStatusNo");
		}
		//DIV INFO
		var divInfo = document.createElement("div");
		divInfo.setAttribute('class', "mapInfo");
		//INFO CONTENT
		var ul = document.createElement("ul");
		var li1 = document.createElement("li");
		li1.innerHTML = "State: " + state;
		var li2 = document.createElement("li");
		li2.innerHTML = "Time Spent: " + time;
		var li3 = document.createElement("li");
		li3.innerHTML = "Achievements Earned: " + achv;
		
		//IMG
		var img = document.createElement("img");
		img.setAttribute('src', imgSrc);
		img.setAttribute('alt', "");
		
		//SESTAVLJANJE
		ul.appendChild(li1);
		ul.appendChild(li2);
		ul.appendChild(li3);
		divInfo.appendChild(ul);
		
		div.appendChild(divStatus);
		div.appendChild(img);
		divStatus.appendChild(divInfo);
		document.getElementById("content_play").appendChild(div);
	}
}

function appendContent(element,contentName){
	xmlDocUI =loadXMLDoc("xml/WebData.xml");
	content =xmlDocUI.getElementsByTagName(contentName)[0].getElementsByTagName("div")[1];
	document.getElementById(element).appendChild(content);
}


function play(){
	alert("PLAY MOCK");
}