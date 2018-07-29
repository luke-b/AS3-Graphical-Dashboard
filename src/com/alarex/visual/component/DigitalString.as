package com.alarex.visual.component 
{
	import flash.display.Sprite;
	




	public class DigitalString extends Sprite 
	{
		
	
		private var _kplEh:int = 0;
		private var _lsyDn:Array;
		private var _V6OJy:int = -1;
		private var _09edb:Boolean = false;
		
		public function DigitalString(mask:String,_V6OJy:int = -1,unsign:Boolean=false) 
		{
			this._kplEh = mask.length+(unsign?0:1);
			this._lsyDn = new Array();
			
			this.cacheAsBitmap = true;
			
			this._09edb = unsign;
			
			var _pi0zO:int = 0;
			
			this._V6OJy = _V6OJy;
			
			for (var _KjS1H:int = 0; _KjS1H < this._kplEh; _KjS1H++) {
				var _2Keq0:DigitalDigit = new DigitalDigit();
				_2Keq0.x = _pi0zO;
			
				_pi0zO += _2Keq0.width;
				
				this._lsyDn.push(_2Keq0);
				this.addChild(_2Keq0);
			}
		}
		
		
		public function _gVwJ5(newString:String):void {
			
			
			var _s21Ll:String = newString;		
			
			if (_s21Ll.indexOf("\x2e") != -1) {
				this._V6OJy = (this._kplEh - 1) - ((_s21Ll.length) - _s21Ll.indexOf("\x2e"));		
				
				var _0yI5K:int = _s21Ll.indexOf("\x2e");
				
				_s21Ll = _s21Ll.substring(0, _0yI5K) + _s21Ll.substring(_0yI5K + 1, _s21Ll.length);
				
			} else {
				this._V6OJy = -1;
			}
			
			
			if (!_09edb) {
				if (newString.indexOf("\x2d") != -1) {
					var _AQVRI:DigitalDigit = _lsyDn[0] as DigitalDigit;
					_AQVRI.changeNumber("\x2d");
					_s21Ll = _s21Ll.replace("\x2d", "\x30");
				}
			}
			
			if (_s21Ll.length > this._kplEh) 
				return;
			
			while (_s21Ll.length < this._kplEh-1) {
				_s21Ll = "\x30" + _s21Ll;
			}
		
			for (var _KjS1H:int = 0; _KjS1H < _s21Ll.length; _KjS1H++) {
				
				var _GpOZr:DigitalDigit = _lsyDn[_KjS1H+(!_09edb?1:0)] as DigitalDigit;
				var _2EPex:String = _s21Ll.charAt(_KjS1H);
											
				_GpOZr.changeNumber(_2EPex,(_KjS1H==_V6OJy?true:false));
								
			}
						
		}
		
		
		
	}

}