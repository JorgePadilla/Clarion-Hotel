$(window).load(function() {
	
	// add a last class to the 3rd item from each row
	$("#latest_work li:nth-child(3n), #portfolio_items li:nth-child(3n)").addClass("last");
	
	var lis = $("#latest_work li");
	$("#latest_work li").hover(
	  function () {
		$(this).find('.description-overlay').animate({top:'20px'}, 300, 'easeOutExpo');
	  },
	  function () {
		$(this).find('.description-overlay').animate({top:'140px'}, 200, 'easeOutExpo');
	  }
	);
	
	// portfolio item animation
	var portfolio_items = $("#portfolio_items .tab_content li");
	var portfolio_items_height = $("#portfolio_items .tab_content li").css('height');

	portfolio_items.each(function(el){
		$(this).find('.description-overlay').css({'height':portfolio_items_height,'top':portfolio_items_height});
	})
	
	portfolio_items.hover(
	  function () {
		$(this).find('.description-overlay').animate({top:0}, 300, 'easeOutExpo');
	  },
	  function () {
		$(this).find('.description-overlay').animate({top: portfolio_items_height}, 200, 'easeOutExpo');
	  }
	);
	
	// add a plus to the services & clients lists
	$('#mainbottom li, #sidebar ul.menu li').prepend("<span>+</span>");
	
	// display random testimonial
	var list = $(".testimonials ul li").toArray();
	var elemlength = list.length; 
	var randomnum = Math.floor(Math.random()*elemlength);
	var randomitem = list[randomnum];
	$(randomitem).css("display", "block");

	//initialize the menu
	$(function($){ $("ul.sf-menu").supersubs({minWidth:13, maxWidth:30, extraWidth:0}).superfish({hoverClass:'sfHover', pathClass:'sf-active', pathLevels:0, delay:500, animation:{height:'show'}, speed:'def', autoArrows:1, dropShadows:0}) });

	// init colorbox
	$("a[rel='colorbox']").colorbox();
	$(".video").livequery(function(){
		$(this).colorbox({iframe:true, width:650, height:550}); 
	});
	
	// init infield labels
	$("#newsletter-form label, .searchbox label, #commentform label, #contact-form label ").inFieldLabels();
	
	// FAQ Code
	$('#faqs h3').each(function() {
		var tis = $(this), state = false, answer = tis.next('div').hide().css('height','auto').slideUp();
		tis.prepend("<span>+</span> ")
		tis.click(function() {
		  state = !state;
		  answer.slideToggle(state);
		  tis.toggleClass('active',state);
		  if(tis.hasClass('active')) {
			  tis.find('span').text('â†’');
		  } else {
			  tis.find('span').text('+');
		  }
		});
	}); // end each faqs
	
	
	//twitter
	$("#twitter").getTwitter({
		// change here the Twitter username
		userName: "envato",
		numTweets: 2,
		loaderText: "Loading tweets...",
		slideIn: false,
		showHeading: true,
		headingText: "Latest Tweets",
		showProfileLink: true
	});
})