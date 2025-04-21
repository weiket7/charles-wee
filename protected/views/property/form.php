<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<script type="text/javascript">
$(document).ready( function() {
  $("#top_d").datepicker( {
    dateFormat: "dd M yy",
    altField: "#top",
    altFormat: "yy-mm-dd",
    changeMonth: true,
    changeYear: true,
    yearRange: "-5:+20",
  });
});

tinyMCE.init({
    force_br_newlines : true,
    force_p_newlines : false,
    forced_root_block : '',
    mode : "textareas",
    theme : "advanced",
    theme_advanced_buttons1 : "bullist",
    theme_advanced_buttons2 : "",
    theme_advanced_buttons3 : "",
    extended_valid_elements : "span[!class]",

    content_css : "<?php echo Yii::app()->baseUrl?>/css/tinymce.css"
});  

function getDistrict() {
  var postal = $('#postal').val();
  $.ajax({
    url: '<?php echo Yii::app()->createAbsoluteUrl('property/ajax_districtbypostal') ?>?postal=' + postal, 
    async: false,
    error: function (xhr, ajaxOptions, thrownError) { alert(xhr.status + " " + thrownError); },
    success: function(data) {
      $('#district').val(data);
    }
  }); 
}

function mapUpdate() {
  $('#map_update').prop('checked', 'true');
}


</script>


<div class="centercolumn">     
  <div id="maincontent">
    <div id="content" class="full">
            

<?php
if (Yii::app()->controller->action->id == 'update') {  
  echo CHtml::beginForm('update?property_id='.$property['property_id'],'post',array('enctype'=>'multipart/form-data','id'=>'val')); 
  echo "<h1 class='underline'>Update Property</h1>";
}
else if (Yii::app()->controller->action->id == 'create') {
  echo CHtml::beginForm('create','post',array('enctype'=>'multipart/form-data','id'=>'val')); 
  echo "<h1 class='underline'>Create Property</h1>";
}
?>

<?php if(Yii::app()->user->hasFlash('msg')):?>
  <div class="alert alert-success">
    <?php echo Yii::app()->user->getFlash('msg'); ?>
  </div>
<?php endif; ?>

<table>
    <tr>
      <td width='120px'>Name:</td>
      <td width='300px'>
        <input type='text' name='name' value='<?php echo $property['name']?>' style='width:300px'>
        <input type='hidden' name='property_id' value='<?php echo $property['property_id']?>' style='width:300px'>
      <td>
    </tr>
    <tr>
      <td>Status:</td>
      <td>
        <?php
        $stat_arr = array('A'=>'Active', 'P'=>'Past', 'H'=>'Hide');
        echo CHtml::radioButtonList('stat', $property['stat'], $stat_arr,
            array('separator'=>'','labelOptions'=>array('style'=>'display: inline; margin-right: 30px;')
        ));
        ?>
      <td>
    </tr>
    <tr>
      <td>Address:</td>
      <td><input type='text' name='addr' value='<?php echo $property['addr']?>' style='width:300px'><td>
    </tr>
    <tr>
      <td>Postal:</td>
      <td><input type='text' name='postal' id='postal' value='<?php echo $property['postal']?>' onblur='getDistrict()' style='width:300px'><td>
    </tr>
    <tr>
      <td>District:</td>
      <td width='300px'><input type='text' name='district' id='district' value='<?php echo $property['district']?>' style='width:300px'><td>
    </tr>
    <tr>
      <td>Developer:</td>
      <td><input type='text' name='dev' value='<?php echo $property['dev']?>' style='width:300px'><td>
    </tr>
    <tr>
      <td>Num of Units:</td>
      <td><input type='text' name='num_unit' value='<?php echo $property['num_unit']?>' style='width:300px'><td>
    </tr>
    <tr>
      <td>Num of Storeys:</td>
      <td><input type='text' name='num_storey' value='<?php echo $property['num_storey']?>' style='width:300px'><td>
    </tr>
    <tr>
      <td>Tenure:</td>
      <td>
        <select name='tenure'>
          <option value=''></option>
          <option value='Freehold' <?php if ($property['tenure'] == 'Freehold') echo "selected='true'"?>>Freehold</option>
          <option value='99years' <?php if ($property['tenure'] == '99years') echo "selected='true'"?>>99 years</option>
        </select>
      <td>
    </tr>
    <!-- <tr>
      <td >Area:</td>
      <td><input type='text' name='area' value='<?php echo $property['area']?>' style='width:300px'>
      <td>
    </tr> -->
    <tr>
      <td style='vertical-align:top'>TOP:</td>
      <td>
        <input type='text' name='top_d' id='top_d' value='<?php if ($property['top'] != '') echo date('d M Y', strtotime($property['top']))?>' style='width:300px'>
        <input type='hidden' name='top' id='top' value='<?php if ($property['top'] != '') echo $property['top']?>'>
      <td>
    </tr>
    <tr>
      <td style="vertical-align:top">Map:</td>
      <td>
        <input type='text' name='map' style='width:300px' value='<?php echo $property['map']?>' onclick='mapUpdate()'>
        <input type='checkbox' name='map_update' id='map_update'><label for='map_update'>Update</label>
      </td>
    </tr>
    <tr>
      <td style='vertical-align:top'>Description:</td>
      <td><textarea name='desc' rows='20' cols='100'><?php echo $property['desc']?></textarea><td>
    </tr>
    <tr>
      <td style='vertical-align:top'>Image:</td>
      <td>
        <input type='file' name='image' id='image' value='<?php $property['image']?>' style='width:300px'>
        <?php if ($property['image']) 
          echo "<br><img src=".Yii::app()->baseUrl."/images/$property[image] style='height:60px'>";
        ?>
      <td>
    </tr>
    <tr>
      <td style='vertical-align:top'>PDF:</td>
      <td>
        <input type='file' name='pdf' id='pdf' value='<?php $property['pdf']?>' style='width:300px'>
        <?php if ($property['pdf']) {
          echo '<br>'.CHtml::link($property['pdf'],Yii::app()->baseUrl."/images/$property[pdf]", array('target'=>'_blank'));
          echo " <input type='checkbox' name='pdf_delete' id='pdf_delete'><label for='pdf_delete'>Delete</label>";
        } 
        ?>
      <td>
    </tr>
    <tr>
      <td style='vertical-align:top'>PDF2:</td>
      <td>
        <input type='file' name='pdf2' id='pdf2' value='<?php $property['pdf2']?>' style='width:300px'>
        <?php if ($property['pdf2']) {
          echo '<br>'.CHtml::link($property['pdf2'],Yii::app()->baseUrl."/images/$property[pdf2]", array('target'=>'_blank'));
          echo " <input type='checkbox' name='pdf2_delete' id='pdf2_delete'><label for='pdf2_delete'>Delete</label>";
        } 
        ?>
      <td>
    </tr>
    <!-- <tr>
      <td >PSF:</td>
      <td><input type='text' name='psf' name='<?php echo $property['psf']?>' style='width:300px'>
      <td>
    </tr> -->
</table><br>

<!-- <h3>Accessibility</h3>
<textarea class='tinymce' cols='70' rows='10' name='accessibility'><?php echo $property['accessibility']?></textarea>

<h3>Facilities</h3>
<small>(separate by commas)</small><br>
<textarea cols='70' rows='5' name='facility'><?php echo $property['facility']?></textarea>
<br><br> -->

<input type='submit' id='submit_btn' value='Submit'>
<?php echo CHtml::link("<input type='button' id='submit_btn' value='Back'>", array('/property/admin')); ?>
</form>

    </div><!-- end #content -->
    <div class="clear"></div>
  </div><!-- end #maincontent -->
</div><!-- end #centercolumn -->