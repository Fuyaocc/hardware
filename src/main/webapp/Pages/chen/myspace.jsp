<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<%@ include file="/Pages/template/cdnmain.jsp"%>
<meta charset="UTF-8">
<title>个人首页</title>
<meta name="keywords" content=ChengGlobal.currentUser.nickname+"的首页">
<meta name="description" content=ChengGlobal.currentUser.nickname+"的首页,更多用户内容尽在个人中心。">
<link href="https://s.zol-img.com.cn/d/My/My_index.css?v=6194" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://s.zol-img.com.cn/d/My/My_index.js?v=6194" charset="utf-8"></script>
<script>
    // 对象最后一个值后面不允许存在逗号
    var _zpv_cfg = {
        terminal: 'pc',
        site: 'ZOL',
        buz: 'hudong',
        channel: 'my',
        pagetype: 'main'//按需给如首页main，详情页detail
    };
</script>
</head>
<body>
<script language="JavaScript" src="https://icon.zol-img.com.cn/getcook.js" type="text/javascript"></script>
<%@ include file="/Pages/top.jsp"%>
<!-- <link href="https://icon.zol-img.com.cn/my/css/public-nav.css" rel="stylesheet"> -->
<!-- 公用头部 -->
<center>
<table width="20%">
	<td><h3><a href = "../../index.jsp">首页</a></h3></td>
	<td><h3><a href = "#">个人中心</a></h3></td>
</table>
</center>
	<div class="wrapper">
	<div class="sidebar sidebar-main">
	<!-- 基础信息 -->
	<div class="nav-list">
	<span class="nav-title nav-common">常用</span>
	<a href="#" class="nav-item">论坛</a>
	<a href="#" class="nav-item-child">我的主帖</a>
	
	
		
	<!-- 合伙人链接 -->

	<a href="${pageContext.request.contextPath}/Pages/qian/memory/qianMemoryManage.jsp" target="_blank" class="nav-item-child">我的商品</a>

	<!-- /合伙人链接 -->
	
		
		
	<a href="#" class="nav-item">我的下载</a>
	<a href="#" class="nav-item">我的活动</a>
	<a href="#" class="nav-item">我的设备</a>
	<a href="#" class="nav-item">我的Z金豆</a>
	<a href="#" class="nav-item">我的问答</a>
	<a href="#" class="nav-item">我的最超值</a>
</div>
<div class="nav-list">
	<span class="nav-title nav-myrelation">我的关系</span>
	<a href="#" class="nav-item">好友</a>
	<a href="#" class="nav-item">粉丝</a>
	<a href="#" class="nav-item">关注</a>
</div>
<div class="nav-list">
	<a href="#" class="nav-title nav-myfavorites">我的收藏</a>
</div>
	<a href="#" target="_blank" class="zol-agreement">用户协议</a>
</div>	<!-- sidebar -->
	<div class="mainbox">
		<div class="index-userbox">
			<div class="userbox">
	<a href="#" class="user-pic"><span class="user-pic-text">上传头像</span><img id="myAvator" src="https://icon.zol-img.com.cn/group/detail_images/zoler.jpg" alt="qq_5g131r487m17" width="80" height="80"></a>				
<div class="user-namebox clearfix" style="width:550px;height:auto;">
	<a href="#" class="user-name" id="NickName"></a>
	<div class="user-levelbox clearfix">
    	<!-- <div class="user-level">Lv.1</div>-->
    	<a class="user-level" href="#" target="_blank">Lv.1</a>
    	<div class="moderator-pop box-shadow" style="display: none;">
    	    <i class="arrow"></i>
    		<div>当前经验 <span class="red-color">0</span> 分，升级还需 <span class="red-color">280</span> 分</div>
    		<div>下一等级：<span class="orange-color">Lv.2</span>&nbsp;&nbsp;<a href="http://bbs.zol.com.cn/otherbbs/d4_6087.html" target="_blank">如何升级？</a></div>
    	</div>
	</div>
				
		</div>

    <div class="user-function clearfix" style="margin-top:5px;">
    	<a href="updateUsersInf.jsp" class="edit-btn border-ra2">编辑个人资料</a>
    </div>

<div class="user-numbox clearfix">
	<span class="friend-num"><a href="#">0</a><br>好友</span>
	<span class="fans-num"><a href="#">0</a><br>粉丝</span>
	<span class="focus-num"><a href="#">0</a><br>关注</span>
</div></div>			<div class="user-record clearfix">
				<div class="user-record-item first">论坛：<span>帖子 <a class="red-color" href="#">0</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>回复 <a class="red-color" href="#">0</a></span></div>
				<div class="user-record-item">问答：<span>提问 <a class="red-color" href="#">0</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>回答 <a class="red-color" href="#">0</a></span></div>
				<div class="user-record-item">Z金豆：<span>已获得 <a class="red-color" href="#">10</a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span>已兑换 <a class="red-color" href="#">0</a></span></div>
			</div>
		</div>

		<div class="clearfix">
			<div class="main">
			
                <div class="tasks-section">
	<div class="content-header box-shadow clearfix">
		<h3>Lv.1等级任务包</h3><span class="tip">(每个任务拿到原有经验外还可获得<span>额外的经验</span>)</span> 
	</div>
	
		<a href="#" class="content-news">成就任务： 已打包备好&nbsp;&nbsp;马上领取&gt;&gt;</a>
	<div class="tasks-box">
	
	<!-- 每日任务 -->
	<div class="task-mod daily-mod">
	    <div class="mod-head"><a href="#">去做任务&nbsp;<span>&gt;&gt;</span></a><h3 class="title">每日任务</h3></div>
	    		<div class="tasks-lists clearfix">
		    		        
                
		        <a class="tasks-item1 fiveLayer" href="javascript:;" flag="publish" type="daily" data-text="发热门帖&nbsp;+10">
		        <span class="tasks-num-bg"></span>
		        <span class="tasks-num">1</span>
		        <span class="tasks-text">发热门帖<em>+10</em></span>
		        </a>

					        
                
		        <a class="tasks-item2 countTask" href="#" target="_blank" flag="topic" type="daily" data-text="聊每日话题&nbsp;+10">
		        <span class="tasks-num-bg"></span>
		        <span class="tasks-num">2</span>
		        <span class="tasks-text">聊每日话题<em>+10</em></span>
		        </a>

					        
                
		        <a class="tasks-item3 fiveLayer" href="javascript:;" flag="invite" type="daily" data-text="邀友看帖&nbsp;+10">
		        <span class="tasks-num-bg"></span>
		        <span class="tasks-num">3</span>
		        <span class="tasks-text">邀友看帖<em>+10</em></span>
		        </a>

					        
                
		        <a class="tasks-item4 countTask" href="#" target="_blank" flag="reply" type="daily" data-text="每日回复&nbsp;+10">
		        <span class="tasks-num-bg"></span>
		        <span class="tasks-num">4</span>
		        <span class="tasks-text">每日回复<em>+10</em></span>
		        </a>

					        
                
		        <a class="tasks-item5 countTask" href="#" target="_blank" flag="focus" type="daily" data-text="回复焦点图&nbsp;+10">
		        <span class="tasks-num-bg"></span>
		        <span class="tasks-num">5</span>
		        <span class="tasks-text">回复焦点图<em>+10</em></span>
		        </a>

					</div>
			</div>
	
	<!-- 等级任务 -->
	<div class="task-mod">
	
				
		    <div class="mod-head"><h3 class="title">等级任务</h3></div>
		    <div class="complete-box clearfix">
			    <span class="upgrade-packs-pic"><i></i>Lv.1升级包</span>
				<p>该任务包中包含了4个任务；</p>
				<p>设置了额外90的经验奖励，直接提升32%的升级速度；</p>
				<p>完成后可获得“新手毕业”勋章一枚</p>
				<p><span class="receive-link" id="getLevelPackage">马上领取<em>&gt;&gt;</em></span></p>
			</div>
		
			</div>
	
	</div>
</div>				
								<div class="content-header box-shadow clearfix">
					<h3>每日强贴推荐</h3>
				</div>
				<div class="today-recommend">
					<div class="editor-scroll">
						<div class="scroll-data">
							<!--list-->	
							<div class="list clearfix">
							     								 
								 								 
								 								 
								 								 
								 								 
								 								 
								 								 
								 								 
								 								 
								 								 
								 								 
								 								 
								 							<a href="#" target="_blank" title="女孩子都无法抗拒的美" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/01/0C/ChMkJ1v3nZCIHOK_AABrFHNG-8QAAtVJwMRxUwAAGss991.jpg" title="女孩子都无法抗拒的美" width="131" height="97">	
									<span>女孩子都无法抗...</span>
								 </a><a href="//m.zol.com.cn/dcbbs/gallery_d16_455969.html" target="_blank" title="午后遐想" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/0E/05/ChMkJ1u-u7KIUMYsAABGQgNMfgEAAsaIgO5BQ4AAEZa900.jpg" title="午后遐想" width="131" height="97">	
									<span>午后遐想</span>
								 </a><a href="#" target="_blank" title="迪兰RX580试用" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/06/05/ChMkJlwIyfyIFDB2AAB9EDr2mgYAAtnkgL58QYAAH0o629.jpg" title="迪兰RX580试用" width="131" height="97">	
									<span>迪兰RX580试用</span>
								 </a><a href="#" target="_blank" title="腹有诗书气自华" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/09/0A/ChMkJ1utpAOIJbD-AACP2QSsW4MAAsHYAM7vsYAAI_x778.jpg" title="腹有诗书气自华" width="131" height="97">	
									<span>腹有诗书气自华</span>
								 </a><a href="#" target="_blank" title="有了它还买什么iPhone Xs" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/0E/01/ChMkJ1u9x7-IaFN1AABfS_1fVqUAAsZJgIU7cQAAF9j766.jpg" title="有了它还买什么iPhone Xs" width="131" height="97">	
									<span>有了它还买什么...</span>
								 </a><a href="#" target="_blank" title="我家小灵儿" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/09/09/ChMkJlutorqIJFtGAABJoDqWSMgAAsHXwDH-XQAAEm4877.jpg" title="我家小灵儿" width="131" height="97">	
									<span>我家小灵儿</span>
								 </a><a href="#" target="_blank" title="设计的i9办公主机" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/01/0C/ChMkJ1v3nCOIQCwOAABVze24_qMAAtVJQG2BEsAAFXl157.jpg" title="设计的i9办公主机" width="131" height="97">	
									<span>设计的i9办公主...</span>
								 </a><a href="#" target="_blank" title="公交车站偶遇清纯女学生" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/0B/0D/ChMkJ1sL5ISIeyF8AABYtBFNT9YAAop6AIFt3EAAFjM828.jpg" title="公交车站偶遇清纯女学生" width="131" height="97">	
									<span>公交车站偶遇清...</span>
								 </a><a href="#" target="_blank" title="坚果Pro2S详测" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/09/00/ChMkJlusNYyIYyLMAABUsx3ELW0AAsE9AOGIfAAAFTL984.jpg" title="坚果Pro2S详测" width="131" height="97">	
									<span>坚果Pro2S详测</span>
								 </a><a href="#" target="_blank" title="山坡上嘟嘴照相的女孩" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/08/00/ChMkJ1r7qiOIar6vAACbSxn_6qgAAoanQFmoFMAAJtj810.jpg" title="山坡上嘟嘴照相的女孩" width="131" height="97">	
									<span>山坡上嘟嘴照相...</span>
								 </a><a href="#" target="_blank" title="航嘉X2772CK电竞显示器有奖点评" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/05/0A/ChMkJ1vZThKIciDUAAB3teBPRqEAAs3WAHIPn8AAHfN707.jpg" title="航嘉X2772CK电竞显示器有奖点评" width="131" height="97">	
									<span>航嘉X2772CK电...</span>
								 </a><a href="#" target="_blank" title="爱她就带她去赏红叶" style="margin-left: 0px;">
									<img src="https://bbs-fd.zol-img.com.cn/t_s131x97c5/g5/M00/01/0C/ChMkJlv3nrGIGQzKAAB4YShHsQkAAtVKQHtiEcAAHh5660.jpg" title="爱她就带她去赏红叶" width="131" height="97">	
									<span>爱她就带她去赏...</span>
								 </a></div>
							<!--//list-->	
						</div>
						<span class="prev" id="ask_prev"><em>上一页</em></span>
						<span class="next" id="ask_next"><em>下一页</em></span>
					</div>
				</div>
				
				<div class="content-header box-shadow clearfix">
					<h3>好友动态</h3>
					<a href="javascript:refreshFeed('undefined');" class="refresh">刷新</a>
				</div>
				<input type="hidden" name="ref-Feedid" id="ref-Feedid" value="">
								<div class="no-message"><i class="ico"></i>亲，去<a href="http://bbs.zol.com.cn/" target="_blank">社区</a>里转转加几个好友吧~</div>
								<!-- //content -->
			</div>
			<div class="main-aside">
								
				<!-- 天猫活动 -->
         					
				<div class="signed-inbox" data-role="calendarSignTarget">
					<div class="signed-header"><span class="signed-num" data-role="signTotalNum"><span>0</span></span>我的签到日历</div>
					<span class="signed-btn border-ra3" id="hasSign" data-role="calendarSign">签到</span>
					<span id="add-score" class="add-score" style="display:none; font-size:22px;">+<em data-role="nextSignScore">0</em></span>
					<span data-role="nextSignScore" id="nextSignScore" style="display:none"></span>
					<div class="signed-today-numbox"><p>今日已有<em class="z_todaySignNum">2536</em>人签到<br><span>连续签到<em>3</em>天可获得1次抽奖机会！</span></p></div>
				    <div class="sign-w">
						<img src="https://icon.zol-img.com.cn/zol_jf/erweima.png">
						手机签到经验翻倍！<br>快来扫一扫！
					</div>
				</div>
    			<!-- //signed-inbox -->
    							<!-- 我关注的板块 -->
				
				<!-- 最近来访 -->
				

				<!-- 正在进行的活动 -->
				<div class="modbox visitors-box">
	<div class="modbox-header clearfix">
		<h3>正在进行的活动</h3>
		<a href="#" class="more" target="_blank">更多<span>&gt;&gt;</span></a>
	</div>
	
	<ul class="pic-list">
				<li>
			<a href="http://bbs.zol.com.cn/huodong/d2_27028.html" class="pic" target="_blank"><img src="https://bbs-fd.zol-img.com.cn/t_s80x60c2/g5/M00/0B/00/ChMkJ1wcoUiIGZopAAB4qbH8fI8AAt6OgKUpNYAAHjB578.jpg" alt="轻薄和性能之间的完美结合！联想小新Air 13免费试用" title="轻薄和性能之间的完美结合！联想小新Air 13免费试用" width="80" height="60"></a>
			<h3><a href="#" target="_blank">轻薄和性能之间的完美结合！联想小新Air 13免费试用</a></h3>
			<p class="pic-time">12月21日-1月20日</p>
		</li>
				<li>
			<a href="http://bbs.zol.com.cn/huodong/d2_27027.html" class="pic" target="_blank"><img src="https://bbs-fd.zol-img.com.cn/t_s80x60c2/g5/M00/0A/0A/ChMkJ1wa8m2IGJtnAACr57tBMsAAAt4rwAAAAAAAKv_161.jpg" alt="全方位满足会议需求 皓丽55M2智能会议平板推广王招募" title="全方位满足会议需求 皓丽55M2智能会议平板推广王招募" width="80" height="60"></a>
			<h3><a href="#" target="_blank">全方位满足会议需求 皓丽55M2智能会议平板推广王招募</a></h3>
			<p class="pic-time">12月19日-1月3日</p>
		</li>
				<li>
			<a href="http://bbs.zol.com.cn/huodong/d2_27026.html" class="pic" target="_blank"><img src="https://bbs-fd.zol-img.com.cn/t_s80x60c2/g5/M00/0A/05/ChMkJ1wZoLmIAudZAABUOkCC0ewAAt3dwN8e-gAAFRS045.jpg" alt="13英寸最强轻薄本 华为MateBook 13有奖点评" title="13英寸最强轻薄本 华为MateBook 13有奖点评" width="80" height="60"></a>
			<h3><a href="#" target="_blank">13英寸最强轻薄本 华为MateBook 13有奖点评</a></h3>
			<p class="pic-time">12月18日-1月13日</p>
		</li>
			</ul>
</div>

				<!-- 今日最超值 -->
				<div class="modbox visitors-box">
	<div class="modbox-header clearfix">
		<h3>今日最超值</h3>
		<a href="#" class="more" target="_blank">更多<span>&gt;&gt;</span></a>
	</div>
	<ul class="pic-list">
				<li>
			<a href="http://z.zol.com.cn/5313273.html" class="pic" target="_blank"><img src="https://article-fd.zol-img.com.cn/t_s80x60/g2/M00/0D/07/ChMlWlWsi2qIO4m1AAEl0INaDdIAAHZUwNLpfcAASXo291.jpg" alt="笔记本电脑通用 打白条优惠券 1000-50/3000-200/5000-300" title="笔记本电脑通用 打白条优惠券 1000-50/3000-200/5000-300" width="80" height="60"></a>
			<h3><a href="#" target="_blank">笔记本电脑通用 打白条优惠券 1000-50/3000-200/5000-300</a></h3>
			<p class="pic-price">叠加商品券</p>
		</li>
				<li>
			<a href="http://z.zol.com.cn/5337579.html" class="pic" target="_blank"><img src="https://article-fd.zol-img.com.cn/t_s80x60/g2/M00/05/0A/ChMlWVXBp3iIIdcUAAF_x1TPxVIAAIQtAPcHgoAAX_f966.jpg" alt="手机配件 全场促销" title="手机配件 全场促销" width="80" height="60"></a>
			<h3><a href="#" target="_blank">手机配件 全场促销</a></h3>
			<p class="pic-price">低至2折 领20元优惠券</p>
		</li>
			</ul>
</div>
			</div>
			<!-- //main-aside -->
		</div>
	</div>
</div>
 
<script src="https://icon.zol-img.com.cn/group/bbs_task_guide.js"></script>

<script type="text/javascript">
$(function(){
	//关于签到二维码的展示  add tanjianfei  2015-12-16
	   $('#hasSign').hover(function(){
	    	$(".sign-w").css('display','block');
	   },function(){
		    $(".sign-w").css('display','none');
	   });
		$("#NickName").text(ChengGlobal.currentUser.nickName);
})
   
					
// $(function(){
//     $('[data-role=calendarSign]').calendarSign({
//         'callback':function(signScore,json){
//         	//+积分动态效果
// 	    	$("#add-score").animate({
// 	   		   	top: 20, opacity: 'show'
// 	   		}, 500, '', function(){
// 	   			$('#add-score').fadeOut(200);
// 	    	});
	    		
// 	        var num = $('#nextSignScore').html();
// 	        //参数signScore  为本次签到奖励的金豆数
// 	        $('#hasSign').addClass('has-signed');        
// 	   		$('#hasSign').removeClass('signed-btn').html('已签到，明天可领 '+num+'<i class="gold"></i>');

// 	   		//等级任务跳转
// 	   		json.taskNeedDays !== false && json.taskNeedDays === 0 && typeof taskGuide !== 'undefined' &&
// 	   		(function(){
// 	   			taskGuide.jumpTo(location.href.toString(),1000);
// 		   	})();
	   		
//         },
//         'initCallback':function(){
//            	//页面加载时判断是否已签到，签到之后的样式
//         	setTimeout(function(){
//         		var num = $('#nextSignScore').html();
//         		$('#hasSign').addClass('has-signed').removeClass('signed-btn').html('已签到，明天可领 '+num+'<i class="gold"></i>');
//         	}, 0);
//         }
//     });
// });
</script>

</body>
</html>