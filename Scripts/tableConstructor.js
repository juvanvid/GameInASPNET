var CharacterTable;

function createCharacterTable(TableElement){
	CharacterTable = TableElement;
	//TBODY
	var body = document.createElement("tbody");
	for(i = 0; i < 5; i++){
		//TR
		var tr = document.createElement("tr");
		for(j = 3; j > 0; j--){
			color = (2*i+3) * Math.pow(16,(2*j-1));
			hexcolor = color.toString(16);
			for(k = 3; k > j; k--){
				hexcolor = "00" + hexcolor;
			}
			//TD
			var td = document.createElement("td");
			//DIV
			var div = document.createElement("div");
			//div.setAttribute('onclick', "changeCharacter("+i+","+j+")");
			//div.addEventListener('click', changeCharacter, false);
			div.setAttribute('class', "character");
			div.setAttribute('style', "background-color: #"+ hexcolor +";");
			td.appendChild(div);
			tr.appendChild(td);
		}
		body.appendChild(tr);
	}
	body.addEventListener('click',changeCharacter,false);
	document.getElementById(TableElement).appendChild(body);
}

function changeCharacter(e){
	document.getElementById("applyChangeCharacter").addEventListener('click',applyChange,false);
	document.getElementById("characterSelectedBig").setAttribute('style',e.target.getAttribute('style'));
}

function applyChange(e){
	//alert(document.getElementById("characterSelectedBig").getAttribute('style'));
	document.getElementById("characterCurrentBig").setAttribute('style',document.getElementById("characterSelectedBig").getAttribute('style'));
	//alert(document.getElementById("characterCurrentBig").getAttribute('style'));
}