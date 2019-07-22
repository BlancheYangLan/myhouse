
mui.plusReady(function() {
	 
	mui('.mui-scroll-wrapper').scroll({
		bounce: true,
		indicators: true,
		deceleration: mui.os.ios ? 0.003 : 0.0009,
		
	});
	mui('.mui-scroll').on('tap', '.mui-control-item:not(.mui-active)', function() {
		mui('.aa').slider().gotoItem(this.getAttribute('data-index'));
		
	});
	mui('.mui-scroll').on('swipeleft', '.mui-control-item:not(.mui-active)', function() {
		mui('.aa').slider().gotoItem(this.getAttribute('data-index'));
		
	});
});

