<?php

class PropertyController extends Controller
{
	public $layout='template';

	public function actionIndex() {
		$data = array(
			'property'=>Property::model()->getPropertyAll('A'),
		);
		$this->render('index', $data);
	}

	public function actionProject() {
		$data = array(
			'est'=>Est::model()->getEstAll()
		);
		$this->render('project', $data);
	}

	public function actionAdmin() {
		$data = array(
			'property'=>Property::model()->getPropertyAll(false),
		);
		$this->render('admin', $data);
	}

	public function actionView($property_id) {
		$data = array(
			'property'=>Property::model()->getProperty($property_id),
		);
		$this->render('view', $data);
	}

	public function actionDatepicker() {
		$this->renderPartial('datepicker');
	}

	public function actionbxslider() {
		$this->renderPartial('bxslider');
	}

	

	public function actionCreate() {
		if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			$transaction = Yii::app()->db->beginTransaction();
			try {
				$data = array(
					'name'=>$_POST['name'],
					'district'=>$_POST['district'],
					'addr'=>$_POST['addr'],
					'dev'=>$_POST['dev'],
					'num_unit'=>$_POST['num_unit'],
					'num_storey'=>$_POST['num_storey'],
					'postal'=>$_POST['postal'],
					'tenure'=>isset($_POST['tenure']) ? $_POST['tenure'] : '',
					'top'=>$_POST['top'],
					'stat'=>$_POST['stat'],
					'desc'=>$_POST['desc'],
				);
				if (isset($_POST['map_update'])) {
					$map = $_POST['map'];
					$map = substr($map, 0, strpos($map,'"></iframe>'));
					$data['map']=strstr($map, 'https://');					
				}

				$image = CUploadedFile::getInstanceByName('image');		
				if ($image) {
					$fileName = "{$image}"; 
		  		$image -> saveAs(Yii::app()->basePath . '/../images/'.$fileName);
		  		$data['image'] = $fileName;
		  	}
		  	$pdf = CUploadedFile::getInstanceByName('pdf');	

		  	if (isset($_POST['pdf_delete'])) {
		  		$data['pdf'] = '';
		  	} else {
		  		$pdf = CUploadedFile::getInstanceByName('pdf');	
		  		if ($pdf) {
			  		$fileName = "{$pdf}"; 
			  		$pdf -> saveAs(Yii::app()->basePath . '/../images/'.$fileName);
			  		$data['pdf'] = $fileName;		  			
		  		}
		  	}

				if (isset($_POST['pdf2_delete'])) {
		  		$data['pdf2'] = '';
		  	} else {
		  		$pdf2 = CUploadedFile::getInstanceByName('pdf2');	
					if ($pdf2) {
						$fileName = "{$pdf2}"; 
			  		$pdf2 -> saveAs(Yii::app()->basePath . '/../images/'.$fileName);
			  		$data['pdf2'] = $fileName;						
					}
		  	}
				$property_id = Yii::app()->db->createCommand()->insert('property', $data);
				$transaction->commit();				
				Yii::app()->user->setFlash('msg', "Property created");
				$this->redirect(array('/property/admin'));
			} catch (Exception $e) {
				echo $e;
				$transaction->rollback();			
			}
		}

		$data = array(
			'property'=>new Property,
		);
		$this->render('form', $data);
	}

	public function actionRep() {
		$str = '<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com.sg/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=No.+3+Ardmore+Park+&amp;aq=&amp;sll=1.343746,103.824045&amp;sspn=0.567011,0.386581&amp;ie=UTF8&amp;hq=&amp;hnear=3+Ardmore+Park,+259950&amp;t=m&amp;z=14&amp;ll=1.308378,103.828571&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com.sg/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=No.+3+Ardmore+Park+&amp;aq=&amp;sll=1.343746,103.824045&amp;sspn=0.567011,0.386581&amp;ie=UTF8&amp;hq=&amp;hnear=3+Ardmore+Park,+259950&amp;t=m&amp;z=14&amp;ll=1.308378,103.828571" style="color:#0000FF;text-align:left">View Larger Map</a></small>';
		$str = 	substr($str, 0, strpos($str,'"></iframe>'));
		$str = strstr($str, 'https://');
		echo $str;
	}

	public function actionUpdate($property_id) {
		if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			$transaction = Yii::app()->db->beginTransaction();
			try {
				$data = array(
					'name'=>$_POST['name'],
					'district'=>$_POST['district'],
					'addr'=>$_POST['addr'],
					'dev'=>$_POST['dev'],
					'num_unit'=>$_POST['num_unit'],
					'num_storey'=>$_POST['num_storey'],
					'postal'=>$_POST['postal'],
					'tenure'=>isset($_POST['tenure']) ? $_POST['tenure'] : '',
					'top'=>$_POST['top'],
					'stat'=>$_POST['stat'],					
					'desc'=>$_POST['desc'],
				);
				if (isset($_POST['map_update'])) {
					$map = $_POST['map'];
					$map = substr($map, 0, strpos($map,'"></iframe>'));
					$data['map']=strstr($map, 'https://');					
				}

				$image = CUploadedFile::getInstanceByName('image');		
				if ($image) {
					$fileName = "{$image}"; 
		  		$image -> saveAs(Yii::app()->basePath . '/../images/'.$fileName);
		  		$data['image'] = $fileName;
		  	}		  	
		  		
		  	if (isset($_POST['pdf_delete'])) {
		  		$data['pdf'] = '';
		  	} else {
		  		$pdf = CUploadedFile::getInstanceByName('pdf');	
		  		if ($pdf) {
			  		$fileName = "{$pdf}"; 
			  		$pdf -> saveAs(Yii::app()->basePath . '/../images/'.$fileName);
			  		$data['pdf'] = $fileName;		  			
		  		}
		  	}

				if (isset($_POST['pdf2_delete'])) {
		  		$data['pdf2'] = '';
		  	} else {
		  		$pdf2 = CUploadedFile::getInstanceByName('pdf2');	
					if ($pdf2) {
						$fileName = "{$pdf2}"; 
			  		$pdf2 -> saveAs(Yii::app()->basePath . '/../images/'.$fileName);
			  		$data['pdf2'] = $fileName;						
					}
		  	}
				Yii::app()->db->createCommand()->update('property', $data, 'property_id=:property_id', array(':property_id'=>$_POST['property_id']));
				$transaction->commit();				
				Yii::app()->user->setFlash('msg', "Property updated");
				$this->redirect(array('/property/update?property_id='.$property_id));
			} catch (Exception $e) {
				echo $e;
				$transaction->rollback();			
			}
		}
		$data = array(
			'property'=>Property::model()->getProperty($property_id),
		);
		$this->render('form', $data);
	}

	public function actionAjax_districtByPostal($postal) {
		echo Property::model()->getDistrictByPostal($postal);
	}

}
