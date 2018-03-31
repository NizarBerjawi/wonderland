<div class="box featured">
  <div class="box-heading"><h3><?php echo $heading_title; ?></h3></div>
  <div class="box-content">
	<div class="box-product">
  <?php foreach ($products as $product) { ?>
  <div class="slider-item">
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
				<button type="button" class="addtocart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></button>
				<button class="wishlist_button" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
				<button class="compare_button" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
			</div>
	  	</div>
  	</div>
	</div>
</div>


  <?php } ?>
</div>
</div>

</div>
<span class="featured_default_width" style="display:none; visibility:hidden"></span>

<script type="text/javascript">
$(document).ready(function(){
	$('.featured .box-product').bxSlider({
		mode: 'vertical',
		minSlides:3,
		slideMargin:10,
		slideWidth:261
	 });
});
</script>
