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
$options=$params->toObject();
$image_items_config = array(
	'output_width'  => $params->get('item_image_width'),
	'output_height' => $params->get('item_image_height'),
	'function'		=> $params->get('item_image_function'),
	'background'	=> $params->get('item_image_background')
);
$width_image = $options->item_image_width+11; 

if((int)$options->num_rows <= 0){
    $options->num_rows =1;
}
if((int)$options->num_cols <= 0){
    $options->num_cols =1;
}
$width_module = $width_image*$options->num_cols-11;
$count_item = count($items);
$item_of_page = $options->num_rows * $options->num_cols;
if($count_item < $item_of_page){
   $item_of_page == $count_item;
}//var_dump($item_of_page); die("abc");
$num_page = ceil($count_item/$item_of_page); 
$padding_page_width = ($num_page*12)-3;
$padding_page_left = ($width_module - $padding_page_width)/2;
 ?>
<?php echo '#'.$uniqued; ?>{
    width:<?php echo $width_module;?>px;
}
<?php echo '#'.$uniqued; ?> .extraslider-heading{
    width:<?php echo $width_module;?>px;
}
<?php echo '#'.$uniqued; ?> .extraslider-items{
    width:<?php echo $width_module;?>px;
}
<?php echo '#'.$uniqued; ?> .page{
    width:<?php echo $width_module;?>px;
}
<?php echo '#'.$uniqued; ?> .page .line{
    width:<?php  echo $width_module;?>px;
}
<?php echo '#'.$uniqued; ?> .page .line .item-wrapper{
    width:<?php echo $options->item_image_width;?>px;
}
<?php echo '#'.$uniqued; ?> .page .line .item-wrapper .item-image{
    width:<?php echo $options->item_image_width;?>px;
    height:<?php echo $options->item_image_height;?>px;
    overflow:hidden
}
<?php echo '#'.$uniqued; ?> .page .line .item-wrapper .item-info.item-info-spotlight .opacity{
    width:<?php echo $options->item_image_width;?>px;
}
<?php echo '#'.$uniqued; ?> .extraslider-control-under{
    width:<?php echo $width_module;?>px;
}
<?php echo '#'.$uniqued; ?> .extraslider-control-under .page-paging{
    padding:10px 0 0 <?php echo $padding_page_left;?>px;
}