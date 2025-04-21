<?php

class Generic extends CApplicationComponent
{

	public function insertStatement($sql) {
		Yii::app()->db->createCommand('INSERT INTO sql_statement (sql_statement) values ("'.$sql.'")')->execute();
	}
	
	public function getStatus() {
		return array('B'=>'Booking', 'I'=>'Check In', 'O'=>'Check Out', 'C'=>'Cancelled', 'P'=>'Paid'); 
	}

	public function getPromoType() {
		return array('1'=>'Mix N Match', '0'=>'Line Item Discount', '3'=>'Multi Level Discount', '4'=>'Pool Combination');
	}

	public function getPromoGroup() {
		return array(
			''=>'',
			'Appetizer'=>'Appetizer',
			'Main Course'=>'Main Course',
			'Dessert'=>'Dessert',
		);
	}

    public function giveStatusClass($letter) {
    	//for calendar.php
		$status_arr = array(
			'N'=>'noshow', 'B'=>'confirm',
			'I'=>'checkin','O'=>'checkout',
			'C'=>'cancelled','P'=>'paid'
		);
    	if (array_key_exists($letter, $status_arr))
			return $status_arr[$letter];
		else
			return 'error';
	}	

	public function getDate() {
		return date('Y-m-d H:i:s'); 
	}

	public function giveActiveInactive($temp) {
		if ($temp == 1 || $temp == 'A') 
			return 'Active';
		 else 
			return 'Inactive';		
	}

	public function giveYesNo($temp) {
		if ($temp == 1) 
			return 'Yes';
		 else
			return 'No';
	}

	public function getDuration() {
		$duration_arr = array(
			'0'=>'0',
			'15'=>'15 mins', '30'=>'30 mins',
			'45'=>'45 mins','60'=>'60 mins',
			'75'=>'75 mins','90'=>'90 mins',
			'105'=>'105 mins','120'=>'120 mins',
			'135'=>'135 mins', '180'=>'180 mins',
		);
		return $duration_arr;
	}

	public function getDay() {
		$day_arr = array(
			'mondayFlag'=>'Mon', 'tuesdayFlag'=>'Tue', 'wednesdayFlag'=>'Wed', 'thursdayFlag'=>'Thu',
			'fridayFlag'=>'Fri', 'saturdayFlag'=>'Sat', 'sundayFlag'=>'Sun'
		);
		return $day_arr;
	}

	/*public function getDept() {
		$dept_arr = array(
			''=>'',
			'Product'=>'Product', 'Workshop'=>'Workshop',
			'Service'=>'Service', 'Misc'=>'Misc', 'Workshop'=>'Workshop', 'Promotion'=>'Promotion'
		);
		return $dept_arr;
	}

	public function getClass() {
		$class_arr = array(
			''=>'',
			'Classic'=>'Glow Classic', 'Intense'=>'Glow Intense',
			'Slim-Ex'=>'Glow Slim-Ex', 'Treat'=>'Glow Treats', 'Workshop'=>'Workshop', 'Appetiser',
		);
		return $class_arr;
	}*/

	public function getSubClass() {
		$subclass_arr = array(
			''=>'',
			'S1'=>'Sub 1', 'S2'=>'Sub 2',
			'S3'=>'Sub 3'
		);
		return $subclass_arr;
	}

	public function getCommission() {
		return array(
			''=>'',
			'10'=>'$10', '20'=>'$20',
			'30'=>'$30'
		);
	}

	public function getSkill() {
		return array(
			'Body'=>'Body', 'Massage'=>'Massage', 'Hair'=>'Hair',
		);
	}

	public function getModifier() {
		return array(
			''=>'',
			'Q'=>'Q for Queen', 'R'=>'R for race',
			'S'=>'S for Singapore'
		);
	}

	public function getCategory() {
		$cat_arr = array(
			''=>'',
			'Face'=>'Face', 'Body'=>'Body', 'Hair'=>'Hair',
		);
		return $cat_arr;
	}

	public function getEndHour() {
		return 23;
	}
}

?>