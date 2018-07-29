package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.geom.Matrix;
	import com.greensock.TweenLite;
	




	
	public class Led extends Sprite 
	{
		
		private var _Jdf5E:int = 0;
		
		private var redLed:Sprite;
		private var yellowLed:Sprite;
		private var greenLed:Sprite;
		private var blueLed:Sprite;
		private var cyanLed:Sprite;
		
		public function Led() 
		{
						
			this.cacheAsBitmap = true;
			
			_QgZoU(12, 13, 20, 0x000000, 0x666666, this);
			_QgZoU(12, 12, 20, 0x8b8b8b, 0x8b8b8b, this);	
			_QgZoU(12, 12, 19, 0xfbfbfb, 0x8b8b8b, this);	
			_QgZoU(12, 12, 18, 0xe0e0e0, 0xb7b7b7, this);
			_QgZoU(12, 12, 16, 0xa9a9a9, 0xfefefe, this);
			_QgZoU(12, 12, 15, 0x6b6b6b, 0xededed, this);
			
			redLed = _QgZoU(12, 12, 14, 0xdd0000, 0x990000, this); 			yellowLed = _QgZoU(12, 12, 14, 0xdddd00, 0x999900, this); 			greenLed = _QgZoU(12, 12, 14, 0x00dd00, 0x009900, this); 			blueLed = _QgZoU(12, 12, 14, 0x0000dd, 0x0000dd, this); 			cyanLed = _QgZoU(12, 12, 14, 0x00dddd, 0x00dddd, this); 			
			redLed.alpha = 0.0;
			yellowLed.alpha = 0.0;
			greenLed.alpha = 0.0;
			blueLed.alpha = 0.0;
			cyanLed.alpha = 0.0;
			
			var _aFaNb:Sprite = new Sprite();
						_CGnY8( 4, 0, 16, 10, 0xFFFFFF, 0xFFFFFF, 0.8, 0.3, this);
			_CGnY8(6, 18, 12, 5, 0xFFFFFF, 0xFFFFFF, 0.0, 0.2, this);
			
			this.addChild(_aFaNb);
			
					}
		
		
		private function _QgZoU(xp:Number, yp:Number, rad:Number, c1:int, c2:int, parent:Sprite):Sprite {
			
			var _VIqy4:Matrix=new Matrix();
			var _U2XWQ:Array=[c1,c2];
			var _JCt73:Array=[1,1];
			var _ZbjWD:Array=[0,255];
			_VIqy4.createGradientBox(rad * 2, rad * 2, Math.PI / 2);
			
			var _8giAA:Sprite = new Sprite();
			
			_8giAA.graphics.beginGradientFill(GradientType.LINEAR,_U2XWQ,_JCt73,_ZbjWD,_VIqy4);
			_8giAA.graphics.drawCircle(xp, yp, rad);
			_8giAA.graphics.endFill();
		
			_8giAA.cacheAsBitmap = true;
			
			parent.addChild(_8giAA);
			
			return _8giAA;
		}
		
		private function _CGnY8(xp:Number, yp:Number, wp:Number, hp:Number, c1:int, c2:int, a1:Number, a2:Number, parent:Sprite):Sprite {
			
			var _VIqy4:Matrix=new Matrix();
			var _U2XWQ:Array=[c1,c2];
			var _JCt73:Array=[a1,a2];
			var _ZbjWD:Array=[0,255];
			_VIqy4.createGradientBox(wp, hp, Math.PI / 2);
			
			var _8giAA:Sprite = new Sprite();
			
			_8giAA.graphics.beginGradientFill(GradientType.LINEAR,_U2XWQ,_JCt73,_ZbjWD,_VIqy4);
			_8giAA.graphics.drawEllipse(xp, yp, wp, hp);
			_8giAA.graphics.endFill();
			
			_8giAA.cacheAsBitmap = true;
		
			parent.addChild(_8giAA);
			
			return _8giAA;
		}
		
		
		public function _mcjBp(value:int):void {
			
			if (this._Jdf5E != value) {
				   _PHOUz(this._Jdf5E, value);		
			}
			
		}
		
		private function _PHOUz(oldState:int, newState:int):void {
			switch (oldState) {
				case 0:  break;
				case 1: TweenLite.to(redLed, 1, {alpha: 0.0}); break;
				case 2: TweenLite.to(yellowLed, 1, {alpha: 0.0}); break;
				case 3: TweenLite.to(greenLed, 1, {alpha: 0.0}); break;
				case 4: TweenLite.to(blueLed, 1, {alpha: 0.0} ); break;
				case 5: TweenLite.to(cyanLed, 1, {alpha: 0.0}); break;
			}
			switch (newState) {
				case 0: break;
				case 1: TweenLite.to(redLed, 1, {alpha: 1.0}); break;
				case 2: TweenLite.to(yellowLed, 1, {alpha: 1.0}); break;
				case 3: TweenLite.to(greenLed, 1, {alpha: 1.0}); break;
				case 4: TweenLite.to(blueLed, 1, {alpha: 1.0} ); break;
				case 5: TweenLite.to(cyanLed, 1, {alpha: 1.0}); break;
			}
			_Jdf5E = newState;
		}
	}

}