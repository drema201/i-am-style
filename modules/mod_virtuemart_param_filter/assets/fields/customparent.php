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
jimport('joomla.form.formfield');

/**
 * Supports a modal product picker.
 *
 *
 */
class JFormFieldCustomparent extends JFormField
{ 
	protected $type = 'customparent';

	/**
	 * Method to get the field input markup.
	 *
         * @author      Valerie Cartan Isaksen
		 * @edit		Usov Dima
	 * @return	string	The field input markup.
	 * @since	1.6
	 */
  
     function getInput() {
        $key = ($this->element['key_field'] ? $this->element['key_field'] : 'value');
        $val = ($this->element['value_field'] ? $this->element['value_field'] : $this->name);
		$attr = '';
		$attr  = $this->element['multiple'] ? ' multiple="'.$this->element['multiple'].'"' : '';
		$attr .= $this->element['size'] ? ' size="'.$this->element['size'].'"' : '';
		
        JPlugin::loadLanguage('com_virtuemart', JPATH_ADMINISTRATOR);
		if(empty($this->value)) $this->value = array();
        $db =& JFactory::getDBO();
		$q = 'SELECT `virtuemart_custom_id`, `custom_title` FROM `#__virtuemart_customs` WHERE `field_type` = "P"';
        $db->setQuery($q);
		$list = $db->loadObjectList();
        $class = '';
        $html = '<select class="inputbox" name="' . $this->name . '"'.$attr.'>';
		if(!is_array($this->value)){
			$this->value = array($this->value);
		}
		$this->value = array_diff($this->value,array(''));
		$null_selected = empty($this->value) ? ' selected="selected"' : '';
        $html .= '<option value=""'.$null_selected.'>- none -</option>';
        foreach($list as &$v){
			$selected = in_array($v->virtuemart_custom_id,$this->value) ? ' selected="selected"' : '';
			$html .= '<option value="'.$v->virtuemart_custom_id.'"'.$selected.'>'.$v->custom_title.'</option>';
		}
        $html .="</select>";
        return $html;
    }
}