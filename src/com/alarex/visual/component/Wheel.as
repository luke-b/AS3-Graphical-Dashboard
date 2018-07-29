package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	




	public class Wheel extends Sprite 
	{
		
		private var _4OiRD:int = 30;
		
		private var _gKtav:Array = new Array();
		
		private var _Ks3pC:Number = 0;
		
		private var _0IV8L:Array = new Array();
		private var _KpO4T:Array = new Array();
		
		private var _mSjB8:int;
		private var _j097W:int = 0;
		
		private var _Cx0H7:Number = 0;
		
		
		public function Wheel() 
		{
						
			this.cacheAsBitmap = true;
			
			var _6uv32:Matrix = new Matrix();
			var _cfd0j:Array;
			_cfd0j  = [0x000000, 0xBBBBBB];
			var _DoI0o:Array =[1,1];
			var _CGLuH:Array =[0,255];
			_6uv32.createGradientBox(105, 10, Math.PI / 2, 0, -1);
			
			this.graphics.beginGradientFill(GradientType.LINEAR,_cfd0j,_DoI0o,_CGLuH,_6uv32);
			this.graphics.drawRect(0, 0, 105, 10);
			this.graphics.endFill();
			
			this.graphics.beginFill(0x000000);
			this.graphics.drawRect(1, 1, 103, 8);
			this.graphics.endFill();
			
			
			
			var _Z5Dz5:Matrix = new Matrix();
			var _A1vW8:Array = _cfd0j  = [0x090909, 0xAAAAAA, 0xBBBBBB, 0xAAAAAA, 0x090909];
			var _X4Cie:Array = [1, 1, 1, 1, 1];
			var _VYrOH:Array =[0.5,0.5,0.5,0.5,0.5];
			var _wZQvw:Array =[0,100,128,150,255];
			_Z5Dz5.createGradientBox(105, 2, Math.PI, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, _A1vW8, _X4Cie, _wZQvw, _Z5Dz5);
			this.graphics.drawRect(4, 3, 97, 2);
			this.graphics.endFill();
			
			this.graphics.beginGradientFill(GradientType.LINEAR, _A1vW8, _VYrOH, _wZQvw, _Z5Dz5);
			this.graphics.drawRect(4, 5, 97, 2);
			this.graphics.endFill();
			
			var _lyUUw:Sprite = new Sprite();
			_lyUUw.graphics.beginFill(0xffffff);
			_lyUUw.graphics.drawRect(4, 5, 97, 4);
			_lyUUw.graphics.endFill();
			
			_lyUUw.cacheAsBitmap = true;
			
							
			
			for (var _YrIb5:int = 0; _YrIb5 < _4OiRD; _YrIb5++) {
				var _GmEhI:Sprite = new Sprite();
				_GmEhI.cacheAsBitmap = true;
				_GmEhI.graphics.beginFill(0x000000, 0.5);
				_GmEhI.graphics.drawRect(0, 0, 1, 1);
				_GmEhI.graphics.endFill();
				
				_gKtav.push(_GmEhI);
				this.addChild(_GmEhI);
			}
			
			_mSjB8 = 2 * Math.PI / 0.01;
			
			var _HCgSO:Number = -Math.PI;
			var _YDkz6:Number = -Math.PI-Math.PI/300;
			
			for (var _ipNVU:int = 0; _ipNVU < _mSjB8; _ipNVU++) {
				
				_0IV8L.push(Math.cos(_HCgSO)*50+51);
				_KpO4T.push(Math.cos(_YDkz6)*50+51);
				
				_HCgSO -= 0.01;
				_YDkz6 -= 0.01;
			}
							
			_Ot3Fm(0);
			
			addEventListener(Event.ENTER_FRAME,_Dmp56);
		}
		
		public function _Dmp56(e:Event):void {
					if (this._Cx0H7 != 0) {
				_Wio23(_j097W);
			}
			
			_j097W += 1+3*this._Cx0H7;
			
			if (this._Cx0H7 == 0) {
			_j097W = 0;
			}
			
			if (_j097W > 10) _j097W = 0;
		}
		
		private function _RSmdM(off:int):Number {
			
			return (_0IV8L[off % _mSjB8] as Number);
			
		}
		
		private function _5DeU3(off:int):Number {
			
			return (_KpO4T[off % _mSjB8] as Number);
			
		}
		
		public function _Wio23(offset:int):void {
						
			for (var _YrIb5:int = 0; _YrIb5 < _4OiRD; _YrIb5++) {
				
				var _fbLAG:Number = _RSmdM(offset + _YrIb5*10);
				var _k6RSb:Number = _5DeU3(offset + _YrIb5*10+3);
				
				var _fzTR3:Number = _k6RSb - _fbLAG;
				
				var _d0hsm:Sprite = this._gKtav[_YrIb5] as Sprite;
				
				_d0hsm.x = _fbLAG;
				_d0hsm.y = 3;
				_d0hsm.width = _fzTR3;
				_d0hsm.height = 4;
																
			}
			
		}
		
		public function _5rG7K(f:Number):void {
			
			var _a5cPv:Number = f;
			if (_a5cPv < 0) _a5cPv = 0;
			if (_a5cPv > 1) _a5cPv = 1;
			
			this._Cx0H7 = _a5cPv;
			
		}
		
		
		public function _Ot3Fm(offset:Number):void {
			var _xVAl8:Number = 100;
		
			var _GmEhI:Number = Math.PI / _4OiRD;
			var _drqM3:Number = Math.PI / (_4OiRD * 3);
			
			var _3yy3E:Number = Math.PI - offset;
			
			for (var _YrIb5:int = 0; _YrIb5 < _4OiRD; _YrIb5++) {
				
				var _fbLAG:Number = Math.cos(_3yy3E) * (_xVAl8 / 2) + 51;
				var _k6RSb:Number = Math.cos(_3yy3E - _drqM3) * (_xVAl8 / 2) + 51;
				
				var _fzTR3:Number = _k6RSb - _fbLAG;
				
				var _d0hsm:Sprite = this._gKtav[_YrIb5] as Sprite;
				
				_d0hsm.x = _fbLAG;
				_d0hsm.y = 3;
				_d0hsm.width = _fzTR3;
				_d0hsm.height = 4;
																
				_3yy3E -= _GmEhI;
			}
			
		}
	}

}