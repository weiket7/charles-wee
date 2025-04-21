<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<link rel="shortcut icon" href="images/content/favicon.ico" />
<meta http-equiv="Content-Script-Type" content="text/javascript" /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="robots" content="index, follow" />
<meta name="keywords" content="" />
<meta name="title" content="" />
<meta name="description" content="" />
<title>Charles Wee Property</title>
<link rel="shortcut icon" href="./images/content/favicon.ico" />
<!-- ////////////////////////////////// -->
<!-- //      Start Stylesheets       // -->
<!-- ////////////////////////////////// -->
<link href="<?php echo Yii::app()->baseUrl?>/css/style.css" rel="stylesheet" type="text/css" />
<link href="<?php echo Yii::app()->baseUrl?>/css/inner.css" rel="stylesheet" type="text/css" />
<!-- ////////////////////////////////// -->
<!-- //      Javascript Files        // -->
<!-- ////////////////////////////////// -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="<?php echo Yii::app()->baseUrl?>/js/jquery.bxslider.min.js"></script>
<link href="<?php echo Yii::app()->baseUrl?>/css/jquery.bxslider.css" rel="stylesheet" />


<!--tablesorter http://mottie.github.io/tablesorter/docs/index.html-->
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl ?>/js/jquery.tablesorter.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->baseUrl ?>/css/theme.blue.css" />
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl ?>/js/jquery.tablesorter.widgets.js"></script>


<script type="text/javascript" src="<?php echo Yii::app()->baseUrl?>/js/cufon-yui.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl?>/js/PT_Sans_400.font.js"></script>
<script type="text/javascript">
	 Cufon.replace('h1') ('h2') ('h3') ('h4') ('h5') ('h6') ('.slider-button a') ('.slider-price') ('.button') ('#nav li a', {hover: true});
	 
</script>
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl?>/js/jquery.cycle.all.min.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl?>/js/hoverIntent.js"></script> 
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl?>/js/superfish.js"></script> 
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl?>/js/supersubs.js"></script> 

<script type="text/javascript" src="<?php echo Yii::app()->baseUrl?>/js/tiny_mce/tiny_mce.js"></script>


<!--[if IE 6]>
<script src="js/DD_belatedPNG.js"></script>
<script>
  DD_belatedPNG.fix('img');
</script>

<![endif]--> 
</head>
<body>

	<div id="top-container">
		<div class="centercolumn">
		<div id="header">
			<div id="logo">
			  <?php echo CHtml::link("<img src='".Yii::app()->baseUrl."/images/logo.png' style='height:30px'>", array('/site'))?>
			</div><!-- end #logo -->
			<div id="navigation">
				<ul id="nav" class="sf-menu">
					<li><?php echo CHtml::link('Home', array('/site'))?></li>
					<li><?php echo CHtml::link('About', array('/site/about'))?></li>
					<li><?php echo CHtml::link('Property', array('/property'))?></li>
					<li><?php echo CHtml::link('Portfolio', array('/portfolio'))?></li>
					<li><?php echo CHtml::link('Contact', array('/site/contact'))?></li>
				</ul>
			</div><!-- end #navigation-->
			<div class="clr"></div>
		</div><!-- end #header -->
		</div><!-- end #centercolumn -->
	</div><!-- end #top-container -->


	<?php echo $content; ?>


	<div id="bottom-container">
		<div class="centercolumn">
		
			<div class="clear"></div>
			<div id="copyright">
				Developed by <a href="http://www.kaces.sg" target="_blank">KACES</a> | 
				Template <a href="http://themeforest.net/item/light-house-clean-real-estate-html-template/full_screen_preview/178664" target="_blank">Light House</a>
			</div>
			
		 	<div class="clear"></div>
		</div><!-- end #centercolumn -->
	
	</div><!-- end #bottom-container -->
	<script type="text/javascript"> Cufon.now(); </script> <!-- to fix cufon problems in IE browser -->
</body>
</html>
