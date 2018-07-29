package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	




	public class GaugeHandTop extends Sprite 
	{
		
		private var _1PAj4:Sprite = new Sprite();
		
		public function GaugeHandTop() 
		{
			this.cacheAsBitmap = true;
			
			var _6ViaM:Matrix = new Matrix();
			var _bQhoc:Array =  [ 0xFFFFFF, 0xFFFFFF, 0xAAAAAA];
			var _N30KE:Array =[1,1,1];
			var _7qv1m:Array =[0,150,255];
			_6ViaM.createGradientBox(26, 26, Math.PI/2, 0, -20);
			_1PAj4.graphics.beginGradientFill(GradientType.LINEAR, _bQhoc, _N30KE, _7qv1m, _6ViaM);
			_1PAj4.graphics.drawCircle(0, 0, 13);
			_1PAj4.graphics.endFill();
			_1PAj4.cacheAsBitmap = true;
			
			var _wXp58:Matrix = new Matrix();
			var _eptd8:Array =  [ 0xFFFFFF, 0xFFFFFF, 0xAAAAAA];
			var _VBEaO:Array =[1,1,1];
			var _fjqCx:Array =[0,150,255];
			_wXp58.createGradientBox(26, 26, -Math.PI/2, 0, -10);
			_1PAj4.graphics.beginGradientFill(GradientType.LINEAR, _eptd8, _VBEaO, _fjqCx, _wXp58);
			_1PAj4.graphics.drawCircle(0, 0, 10);
			_1PAj4.graphics.endFill();
			
			
			this.addChild(_1PAj4);
		}
		
	}

}