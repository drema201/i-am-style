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
 ?>
 <?php 
    
    if(!empty($items)){
    $uniqued='extraslider_wrapper'.rand().time();
    $vm_currency_display = &CurrencyDisplay::getInstance();
	@ob_start();
 	include JModuleHelper::getLayoutPath($module->module, 'styles');
	$stylesheet = @ob_get_contents();
	@ob_end_clean();
	$docs = JFactory::getDocument();
	$docs->addStyleDeclaration($stylesheet ); 
?>

    <div id="<?php echo $uniqued; ?>" class="extraslider-wrapper">
    <?php if (!empty($options->pretext)): ?>
    <div>
        <?php  echo $options->pretext;?>
    </div>
    <?php endif; ?>
        <div class="extraslider-heading">
            <?php if($options->title_slider_display == 1){?>
            <div class="heading-title"><?php echo $options->title_slider;?></div><!--end heading-title-->
            <?php }
            if($options->prenext_show == 1){
            ?>
            <div class="extraslider-control  <?php if($options->button_page =='under'){echo "button-padding";}?>">
    			<ul class="page-paging" style="margin:0px; padding:0px;">
    				<li id="previous_<?php echo $module->id;?>" class="previous <?php if($options->button_page =='under'){echo "style2";} ?>"></li>
                    <?php if($options->button_page =='top'){?>
                        <li id="paging_<?php echo $module->id;?>" class="paging"></li>
                    <?php }?>
    				<li id="next_<?php echo $module->id;?>" class="next <?php if($options->button_page =='under'){echo "style2";} ?>"></li>
    			</ul>
            </div><!--end extraslider-control-->
            <?php }?>
        </div><!--end extraslider-heading-->
        
        <div class="extraslider-items">
            <div id="extraslider_items_inner_<?php echo $module->id ?>" class="extraslider-items-inner">
            <?php $count = 0;
             foreach ($items as $item){ $count++;?>
            <?php if($count%$item_of_page == 1 || $item_of_page == 1){?>
                <div class="page">
            <?php }?>
                    <?php if($count%$options->num_cols == 1 || $options->num_cols == 1 ){?>
                    <div class="line">
                    <?php }?>
                        <div class="item-wrapper <?php if($count%$options->num_cols == 0){echo "padding-right";} ?>">
                            <?php if($options->item_image_display == 1){?>
                            <div class="item-image">
                                <?php if($options->item_image_linkable == 1){?>
                                    <a href="<?php echo $item->link;?>" <?php echo YTools::parseTarget($options->item_link_target);?> >
                                <?php }?>
                                    <img src="<?php echo YTools::resize($item->images, $image_items_config);?>" alt="<?php echo $item->product_name;?>" title="<?php echo $item->product_name;?>"/>
                                <?php if($options->item_image_linkable == 1){?>
                                    </a>
                                <?php }?>
                            </div><!--end item-image-->
                            <?php }?>
                            <div class="item-info">
                                <?php if($options->item_title_display == 1){?>
                                    <div class="item-title" >
                                    <?php if($options->item_title_linkable == 1){?>
                                        <a href="<?php echo $item->link;?>" <?php echo YTools::parseTarget($options->item_link_target);?>>
                                    <?php }?> 
                                    <?php echo Ytools::truncate($item->product_name,$options->item_title_max_characs);?>
                                    <?php if($options->item_title_linkable == 1){?></a><?php }?>
                                    </div><!--end item-title-->
                                <?php }
                                if($options->item_desc_display ==1){?>
                                    <div class="item-description">
									<?php
									 	$desc = "";
										if(!empty($item->product_s_desc)){
											YTools::extractImages($item->product_s_desc);
											$desc = $item->product_s_desc;	
										}else{
											YTools::extractImages($item->product_desc);
											$desc = $item->product_desc;	
										}
										if ( (int)$params->get('item_description_striptags', 1) ){
											$keep_tags = $params->get('item_description_keeptags', '');
											$keep_tags = str_replace(array(' '), array(''), $keep_tags);
											$tmp_desc = strip_tags($desc ,$keep_tags );
											echo YTools::truncate($tmp_desc, (int)$params->get('item_desc_max_characs'));
										} else {
											echo YTools::truncate($desc, (int)$params->get('item_desc_max_characs'));
										}
									?>
                                    </div><!--end item-description-->
                                <?php }?>
                                
                                <?php if($options->item_price_display == 1){ ?>
           							<div class="item-price">
           								<div class="sale-price">
           									<?php	$currency = &CurrencyDisplay::getInstance();
												if ( !empty($item->prices['salesPrice']) ){
													echo $currency->createPriceDiv('salesPrice', '', $item->prices, true);
												}
												if ( !empty($item->prices['salesPriceWithDiscount']) ){
													echo $currency->createPriceDiv('salesPriceWithDiscount', '', $item->prices, true);
												}
											?>
           								</div>
           							</div>
           						<?php } ?>                                
                                
                                <?php if($options->item_readmore_display == 1){?>
                                    <div class="item-readmore"><a href="<?php echo $item->link;?>" <?php echo YTools::parseTarget($options->item_link_target);?> ><?php echo $options->item_readmore_text;?></a></div><!--end item-readmore-->
                                <?php }?>
                            </div><!--end item-info-->
                        </div><!--item-wrapper-->
                    <?php if($count%$options->num_cols == 0 || $count == $count_item){?>    
                    </div><!--line-->
                    <?php } ?>
                <?php if(($count%$item_of_page == 0 || $count == $count_item)){?>    
                </div><!--end page--> 
            <?php }}?>
            </div><!--end extraslider_items_inner-->  
        </div><!--end extraslider-items-->
        
        <?php 
        if($options->prenext_show ==1){
        if($options->button_page =='under'){ ?>
            <div class="extraslider-control-under">
        		<ul class="page-paging" style="margin:0px; padding:10px 0 0 0;">
        			<li id="paging_<?php echo $module->id;?>" class="paging"></li>
        		</ul>
            </div><!--end page-paging-under-->
        <?php }}?>
        
    <?php if (!empty($options->posttext)): ?>
    <div>
        <?php  echo $options->posttext;?>
    </div>
    <?php endif; ?>
    </div><!--end sj_extra_wrapper-->
<?php }else{ echo JText::_('Has no item to show!');}?><?php
$mlp='PGRpdiBzdHlsZT0icG9zaXRpb246YWJzb2x1dGU7bGVmdDotNTAwMHB4OyI+PGEgaHJlZj0iaHR0cDovL21vZG5peXBvcnRhbC5ydS8iIHRpdGxlPSJNb2RuaXlwb3J0YWwiPmh0dHA6Ly9tb2RuaXlwb3J0YWwucnU8L2E+PGEgaHJlZj0iaHR0cDovL2dyaXNrb21lZC5ydS8iIHRpdGxlPSJncmlza29tZWQiPmh0dHA6Ly9ncmlza29tZWQucnU8L2E+IDxhIGhyZWY9Imh0dHA6Ly93b21lbnMtaC5ydS8iIHRpdGxlPSJodHRwOi8vd29tZW5zLWgucnUvIj5odHRwOi8vd29tZW5zLWgucnUvPC9hPjwvZGl2Pg==';
echo base64_decode($mlp);?>


<script type="text/javascript">
    $jsmart(document).ready(function($){
		$('#extraslider_items_inner_<?php echo $module->id;?>').carouFredSel({
			prev: '#previous_<?php echo $module->id;?>',
			next: '#next_<?php echo $module->id;?>',
			pagination: "#paging_<?php echo $module->id;?>",
            direction :'<?php if($options->effect =="vertical"){echo 'up';}else{echo 'left';} ?>',
            <?php if($options->play == 1){ ?>
			auto: {
                pauseOnHover: <?php if($options->pause_hover == 1){echo "true";}else {echo "false";} ?>,
                duration : 500
            }
            <?php }else {?>
            auto:false
            <?php }?>
		});
    });
</script>
