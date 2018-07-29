package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.display.BlendMode;
	import flash.events.Event;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	




	public class PipeCurve extends Sprite 
	{
		
		private	var _ykOMU:Sprite = new Sprite();
		private var _zOJHH:Array = new Array();
		private var _8DZyl:Number = 0.0;
		
		private var _LgzNI:Sprite = new Sprite();
		
		private var _YoA5V:Number;
		private var _7H0bB:Number;
		private var _5ELOP:Number;
		
		public function PipeCurve(color:int, radius:int, thinkness:int, count:Number) 
		{
			this.cacheAsBitmap = true;
			
			
			var _K5Hfa:Sprite =  new Sprite();
			_K5Hfa.cacheAsBitmap = true;
			var _ERRqt:BlurFilter = new BlurFilter(5, 5);
			
			var _PI20P:Sprite = new Sprite();
			_PI20P.cacheAsBitmap = true;
			_PI20P.graphics.beginFill(0x000000);
			_PI20P.graphics.drawCircle(0, 0, radius + 4);
			_PI20P.graphics.endFill();
			
			_PI20P.filters = [_ERRqt];
			_PI20P.blendMode = BlendMode.LAYER;
			
			var _abZo4:Sprite = new Sprite();
			_abZo4.cacheAsBitmap = true;
			_abZo4.graphics.beginFill(0x00ff00);
			_abZo4.graphics.drawCircle(0, 0, radius - thinkness - 4);
			_abZo4.graphics.endFill();
			
			_abZo4.blendMode = BlendMode.ERASE;
			
			_PI20P.addChild(_abZo4);
			
					
			_K5Hfa.addChild(_PI20P);
			
			
			
			var _dHnfg:Sprite = new Sprite();
			_dHnfg.cacheAsBitmap = true;
			_dHnfg.graphics.beginFill(0xFFFFFF);
			_dHnfg.graphics.drawCircle(0, 0, radius +2 );
			_dHnfg.graphics.endFill();
			
			_dHnfg.graphics.beginFill(color);
			_dHnfg.graphics.drawCircle(0, 0, radius);
			_dHnfg.graphics.endFill();
			
			_dHnfg.graphics.beginFill(0xFFFFFF);
			_dHnfg.graphics.drawCircle(0, 0, radius - thinkness);
			_dHnfg.graphics.endFill();
			
			_dHnfg.blendMode = BlendMode.LAYER;
			
			
			var _hVI7Y:Sprite = new Sprite();
			_hVI7Y.cacheAsBitmap = true;
			_hVI7Y.graphics.beginFill(0x00ff00);
			_hVI7Y.graphics.drawCircle(0, 0, radius - thinkness - 2);
			_hVI7Y.graphics.endFill();
			
			_hVI7Y.blendMode = BlendMode.ERASE;
			
			_dHnfg.addChild(_hVI7Y);
			
			_K5Hfa.addChild(_dHnfg);
			
			
			var _VSRLZ:Sprite = new Sprite();
			_VSRLZ.graphics.beginFill(0xff0000);
			_VSRLZ.graphics.drawRect( -radius - 4 - 5, -radius - 4 - 5, radius + 4 + 5, radius + 4 + 5);
			_VSRLZ.graphics.endFill();
			
			_VSRLZ.cacheAsBitmap = true;
			this.addChild(_K5Hfa);
			this.addChild(_VSRLZ);
			_K5Hfa.mask = _VSRLZ;
			
						
		
												
			_ykOMU.blendMode = BlendMode.LAYER;
			
			var _BOLDr:Sprite = new Sprite();
			_BOLDr.graphics.beginFill(0xff0000);
			_BOLDr.graphics.drawCircle(0, 0, radius - thinkness);
			_BOLDr.graphics.endFill();
			_BOLDr.cacheAsBitmap = true;
			_BOLDr.graphics.beginFill(0x0000ff);
			_BOLDr.graphics.drawRect(0, -radius, radius, radius);
			_BOLDr.graphics.endFill();
			
			_BOLDr.graphics.beginFill(0x0000ff);
			_BOLDr.graphics.drawRect( -radius, 0, radius, radius);
			_BOLDr.graphics.endFill();
			
			_BOLDr.blendMode = BlendMode.ERASE;
			
			
			
			var _rrDUR:Sprite = new Sprite();
			_rrDUR.graphics.beginFill(0x0000ff);
			_rrDUR.graphics.drawCircle(0, 0, radius);
			_rrDUR.graphics.endFill();
			
			_ykOMU.cacheAsBitmap = true;
					
			
			this.addChild(_ykOMU);
			this.addChild(_rrDUR);
			_ykOMU.mask = _rrDUR;
			
			var _yDQc7:Number = ((2 * Math.PI * radius) / 4) / count;
			for (var _SJUwn:int = 0; _SJUwn < count; _SJUwn++) {
				var _Qsdpu:Sprite = this._8AIeQ(_yDQc7);
				_zOJHH.push(_Qsdpu);
				_ykOMU.addChild(_Qsdpu);
			}
			
			this._YoA5V = count;
			this._7H0bB = radius;
			this._5ELOP = thinkness;
			
			addEventListener(Event.ENTER_FRAME,_zU3KQ);
			
				
		
			
			_ykOMU.addChild(_BOLDr); 		
		}
		
		
		public function _zU3KQ(e:Event):void {
			
			
			for (var _k3nru:int = 0; _k3nru < _YoA5V; _k3nru++) {
			
				var _EZ697:Sprite = _zOJHH[_k3nru] as Sprite;
				
				_EZ697.x = Math.cos(Math.PI+_k3nru*((Math.PI/2)/_YoA5V)+_8DZyl)*(_7H0bB - _5ELOP / 2);
				_EZ697.y = Math.sin(Math.PI+_k3nru*((Math.PI/2)/_YoA5V)+_8DZyl)*(_7H0bB - _5ELOP / 2);
				
				var _90NaE:Number = (Math.PI / 180) * _8DZyl;
				
				_EZ697.rotation = _k3nru * (90/_YoA5V);
			
			}
			
			_8DZyl += 0.01;
			
			if (_8DZyl > 0.15) _8DZyl = 0.0;
		}
		
		private function _8AIeQ(length:Number):Sprite {
			
			var _9Z5Uh:Sprite = new Sprite();
			
			var _qlphI:Matrix = new Matrix();
			var _xI5Z1:Array =[0xffffff,0xffffff];  
			var _2Gzk3:Array =[1,0];
			var _p2OVB:Array = [0,255];
			_qlphI.createGradientBox(length, length,Math.PI/2,0,-length);
			_9Z5Uh.graphics.beginGradientFill(GradientType.LINEAR,_xI5Z1,_2Gzk3,_p2OVB,_qlphI);
			_9Z5Uh.graphics.drawCircle(0, 0, length / 2);
			_9Z5Uh.graphics.endFill();
			_9Z5Uh.cacheAsBitmap = true;			
			return _9Z5Uh;
		}
		
	}

}