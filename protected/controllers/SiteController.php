<?php

class SiteController extends Controller
{
	public $layout='template';


	public function actionAbout() {
		$this->render('about');
	}

	public function actionContact() {
		$this->render('contact');
	}

	public function actionIndex() {
		$data = array('property'=>Property::model()->getPropertyRandom());
		$this->render('index', $data);
	}

	public function actionEmail($json) {
		$arr = json_decode($json, true);

		$subject = $arr['name'] . ": " . $arr['message'];
		$message = "Name: " . $arr['name'] . "\n" .
			"Contact: " . $arr['contact'] . "\n" .
			"Property: " . $arr['property'] . "\n" .
			"Message: " . $arr['message'];
		$from = "weiket7@gmail.com";
		$headers = "weiket7@gmail.com";
		mail("weiket7@gmail.com",$subject,$message,$headers);
		mail("charleswky@gmail.com",$subject,$message,$headers);
		return true;
	}
}
