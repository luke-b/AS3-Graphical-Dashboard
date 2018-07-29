package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	




	public class WeatherPanel extends Sprite 
	{
		
		public function WeatherPanel() 
		{
						
			this.cacheAsBitmap = true;
			
			var _pVM1y:Matrix = new Matrix();
			var _rR43x:Array =[0xffffff,0xffffff];  
			var _udQ2a:Array =[1,0.0];
			var _cDoAr:Array =[0,255];
			_pVM1y.createGradientBox(340, 130,0,0,0);
			this.graphics.beginGradientFill(GradientType.LINEAR, _rR43x, _udQ2a, _cDoAr, _pVM1y);
			
			this.graphics.moveTo(0, 0);
			this.graphics.lineTo(340, 0);
			this.graphics.lineTo(340, 130);
			this.graphics.lineTo(130, 130);
			this.graphics.lineTo(0, 0);
			this.graphics.endFill();
			
		
			
			var _OhaeM:Matrix = new Matrix();
			var _0IWdq:Array =[0x000000,0x000000];  
			var _cVX4M:Array =[0.3,0.0];
			var _1VA5R:Array =[0,255];
			_OhaeM.createGradientBox(340, 10,Math.PI/2,0,130);
			this.graphics.beginGradientFill(GradientType.LINEAR, _0IWdq, _cVX4M, _1VA5R, _OhaeM);
			
			this.graphics.moveTo(130, 130);
			this.graphics.lineTo(340, 130);
			this.graphics.lineTo(340, 140);
			this.graphics.lineTo(140, 140);
			this.graphics.endFill();
			
		}
		
	}

}