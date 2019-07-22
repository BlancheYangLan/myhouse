
mui.ready(function() {
	 
	mui('.mui-scroll-wrapper').scroll({
		bounce: true,
		indicators: true,
		deceleration: mui.os.ios ? 0.003 : 0.0009,
		
	});
	mui('.w').on('tap', '.m:not(.mui-active)', function() {
		mui('.aaa').slider().gotoItem(this.getAttribute('data-index1'));
		alert(this.getAttribute('data-index1'));
	});
	
	
});

