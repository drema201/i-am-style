<?php
/**
 * @package		Joomla.Site
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/* The following line loads the MooTools JavaScript Library */
JHtml::_('behavior.framework', true);

/* The following line gets the application object for things like displaying the site name */
$app = JFactory::getApplication();
?>
<?php echo '<?'; ?>xml version="1.0" encoding="<?php echo $this->_charset ?>"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10">
		<!-- The following JDOC Head tag loads all the header and meta information from your site config and content. -->
		<jdoc:include type="head" />

		<!-- The following line loads the template CSS file located in the template folder. -->
		<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template.css" type="text/css" />
		<!--[if IE]>
			<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template_ie.css" type="text/css" />
		<![endif]-->

		<!-- The following line loads the template JavaScript file located in the template folder. It's blank by default. -->
		<script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/template.js"></script>
	</head>
	<body>
		<div id="min_height">
			<div id="header">
				<div class="wfix">
					<a class="logo" href="/" title="Интернет-магазин IMStyle">"Мода проходит, стиль остается"</a>
					<div class="head_left">
						<div class="head_left_1"><jdoc:include type="modules" name="head_left_1" style="none" /></div>
						<div class="head_left_2"><jdoc:include type="modules" name="head_left_2" style="none" /></div>
					</div>
					<div class="head_right">
						<div class="head_right_1"><div class="head_right_1_in"><jdoc:include type="modules" name="head_right_1" style="none" /></div></div>
						<div class="head_right_2"><jdoc:include type="modules" name="head_right_2" style="none" /></div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
			<?php if($this->countModules('slider')) : ?>
				<div id="slider">
	  	 			<div class="wfix"><jdoc:include type="modules" name="slider" style="none" /></div>
				</div>
				<div class="clear"></div>
			<?php endif; ?>
			<?php if($this->countModules('breadcrumbs')) : ?>
				<div id="top">
					<div class="wfix">
						<div class="breadcrumbs"><jdoc:include type="modules" name="breadcrumbs" style="none" /></div>
						<div class="search"><jdoc:include type="modules" name="search" style="none" /></div>
					</div>
				</div>
				<div class="clear"></div>
			<?php endif; ?>
			<div id="main">
				<div id="content"><jdoc:include type="component" /></div>
				<div class="clear"></div>
			<?php if($this->countModules('bottom')) : ?>
				<div id="bottom">
					<div class="wfix"><jdoc:include type="modules" name="bottom" style="xhtml" /></div>
				</div>
			<?php endif; ?>
				<script type="text/javascript">(function() {
					if (window.pluso)if (typeof window.pluso.start == "function") return;
					if (window.ifpluso==undefined) { window.ifpluso = 1;
					var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
					s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
					s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
					var h=d[g]('body')[0];
					h.appendChild(s);
				}})();</script>
				<div style="text-align: center; margin: 30px auto 0px auto;"><div class="pluso" data-background="transparent" data-options="medium,round,line,horizontal,counter,theme=04" data-services="vkontakte,odnoklassniki,facebook,twitter,google,moimir,tumblr,yandex,moikrug,bookmark"></div></div>
			</div>
			<div class="empty"></div>
		</div>
		<div class="clear"></div>
		<div id="footer">
			<div class="wfix">
				<div class="foot_left"><jdoc:include type="modules" name="foot_left" style="none" /></div>
				<div class="foot_right"><jdoc:include type="modules" name="foot_right" style="none" /></div>
			</div>
		</div>
		<jdoc:include type="modules" name="debug" />
	</body>
</html>
