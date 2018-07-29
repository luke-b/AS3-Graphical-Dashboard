package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class WeatherPanel extends Sprite 
	{
		
		public function WeatherPanel() 
		{
			//   340x130
			
			this.cacheAsBitmap = true;
			
			var mat:Matrix = new Matrix();
			var colors:Array =[0xffffff,0xffffff];  
			var alphas:Array =[1,0.0];
			var ratios:Array =[0,255];
			mat.createGradientBox(340, 130,0,0,0);
			this.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, mat);
			
			this.graphics.moveTo(0, 0);
			this.graphics.lineTo(340, 0);
			this.graphics.lineTo(340, 130);
			this.graphics.lineTo(130, 130);
			this.graphics.lineTo(0, 0);
			this.graphics.endFill();
			
		
			
			var mat2:Matrix = new Matrix();
			var colors2:Array =[0x000000,0x000000];  
			var alphas2:Array =[0.3,0.0];
			var ratios2:Array =[0,255];
			mat2.createGradientBox(340, 10,Math.PI/2,0,130);
			this.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, mat2);
			
			this.graphics.moveTo(130, 130);
			this.graphics.lineTo(340, 130);
			this.graphics.lineTo(340, 140);
			this.graphics.lineTo(140, 140);
			this.graphics.endFill();
			
		}
		
	}

}