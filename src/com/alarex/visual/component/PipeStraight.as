package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.events.Event;
	




	public class PipeStraight extends Sprite 
	{
		
		private var _Jrk5h:Sprite = new Sprite();
		private var _tomXN:Sprite = new Sprite();
		
		private var _mA2eF:int = 0.0;
		private var _1Nznx:Number = -1;
		private var _Cd2v5:Number = 10;
		private var _A23b6:Boolean;
		
		private var _N3vtl:Number;
		
		private var _qsgpO:Number;
	
		private var _TV53m:Number = 0.0;
		private var _3zN2l:Number = 0;
		
		public function PipeStraight(color:int, radius:int, thinkness:int, l:Number, reverse:Boolean=false) 
		{
			
		this.cacheAsBitmap = true;	
		
		
			
		var _qeyd5:Number = radius/l;
		
		this._3zN2l = l;
		
		_N3vtl = l;
		
		var _PfHpK:Number = l*0.1;
		
		_qsgpO = l/_PfHpK;
		
		this._A23b6 = reverse;
			
			if (_A23b6) {
				_1Nznx = _PfHpK;
			} else {
				_1Nznx = -_PfHpK;
			}
		
		
			var _mvpoW:Sprite = new Sprite();
			
			 var _5amTP:Sprite = new Sprite();
			 
			 _5amTP.graphics.beginFill(0x000000);
			 _5amTP.graphics.drawRect( -radius - 4, -radius - 4, 8 + thinkness, radius + 8);
			 _5amTP.graphics.endFill();
			 _5amTP.cacheAsBitmap = true;
			 _5amTP.alpha = 0.5;
			 
			 var _IzuI2:BlurFilter = new BlurFilter(5, 5);
			 _5amTP.filters = [_IzuI2];
			 _mvpoW.cacheAsBitmap = true;
			 _mvpoW.addChild(_5amTP);
			 
			 var _GeTMg:Sprite = new Sprite();
			 
			 _GeTMg.graphics.beginFill(0xffffff);
			 _GeTMg.graphics.drawRect( -radius - 2, -radius, 4 + thinkness, radius);
			 _GeTMg.graphics.endFill();
			 _GeTMg.cacheAsBitmap = true;
			 _GeTMg.graphics.beginFill(color);
			 _GeTMg.graphics.drawRect( -radius, -radius, thinkness, radius);
			 _GeTMg.graphics.endFill();
			 
			 _mvpoW.addChild(_GeTMg);
			 
			 var _f4YqF:Sprite = new Sprite();
			 _f4YqF.graphics.beginFill(0x00ff00);
			 _f4YqF.graphics.drawRect( -radius - 20, -radius, 40 + thinkness, radius);
			 _f4YqF.graphics.endFill();
			 _f4YqF.cacheAsBitmap = true;
			 
			 
			 this.addChild(_mvpoW);
			 this.addChild(_f4YqF);
			 
			 _mvpoW.mask = _f4YqF;
			 
			 l = radius / _qeyd5;
			 
			 _Cd2v5 = l;
			 
			 for (var _XWtmo:int = -1; _XWtmo < _qeyd5+1; _XWtmo++) {
				 
				 var _cMiey:Sprite = _2nlma(l,radius,thinkness);
				 
				 _cMiey.y = -_XWtmo * l;
				 if (_A23b6) {
					_cMiey.scaleY *= -1;
					_cMiey.y -= l;
				 }
				 
				 _Jrk5h.addChild(_cMiey);
				 
			 }
			
			
			 _tomXN.cacheAsBitmap = true;
			 this.addChild(_tomXN);
			 
			 _tomXN.addChild(_Jrk5h);
			 
			 var _RAEwF:Sprite = new Sprite();
			 _RAEwF.graphics.beginFill(0xff0000);
			 _RAEwF.graphics.drawRect( -radius, -radius, thinkness, radius);
			 _RAEwF.graphics.endFill();
			 _RAEwF.cacheAsBitmap = true;
			 this.addChild(_RAEwF);
			 _tomXN.mask = _RAEwF;
			 
			 _Jrk5h.alpha = 0;
			 
			 addEventListener(Event.ENTER_FRAME,_Smqoo);
		}
		
		
		public function _Smqoo(e:Event):void {
		
			_mA2eF++;
			
			if (_mA2eF*_TV53m > _3zN2l) {
				_mA2eF = 0;
			}
			
			_Jrk5h.y = _mA2eF*_1Nznx*_TV53m;
		
					}
		
		public function _jt0Na(f:Number):void {
			
			var _3bWOU:Number = f;
			
			if (f < 0) _3bWOU = 0;
			if (f > 1) _3bWOU = 1;
			
			if (f == 0) {
				_Jrk5h.alpha = 0;
			} else {
				_Jrk5h.alpha = 1;
			}
			
			this._TV53m = _3bWOU;
			
		}
		
		
		private function _2nlma(length:Number,radius:Number,thinkness:Number):Sprite {
			
			var _ml8Ey:Sprite = new Sprite();
			
			var _eeQF4:Matrix = new Matrix();
			var _2rtCK:Array =[0xffffff,0xffffff];  
			var _nMbVz:Array =[0.8,0];
			var _3vpf0:Array = [0,255];
			_eeQF4.createGradientBox(length, length/2,Math.PI/2,0,-length/2);
			_ml8Ey.graphics.beginGradientFill(GradientType.LINEAR,_2rtCK,_nMbVz,_3vpf0,_eeQF4);
					_ml8Ey.graphics.drawCircle(-radius + thinkness/2, 0, length / 2);
			_ml8Ey.graphics.endFill();
			_ml8Ey.cacheAsBitmap = true;			
			return _ml8Ey;
		}
		
	}

}