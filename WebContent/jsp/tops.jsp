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

	<title>Developr</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- http://davidbcalhoun.com/2010/viewport-metatag -->
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="320">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<!-- For all browsers -->
	<link rel="stylesheet" href="css/reset.css?v=1">
	<link rel="stylesheet" href="css/style.css?v=1">
	<link rel="stylesheet" href="css/colors.css?v=1">
	<link rel="stylesheet" media="print" href="css/print.css?v=1">
	<!-- For progressively larger displays -->
	<link rel="stylesheet" media="only all and (min-width: 480px)" href="css/480.css?v=1">
	<link rel="stylesheet" media="only all and (min-width: 768px)" href="css/768.css?v=1">
	<link rel="stylesheet" media="only all and (min-width: 992px)" href="css/992.css?v=1">
	<link rel="stylesheet" media="only all and (min-width: 1200px)" href="css/1200.css?v=1">
	<!-- For Retina displays -->
	<link rel="stylesheet" media="only all and (-webkit-min-device-pixel-ratio: 1.5), only screen and (-o-min-device-pixel-ratio: 3/2), only screen and (min-device-pixel-ratio: 1.5)" href="css/2x.css?v=1">

	<!-- Webfonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>

	<!-- Additional styles -->
	<link rel="stylesheet" href="css/styles/agenda.css?v=1">
	<link rel="stylesheet" href="css/styles/dashboard.css?v=1">
	<link rel="stylesheet" href="css/styles/form.css?v=1">
	<link rel="stylesheet" href="css/styles/modal.css?v=1">
	<link rel="stylesheet" href="css/styles/progress-slider.css?v=1">
	<link rel="stylesheet" href="css/styles/switches.css?v=1">

	<!-- JavaScript at bottom except for Modernizr -->
	<script src="js/libs/modernizr.custom.js"></script>

	<!-- For Modern Browsers -->
	<link rel="shortcut icon" href="img/favicons/favicon.png">
	<!-- For everything else -->
	<link rel="shortcut icon" href="img/favicons/favicon.ico">
	<!-- For retina screens -->
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/favicons/apple-touch-icon-retina.png">
	<!-- For iPad 1-->
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/favicons/apple-touch-icon-ipad.png">
	<!-- For iPhone 3G, iPod Touch and Android -->
	<link rel="apple-touch-icon-precomposed" href="img/favicons/apple-touch-icon.png">

	<!-- iOS web-app metas -->
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">

	<!-- Startup image for web apps -->
	<link rel="apple-touch-startup-image" href="img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
	<link rel="apple-touch-startup-image" href="img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
	<link rel="apple-touch-startup-image" href="img/splash/iphone.png" media="screen and (max-device-width: 320px)">

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
<c:if test="${empty requestScope.lstSchool }">
	<!-- 跳转到 ShowEmpsServlet拉去数据 -->
	<script>window.location="/TFG/ShowschoolServlet"; </script>
</c:if>
<c:if test="${empty requestScope.lstComment }">
	<!-- 跳转到 ShowEmpsServlet拉去数据 -->
	<script>window.location="/TFG/ShowCommentServlet"; </script>
</c:if>
	<!-- Prompt IE 6 users to install Chrome Frame -->
	<!--[if lt IE 7]><p class="message red-gradient simpler">Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->

	<!-- Title bar -->
	

	<!-- Button to open/hide menu -->
	<a href="#" id="open-menu"><span>Menu</span></a>

	<!-- Button to open/hide shortcuts -->
	<a href="#" id="open-shortcuts"><span class="icon-thumbs"></span></a>

		<!-- Main content -->
	<section role="main" id="main" >

		<noscript class="message black-gradient simpler">Your browser does not support JavaScript! Some features won't work as expected...</noscript>
                 <div class="with-padding" >
                 <div class="columns" style="background-image:url('');">
                         

				<div class="new-row-mobile-portrait two-columns three-columns-tablet six-columns-mobile-landscape twelve-columns-mobile-portrait"><div class="with-padding" >
					<img src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3271526966,1483837581&fm=58" width="150" height="150" >
				</div></div>

				<div class="new-row-mobile three-columns five-columns-tablet twelve-columns-mobile"><div  class="with-padding">                    <br></br>
					<h1>南开大学</h1>
                                         <h4>允公允能，日新月异</h4>
				</div></div>

				<div class="new-row-tablet new-row-mobile five-columns twelve-columns-tablet"><div class="with-padding" >                                 
                                        <br></br><br></br>
					<span class="button-group">
						<a href="javascript:void(0)" class="button big">签到</a>
						<a href="javascript:void(0)" class="button big">发帖</a>
					</span>
				</div></div>
                         </div>
			</div>

		<div class="with-padding"  >

			<div class="left-column-200px">

				<div class="left-column">
					<div class="boxed">
						<p>The template includes a complete and powerful tabs functionality:</p>
						<ul class="bullet-list">
							<li>3 different styles: <b>top</b>, <b>side</b> and <b>swipe</b></li>
							<li>Top and side styles convert to swipe style on mobile screens to match smartphones design guidelines - <strong>Try resizing your browser!</strong></li>
							<li>Tabs can be <b>nested</b> as deep as wanted</li>
							<li>Tabs <b>height</b> can be automatically <b>equalized</b></li>
							<li>
								<p>Robust plugin design, automatically handle <b>adding</b> or <b>removing</b> tabs, also provide corresponding methods:</p>
								<p class="button-height">
									<button type="button" class="button full-width" onclick="addTab()">Add tab</button><br>
									<button type="button" class="button full-width" onclick="removeTabs()">Remove tabs</button>
								</p>
							</li>
						</ul>
					</div>
				</div>

				<div class="right-column">
					<h3 class="green underline">南开大学-->帖子名</h3>
                                       <form name="form1" method="post" action="">
       
                                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
                                      
                                      <tr>
                                      <td width="13%" align="center" align-right vertical-center>
                                             <img  src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3271526966,1483837581&fm=58" width="60" height="60" >                  
                                           <h5 align="center">发帖人</h5>
                                         <span class="button-group">
								<a href="#" class="button icon-extract with-tooltip" title="回复"></a>
					
								<a href="#" class="button icon-trash with-tooltip confirm" title="删除"></a>                </span>
					</td>
                                      <td width="87%">
                                       <div  class="">
                                      <p class="wrapped relative" style="height=200">
						<span class="ribbon tiny"><span class="ribbon-inner blue-gradient">Hey!</span></span>
						<font style="font-size: 10pt;"><font class="">这是一个富文本编辑器：选择</font></font><b style="font-size: 10pt;"><font><font class="">一些文本</font></font></b><font style=""><font class=""><span style="font-size: 10pt;">并单击</span><font size="6">按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮！tccgtcrb<span style="background-color: rgb(255, 0, 0);">r4gt54cg</span>y5rcgy <sup>y5gycv56cv</sup><sub>gtc</sub></font></font></font>
					</p>
                                          
   					</div>
					
                                          
                                      </td>
                                      </tr>
				       <tr>
					<td colspan="2">
                                     <h4 class="green underline" align="right">2015/21/2 89:k</h4>
					</td>
				    </tr>
                                      </table>

                                      </form>

				
                                        
                                         <form name="form1" method="post" action="">
       
                                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
                                      
                                      <tr>
                                      <td width="13%" align="center" align-right vertical-center>
                                             <img  src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3271526966,1483837581&fm=58" width="60" height="60" >                  
                                           <h5 align="center">发帖人</h5>
                                         <span class="button-group">
								<a href="#" class="button icon-extract with-tooltip" title="回复"></a>
					
								<a href="#" class="button icon-trash with-tooltip confirm" title="删除"></a>                </span>
					</td>
                                      <td width="87%">
                                       <div  class="">
                                      <p class="wrapped relative" style="height=200">
						<span class="ribbon tiny"><span class="ribbon-inner blue-gradient">Hey!</span></span>
						<font style="font-size: 10pt;"><font class="">这是一个富文本编辑器：选择</font></font><b style="font-size: 10pt;"><font><font class="">一些文本sjwjxsuqw</font></font></b><font style=""><font class=""><span style="font-size: 10pt;">并单击ewcewcwcvdcwcv</span><font size="6">按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮按钮wcewcwc！tccgtcrb<span style="background-color: rgb(255, 0, 0);">r4gt54cg</span>y5rcgy <sup>y5gycv56cv</sup><sub>gtc</sub></font></font>sahsiuhxajsixhqiuxhhsquixshu</font>
					</p>
                                          
   					</div>
					
                                          
                                      </td>
                                      </tr>
				       <tr>
					<td colspan="2">
                                     <h4 class="green underline" align="right">2015/21/2 89:k</h4>
					</td>
				    </tr>
                                      </table>

                                      </form>

     

				</div>

			</div>

		</div>

	</section>
	<!-- End main content -->

	<!-- Side tabs shortcuts -->
	<ul id="shortcuts" role="complementary" class="children-tooltip tooltip-right">
		<li><a href="./" class="shortcut-dashboard" title="首页">首页</a></li>
		<li><a href="inbox.html" class="shortcut-messages" title="消息">消息</a></li>
		<li class="current"><a href="agenda.html" class="shortcut-stats" title="学校主页">学校主页</a></li>
		<li><a href="tables.html" class="shortcut-contacts" title="Contacts">Contacts</a></li>
		<li><a href="explorer.html" class="shortcut-medias" title="Medias">Medias</a></li>
		<li><a href="sliders.html" class="shortcut-medias" title="Stats">Stats</a></li>
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
								<span class="ribbon tiny"><span class="ribbon-inner green-gradient">1</span></span>
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
								<span class="ribbon tiny"><span class="ribbon-inner green-gradient">2</span></span>
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
								<span class="ribbon tiny"><span class="ribbon-inner green-gradient">3</span></span>
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
								<span class="ribbon tiny"><span class="ribbon-inner green-gradient">4</span></span>
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
								<span class="ribbon tiny"><span class="ribbon-inner green-gradient">5</span></span>
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
								<span class="ribbon tiny"><span class="ribbon-inner green-gradient">2</span></span>
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


	
</body>
</html>