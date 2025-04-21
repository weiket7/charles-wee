<script type='text/javascript'>
  $(document).ready( function() {
    $(".tablesorter").tablesorter({
      theme: 'blue',
    	widgets: ["zebra", "filter"],
    });
  });
</script>

<div class="centercolumn">     
  <div id="maincontent">

<h1 class='underline'>Properties - Admin</h1>

<h3><?php echo CHtml::link('Create Property', array('/property/create'))?></h3>

<table class='tablesorter'>
	<thead>
		<th class='filter-select'>Stat</th>
		<th>Image</th>
		<th>Property</th>
		<th>Developer</th>
		<th>TOP</th>
	</thead>
	<tbody>
		<?php
		//var_dump($property);
		$stat = array('A'=>'Active', 'P'=>'Past', 'H'=>'Hidden');
		foreach($property as $key => $p) {
			echo "<tr>";
				echo "<td>".$stat[$p['stat']]."</td>";
				echo "<td>".CHtml::link("<img src='".Yii::app()->baseUrl."/images/$p[image]' style='height:80px'>",
					array("property/update?property_id=$p[property_id]"))."</td>";
				echo "<td>".CHtml::link($p['name'],
					array("property/update?property_id=$p[property_id]"))."</td>";
				echo "<td>$p[dev]</td>";
				echo "<td>";
					if ($p['top'] ) echo date('d M Y', strtotime($p['top']));
				echo "</td>";
			echo "</tr>";
		}
		?>
	</tbody>
</table>

  </div><!-- end #maincontent -->
</div><!-- end #centercolumn -->
