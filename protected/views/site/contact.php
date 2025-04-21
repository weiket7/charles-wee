<script type="text/javascript">
function contact() {  
  var json_obj = { };
  json_obj.name = $('#name').val();
  json_obj.contact = $('#contact').val();
  json_obj.message = $('#message').val();
  json_obj.property = " ";
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
		
			<h1 class='underline'>Contact</h1>
				<div id="before-content">
					<input type=text name='name' id='name' placeholder='Name'><br>
					<input type=text name='contact' id='contact' placeholder='Mobile/Email'><br>
					<textarea cols='30' rows='5' name='message' id='message' placeholder='Message'></textarea><br>
					<input type="button" id="submit_btn" value="Submit" onclick='contact()'>
					<div id='submit_msg' style='color:#4CC417'></div>
				</div>

				</div><!-- end #content -->
			<div class="clear"></div>
		</div><!-- end #maincontent -->
</div><!-- end #centercolumn -->

