$(function(){
	//solving the active menu problem
	switch(menu){
	
	case 'About Us':
		$('#aboutUs').addClass('active');
		break;
	case 'Contact Us':
		$('#contactUs').addClass('active');
		break;
	case 'default':
		$('#home').addClass('active');
		break;
	
	}
	
	
});