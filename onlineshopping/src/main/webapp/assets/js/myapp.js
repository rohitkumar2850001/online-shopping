$(function(){
	//solving the active menu problem
	switch(menu){
	
	case 'About Us':
		$('#aboutUs').addClass('active');
		break;
	case 'Contact Us':
		$('#contactUs').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	default:
		$('#listProducts').addClass('active');
		$('#a_'+menu).addClass('active');
		break;
	
	}
	
	
	
});