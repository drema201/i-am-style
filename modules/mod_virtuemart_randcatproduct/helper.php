<?php
defined ('_JEXEC') or  die('Direct Access to ' . basename (__FILE__) . ' is not allowed.');
/*
 * Module Helper
 * @package VirtueMart
 * @copyright (C) 2013 - Andrew Zahalski
 * www.pusk.ws
 */
	if (!class_exists ('VmConfig')) {
		require(JPATH_ADMINISTRATOR . DS . 'components' . DS . 'com_virtuemart' . DS . 'helpers' . DS . 'config.php');
	}
	VmConfig::loadConfig ();
	// Load the language file of com_virtuemart.
	JFactory::getLanguage ()->load ('com_virtuemart');
	if (!class_exists ('calculationHelper')) {
		require(JPATH_ADMINISTRATOR . DS . 'components' . DS . 'com_virtuemart' . DS . 'helpers' . DS . 'calculationh.php');
	}
	if (!class_exists ('CurrencyDisplay')) {
		require(JPATH_ADMINISTRATOR . DS . 'components' . DS . 'com_virtuemart' . DS . 'helpers' . DS . 'currencydisplay.php');
	}
	if (!class_exists ('VirtueMartModelVendor')) {
		require(JPATH_ADMINISTRATOR . DS . 'components' . DS . 'com_virtuemart' . DS . 'models' . DS . 'vendor.php');
	}
	if (!class_exists ('VmImage')) {
		require(JPATH_ADMINISTRATOR . DS . 'components' . DS . 'com_virtuemart' . DS . 'helpers' . DS . 'image.php');
	}
	if (!class_exists ('shopFunctionsF')) {
		require(JPATH_SITE . DS . 'components' . DS . 'com_virtuemart' . DS . 'helpers' . DS . 'shopfunctionsf.php');
	}
	if (!class_exists ('calculationHelper')) {
		require(JPATH_COMPONENT_SITE . DS . 'helpers' . DS . 'cart.php');
	}
	if (!class_exists ('VirtueMartModelProduct')) {
		JLoader::import ('product', JPATH_ADMINISTRATOR . DS . 'components' . DS . 'com_virtuemart' . DS . 'models');
	}

class mod_virtuemart_product {

	function addtocart ($product) {

		if (!VmConfig::get ('use_as_catalog', 0)) {
			$stockhandle = VmConfig::get ('stockhandle', 'none');
			if (($stockhandle == 'disableit' or $stockhandle == 'disableadd') and ($product->product_in_stock - $product->product_ordered) < 1) {
				$button_lbl = JText::_ ('COM_VIRTUEMART_CART_NOTIFY');
				$button_cls = 'notify-button';
				$button_name = 'notifycustomer';
				?>
				<div style="display:inline-block;">
			<a href="<?php echo JRoute::_ ('index.php?option=com_virtuemart&view=productdetails&layout=notify&virtuemart_product_id=' . $product->virtuemart_product_id); ?>" class="notify"><?php echo JText::_ ('COM_VIRTUEMART_CART_NOTIFY') ?></a>
				</div>
			<?php
			} else {
				?>
			<div class="addtocart-area">

				<form method="post" class="product" action="index.php">
					<?php
					// Product custom_fields
					if (!empty($product->customfieldsCart)) {
						?>
						<div class="product-fields">
							<?php foreach ($product->customfieldsCart as $field) { ?>

							<div style="display:inline-block;" class="product-field product-field-type-<?php echo $field->field_type ?>">
								<span class="product-fields-title"><b><?php echo $field->custom_title ?></b></span>
								<?php echo JHTML::tooltip ($field->custom_tip, $field->custom_title, 'tooltip.png'); ?>
								<span class="product-field-display"><?php echo $field->display ?></span>
								<span class="product-field-desc"><?php echo $field->custom_field_desc ?></span>
							</div>

							<?php } ?>
						</div>
						<?php } ?>

					<div class="addtocart-bar">

						<?php
						// Display the quantity box
						?>
						<!-- <label for="quantity<?php echo $product->virtuemart_product_id;?>" class="quantity_box"><?php echo JText::_ ('COM_VIRTUEMART_CART_QUANTITY'); ?>: </label> -->
			<span class="quantity-box">
			<input type="text" class="quantity-input" name="quantity[]" value="1"/>
			</span>
			<span class="quantity-controls">
			<input type="button" class="quantity-controls quantity-plus"/>
			<input type="button" class="quantity-controls quantity-minus"/>
			</span>


						<?php
						// Add the button
						$button_lbl = JText::_ ('COM_VIRTUEMART_CART_ADD_TO');
						$button_cls = ''; //$button_cls = 'addtocart_button';


						?>
						<?php // Display the add to cart button ?>
						<span class="addtocart-button">
							<?php echo shopFunctionsF::getAddToCartButton($product->orderable); ?>
			</span>

						<div class="clear"></div>
					</div>
<div>
					<input type="hidden" class="pname" value="<?php echo $product->product_name ?>"/>
					<input type="hidden" name="option" value="com_virtuemart"/>
					<input type="hidden" name="view" value="cart"/>
					<noscript><div><input type="hidden" name="task" value="add"/></div></noscript>
					<input type="hidden" name="virtuemart_product_id[]" value="<?php echo $product->virtuemart_product_id ?>"/>
					<input type="hidden" name="virtuemart_category_id[]" value="<?php echo $product->virtuemart_category_id ?>"/>
                    </div>
				</form>
				<div class="clear"></div>
			</div>
			<?php
			}
		}
	}
	
	function productattrmanufacturerid($product_id) {
		// �������� ������ ���� ������.
        $db = JFactory::getDBO();
 
        // ������������ SQL ������.
        $query = $db->getQuery(true);
		$query = "SELECT virtuemart_manufacturer_id FROM #__virtuemart_product_manufacturers WHERE virtuemart_product_id='".$product_id."'";
        $db->setQuery($query);
        $man = $db->loadResult();
		if($man>0){return $man;}else{return false;}
	
	}
	
	function fulladdProductToRecent($productId, $maxSize=3){
		$session = JFactory::getSession();
		$products_ids = $session->get('fullvmlastvisitedproductids', array(), 'vm');
		$key = array_search($productId,$products_ids);
		if($key!==FALSE){
			unset($products_ids[$key]);
		}
		array_unshift($products_ids,$productId);
		$products_ids = array_unique($products_ids);

		if(count($products_ids)>$maxSize){
			array_splice($products_ids,$maxSize);
		}

		return $session->set('fullvmlastvisitedproductids', $products_ids, 'vm');
	}
	
	function getfulladdProductToRecent() {
	$rSession = JFactory::getSession();
	$ids = $rSession->get('fullvmlastvisitedproductids', array(), 'vm');
	return $ids;
	}
	
}
