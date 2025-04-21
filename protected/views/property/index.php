	<div class="centercolumn">
			
		<div id="maincontent">
			<div id="content">
				<h2 class="underline">Property</h2>
				
				<?php foreach($property as $key => $p) { ?>
				<div class="list_properties">
					<div class='list_img'>
					<?php echo CHtml::link("<img src='".Yii::app()->baseUrl."/images/$p[image]' style='height:85px; width:135px'>", array("property/view?property_id=$p[property_id]")) ?>
					</div>
					<div class="list_text">
						<?php echo CHtml::link("<strong>$p[name]</strong>", array("property/view?property_id=$p[property_id]")) ?><br>						
						Location: <?php echo $p['addr']?><br />
						Expected TOP: <?php echo $p['top']?><br />
						Num of Units: <?php echo $p['num_unit']?><br />
						
						<!-- <span class="blue">Open House: Fri 2/18, 2pm - 4pm</span> -->
					</div>
					<div class="clear"></div>
				</div><!-- end .list_properties -->
				<?php } ?>

				<!--<div class="clear"></div>
				<div id="pagenavi">
					<a href="#" class="current">1</a>&nbsp;|&nbsp;<a href="#">2</a>&nbsp;|&nbsp;<a href="#">Next &gt;</a>					
				</div> #pagenavi -->
			</div><!-- end #content -->
			
			<div class="clear"></div>
		</div><!-- end #maincontent -->
	</div><!-- end #centercolumn -->