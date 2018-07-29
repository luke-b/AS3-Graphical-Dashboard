package com.alarex.visual.component 
{
	import flash.display.Sprite;
	




	public class CylinderString extends Sprite 
	{
	
		private var _5aZI8:int = 0;
		
		private var _KHCRl:int = 0;
		private var _vSXyt:int = 0;
		
		private var _RKEmH:Array;
		private var _7WSKD:String;
		
		
		public function CylinderString(prefix:String,suffix:String) 
		{
			
					
			_KHCRl = prefix.length;
			_vSXyt = suffix.length;
			
			this._5aZI8 = _KHCRl + _vSXyt;
			this._RKEmH = new Array();
			
			var _99AFL:int = 0;
					
			
			for (var _mhP1k:int = 0; _mhP1k < this._KHCRl; _mhP1k++) {
				var _Lmh3t:CylinderDigit = new CylinderDigit(false);
				_Lmh3t.x = _99AFL;
				_99AFL += _Lmh3t.getRealWidth();
				
				this._RKEmH.push(_Lmh3t);
				this.addChild(_Lmh3t);
			}
			
			for (var _N69iD:int = 0; _N69iD < this._vSXyt; _N69iD++) {
				_Lmh3t = new CylinderDigit(true);
				_Lmh3t.x = _99AFL;
				_99AFL += _Lmh3t.getRealWidth();
				
				this._RKEmH.push(_Lmh3t);
				this.addChild(_Lmh3t);
			}
		}
		
		
		public function _qA6lz(newString:String):void {
			
			
			
			
			var _Amfqz:String = newString;		
			
						
			if (_Amfqz.length > this._5aZI8) 
				return;
			
			while (_Amfqz.length < this._5aZI8) {
				_Amfqz = "\x30" + _Amfqz;
			}
			
			if (_Amfqz.indexOf("\x2e") != -1) {
				var _mVgqj:String = _Amfqz;
				
				_Amfqz = _mVgqj.substring(0, _mVgqj.indexOf("\x2e")) + _mVgqj.substring(_mVgqj.indexOf("\x2e") + 1);
			}
		
			for (var _mhP1k:int = 0; _mhP1k < _Amfqz.length; _mhP1k++) {
				
				var _AYD0a:CylinderDigit = _RKEmH[_mhP1k+1] as CylinderDigit;
				var _u9EuS:String = _Amfqz.charAt(_mhP1k);
											
				_AYD0a.changeNumber(int(_u9EuS));
								
			}
						
		}
		
		
	}

}