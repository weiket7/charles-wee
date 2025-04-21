<?php

class Property extends CActiveRecord
{	


	public function getProperty($property_id) {
		$s = "select * from property where property_id = '$property_id'";
		$res = Yii::app()->db->createCommand($s)->queryRow();
		//$res['pic'] = $this->getPic($res['property_id']);
		//$res['unit'] = $this->getUnit($res['property_id']);
		return $res;
	}

	public function getPropertyAll($stat) {
		$s = "select * from property";
		if ($stat != false)
			$s .= " where stat = '$stat'";
		$s .= " order by stat, name";
		$res = Yii::app()->db->createCommand($s)->queryAll();
		/*foreach($res as $key => $r) {
			$res[$key]['pic'] = $this->getPic($r['property_id']);
			$res[$key]['unit'] = $this->getUnit($r['property_id']);
		}*/
		return $res;
	}

	public function getPropertyRandom() {
		if (! isset($_SESSION['rand'])) {
			$_SESSION['rand'] = rand();
		}
		$rand = $_SESSION['rand'];
		$s = "select * from property where stat='A' order by rand(".$rand.") limit 5";
		$r = Yii::app()->db->createCommand($s)->queryAll();
		/*foreach($res as $key => $r) {
			$res[$key]['pic'] = $this->getPic($r['property_id']);
			$res[$key]['unit'] = $this->getUnit($r['property_id']);
		}*/
		return $r;
	}


	public function getDistrictByPostal($postal) {
		$firsttwo = substr($postal, 0, 2);
		$s = "SELECT district_id from district_postal where postal = '$firsttwo'";
		//echo $s;
		return Yii::app()->db->createCommand($s)->queryScalar();
	} 


	public function getUnit($property_id) {
		$s = "select * from property_unit where property_id = '$property_id'";
		return Yii::app()->db->createCommand($s)->queryAll();
	}

	public function getPic($property_id) {
		$s = "select pic from pic where property_id = '$property_id' and pic_order='1'";
		return Yii::app()->db->createCommand($s)->queryScalar();
	}

	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return 'property';
	}
}