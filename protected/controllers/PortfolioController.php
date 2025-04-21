<?php

class PortfolioController extends Controller
{
	public $layout='template';

	public function actionIndex() {
		$data = array(
			'property'=>Property::model()->getPropertyAll('P'),
		);
		$this->render('grid', $data);
	}

	public function actionGrid() {
		$data = array(
			'property'=>Property::model()->getPropertyAll('P'),
		);
		$this->render('grid', $data);
	}

}
