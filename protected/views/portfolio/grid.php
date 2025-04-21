<div class="centercolumn">
			
		<div id="maincontent">
			<div id="content" class="full">
			<h2 class="underline">Portfolio</h2>
			<ul class="four_column_properties">
				<?php
				$count = 1;
				foreach($property as $key => $p) {
					if ($count % 4 == 0 && $count > 0) {
						echo "<li class='nomargin'>";
					} else {
						echo "<li>";
					}
					echo "<b style='padding-bottom:10px'>$p[name]</b>";
					echo "<img src='".Yii::app()->baseUrl."/images/$p[image]' style='height:120px; width:180px'/>";
					echo "<div style='width:180px'>$p[addr]</div>";
					echo "</li>";
					$count++;
				}
				?>				
										
				</ul><!-- end .pf-type4 -->
			</div><!-- end #content -->
			<div class="clear"></div>
		</div><!-- end #maincontent -->
	</div><!-- end #centercolumn -->