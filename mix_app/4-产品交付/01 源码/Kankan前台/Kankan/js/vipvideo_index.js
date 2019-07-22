mui.ready(function() {
	var da1 = "10";
	var da2 = "20";
	var da3 = "30";
	mui('.mui-scroll-wrapper').scroll({
		bounce: true,
		indicators: true,
		deceleration: mui.os.ios ? 0.003 : 0.0009,

	});
	mui('.n').on('tap', '.nn:not(.mui-active)', function() {
		mui('.aa').slider().gotoItem(this.getAttribute('data-index'));

	});

	//综合排序
	mui('.w').on('tap', '.m:not(.mui-active)', function() {
		da1 = this.getAttribute('data1');

		//$("#fl").text(da1 + da2 + da3);
	});
	//全部地区
	mui('.w1').on('tap', '.m1:not(.mui-active)', function() {
		da2 = this.getAttribute('data2');

		//$("#fl").text(da1 + da2 + da3);
	});
	//全部类型
	mui('.w2').on('tap', '.m2:not(.mui-active)', function() {
		da3 = this.getAttribute('data3');

		//$("#fl").text(da1 + da2 + da3);
	});

	mui('.mui-scroll-wrapper #hk').on('tap', '.mui-control-item', function() {
		alert(da1 + da2 + da3);

		mui.post("https://192.168.43.82:1443/videocontroller.html", {
				videopx: da1,
				videodq: da2,
				videolx: da3
			}, 'json');
			
		//$("#fl").load("dy.html");
	});


});
