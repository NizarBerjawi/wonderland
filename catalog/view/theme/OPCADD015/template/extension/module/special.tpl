<div class="box special">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
	<?php
		$sliderFor = 5;
		$productCount = sizeof($products);
	?>
	<?php if ($productCount >= $sliderFor): ?>
		<div class="customNavigation">
			<a class="fa prev fa-arrow-left">&nbsp;</a>
			<a class="fa next fa-arrow-right">&nbsp;</a>
		</div>
	<?php endif; ?>

	<div class="box-product <?php if ($productCount >= $sliderFor){?>product-carousel<?php }else{?>productbox-grid<?php }?>" id="<?php if ($productCount >= $sliderFor){?>special-carousel<?php }else{?>special-grid<?php }?>">
  <?php foreach ($products as $product) { ?>
  <div class="<?php if ($productCount >= $sliderFor){?>slider-item<?php }else{?>product-items<?php }?>">
    <div class="product-block product-thumb transition">
	  <div class="product-block-inner">

		<div class="image">
			<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
	  <?php if (!$product['special']) { ?>
			 <?php } else { ?>
			<!-- <span class="saleicon sale">Sale</span>          -->
			 <?php } ?>
		</div>
      	<div class="product-details">

		<div class="caption">
 			 <h5><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h5>
			 <?php if ($product['rating']) { ?>
			<div class="rating">
			  <?php for ($i = 1; $i <= 5; $i++) { ?>
			  <?php if ($product['rating'] < $i) { ?>
			  <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i></span>
			  <?php } else { ?>
			  <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star fa-stack-1x"></i></span>
			  <?php } ?>
			  <?php } ?>
			</div>
			<?php } ?>
			<?php /*?><p class="desc"><?php echo $product['description']; ?></p><?php */?>

			<?php if ($product['price']) { ?>
			<p class="price">
			  <?php if (!$product['special']) { ?>
			  <?php echo $product['price']; ?>
			  <?php } else { ?>
			  <span class="price-old"><?php echo $product['price']; ?></span><span class="price-new"><?php echo $product['special']; ?></span>
			  <?php } ?>
			  <?php if ($product['tax']) { ?>
			  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
			  <?php } ?>
			</p>
			<?php } ?>
        </div>
 	    <div class="button-group">
        	<button onclick="cart.add('47');" class="addtocart" type="button">Add to Cart</button>
        	<button class="compare_button" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"></button>
        	<button class="wishlist_button" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></button>

        	 <div class="quickview" type="button" title="Quick View" data-toggle="tooltip"><a href="<?php echo $product['quick']; ?>"  ></a></div>
        </div>
	  </div>
  	</div>
	</div>
</div>

  <?php } ?>
</div>
  </div>
</div>
<span class="special_default_width" style="display:none; visibility:hidden"></span>
