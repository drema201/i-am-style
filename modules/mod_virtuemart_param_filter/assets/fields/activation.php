<?php
defined('_JEXEC') or die('Restricted access');
/**
* Param: Virtuemart 2 customfield plugin
* Version: 2.0.6 (2013.08.13)
* Author: Usov Dima
* Copyright: Copyright (C) 2012-2013 usovdm
* License GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
* http://myext.eu
**/

$path = str_replace(DS.'administrator','',JPATH_BASE);
$path = empty($path)? DS : $path;
$site_key = substr(base64_encode(gzdeflate(md5('M'.$path.'E'))),0,16);
echo '<br/><a href="http://myext.eu/en/vmcustom-param-vip?hardware='.$site_key.'#key" title="Get activation key" target="_blank">Get activation key</a>';