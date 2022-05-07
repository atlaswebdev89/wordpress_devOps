 <div class="swiper-container swiper-slider swiper_style-4 swiper_height-2 swiper-pagination_creative" data-loop="false" data-autoplay="5000" data-simulate-touch="false" data-slide-effect="fade">
            <div class="swiper-wrapper">
            <?php $array  = carbon_get_theme_option('crb_slider_first');
                        foreach ($array as $item) { 
                            if(!$item['links']) {
                                        $item['links'] = "#about";
                                    }
                            ?>
                            <div class="swiper-slide bg-image-dark" data-slide-bg="<?php echo wp_get_attachment_image_url($item['photo'], 'full');?>">
                              <div class="overlay"></div>  
                                <div class="swiper-slide-caption">
                                    <div class="container">
                                        <h1 class="title" data-caption-animate="fadeInUpXSmall"><?php echo $item['title'];?></h1>
                                        <p class="caption" data-caption-animate="fadeInUpSmall"><?php echo $item['description'];?></p>
                                        <a class="button button-lg button-gradient button-ujarak" href="<?php echo $item['links'];?>"  data-caption-animate="fadeIn" data-caption-delay="600">Подробнее</a>
                                    </div>
                                </div>
                            </div>        
            <?php } ?>
          </div>
          <div class="swiper-pagination__module">
            <div class="swiper-pagination"></div>
            <div class="swiper-pagination__divider"></div>
            <div class="swiper-pagination__fraction"><span class="swiper-pagination__fraction-index">00</span><span class="swiper-pagination__fraction-divider"></span><span class="swiper-pagination__fraction-count">00</span></div>
          </div>
        </div>