$(document).ready(function(){

    $('.test_button').mouseenter(function(){
        $('.test_button').fadeTo('fast',0.5);
    });
    $('.test_button').mouseleave(function(){
    	$('.test_button').fadeTo('fast',1);
	});

	$('.test_button').click(function(){
		$('.test_button').effect('explode');	
	});

});