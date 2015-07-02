<?php defined('_JEXEC') or die('Restricted access');


// Separator
$verticalseparator = " vertical-separator";

foreach ($this->products as $type => $productList ) {
// Calculating Products Per Row
$products_per_row = VmConfig::get ( 'homepage_products_per_row', 3 ) ;
$cellwidth = ' width'.floor ( 100 / $products_per_row );

// Category and Columns Counter
$col = 1;
$nb = 1;

$productTitle = JText::_('COM_VIRTUEMART_'.$type.'_PRODUCT');

?>

<div class="<?php echo $type ?>-view">

	<h4><?php echo $productTitle ?></h4>

<?php // Start the Output

foreach ( $productList as $product ) {

	// Show the horizontal seperator
	if ($col == 1 && $nb > $products_per_row) { ?>
	<div class="horizontal-separator"></div>
	<?php }

	// this is an indicator wether a row needs to be opened or not
	if ($col == 1) { ?>
	<div class="row">
	<?php }

	// Show the vertical seperator
	if ($nb == $products_per_row or $nb % $products_per_row == 0) {
		$show_vertical_separator = ' ';
	} else {
		$show_vertical_separator = $verticalseparator;
	}

		// Show Products ?>
		<div class="product floatleft<?php echo $cellwidth . $show_vertical_separator ?>">
			<div class="spacer">

				<div>
					<?php // Product Image
					if ($product->images) {
						//echo JHTML::_ ( 'link', JRoute::_ ( 'index.php?option=com_virtuemart&view=productdetails&virtuemart_product_id=' . $product->virtuemart_product_id . '&virtuemart_category_id=' . $product->virtuemart_category_id, FALSE ), $product->images[0]->displayMediaThumb( 'class="featuredProductImage"',true,'class="modal"' ) );
						echo   $product->images[0]->displayMediaThumb( 'class="featuredProductImage"',true,'class="modal"' ) ;
					}
					?>
					<?php // Код вывода ярлыка
					   if (!empty($product->customfields)) { //проверяем, есть ли дополнительные поля у текущего товара ?>
					   <?php foreach ($product->customfields as $field){ // если поля есть, просматриваем все в поисках поля ярлыка
					   if($field->layout_pos == 'product-label'){ // ищем поля ярлыка через позицию ?>	
					   <div  class="category-product-label"><?php echo $field->display; //выводим ярлык ?>
					   </div>
					<?php }}} ?>
				</div>
				<div class="clear"></div>
				<h3>
					<?php // Product Name
						echo JHTML::link ( JRoute::_ ( 'index.php?option=com_virtuemart&view=productdetails&virtuemart_product_id=' . $product->virtuemart_product_id . '&virtuemart_category_id=' . $product->virtuemart_category_id, FALSE ), $product->product_name, array ('title' => $product->product_name ) ); 
					?>
				</h3>
				<div class="clear"></div>
				<?php // Product Short Description
					if (!empty($product->product_s_desc)) {
					?>
					<div class="product_s_desc">
						<?php echo shopFunctionsF::limitStringByWord ($product->product_s_desc, 40, '...') ?>
					</div>
				<?php } ?>
				<div class="clear"></div>
				<div class="product_border">
					<div class="addtocart-area">
						<form method="post" class="product" action="index.php" id="addtocartproduct<?php echo $product->virtuemart_product_id ?>">
							<div class="addtocart-bar">
								<?php // Display the quantity box ?>
								<!-- <label for="quantity<?php echo $product->virtuemart_product_id;?>" class="quantity_box"><?php echo JText::_('COM_VIRTUEMART_CART_QUANTITY'); ?>: </label> -->
								<span class="quantity-box">
									<input  type="text" class="quantity-input" name="quantity[]" value="1" />
								</span>
								<span class="quantity-controls">
									<input type="button" class="quantity-controls quantity-plus" value="+"  />
									<input type="button" class="quantity-controls quantity-minus"  value="-" />
								</span>
								<?php // Display the quantity box END ?>
					 
								<?php // Add the button
								$button_lbl = JText::_('COM_VIRTUEMART_CART_ADD_TO');
								$button_cls = ''; //$button_cls = 'addtocart_button';
								if (VmConfig::get('check_stock') == '1' && !$product->product_in_stock) {
									$button_lbl = JText::_('COM_VIRTUEMART_CART_NOTIFY');
									$button_cls = 'notify-button';
								} ?>

								<?php // Display the add to cart button ?>
								<span class="addtocart-button">
									<input type="submit" name="addtocart"  class="addtocart-button" value="<?php echo $button_lbl ?>" title="<?php echo $button_lbl ?>" />
								</span>
							</div>
					 
							<?php // Display the add to cart button END ?>
							<input type="hidden" class="pname" value="<?php echo $product->product_name ?>">
							<input type="hidden" name="option" value="com_virtuemart" />
							<input type="hidden" name="view" value="cart" />
							<noscript><input type="hidden" name="task" value="add" /></noscript>
							<input type="hidden" name="virtuemart_product_id[]" value="<?php echo $product->virtuemart_product_id ?>" />
							<?php /** @todo Handle the manufacturer view */ ?>
							<input type="hidden" name="virtuemart_manufacturer_id" value="<?php echo $product->virtuemart_manufacturer_id ?>" />
							<input type="hidden" name="virtuemart_category_id[]" value="<?php echo $product->virtuemart_category_id ?>" />
						</form>
					</div>
					<div class="product-price">
						<?php
						if (VmConfig::get ( 'show_prices' ) == '1') {
						//				if( $featProduct->product_unit && VmConfig::get('vm_price_show_packaging_pricelabel')) {
						//						echo "<strong>". JText::_('COM_VIRTUEMART_CART_PRICE_PER_UNIT').' ('.$featProduct->product_unit."):</strong>";
						//					} else echo "<strong>". JText::_('COM_VIRTUEMART_CART_PRICE'). ": </strong>";

						if ($this->showBasePrice) {
							echo $this->currency->createPriceDiv( 'basePrice', 'COM_VIRTUEMART_PRODUCT_BASEPRICE', $product->prices );
							echo $this->currency->createPriceDiv( 'basePriceVariant', 'COM_VIRTUEMART_PRODUCT_BASEPRICE_VARIANT', $product->prices );
						}
						echo $this->currency->createPriceDiv( 'variantModification', 'COM_VIRTUEMART_PRODUCT_VARIANT_MOD', $product->prices );
						if (round($product->prices['basePriceWithTax'],$this->currency->_priceConfig['salesPrice'][1]) != $product->prices['salesPrice']) {
							echo '<div class="price-crossed">' . $this->currency->createPriceDiv( 'basePriceWithTax', 'COM_VIRTUEMART_PRODUCT_BASEPRICE_WITHTAX', $product->prices ) . "</div>";
						}
						if (round($product->prices['salesPriceWithDiscount'],$this->currency->_priceConfig['salesPrice'][1]) != $product->prices['salesPrice']) {
							echo $this->currency->createPriceDiv( 'salesPriceWithDiscount', 'COM_VIRTUEMART_PRODUCT_SALESPRICE_WITH_DISCOUNT', $product->prices );
						}
						echo $this->currency->createPriceDiv( 'salesPrice', 'COM_VIRTUEMART_PRODUCT_SALESPRICE', $product->prices );
						if ($product->prices['discountedPriceWithoutTax'] != $product->prices['priceWithoutTax']) {
							echo $this->currency->createPriceDiv( 'discountedPriceWithoutTax', 'COM_VIRTUEMART_PRODUCT_SALESPRICE_WITHOUT_TAX', $product->prices );
						} else {
							echo $this->currency->createPriceDiv( 'priceWithoutTax', 'COM_VIRTUEMART_PRODUCT_SALESPRICE_WITHOUT_TAX', $product->prices );
						}
						echo $this->currency->createPriceDiv( 'discountAmount', 'COM_VIRTUEMART_PRODUCT_DISCOUNT_AMOUNT', $product->prices );
						echo $this->currency->createPriceDiv( 'taxAmount', 'COM_VIRTUEMART_PRODUCT_TAX_AMOUNT', $product->prices );
						} ?>
					</div>
				</div>
				<div class="clear"></div>
				<div>
					<?php // Product Details Button
						echo JHTML::link ( JRoute::_ ( 'index.php?option=com_virtuemart&view=productdetails&virtuemart_product_id=' . $product->virtuemart_product_id . '&virtuemart_category_id=' . $product->virtuemart_category_id , FALSE), JText::_ ( 'COM_VIRTUEMART_PRODUCT_DETAILS' ), array ('title' => $product->product_name, 'class' => 'product-details' ) );
					?>
				</div>
			</div>
		</div>
	<?php
	$nb ++;

	// Do we need to close the current row now?
	if ($col == $products_per_row) { ?>
	<div class="clear"></div>
	</div>
		<?php
		$col = 1;
	} else {
		$col ++;
	}
	
}
// Do we need a final closing row tag?
if ($col != 1) { ?>
	<div class="clear"></div>
	</div>
<?php
}
?>
</div>
<?php }
