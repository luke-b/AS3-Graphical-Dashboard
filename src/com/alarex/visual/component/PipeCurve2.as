package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.display.BlendMode;
	import flash.events.Event;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	




	public class PipeCurve2 extends Sprite 
	{
		
		private	var _Piu1j:Sprite = new Sprite();
		private var _NIMXB:Array = new Array();
		private var _ojgL9:Number = 0.0;
		
		private var _bC43c:Sprite = new Sprite();
		
		private var _LLO55:Number;
		private var _1m2q8:Number;
		private var _unquw:Number;
		
		private var _VISMv:Boolean;
		private var _QbZkO:Number;
		
		private var _522KC:Number = 0.0;
		
		public function PipeCurve2(color:int, radius:int, thinkness:int, rt:Number, reverse:Boolean=false) 
		{
			
			this.cacheAsBitmap = true;
			
			this._VISMv = reverse;
			
			var _iQstS:Number = 2 * Math.PI * radius / 4;
			var _IKCI7:Number = _iQstS / rt;
			
			var _15mFC:Number = 90 / _IKCI7;
			var _KeUhk:Number = _15mFC * 0.1;
			
			if (_VISMv) {
				_QbZkO = -_KeUhk;
			} else {
				_QbZkO = _KeUhk;
			}
			
			var _kB6Tl:Sprite =  new Sprite();
			var _Mkq5X:BlurFilter = new BlurFilter(5, 5);
			
			var _f9mw4:Sprite = new Sprite();
			_f9mw4.cacheAsBitmap = true;
			_f9mw4.graphics.beginFill(0x000000);
			_f9mw4.graphics.drawCircle(0, 0, radius + 4);
			_f9mw4.graphics.endFill();
			
			_f9mw4.filters = [_Mkq5X];
			_f9mw4.blendMode = BlendMode.LAYER;
			
			var _EzODZ:Sprite = new Sprite();
			_EzODZ.cacheAsBitmap = true;
			_EzODZ.graphics.beginFill(0x00ff00);
			_EzODZ.graphics.drawCircle(0, 0, radius - thinkness - 4);
			_EzODZ.graphics.endFill();
			
			_EzODZ.blendMode = BlendMode.ERASE;
			
			_f9mw4.addChild(_EzODZ);
			
			_f9mw4.alpha = 0.5;
			
			_kB6Tl.addChild(_f9mw4);
			
			
			
			var _L1KMN:Sprite = new Sprite();
			_L1KMN.cacheAsBitmap = true;
			_L1KMN.graphics.beginFill(0xFFFFFF);
			_L1KMN.graphics.drawCircle(0, 0, radius +2 );
			_L1KMN.graphics.endFill();
			
			_L1KMN.graphics.beginFill(color);
			_L1KMN.graphics.drawCircle(0, 0, radius);
			_L1KMN.graphics.endFill();
			
			_L1KMN.graphics.beginFill(0xFFFFFF);
			_L1KMN.graphics.drawCircle(0, 0, radius - thinkness);
			_L1KMN.graphics.endFill();
			
			_L1KMN.blendMode = BlendMode.LAYER;
			
			
			var _Sdq7x:Sprite = new Sprite();
			_Sdq7x.cacheAsBitmap = true;
			_Sdq7x.graphics.beginFill(0x00ff00);
			_Sdq7x.graphics.drawCircle(0, 0, radius - thinkness - 2);
			_Sdq7x.graphics.endFill();
			
			_Sdq7x.blendMode = BlendMode.ERASE;
			
			_L1KMN.addChild(_Sdq7x);
			_kB6Tl.cacheAsBitmap = true;
			_kB6Tl.addChild(_L1KMN);
			
			
			var _9YocF:Sprite = new Sprite();
			_9YocF.graphics.beginFill(0xff0000);
			_9YocF.graphics.drawRect( -radius - 4 - 5, -radius - 4 - 5, radius + 4 + 5, radius + 4 + 5);
			_9YocF.graphics.endFill();
			_9YocF.cacheAsBitmap = true;
			this.addChild(_kB6Tl);
			this.addChild(_9YocF);
			_kB6Tl.mask = _9YocF;
			
						
		
												
			_Piu1j.blendMode = BlendMode.LAYER;
			_Piu1j.cacheAsBitmap = true;
			
			var _S3ER5:Sprite = new Sprite();
			_S3ER5.graphics.beginFill(0xff0000);
			_S3ER5.graphics.drawCircle(0, 0, radius - thinkness);
			_S3ER5.graphics.endFill();
			_S3ER5.cacheAsBitmap = true;
			_S3ER5.graphics.beginFill(0x0000ff);
			_S3ER5.graphics.drawRect(0, -radius, radius, radius*2);
			_S3ER5.graphics.endFill();
			
			_S3ER5.graphics.beginFill(0x0000ff);
			_S3ER5.graphics.drawRect( -radius, 0, radius, radius);
			_S3ER5.graphics.endFill();
			
			_S3ER5.blendMode = BlendMode.ERASE;
			
			
			
			var _zWGp4:Sprite = new Sprite();
			_zWGp4.graphics.beginFill(0x0000ff);
			_zWGp4.graphics.drawCircle(0, 0, radius);
			_zWGp4.graphics.endFill();
			
			_zWGp4.cacheAsBitmap = true;
					
			
			this.addChild(_Piu1j);
			this.addChild(_zWGp4);
			_Piu1j.mask = _zWGp4;
			
			_Piu1j.addChild(_bC43c);
			
			var _z8Ccv:Number = (2 * Math.PI * radius) / 4 / rt;
			
			rt = 90 / _z8Ccv;
		
				
			this._LLO55 = _z8Ccv;
			this._1m2q8 = radius;
			this._unquw = thinkness;
			
			_bC43c.cacheAsBitmap = true;
			
			var _pF0v8:Number = ((2 * Math.PI * radius) / 4) / _z8Ccv;
			for (var _s8Pfn:int = 0; _s8Pfn < _z8Ccv * 4; _s8Pfn++) {
				
				
				var _0Rk4F:Sprite = this._5a1PI(_pF0v8);
				if (_VISMv) _0Rk4F.scaleY *= -1;
							_bC43c.addChild(_0Rk4F);
				_0Rk4F.rotation = _s8Pfn*rt;
				
				_NIMXB.push(_0Rk4F);
				
			}
		
			_bC43c.alpha = 0.0;
			
			addEventListener(Event.ENTER_FRAME,_xUlqq);
			
								
			_Piu1j.addChild(_S3ER5); 		
		}
		
		
		public function _ZMhbJ(f:Number):void {
			
			var _nPFRF:Number = f;
			
			if (f < 0) _nPFRF = 0;
			if (f > 1) _nPFRF = 1;
			
			if (f == 0) {
				_bC43c.alpha = 0;
			} else {
				_bC43c.alpha = 1;
			}
			
			this._522KC = _nPFRF;
			
		}
		
		
		public function _xUlqq(e:Event):void {
			_bC43c.rotation += this._QbZkO*this._522KC;
		}
		
		private function _5a1PI(length:Number):Sprite {
			
			var _u4m9J:Sprite = new Sprite();
			
			var _i2vjj:Matrix = new Matrix();
			var _Qul2C:Array =[0xffffff,0xffffff];  
			var _1wKnK:Array =[0.8,0];
			var _pXks0:Array = [0,255];
			_i2vjj.createGradientBox(length, length/2,Math.PI/2,0,-length/2);
			_u4m9J.graphics.beginGradientFill(GradientType.LINEAR,_Qul2C,_1wKnK,_pXks0,_i2vjj);
			_u4m9J.graphics.drawCircle(-_1m2q8 + _unquw/2, 0, length / 2);
			_u4m9J.graphics.endFill();
			_u4m9J.cacheAsBitmap = true;	
			return _u4m9J;
		}
		
	}

}