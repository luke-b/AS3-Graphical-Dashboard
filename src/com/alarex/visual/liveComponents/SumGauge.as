package com.alarex.visual.liveComponents 
{
	import com.alarex.visual.component.CylinderString;
	import com.alarex.visual.component.GaugeFrame;
	import com.alarex.visual.component.SmallLabel;
	import com.alarex.visual.component.Wheel;
	import flash.display.Sprite;
	




	public class SumGauge extends Sprite 
	{
		
		private var _kBTef:GaugeFrame;
		private var _R9zKG:SmallLabel;
		private var _zaYHX:SmallLabel;
		private var _jjS5H:Wheel;
		private var _lI6tx:CylinderString;
		
		public function SumGauge() 
		{
			this.cacheAsBitmap = true;
			
			_kBTef = new GaugeFrame();
			this.addChild(_kBTef);
			
			_R9zKG = new SmallLabel("\x55\xc5\xa1\x65\x74\xc5\x99\x65\x6e\x6f\x3a", 15, false);
			this.addChild(_R9zKG);
			_R9zKG.x = 91 - _R9zKG.getXres() / 2;
			_R9zKG.y = 40;
			
			_zaYHX = new SmallLabel("\x4b\x69\x6c\x6f\x77\x61\x74\x74\x20\x68\x6f\x64\x69\x6e", 15, false);
			this.addChild(_zaYHX);
			_zaYHX.x = 91 - _zaYHX.getXres() / 2;
			_zaYHX.y = 100;
			
			_jjS5H = new Wheel();
			this.addChild(_jjS5H);
			_jjS5H.x = 42;
			_jjS5H.y = 130;
			
			_lI6tx = new CylinderString("\x30\x30\x30\x30\x30\x30", "\x30\x30\x30");
			this.addChild(_lI6tx);
			_lI6tx.scaleX = 0.18;
			_lI6tx.scaleY = 0.18;
			
			_lI6tx.x = 37;
			_lI6tx.y = 70;
			
			this._jjS5H.setSpeedFactor(0.0);
			
		}
		
		public function _g3bU5(factor:Number):void {
			this._jjS5H.setSpeedFactor(factor);
		}
		
		public function _lpV2T(s:Number):void {
			_lI6tx.changeString(s.toFixed(3));
		}
		
	}

}