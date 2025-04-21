<script type="text/javascript"> 
 var $jts = jQuery.noConflict();
    $jts(document).ready(function(){ 
        $jts("ul.sf-menu").supersubs({ 
		minWidth		: 9,		// requires em unit.
		maxWidth		: 25,		// requires em unit.
		extraWidth		: 0			// extra width can ensure lines don't sometimes turn over due to slight browser differences in how they round-off values
                               // due to slight rounding differences and font-family 
        }).superfish();  // call supersubs first, then superfish, so that subs are 
                         // not display:none when measuring. Call before initialising 
                         // containing tabs for same reason. 
    }); 
 
</script>
<script type="text/javascript" src="<?php echo Yii::app()->baseUrl?>/js/jquery.cycle.all.min.js"></script>
<script type="text/javascript">
 var $jts = jQuery.noConflict();
    $jts(document).ready(function(){ 
		
		//Slider  
         $jts('#slideshow').cycle({
            timeout: 5000,  // milliseconds between slide transitions (0 to disable auto advance)
            fx:      'fade', // choose your transition type, ex: fade, scrollUp, shuffle, etc...            
            pager:   '#pager',  // selector for element to use as pager container
            pause:   0,	  // true to enable "pause on hover"
            pauseOnPagerHover: 0 // true to pause when hovering over pager link
        });
     });
</script>

	
	
	<div class="centercolumn">
			<!-- BEGIN SLIDE -->
			<div id="slider_container">
			<div id="slideshow_navigation">
			<div id="pager"></div>
			</div><!-- end slideshow navigation -->
				<div id="slideshow">  
					<?php foreach($property as $key => $p) {?>
					<div class="cycle">
						<?php echo CHtml::link("<img src='".Yii::app()->baseUrl."/images/$p[image]'>", array("property/view?property_id=$p[property_id]")) ?>
						<div class="farme-slide-text">
							<ul class="slide-text">
								<li><span class="left"><?php echo CHtml::link("<strong>$p[name]</strong>", array("property/view?property_id=$p[property_id]")) ?></b></span>&nbsp;</li>
								<li><span class="left">Location: <?php echo $p['addr']?></span>&nbsp;</li>
								<li><span class="left">Expected TOP: <?php echo date('d M Y', strtotime($p['top']))?></span>&nbsp;</li>
								<li><span class="left">Num of Units: <?php echo $p['num_unit']?></span>&nbsp;</li>
							</ul>
							<div class="frame-price">
								<div class="slider-button"><?php echo CHtml::link("More info", array("property/view?property_id=$p[property_id]"))?></div>
								<!-- <div class="slider-price">$ 2,200,000</div> -->
							</div>
						</div>
					</div><!-- end cycle -->
					<?php } ?>
				</div><!-- end #slideshow -->
			</div><!-- end #slide -->
			<!-- END OF SLIDE -->
			
		<div id="maincontent">
			<div id="content" class="full">
				<div id="before-content">
					<img src="<?php echo Yii::app()->baseUrl?>/images/charleswee.jpg" alt="" class="alignleft" style='height:145px; padding-right:30px'/>
					<h3>Charles Wee</h3>
					Senior Associates Sales Director<br>
					CBRE Realty Associates Pte Ltd<br>
					CEA License No: L3010008E / R017382J<br>
					<br>
					Mobile: +65 9006 9900<br>
					Email: charleswky@gmail.com<br>
					<br>

					16 years experience of property track record and with good testimonies from past and existing customers.<br>
					Honest and sincere in all deals.
					<!--<a href="#" class="button">learn more</a>-->

				</div>
			</div><!-- end #content -->
			<div class="clear"></div>
		</div><!-- end #maincontent -->
	</div><!-- end #centercolumn -->
	
	
	