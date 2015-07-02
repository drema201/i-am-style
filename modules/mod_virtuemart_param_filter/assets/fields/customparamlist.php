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
class JElementCustomparamlist extends JElement {

    /**
     * Element name
     * @access	protected
     * @var		string
     */
    var $_name = 'customparamlist';

    function fetchElement($name, $value, &$node, $control_name) {
	    $db =& JFactory::getDBO();
		$q = 'SELECT `virtuemart_custom_id`, `custom_title` FROM `#__virtuemart_customs` WHERE `custom_element` = "param"';
		$virtuemart_custom_id = JRequest::getVar('virtuemart_custom_id',0);
		$virtuemart_custom_id = is_array($virtuemart_custom_id) ? end($virtuemart_custom_id) : $virtuemart_custom_id;
		if($virtuemart_custom_id){
			$q .= ' AND `virtuemart_custom_id` != '.$virtuemart_custom_id;
		}
        $db->setQuery($q);
		$list = $db->loadObjectList();
        $class = '';
        $html = '<select class="inputbox" name="' . $name . '">';
        $html .= '<option value="0"></option>';
		foreach($list as &$v){
			$selected = $value == $v->virtuemart_custom_id ? ' selected="selected"' : '';
			$html .= '<option value="'.$v->virtuemart_custom_id.'"'.$selected.'>'.$v->custom_title.'</option>';
		}
        $html .="</select>";
		$parent = $this->get('_parent');
		$parent = $parent->getParamByName('data');
		$parent->ordering = isset($parent->ordering) ? $parent->ordering : 0;
		$html .= '<input type="hidden" value="'.$parent->ordering.'" name="ordering" />';
        return $html;
	}

}