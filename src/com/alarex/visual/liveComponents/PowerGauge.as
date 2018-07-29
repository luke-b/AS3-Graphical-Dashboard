package com.alarex.visual.liveComponents 
{
	import com.alarex.visual.component.DigitalString;
	import com.alarex.visual.component.GaugeFrame;
	import com.alarex.visual.component.GaugeHand;
	import com.alarex.visual.component.GaugeHandTop;
	import com.alarex.visual.component.GaugeScaleGradient;
	import com.alarex.visual.component.GaugeScaleLines;
	import com.alarex.visual.component.SmallLabel;
	import flash.display.Sprite;
	import com.greensock.TweenLite;
	import com.greensock.easing.Elastic;
	




	public class PowerGauge extends Sprite 
	{

		private var _F32Bk:GaugeFrame;
		private var _yMTka:GaugeScaleLines;
		private var _qXP40:GaugeScaleGradient;
		private var _e69OL:GaugeHand;
		private var _gJwgw:SmallLabel;
		private var _QX0Si:DigitalString;
		private var _QsV6S:GaugeHandTop;
		
		private var _IJ0Iv:Number;
		private var _oUinL:Number;
		private var _bCqqj:Number;
		
		public function PowerGauge(mValue:Number, maValue:Number) 
		{
			this.cacheAsBitmap = true;
			
			this._IJ0Iv = mValue;
			this._oUinL = maValue;
			
			
			_F32Bk = new GaugeFrame();
			this.addChild(_F32Bk);
		
				_gJwgw = new SmallLabel("\x6b\x57\x20\x54\x48", 15, false);
			this.addChild(_gJwgw);
			_gJwgw.x = 91-_gJwgw.getXres()/2;
			_gJwgw.y = 145;
			
			_QX0Si = new DigitalString("\x30\x30\x30");
			_QX0Si.scaleX = 0.25;
			_QX0Si.scaleY = 0.25;
			this.addChild(_QX0Si);
			_QX0Si.x = 57;
			_QX0Si.y = 115;
			
			_QX0Si.changeString("\x30\x2e\x30\x30");
			
			
			_yMTka = new GaugeScaleLines(21, 5);
			this.addChild(_yMTka);
			_yMTka.x = 93;
			_yMTka.y = 93;
			
			_qXP40 = new GaugeScaleGradient(93, 93, 75, 5, [0xff0000, 0xffff00, 0x00ff00], 2);
			this.addChild(_qXP40);
			
			
			_e69OL = new GaugeHand();
			this.addChild(_e69OL);
			_e69OL.x = 93;
			_e69OL.y = 93;
			
			_e69OL.rotation = -90;
			
			_QsV6S = new GaugeHandTop();
			this.addChild(_QsV6S);
			_QsV6S.x = 93;
			_QsV6S.y = 93;
			
			
		
			
		}
		
		
		public function _2I0OO(nValue:Number):void {
			
			
			if (this._bCqqj != nValue) {
	
				var _w05er:Number = 180 / (this._oUinL - this._IJ0Iv);
				var _pHzy5:Number = nValue;
				if (_pHzy5 < _IJ0Iv) _pHzy5 = _IJ0Iv;
				if (_pHzy5 > _oUinL) _pHzy5 = _oUinL;
				
				var _qdryh:Number = _pHzy5 * _w05er - 90;
									
				TweenLite.to(_e69OL, 2, { rotation:_qdryh, ease:Elastic.easeOut} );
				
				this._bCqqj = nValue;
				
				if (this._bCqqj < 0) this._bCqqj = 0;
				if (this._bCqqj > 99) this._bCqqj = 99;
				
				var _vAhm8:String = _bCqqj.toFixed(2);
				_QX0Si.changeString(_vAhm8);
			}
		}
		
	}

}