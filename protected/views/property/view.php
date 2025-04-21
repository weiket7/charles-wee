<style type="text/css">
  .bx-wrapper .bx-pager {
    bottom: -95px;
  }
  
  .bx-wrapper .bx-pager a {
    border: solid #ccc 1px;
    display: block;
    margin: 0 5px;
    padding: 3px;
  }
  
  .bx-wrapper .bx-pager a:hover,
  .bx-wrapper .bx-pager a.active {
    border: solid #5280DD 1px;
  }
  
  .bx-wrapper {
    margin-bottom: 100px;
  }
</style>

<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB4KqO6Kx9PP0WdRhS3NibQcTeO5-W7kiw&sensor=false">
</script>
<script type='text/javascript'>
$(document).ready(function(){
  $('.bxslider').bxSlider({
    auto: true,
    pause: 5000,
    /*infiniteLoop: false,
    hideControlOnEnd: true,
	*/
	<?php if ($property['image2'] || $property['image3']) { ?>
	buildPager: function(slideIndex) {
      switch(slideIndex) {
      	case 0:
						return "<img src='<?php echo Yii::app()->baseUrl."/images/".$property['image']?>' height=50>";			
      	<?php if ($property['image2']) { ?>
      		case 1:
						return "<img src='<?php echo Yii::app()->baseUrl."/images/".$property['image2']?>' height=50>";		
      	<?php } ?>
      	<?php if ($property['image3']) { ?>
				case 2:
					return "<img src='<?php echo Yii::app()->baseUrl."/images/".$property['image3']?>' height=50>";		
      	<?php } ?>
      }
    }
    <?php } ?>         
  });
});

function contact() {  
  var json_obj = { };
  json_obj.name = $('#name').val();
  json_obj.contact = $('#contact').val();
  json_obj.message = $('#message').val();
  json_obj.property = $('#property').val();
  var json = JSON.stringify(json_obj);
  
  $.ajax({
    url: '<?php echo Yii::app()->createAbsoluteUrl('site/email') ?>?json=' + json, 
    async: false,
    error: function (xhr, ajaxOptions, thrownError) { alert(xhr.status + " " + thrownError); },
    success: function(data) {
    	$('#submit_btn').hide();
    	$('#submit_msg').html("Thank you<br>We will get back to you shortly");
    }
  });
}
</script>

<div class="centercolumn">
			
		<div id="maincontent">
			<div id="content">
				<h2 class="underline"><?php echo $property['name']?></h2>
				<?php if ($property['image2'] == false && $property['image3'] == false) 
					echo "<img src='".Yii::app()->baseUrl."/images/$property[image]' style='height:200px'>";
				else { ?>
				<div id="container-slider">
					<ul class="bxslider">
						<li>
							<img src="<?php echo Yii::app()->baseUrl?>/images/1" style='height:200px'/>
						</li>
						<?php if ($property['image2']) { ?>
						<li>
							<img src="<?php echo Yii::app()->baseUrl?>/images/2" style='height:200px'/>
						</li>
						<?php } ?>
						<?php if ($property['image3']) { ?>
						<li>
							<img src="<?php echo Yii::app()->baseUrl?>/images/3" style='height:200px'/>
						</li>
						<?php } ?>
					</ul>
				</div><!-- end content-slider -->
				<?php } ?>
				
				<div id="property-detail">	
						<div class='box_text_li'><span class="left">Location	</span>	<span class="right"><?php echo $property['addr']?></span></div>
						<div class='box_text_li'><span class="left">Developer</span> <span class="right"><?php echo $property['dev']?></span></div>
						<div class='box_text_li'><span class="left">Num of Units</span> <span class="right"><?php echo $property['num_unit']?></span></div>
						<div class='box_text_li'><span class="left">Tenure	</span> <span class="right"><?php echo $property['tenure']?></span></div>
						<div class='box_text_li'><span class="left">Expected TOP	</span> <span class="right"><?php echo date('d M Y', strtotime($property['top']))?></span></div>
						<div class='box_text_li'>
							<?php if ($property['pdf']) 
								echo "<li><span class='left'>PDF</span>";
			          echo "<span class='right'>".CHtml::link($property['pdf'],Yii::app()->baseUrl."/images/$property[pdf]", array('target'=>'_blank'))."</span></li>";
			        ?>
		        </div>
		        <div class='box_text_li'><span class='left'>Description</span><span class='right'><ul class='disc'><?php echo $property['desc'] ?></ul></span></div>
					</ul>	
				</div>
					
				<div class="clear"><br /><br /></div>
				
<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="<?php echo $property['map']?>"></iframe>
			</div><!-- end #content -->
			
			<div class="sidebar_right">
			<div class="sidebar">
				<ul>
					<li class="widget-container widget_text">
						<h2 class="widget-title">Agent</h2>
						<div class="agent">
						<p><img src="<?php echo Yii::app()->baseUrl?>/images/charleswee.jpg" alt="" class="alignleft" style='height:80px'/>
							<span class="black">Charles Wee</span><br />
							Mobile: +65 9006 9900<br>
							Email: charleswky@gmail.com
						</p>
						<div class='clear'></div>
					  </div>
					</li>
				
					<li class="widget-container widget_search">
						<h2 class="widget-title">Contact</h2>
						<input type=text name='name' id='name' placeholder='Name'><br>
						<input type=text name='contact' id='contact' placeholder='Mobile/Email'><br>
						<input type='hidden' id='property' name='property' value="<?php echo $property['name']?>">
						<textarea cols='30' rows='5' name='message' id='message' placeholder='Message'></textarea><br>
						<input type="button" id="submit_btn" value="Submit" onclick='contact()'>
						<div id='submit_msg' style='color:#4CC417'></div>
					</li>
				
				</ul>
            </div><!-- end #sidebar -->
			</div><!-- end #sidebar_right -->
			
			<div class="clear"></div>
		</div><!-- end #maincontent -->
	</div><!-- end #centercolumn -->
