
function initLangSupport(){
	document.getElementById('CL_SLO').addEventListener('click',changeLangSlo,false);
	document.getElementById('CL_ENG').addEventListener('click',changeLangEng,false);
}

function changeLangSlo(e){
	$('.slovenian').css('display', 'block');
	$('.english').css('display', 'none');
}

function changeLangEng(e){
	$('.slovenian').css('display', 'none');
	$('.english').css('display', 'block');
}