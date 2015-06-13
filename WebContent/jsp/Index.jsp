<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<!--[if IEMobile 7]><html class="no-js iem7 oldie"><![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html class="no-js ie7 oldie" lang="en"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html class="no-js ie8 oldie" lang="en"><![endif]-->
<!--[if (IE 9)&!(IEMobile)]><html class="no-js ie9" lang="en"><![endif]-->
<!--[if (gt IE 9)|(gt IEMobile 7)]><!--><html class="no-js" lang="en"><!--<![endif]-->

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>报考吧</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- http://davidbcalhoun.com/2010/viewport-metatag -->
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="320">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<!-- For all browsers -->
	<link rel="stylesheet" href="jsp/css/reset.css?v=1">
	<link rel="stylesheet" href="jsp/css/style.css?v=1">
	<link rel="stylesheet" href="jsp/css/colors.css?v=1">
	<link rel="stylesheet" media="print" href="jsp/css/print.css?v=1">
	<!-- For progressively larger displays -->
	<link rel="stylesheet" media="only all and (min-width: 480px)" href="jsp/css/480.css?v=1">
	<link rel="stylesheet" media="only all and (min-width: 768px)" href="jsp/css/768.css?v=1">
	<link rel="stylesheet" media="only all and (min-width: 992px)" href="jsp/css/992.css?v=1">
	<link rel="stylesheet" media="only all and (min-width: 1200px)" href="jsp/css/1200.css?v=1">
	<!-- For Retina displays -->
	<link rel="stylesheet" media="only all and (-webkit-min-device-pixel-ratio: 1.5), only screen and (-o-min-device-pixel-ratio: 3/2), only screen and (min-device-pixel-ratio: 1.5)" href="css/2x.css?v=1">

	<!-- Webfonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>

	<!-- Additional styles -->
	<link rel="stylesheet" href="jsp/css/styles/agenda.css?v=1">
	<link rel="stylesheet" href="jsp/css/styles/dashboard.css?v=1">
	<link rel="stylesheet" href="jsp/css/styles/form.css?v=1">
	<link rel="stylesheet" href="jsp/css/styles/modal.css?v=1">
	<link rel="stylesheet" href="jsp/css/styles/progress-slider.css?v=1">
	<link rel="stylesheet" href="jsp/css/styles/switches.css?v=1">

	<!-- JavaScript at bottom except for Modernizr -->
	<script src="jsp/js/libs/modernizr.custom.js"></script>

	<!-- For Modern Browsers -->
	<link rel="shortcut icon" href="jsp/img/favicons/favicon.png">
	<!-- For everything else -->
	<link rel="shortcut icon" href="jsp/img/favicons/favicon.ico">
	<!-- For retina screens -->
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="jsp/img/favicons/apple-touch-icon-retina.png">
	<!-- For iPad 1-->
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="jsp/img/favicons/apple-touch-icon-ipad.png">
	<!-- For iPhone 3G, iPod Touch and Android -->
	<link rel="apple-touch-icon-precomposed" href="jsp/img/favicons/apple-touch-icon.png">

	<!-- iOS web-app metas -->
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">

	<!-- Startup image for web apps -->
	<link rel="apple-touch-startup-image" href="jsp/img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
	<link rel="apple-touch-startup-image" href="jsp/img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
	<link rel="apple-touch-startup-image" href="jsp/img/splash/iphone.png" media="screen and (max-device-width: 320px)">

	<!-- Microsoft clear type rendering -->
	<meta http-equiv="cleartype" content="on">

	<!-- IE9 Pinned Sites: http://msdn.microsoft.com/en-us/library/gg131029.aspx -->
	<meta name="application-name" content="Developr Admin Skin">
	<meta name="msapplication-tooltip" content="Cross-platform admin template.">
	<meta name="msapplication-starturl" content="http://www.display-inline.fr/demo/developr">
	<!-- These custom tasks are examples, you need to edit them to show actual pages -->
	<meta name="msapplication-task" content="name=Agenda;action-uri=http://www.display-inline.fr/demo/developr/agenda.html;icon-uri=http://www.display-inline.fr/demo/developr/img/favicons/favicon.ico">
	<meta name="msapplication-task" content="name=My profile;action-uri=http://www.display-inline.fr/demo/developr/profile.html;icon-uri=http://www.display-inline.fr/demo/developr/img/favicons/favicon.ico">
<script language="javascript" type="text/javascript">

//js获取日期

function time()

{

  var now= new Date();

  var year=now.getFullYear();

  var month=now.getMonth();

  var date=now.getDate();

//写入相应id

 document.getElementById("info1").innerHTML=year+"/"+(month+1)+"/<strong>"+date+"</strong>";


} 

</script>

</head>

<body class="clearfix with-menu with-shortcuts" onload="time()">
<c:if test="${empty requestScope.ListSchools }">
	<!-- 跳转到 ShowEmpsServlet拉去数据 -->
	<script>window.location="/TFG/HotSchoolServlet"; </script>
</c:if>
	<!-- Prompt IE 6 users to install Chrome Frame -->
	<!--[if lt IE 7]><p class="message red-gradient simpler">Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->

	<!-- Title bar -->
	

	<!-- Button to open/hide menu -->
	<a href="#" id="open-menu"><span>Menu</span></a>

	<!-- Button to open/hide shortcuts -->
	<a href="#" id="open-shortcuts"><span class="icon-thumbs"></span></a>

	<!-- Main content -->
	<section role="main" id="main">

		<noscript class="message black-gradient simpler">Your browser does not support JavaScript! Some features won't work as expected...</noscript>

		<hgroup id="main-title" class="thin">
			<h1><img src="jsp/img/login-title.png"  ></h1>
			 

                        <h2 id="info1"></h2>
		</hgroup>
<div class="dashboard">

			<div class="columns">

				<div class="nine-columns twelve-columns-mobile" style="height:561px" id="demo-chart">
					<!-- This div will hold the chart generated in the footer -->
				</div>

				<!--------->
<div class="three-columns twelve-columns-mobile new-row-mobile">

					<h2 class="relative thin">
						热门学校
						<span class="info-spot">
							<span class="icon-info-round"></span>
							<span class="info-bubble">
								根据每日学校签到排序
							</span>
						</span>
						<span class="button-group absolute-right">
							
							<a href="/TFG/jsp/Index.jsp" title="点击刷新列表" class="button icon-redo"></a>
						</span>
					</h2>

					<ul class="list spaced">
                           <c:forEach items="${requestScope.ListSchools }" var="emp">
						<li>
							<a href="/TFG/jsp/Index.jsp?schoolId=${emp.id}" class="list-link icon-user" title="点击进入学校主页">
								<span class="meter orange-gradient"></span>
								<span class="meter orange-gradient"></span>
								<span class="meter"></span>
								<span class="meter"></span>

								<span ><strong >${emp.name}</strong> ${emp.city} </span>
							</a>
							
						</li>
                        </c:forEach>
						

					</ul>

				</div>
				<!------------->

			</div>

		</div>
		


	</section>
	<!-- End main content -->

	<!-- Side tabs shortcuts -->
	<ul id="shortcuts" role="complementary" class="children-tooltip tooltip-right">
		<li class="current"><a href="./" class="shortcut-dashboard" title="Dashboard">Dashboard</a></li>
		<li><a href="inbox.html" class="shortcut-messages" title="消息">消息</a></li>
		<li><a href="agenda.html" class="shortcut-agenda" title="Agenda">Agenda</a></li>
		<li><a href="tables.html" class="shortcut-contacts" title="Contacts">Contacts</a></li>
		<li><a href="explorer.html" class="shortcut-medias" title="Medias">Medias</a></li>
		<li><a href="sliders.html" class="shortcut-stats" title="Stats">Stats</a></li>
		<li class="at-bottom"><a href="form.html" class="shortcut-settings" title="Settings">Settings</a></li>
		<li><span class="shortcut-notes" title="Notes">Notes</span></li>
	</ul>

	<!-- Sidebar/drop-down menu -->
	<section id="menu" role="complementary">

		<!-- This wrapper is used by several responsive layouts -->
		<div id="menu-content">

			<header>
				个人信息
			</header>

			<div id="profile">
				<img src="img/user.png" width="64" height="64" alt="User name" class="user-icon">
				
				 <p>你好</p>
				<span class="name"> <b>李先生</b>发</span>
			</div>

			<!-- By default, this section is made for 4 icons, see the doc to learn how to change this, in "basic markup explained" -->
			<ul id="access" class="children-tooltip">
				<li><a href="inbox.html" title="消息"><span class="icon-mail"></span><span class="count">1</span></a></li>
				<li><a href="login.html" title="个人信息"><span class="icon-user"></span></a></li>
                                <li><a href="login.html" title="搜索"><span class="icon-search"></span></a></li> 
				<li class="disabled"><a href="login.html" title="主页设置"><span class="icon-gear"></span></a></li>
			</ul>

			<ul class="unstyled-list">
			
				<li class="title-menu">热门帖子</li>
				<li>
					<ul class="message-menu">
					<li>
							<a href="#" title="Read message">
								<span class="message-status">
									<span class="unstarred">Not starred</span>
									<span class="new-message">New</span>
								</span>
								<span class="ribbon tiny"><span class="ribbon-inner red-gradient">1</span></span>
								<strong class="blue">搬迁天大</strong><br>
                                                              
								<strong>今天天大搬搬迁搬迁搬迁搬迁搬迁毕生难忘年四季度将大家都会就觉得惊恐地对计算机</strong>
							</a>
						</li>
						<li>
							<a href="#" title="Read message">
								<span class="message-status">
									<span class="unstarred">Not starred</span>
									<span class="new-message">New</span>
								</span>
								<span class="ribbon tiny"><span class="ribbon-inner red-gradient">2</span></span>
								<strong class="blue">搬迁天大</strong><br>
                                                              
								<p><strong>今天天大搬搬迁搬迁搬迁搬迁搬迁毕生难忘年四季度将大家都会就觉得惊恐地对计算机</strong></p>
							</a>
						</li>
						<li>
							<a href="#" title="Read message">
								<span class="message-status">
									<span class="unstarred">Not starred</span>
									<span class="new-message">New</span>
								</span>
								<span class="ribbon tiny"><span class="ribbon-inner red-gradient">3</span></span>
								<strong class="blue">搬迁天大</strong><br>
                                                              
								<strong>今天天大搬搬迁搬迁搬迁搬迁搬迁毕生难忘年四季度将大家都会就觉得惊恐地对计算机</strong>
							</a>
						</li>
                                                 <li>
							<a href="#" title="Read message">
								<span class="message-status">
									<span class="unstarred">Not starred</span>
									<span class="new-message">New</span>
								</span>
								<span class="ribbon tiny"><span class="ribbon-inner red-gradient">4</span></span>
								<strong class="blue">搬迁天大</strong><br>
                                                              
								<strong>今天天大搬搬迁搬迁搬迁搬迁搬迁毕生难忘年四季度将大家都会就觉得惊恐地对计算机</strong>
							</a>
						</li>
                                                <li>
							<a href="#" title="Read message">
								<span class="message-status">
									<span class="unstarred">Not starred</span>
									<span class="new-message">New</span>
								</span>
								<span class="ribbon tiny"><span class="ribbon-inner red-gradient">5</span></span>
								<strong class="blue">搬迁天大</strong><br>
                                                              
								<strong>今天天大搬搬迁搬迁搬迁搬迁搬迁毕生难忘年四季度将大家都会就觉得惊恐地对计算机</strong>
							</a>
						</li>
<li>
							<a href="#" title="Read message">
								<span class="message-status">
									<span class="unstarred">Not starred</span>
									<span class="new-message">New</span>
								</span>
								<span class="ribbon tiny"><span class="ribbon-inner red-gradient">2</span></span>
								<strong class="blue">搬迁天大</strong><br>
                                                              
								<strong>今天天大搬搬迁搬迁搬迁搬迁搬迁毕生难忘年四季度将大家都会就觉得惊恐地对计算机</strong>
							</a>
						</li>
					</ul>
				</li>
			</ul>

			

		</div>
		<!-- End content wrapper -->

		<!-- This is optional -->
		<footer id="menu-footer">
			<p class="button-height">
				
			</p>
		</footer>

	</section>
	<!-- End sidebar/drop-down menu -->

	<!-- JavaScript at the bottom for fast page loading -->

	<!-- Scripts -->
	<script src="js/libs/jquery-1.8.2.min.js"></script>
	<script src="js/setup.js"></script>

	<!-- Template functions -->
	<script src="js/developr.input.js"></script>
	<script src="js/developr.message.js"></script>
	<script src="js/developr.modal.js"></script>
	<script src="js/developr.navigable.js"></script>
	<script src="js/developr.notify.js"></script>
	<script src="js/developr.scroll.js"></script>
	<script src="js/developr.progress-slider.js"></script>
	<script src="js/developr.tooltip.js"></script>
	<script src="js/developr.confirm.js"></script>
	<script src="js/developr.agenda.js"></script>
	<script src="js/developr.tabs.js"></script>		<!-- Must be loaded last -->

	<!-- Tinycon -->
	<script src="js/libs/tinycon.min.js"></script>

	<script>

		// Call template init (optional, but faster if called manually)
		$.template.init();

		// Favicon count
		Tinycon.setBubble(2);

		// If the browser support the Notification API, ask user for permission (with a little delay)
		if (notify.hasNotificationAPI() && !notify.isNotificationPermissionSet())
		{
			setTimeout(function()
			{
				notify.showNotificationPermission('Your browser supports desktop notification, click here to enable them.', function()
				{
					// Confirmation message
					if (notify.hasNotificationPermission())
					{
						notify('Notifications API enabled!', 'You can now see notifications even when the application is in background', {
							icon: 'img/demo/icon.png',
							system: true
						});
					}
					else
					{
						notify('Notifications API disabled!', 'Desktop notifications will not be used.', {
							icon: 'img/demo/icon.png'
						});
					}
				});

			}, 2000);
		}

		/*
		 * Handling of 'other actions' menu
		 */

		var otherActions = $('#otherActions'),
			current = false;

		// Other actions
		$('.list .button-group a:nth-child(2)').menuTooltip('Loading...', {

			classes: ['with-mid-padding'],
			ajax: 'ajax-demo/tooltip-content.html',

			onShow: function(target)
			{
				// Remove auto-hide class
				target.parent().removeClass('show-on-parent-hover');
			},

			onRemove: function(target)
			{
				// Restore auto-hide class
				target.parent().addClass('show-on-parent-hover');
			}
		});

		// Delete button
		$('.list .button-group a:last-child').data('confirm-options', {

			onShow: function()
			{
				// Remove auto-hide class
				$(this).parent().removeClass('show-on-parent-hover');
			},

			onConfirm: function()
			{
				// Remove element
				$(this).closest('li').fadeAndRemove();

				// Prevent default link behavior
				return false;
			},

			onRemove: function()
			{
				// Restore auto-hide class
				$(this).parent().addClass('show-on-parent-hover');
			}

		});

		// Demo modal
		function openModal()
		{
			$.modal({
				content: '<p>This is an example of modal window. You can open several at the same time (click links below!), move them and resize them.</p>'+
						  '<p>The plugin provides several other functions to control them, try below:</p>'+
						  '<ul class="simple-list with-icon">'+
						  '    <li><a href="javascript:void(0)" onclick="openModal()">Open new blocking modal</a></li>'+
						  '    <li><a href="javascript:void(0)" onclick="$.modal.alert(\'This is a non-blocking modal, you can switch between me and the other modal\', { blocker: false })">Open non-blocking modal</a></li>'+
						  '    <li><a href="javascript:void(0)" onclick="$(this).getModalWindow().setModalTitle(\'\')">Remove title</a></li>'+
						  '    <li><a href="javascript:void(0)" onclick="$(this).getModalWindow().setModalTitle(\'New title\')">Change title</a></li>'+
						  '    <li><a href="javascript:void(0)" onclick="$(this).getModalWindow().loadModalContent(\'ajax-demo/auto-setup.html\')">Load Ajax content</a></li>'+
						  '</ul>',
				title: 'Example modal window',
				width: 300,
				scrolling: false,
				actions: {
					'Close' : {
						color: 'red',
						click: function(win) { win.closeModal(); }
					},
					'Center' : {
						color: 'green',
						click: function(win) { win.centerModal(true); }
					},
					'Refresh' : {
						color: 'blue',
						click: function(win) { win.closeModal(); }
					},
					'Abort' : {
						color: 'orange',
						click: function(win) { win.closeModal(); }
					}
				},
				buttons: {
					'Close': {
						classes:	'huge blue-gradient glossy full-width',
						click:		function(win) { win.closeModal(); }
					}
				},
				buttonsLowPadding: true
			});
		};

		// Demo alert
		function openAlert()
		{
			$.modal.alert('This is an alert message', {
				buttons: {
					'Thanks, captain obvious': {
						classes:	'huge blue-gradient glossy full-width',
						click:		function(win) { win.closeModal(); }
					}
				}
			});
		};

		// Demo prompt
		function openPrompt()
		{
			var cancelled = false;

			$.modal.prompt('Please enter a value between 5 and 10:', function(value)
			{
				value = parseInt(value);
				if (isNaN(value) || value < 5 || value > 10)
				{
					$(this).getModalContentBlock().message('Please enter a correct value', { append: false, classes: ['red-gradient'] });
					return false;
				}

				$.modal.alert('Value: <strong>'+value+'</strong>');

			}, function()
			{
				if (!cancelled)
				{
					$.modal.alert('Oh, come on....');
					cancelled = true;
					return false;
				}
			});
		};

		// Demo confirm
		function openConfirm()
		{
			$.modal.confirm('Challenge accepted?', function()
			{
				$.modal.alert('Me gusta!');

			}, function()
			{
				$.modal.alert('Meh.');
			});
		};

		/*
		 * Agenda scrolling
		 * This example shows how to remotely control an agenda. most of the time, the built-in controls
		 * using headers work just fine
		 */

			// Days
		var daysName = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],

			// Name display
			agendaDay = $('#agenda-day'),

			// Agenda scrolling
			agenda = $('#agenda').scrollAgenda({
				first: 2,
				onRangeChange: function(start, end)
				{
					if (start != end)
					{
						agendaDay.text(daysName[start].substr(0, 3)+' - '+daysName[end].substr(0, 3));
					}
					else
					{
						agendaDay.text(daysName[start]);
					}
				}
			});

		// Remote controls
		$('#agenda-previous').click(function(event)
		{
			event.preventDefault();
			agenda.scrollAgendaToPrevious();
		});
		$('#agenda-today').click(function(event)
		{
			event.preventDefault();
			agenda.scrollAgendaFirstColumn(2);
		});
		$('#agenda-next').click(function(event)
		{
			event.preventDefault();
			agenda.scrollAgendaToNext();
		});

		// Demo loading modal
		function openLoadingModal()
		{
			var timeout;

			$.modal({
				contentAlign: 'center',
				width: 240,
				title: 'Loading',
				content: '<div style="line-height: 25px; padding: 0 0 10px"><span id="modal-status">Contacting server...</span><br><span id="modal-progress">0%</span></div>',
				buttons: {},
				scrolling: false,
				actions: {
					'Cancel': {
						color:	'red',
						click:	function(win) { win.closeModal(); }
					}
				},
				onOpen: function()
				{
						// Progress bar
					var progress = $('#modal-progress').progress(100, {
							size: 200,
							style: 'large',
							barClasses: ['anthracite-gradient', 'glossy'],
							stripes: true,
							darkStripes: false,
							showValue: false
						}),

						// Loading state
						loaded = 0,

						// Window
						win = $(this),

						// Status text
						status = $('#modal-status'),

						// Function to simulate loading
						simulateLoading = function()
						{
							++loaded;
							progress.setProgressValue(loaded+'%', true);
							if (loaded === 100)
							{
								progress.hideProgressStripes().changeProgressBarColor('green-gradient');
								status.text('Done!');
								/*win.getModalContentBlock().message('Content loaded!', {
									classes: ['green-gradient', 'align-center'],
									arrow: 'bottom'
								});*/
								setTimeout(function() { win.closeModal(); }, 1500);
							}
							else
							{
								if (loaded === 1)
								{
									status.text('Loading data...');
									progress.changeProgressBarColor('blue-gradient');
								}
								else if (loaded === 25)
								{
									status.text('Loading assets (1/3)...');
								}
								else if (loaded === 45)
								{
									status.text('Loading assets (2/3)...');
								}
								else if (loaded === 85)
								{
									status.text('Loading assets (3/3)...');
								}
								else if (loaded === 92)
								{
									status.text('Initializing...');
								}
								timeout = setTimeout(simulateLoading, 50);
							}
						};

					// Start
					timeout = setTimeout(simulateLoading, 2000);
				},
				onClose: function()
				{
					// Stop simulated loading if needed
					clearTimeout(timeout);
				}
			});
		};

	</script>
<!--ditu-->
<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
<script type="text/javascript">
    // 路径配置
    require.config({
        paths: {
            echarts: 'http://echarts.baidu.com/build/dist'
        }
    });

    // 使用
    require(
            [
                'echarts',
                'echarts/chart/map' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('demo-chart'));

                var option = {
                    title : {
                        text: '全国高校分布',
                        subtext: '',
                        x:'center'
                    },
                    tooltip : {
                        trigger: 'item'
                    },
                    legend: {
                        orient: 'vertical',
                        x:'left',
                        data:['全部高校','本科高校','211高校','985高校'],
                        selectedMode:"single",
                        selected:{
                            "本科高校":false,
"985高校":false,
                            "211高校":false
                           
                        }
                    },
                    dataRange: {
                        min: 0,
                        max: 60,
                        x: 'left',
                        y: 'bottom',
                        text:['高','低'],           // 文本，默认为数值文本
                        calculable : true
                    },
                    toolbox: {
                        show: true,
                        orient : 'vertical',
                        x: 'right',
                        y: 'center',
                        feature : {
                            mark : {show: true},
                            dataView : {show: true, readOnly: false},
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    
                    series : [
                        {
                            name: '全部高校',
                            type: 'map',
                            mapType: 'china',
                            roam: false,
                            itemStyle:{
                                normal:{label:{show:true}},
                                emphasis:{label:{show:true}}
                            },
                            data:[{"name":"北京","value":84},
                                {"name":"天津","value":45},
                                {"name":"河北","value":101},
                                {"name":"山西","value":71},
                                {"name":"内蒙古","value":48},
                                {"name":"辽宁","value":104},
                                {"name":"吉林","value":52},
                                {"name":"黑龙江","value":78},
                                {"name":"上海","value":66},
                                {"name":"江苏","value":134},
                                {"name":"浙江","value":82},
                                {"name":"安徽","value":107},
                                {"name":"福建","value":79},
                                {"name":"江西","value":82},
                                {"name":"山东","value":130},
                                {"name":"河南","value":121},
                                {"name":"湖北","value":99},
                                {"name":"湖南","value":109},
                                {"name":"广东","value":125},
                                {"name":"广西","value":61},
                                {"name":"海南","value":17},
                                {"name":"重庆","value":57},
                                {"name":"四川","value":97},
                                {"name":"贵州","value":47},
                                {"name":"云南","value":60},
                                {"name":"陕西","value":80},
                                {"name":"西藏","value":6},
                                {"name":"甘肃","value":38},
                                {"name":"青海","value":11},
                                {"name":"宁夏","value":16},
                                {"name":"新疆","value":39}]
                        },
                        {
                            name: '本科高校',
                            type: 'map',
                            mapType: 'china',
                            itemStyle:{
                                normal:{label:{show:true}},
                                emphasis:{label:{show:true}}
                            },
                            data:[{"name":"北京","value":57},
                                {"name":"天津","value":19},
                                {"name":"河北","value":37},
                                {"name":"山西","value":19},
                                {"name":"内蒙古","value":13},
                                {"name":"辽宁","value":45},
                                {"name":"吉林","value":28},
                                {"name":"黑龙江","value":34},
                                {"name":"上海","value":31},
                                {"name":"江苏","value":46},
                                {"name":"浙江","value":33},
                                {"name":"安徽","value":33},
                                {"name":"福建","value":23},
                                {"name":"江西","value":24},
                                {"name":"山东","value":49},
                                {"name":"河南","value":39},
                                {"name":"湖北","value":40},
                                {"name":"湖南","value":31},
                                {"name":"广东","value":40},
                                {"name":"广西","value":22},
                                {"name":"海南","value":6},
                                {"name":"重庆","value":17},
                                {"name":"四川","value":34},
                                {"name":"贵州","value":17},
                                {"name":"云南","value":22},
                                {"name":"陕西","value":42},
                                {"name":"西藏","value":3},
                                {"name":"甘肃","value":15},
                                {"name":"青海","value":3},
                                {"name":"宁夏","value":6},
                                {"name":"新疆","value":13}]
                        },
                        {
                            name: '211高校',
                            type: 'map',
                            mapType: 'china',
                            itemStyle:{
                                normal:{label:{show:true}},
                                emphasis:{label:{show:true}}
                            },
                            data:[{"name":"北京","value":26},
                                {"name":"天津","value":4},
                                {"name":"河北","value":1},
                                {"name":"山西","value":1},
                                {"name":"内蒙古","value":1},
                                {"name":"辽宁","value":4},
                                {"name":"吉林","value":3},
                                {"name":"黑龙江","value":4},
                                {"name":"上海","value":10},
                                {"name":"江苏","value":11},
                                {"name":"浙江","value":1},
                                {"name":"安徽","value":3},
                                {"name":"福建","value":2},
                                {"name":"江西","value":1},
                                {"name":"山东","value":3},
                                {"name":"河南","value":1},
                                {"name":"湖北","value":7},
                                {"name":"湖南","value":4},
                                {"name":"广东","value":4},
                                {"name":"广西","value":1},
                                {"name":"海南","value":1},
                                {"name":"重庆","value":2},
                                {"name":"四川","value":5},
                                {"name":"贵州","value":1},
                                {"name":"云南","value":1},
                                {"name":"陕西","value":8},
                                {"name":"西藏","value":1},
                                {"name":"甘肃","value":1},
                                {"name":"青海","value":1},
                                {"name":"宁夏","value":1},
                                {"name":"新疆","value":2}]
                        },
{
                            name: '985高校',
                            type: 'map',
                            mapType: 'china',
                            roam: false,
                            itemStyle:{
                                normal:{label:{show:true}},
                                emphasis:{label:{show:true}}
                            },
                            data:[{"name":"北京","value":8},
                                {"name":"天津","value":2},
                                {"name":"河北","value":0},
                                {"name":"山西","value":0},
                                {"name":"内蒙古","value":0},
                                {"name":"辽宁","value":2},
                                {"name":"吉林","value":1},
                                {"name":"黑龙江","value":1},
                                {"name":"上海","value":4},
                                {"name":"江苏","value":2},
                                {"name":"浙江","value":1},
                                {"name":"安徽","value":1},
                                {"name":"福建","value":1},
                                {"name":"江西","value":0},
                                {"name":"山东","value":2},
                                {"name":"河南","value":0},
                                {"name":"湖北","value":2},
                                {"name":"湖南","value":2},
                                {"name":"广东","value":2},
                                {"name":"广西","value":0},
                                {"name":"海南","value":0},
                                {"name":"重庆","value":1},
                                {"name":"四川","value":2},
                                {"name":"贵州","value":0},
                                {"name":"云南","value":0},
                                {"name":"陕西","value":3},
                                {"name":"西藏","value":0},
                                {"name":"甘肃","value":1},
                                {"name":"青海","value":0},
                                {"name":"宁夏","value":0},
                                {"name":"新疆","value":0}]
                        }
                    ]
                };


                // 为echarts对象加载数据
                myChart.setOption(option);
            }
    );
</script>

	
</body>
</html>