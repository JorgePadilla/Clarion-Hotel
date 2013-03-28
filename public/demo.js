$(document).ready(function() {
	$("div.panel_button").click(function(){
		$("div#panel").animate({
			left: "0px"
		}, "fast");
		$(".panel_button").animate({
			left: "150px"
		}, "fast");
		$("div.panel_button").toggle();
	});	
   $("div.hide_button").click(function(){
		$("div#panel").animate({
			left: "-150px"
		}, "fast");
		$(".panel_button").animate({
			left: "0px"
		}, "fast");
   });

	$('#jscolorInput').change(function() {
		var color = '#'+$('#jscolorInput').val();
		$('style#colors').text('#pagetitle .wrapper, input[type=submit], #portfolio-nav li a:hover { background-color:' + color + ';}      a, #mainbottom ul li:hover > span, .intro-text h1 strong {color:' + color + ';} ');
	});
	
	$('.patterns li').click(function() {
		var pat = $(this).css('background-image');
		$('style#pattern').text('body {background-image:' + pat + ';}');
	})
	
	$('#font_list').change(function(){
		var fontval = $("#font_list option:selected").val();
		var fontname = $("#font_list option:selected").text();
		$('link#google_font').attr({href:'http://fonts.googleapis.com/css?family=' + fontval + ':regular,italic,bold,bolditalic'});
		$('style#font_styles').text('h1, h2, h3, h4, h5, h6, #header ul.menu li a, .intro-text h1, #latest_work .description-overlay h4, #sidebar h3, #portfolio_items .tab_container .description-overlay h4 { font-family:"' + fontname + '", "Tahoma", Arial, sans-serif; }');
	});
	
	
	
});
