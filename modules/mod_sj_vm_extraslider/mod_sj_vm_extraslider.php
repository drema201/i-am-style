<?php
/**
 * @package Sj Vm Extra Slider
 * @version 2.5
 * @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
 * @copyright (c) 2012 YouTech Company. All Rights Reserved.
 * @author YouTech Company http://www.smartaddons.com
 * 
 */
defined('_JEXEC') or die;
defined('_YTOOLS') or include_once 'core' . DS . 'sjimport.php';

// set current module for working
YTools::setModule($module);
// import jQuery
if (!defined('SMART_JQUERY') && (int)$params->get('include_jquery', '1')){
	YTools::script('jquery-1.5.2.min.js');
	define('SMART_JQUERY', 1);
}

if (!defined('SMART_NOCONFLICT')){
	YTools::script('jsmart.noconflict.js');
	define('SMART_NOCONFLICT', 1);
}
YTools::script('jquery.carouFredSel.js');
YTools::stylesheet('style-font-color.css');
YTools::stylesheet('style.css');

include_once dirname(__FILE__).'/core/helper.php';

$layout_name = $params->get('theme', 'basic');
$cacheid = md5(serialize(array ($layout_name, $module->module)));
$cacheparams = new stdClass;
$cacheparams->cachemode = 'id';
$cacheparams->class = 'sj_vm_extraslider_helper';
$cacheparams->method = 'getList';
$cacheparams->methodparams =array($params, $module);
$cacheparams->modeparams = $cacheid;
$items_view_params = extraslider_generate_keys();
$items = JModuleHelper::moduleCache ($module, $params, $cacheparams);
require JModuleHelper::getLayoutPath( $module->module, $layout_name );
?>