$(function(){
	
	//solving the Active menu problem
  switch(menu)
  {
     case 'About us':
     $('#about').addClass('active');
     break;
     
     case 'Contact Us':
         $('#contact').addClass('active');
         break;
         
      default:
    	  $('#home').addClass('active');
           break;
         
         
  }});