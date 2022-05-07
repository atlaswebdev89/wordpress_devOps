<?php get_header();?>
 <section id="gallery-list-4col-2" class="light pt-200 pb-md-50 text-left">
    			<div class="container">
        			<div class="row">
                                    <div class="col-md-8">
                                        
                                        <div class="header-h1">
                                            <h1 class="text-center pt-125 wow animate__animated animate__fadeInDown" ><?php _e('Catalog of furniture projects', DOMAIN_TEXT); ?></h1>                                                			           			
                                        </div>
                                        <div class="col-md-12 mb-40">
                                            <div class="header-h2 header-h2-center mt-40">
                                                <h2><?php _e('Catalog of completed projects', DOMAIN_TEXT); ?></h2> 
                                           </div>
                                            <div class="text-center mt-30">
                                                <p class="mb-10"><?php _e('In our work we try to use only the most modern, convenient and interesting solutions. We use only high-quality and reliable materials.s', DOMAIN_TEXT); ?> </p>      
                                            </div>
                                        </div>
                                        
                                        <div class="row text-center list-project-mebel">
                                           	<?php 
                                                    if( have_posts() ){
                                                        // перебираем все имеющиеся посты и выводим их
                                                        while( have_posts() ){
                                                            the_post();
                                                ?>
                                            
                                            
                                            <div class="col-md-6 col-sm-6 col-xs-6 mb-25 wow animate__animated animate__pulse">
                                                <div class="item-img text-center">
                                                            <img src="<?php the_post_thumbnail_custom('medium-size');?>" alt="screen"> 
                                                    <div class="overlay-item-img">
                                                        <a href="<?php the_permalink();?>">
                                                            <div class="elem-zoom-in">
                                                                <i class="icon-magnifier"></i>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="cash-item-furtinure">
                                                             <div class="cash-item-furtinure-wrap">
                                                                 <span> <?php 
                                                                                $cash = carbon_get_post_meta(get_the_ID(), "crb_cash_projects");
                                                                                if($cash) { ?>
                                                                                    от
                                                                                <?php if(function_exists('convert_currency')) {
                                                                                    echo convert_currency($cash); ?>
                                                                                        <span>BYN</span>
                                                                                <?php } else { 
                                                                                    echo ($cash); ?>
                                                                                        <span>USD</span>
                                                                                <?php } } else { ?>
                                                                                    <span><?php _e('Specify the cost', DOMAIN_TEXT); ?></span>
                                                                                <?php } ?>
                                                                 </span>
                                                                 
                                                             </div>
                                                             
                                                    </div>
                                                </div>
                                                
                                                <div class="item-caption">
                                                    <div class="item-meta-data"></div>
                                                    <div class="item-info">
                                                        <span class="caption">
                                                            <strong><?php the_title();?></strong>
                                                        </span>
                                                    </div>
                                                </div>
  
                                            </div>
                                            <?php }
                                                    } else { ?>
						<div class="text-left">
							<span> 
								<?php _e('There are no projects in the selected section', DOMAIN_TEXT); ?>
							</span>
						</div> 
                                            <?php } ?>
                                        </div>
                                            <!--   Pagination -->
                                            <div class="col mt-60">
                                                <div class="text-center block-pagination">
                                                    <?php 
                                                        echo paginate_links([
								'type' => 'list',
								'prev_text'    => '<',
								'next_text'    => '>',
                                                            ]);
                                                    ?>
                                                </div>
                                            </div>
                                    </div>
                                    <!-- end pagination -->
                                    
                                    <!-- Sidebar -->
                                        <?php get_sidebar();?>
                                    <!-- end Sidebar -->
                                       
                                    </div>
        			</div>
                            <div class="bg"></div>
			</section>
<?php get_footer();?>