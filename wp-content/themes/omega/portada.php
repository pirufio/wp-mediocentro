
<link href="<?php echo get_template_directory_uri() . '/carouslide/css/CarouSlide.css' ?>" rel="stylesheet" type="text/css"/>

<?php
/**
 * Template Name: Portada
 *
 * @package Omega
 */

get_header(); ?>

<!--Content-->

<div id="portada-slider" class="CarouSlide">
    <ul class="slider-holder">
        
       
        <?php
        /*
        $query_images_args = array(
            'post_type' => 'attachment', 'post_mime_type' =>'image', 'post_status' => 'inherit', 'posts_per_page' => -1, 'post_title' => 'portada 02',
        );

        $query_images = new WP_Query( $query_images_args );
        print_r($query_images);
        
        $images = array();

        foreach ( $query_images->posts as $image) {
            
            $images[]= wp_get_attachment_url( $image->ID );
            foreach ($images as $img) {
                
                echo '<li><img src="' . $img . '" /></li>';
            }
        }
        */
        ?>
        
        <li>
            <img src="http://pureweb.azurewebsites.net/wp-content/uploads/2014/05/portada-01-1024x576.jpg"  height="630px" width="1120px" />
        </li>
        <li>
            <img src="http://pureweb.azurewebsites.net/wp-content/uploads/2014/05/portada-02-1024x576.jpg"  height="630px" width="1120px" />
        </li>
    </ul>
</div>

<!--End Content-->

<?php get_footer(); ?>

<script type='text/javascript' src="<?php echo get_template_directory_uri() . '/carouslide/js/jquery.easing.1.3.js' ?>"></script>
<script type='text/javascript' src="<?php echo get_template_directory_uri() . '/carouslide/js/jquery.CarouSlide.js' ?>"></script>

<script>
    
    jQuery(document).ready(function(){
        
		jQuery("#portada-slider").CarouSlide({
			animTime:1500,
                        animInfinity:true,
			showSlideNav:false,
			autoAnim:true,
                        showBackNext:false,
		});
	});
    
</script>