package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import com.greensock.TweenLite;
	




	public class DigitalDigit extends Sprite 
	{
		private var _ePmnC:int = 0;
		private var _nxXaj:int = 0;
		private var _u4o4S:int = 0;
		private var _6NIFw:int = 0;
		private var _YUA8y:int = 0;
		private var _yS7wm:int = 0;
		private var _qCqf4:int = 0;
		private var _uRbHk:int = 0;
		
		private var _KdnS9:Sprite = new Sprite();
		private var _ZjlZs:Sprite = new Sprite();
		private var _rxdqA:Sprite = new Sprite();
		private var _KcjQK:Sprite = new Sprite();
		private var _6lYuU:Sprite = new Sprite();
		private var _ghzRT:Sprite = new Sprite();
		private var _juUB4:Sprite = new Sprite();
		private var _JtxPg:Sprite = new Sprite;	
		
		
		public function DigitalDigit() 		{
															
			this.cacheAsBitmap = true;
			
			this.graphics.beginFill(0x333333); 			this.graphics.drawRect(0, 0, 70, 110);
			this.graphics.endFill();
			
			this.graphics.beginFill(0x000000); 			this.graphics.drawRect(66, 0, 4, 110);
			this.graphics.endFill();
			
			
						
			_KdnS9 = _i8877(true);
			_KdnS9.x = 14;
			_KdnS9.y = 10;
			_KdnS9.rotation = 0;
			_KdnS9.cacheAsBitmap = true;
			this.addChild(_KdnS9);
			
			_ZjlZs = _i8877(true);
			_ZjlZs.x = 14;
			_ZjlZs.y = 54;
			_ZjlZs.rotation = 0;
			_ZjlZs.cacheAsBitmap = true;
			this.addChild(_ZjlZs);
			
			_rxdqA = _i8877(true);
			_rxdqA.x = 14;
			_rxdqA.y = 98;
			_rxdqA.rotation = 0;
			_rxdqA.cacheAsBitmap = true;
			this.addChild(_rxdqA);
			
			_KcjQK = _i8877(true);
			_KcjQK.x = 12;
			_KcjQK.y = 12;
			_KcjQK.rotation = 90;
			_KcjQK.cacheAsBitmap = true;
			this.addChild(_KcjQK);
			
			_6lYuU = _i8877(true);
			_6lYuU.x = 56;
			_6lYuU.y = 12;
			_6lYuU.rotation = 90;
			_6lYuU.cacheAsBitmap = true;
			this.addChild(_6lYuU);
			
			_ghzRT = _i8877(true);
			_ghzRT.x = 12;
			_ghzRT.y = 56;
			_ghzRT.rotation = 90;
			_ghzRT.cacheAsBitmap = true;
			this.addChild(_ghzRT);
			
			_juUB4 = _i8877(true);
			_juUB4.x = 56;
			_juUB4.y = 56;
			_juUB4.rotation = 90;
			_juUB4.cacheAsBitmap = true;
			this.addChild(_juUB4);
			
			_JtxPg = _wHBvo(true);
			_JtxPg.x = 55;
			_JtxPg.y = 100;
			_JtxPg.rotation = 0;
			_JtxPg.cacheAsBitmap = true;
			this.addChild(_JtxPg);
			
			
						
			_KdnS9 = _i8877(false);
			_KdnS9.x = 14;
			_KdnS9.y = 10;
			_KdnS9.rotation = 0;
			_KdnS9.alpha = 0.0;
			_KdnS9.cacheAsBitmap = true;
			this.addChild(_KdnS9);
			
			_ZjlZs = _i8877(false);
			_ZjlZs.x = 14;
			_ZjlZs.y = 54;
			_ZjlZs.rotation = 0;
			_ZjlZs.alpha = 0.0;
			_ZjlZs.cacheAsBitmap = true;
			this.addChild(_ZjlZs);
			
			_rxdqA = _i8877(false);
			_rxdqA.x = 14;
			_rxdqA.y = 98;
			_rxdqA.rotation = 0;
			_rxdqA.alpha = 0.0;
			_rxdqA.cacheAsBitmap = true;
			this.addChild(_rxdqA);
			
			_KcjQK = _i8877(false);
			_KcjQK.x = 12;
			_KcjQK.y = 12;
			_KcjQK.rotation = 90;
			_KcjQK.alpha = 0.0;
			_KcjQK.cacheAsBitmap = true;
			this.addChild(_KcjQK);
			
			_6lYuU = _i8877(false);
			_6lYuU.x = 56;
			_6lYuU.y = 12;
			_6lYuU.rotation = 90;
			_6lYuU.alpha = 0.0;
			_6lYuU.cacheAsBitmap = true;
			this.addChild(_6lYuU);
			
			_ghzRT = _i8877(false);
			_ghzRT.x = 12;
			_ghzRT.y = 56;
			_ghzRT.rotation = 90;
			_ghzRT.alpha = 0.0;
			_ghzRT.cacheAsBitmap = true;
			this.addChild(_ghzRT);
			
			_juUB4 = _i8877(false);
			_juUB4.x = 56;
			_juUB4.y = 56;
			_juUB4.rotation = 90;
			_juUB4.alpha = 0.0;
			_juUB4.cacheAsBitmap = true;
			this.addChild(_juUB4);
			
			_JtxPg = _wHBvo(false);
			_JtxPg.x = 55;
			_JtxPg.y = 100;
			_JtxPg.rotation = 0;
			_JtxPg.alpha = 0.0;
			_JtxPg.cacheAsBitmap = true;
			this.addChild(_JtxPg);
			
		}  		
		public function _z52Fd(s:String,dotOn:Boolean=false):void {  			
			switch (s) {
								case "\x2d": _of66L(0, 0, 0, 1, 0, 0, 0); break;
				case "\x30": _of66L(1, 1, 1, 0, 1, 1, 1); break;
				case "\x31": _of66L(0, 0, 1, 0, 0, 1, 0); break;
				case "\x32": _of66L(1, 0, 1, 1, 1, 0, 1); break;
				case "\x33": _of66L(1, 0, 1, 1, 0, 1, 1); break;
				case "\x34": _of66L(0, 1, 1, 1, 0, 1, 0); break;
				case "\x35": _of66L(1, 1, 0, 1, 0, 1, 1); break;
				case "\x36": _of66L(1, 1, 0, 1, 1, 1, 1); break;
				case "\x37": _of66L(1, 0, 1, 0, 0, 1, 0); break;
				case "\x38": _of66L(1, 1, 1, 1, 1, 1, 1); break;
				case "\x39": _of66L(1, 1, 1, 1, 0, 1, 1); break;
			}
			
			if (dotOn && _uRbHk == 0) {
				
						TweenLite.to(_JtxPg, 1, {alpha: 1.0});
						this._uRbHk = 1;
				
			}
			
			if (!dotOn && _uRbHk == 1) {
				
					   TweenLite.to(_JtxPg, 1, {alpha: 0.0});
						this._uRbHk = 0;
			}
			
		}
		
		private function _of66L(_ePmnC:int, _nxXaj:int, _u4o4S:int, _6NIFw:int, _YUA8y:int, _yS7wm:int, _qCqf4:int):void {
					
			if (_ePmnC != this._ePmnC) {
				if (_ePmnC == 0) {
					TweenLite.to(_KdnS9, 1, {alpha: 0.0});
				} else {
					TweenLite.to(_KdnS9, 1, {alpha: 1.0});
				}
				this._ePmnC = _ePmnC;
			}
			
			if (_nxXaj != this._nxXaj) {
				if (_nxXaj == 0) {
					TweenLite.to(_KcjQK, 1, {alpha: 0.0});
				} else {
					TweenLite.to(_KcjQK, 1, {alpha: 1.0});
				}
				this._nxXaj = _nxXaj;
			}
			
			if (_u4o4S != this._u4o4S) {
				if (_u4o4S == 0) {
					TweenLite.to(_6lYuU, 1, {alpha: 0.0});
				} else {
					TweenLite.to(_6lYuU, 1, {alpha: 1.0});
				}
				this._u4o4S = _u4o4S;
			}
			
			if (_6NIFw != this._6NIFw) {
				if (_6NIFw == 0) {
					TweenLite.to(_ZjlZs, 1, {alpha: 0.0});
				} else {
					TweenLite.to(_ZjlZs, 1, {alpha: 1.0});
				}
				this._6NIFw = _6NIFw;
			}
			
			if (_YUA8y != this._YUA8y) {
				if (_YUA8y == 0) {
					TweenLite.to(_ghzRT, 1, {alpha: 0.0});
				} else {
					TweenLite.to(_ghzRT, 1, {alpha: 1.0});
				}
				this._YUA8y = _YUA8y;
			}
			
			if (_yS7wm != this._yS7wm) {
				if (_yS7wm == 0) {
					TweenLite.to(_juUB4, 1, {alpha: 0.0});
				} else {
					TweenLite.to(_juUB4, 1, {alpha: 1.0});
				}
				this._yS7wm = _yS7wm;
			}
			
			if (_qCqf4 != this._qCqf4) {
				if (_qCqf4 == 0) {
					TweenLite.to(_rxdqA, 1, {alpha: 0.0});
				} else {
					TweenLite.to(_rxdqA, 1, {alpha: 1.0});
				}
				this._qCqf4 = _qCqf4;
			}
		}
												
		
		private function _i8877(on:Boolean):Sprite {
			
			var _ALcIL:Sprite = new Sprite();
			
			if (on) {
			
				_ALcIL.graphics.beginFill(0x222222);
				
			
			} else {
				
				var _7QPSG:Matrix = new Matrix();
				var _oF9bp:Array =[0xadfc34,0x2e7e00];  				var _QoZoY:Array =[1,1];
				var _QDL7B:Array =[0,255];
				_7QPSG.createGradientBox(40, 20,0,0,-10);
				_ALcIL.graphics.beginGradientFill(GradientType.RADIAL,_oF9bp,_QoZoY,_QDL7B,_7QPSG);
							
			}
			
			_ALcIL.graphics.moveTo(0, 0);
			_ALcIL.graphics.lineTo(5, -5);
			_ALcIL.graphics.lineTo(35, -5);
			_ALcIL.graphics.lineTo(40, 0);
			_ALcIL.graphics.lineTo(35, 5);
			_ALcIL.graphics.lineTo(5, 5);
			_ALcIL.graphics.lineTo(0, 0);
			_ALcIL.graphics.endFill();
			
			
						
															
												
			return _ALcIL;
		}
		
		private function _wHBvo(on:Boolean):Sprite {
			
			var _ALcIL:Sprite = new Sprite();
			
			if (on) {
			
				_ALcIL.graphics.beginFill(0x222222);
				
			
			} else {
				
				_ALcIL.graphics.beginFill(0xadfc34);		
			}
			
													
			_ALcIL.graphics.drawRect(10, 0, 10, 20);
			
			_ALcIL.graphics.endFill();
			
			
						
															
												
			return _ALcIL;
		}
		
	}

}
