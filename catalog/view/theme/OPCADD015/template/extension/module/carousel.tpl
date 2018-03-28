<div id="carousel-<?php echo $module; ?>" class="banners-slider-carousel">
	<div class="customNavigation">
		<a class="btn prev manufacturer_prev">&nbsp;<i class=" fa fa-angle-left"></i></a>
		<a class="btn next manufacturer_next">&nbsp;<i class=" fa fa-angle-right"></i></a>
	</div>
  <div class="product-carousel" id="module-<?php echo $module; ?>-carousel">
    <?php foreach ($banners as $banner) { ?>
    	<div class="slider-item">
		<div class="product-block">
		<div class="product-block-inner">
			<?php if ($banner['link']) { ?>
   <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
		</div></div></div>
    <?php } ?>
  </div>
</div>
<span class="module_default_width" style="display:none; visibility:hidden"></span>