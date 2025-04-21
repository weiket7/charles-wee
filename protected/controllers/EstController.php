<?php

class EstController extends Controller
{
	public $layout='template';

	public function actionView($est_id) {
		$data = array(
			'est'=>Est::model()->getEst($est_id),
		);
		$this->render('view', $data);
	}

	public function actionProject() {
		$data = array(
			'est'=>Est::model()->getEstAll()
		);
		$this->render('project', $data);
	}

	public function actionTest() {
		$this->renderPartial('test');
	}

	public function actionUpdate($est_id) {
		if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			var_dump($_POST);
			$data = array();
			$cols = array(
				'district', 'addr', 'dev', 'num_unit',
				'tenure', 'area', 'top', 'psf',
				'accessibility', 'facility'
			);
			foreach($cols as $key => $f) {
				if(isset($_POST[$f]) && $_POST[$f] != '') {
					$data[$f] = $_POST[$f];
				}
			}
			Yii::app()->db->createCommand()->update('est', $data, 'est_id=:est_id', array(':est_id'=>$est_id));
		}

		$data = array(
			'est'=>Est::model()->getEst($est_id),
		);
		$this->render('form', $data);
	}
}
