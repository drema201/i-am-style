/* JCE Editor - 2.4beta6 | 24 April 2014 | http://www.joomlacontenteditor.net | Copyright (C) 2006 - 2014 Ryan Demmer. All rights reserved | GNU/GPL Version 2 or later - http://www.gnu.org/licenses/gpl-2.0.html */
(function($){$.jce.Preferences={init:function(){var self=this;$('#tabs, #tabs-access-permissions').tabs({beforeActivate:function(event,ui){$(ui.oldTab).removeClass('active');$(ui.newTab).addClass('active');}}).find('ul.nav.nav-tabs > li:first-child').addClass('active');$('.hasTip').removeClass('hasTip');$('input[name="task"]').val('apply');$('#apply, #save').button().click(function(){if($(this).attr('id')=='save'){$('input[name="task"]').val('save');}
$('form').submit();});$('#cancel').button().click(function(e){var win=window.parent;if(typeof win.SqueezeBox!=='undefined'){return win.SqueezeBox.close();}else{this.close();}
e.preventDefault();});},close:function(){this.init();window.setTimeout(function(){window.parent.document.location.href="index.php?option=com_jce&view=cpanel";},1000);}};})(jQuery);