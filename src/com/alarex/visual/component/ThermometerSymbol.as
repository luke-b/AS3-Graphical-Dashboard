package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.filters.BlurFilter;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class ThermometerSymbol extends Sprite 
	{
		
		public function ThermometerSymbol() 
		{
			this.cacheAsBitmap = true;
			
			var bg:Sprite = new Sprite();
			bg.cacheAsBitmap = true;
			bg.graphics.beginFill(0x000000);
			bg.graphics.moveTo(0, 0);
			bg.graphics.curveTo(0, -10, 8, -10);
			bg.graphics.curveTo(16, -10, 16, 0);
			bg.graphics.lineTo(16, 85 - 26);
			bg.graphics.curveTo(8 + 13, 85 - 23, 8 + 13, 85 - 13);
			bg.graphics.curveTo(8 + 13, 85, 8, 85);
			bg.graphics.curveTo( -5, 85, -5, 85 - 13);
			bg.graphics.curveTo( -5, 85 - 23, 0, 85 - 26);
			bg.graphics.lineTo(0, 0);
			bg.graphics.endFill();
			bg.alpha = 0.5;
			
			this.addChild(bg);
			
			var bf:BlurFilter = new BlurFilter(10, 10);
			bg.filters = [bf];
			
			
			var d:Sprite = new Sprite();
			d.cacheAsBitmap = true;
			d.graphics.beginFill(0xffffff);
			d.graphics.moveTo(0, 0);
			d.graphics.curveTo(0, -10, 8, -10);
			d.graphics.curveTo(16, -10, 16, 0);
			d.graphics.lineTo(16, 85 - 26);
			d.graphics.curveTo(8 + 13, 85 - 23, 8 + 13, 85 - 13);
			d.graphics.curveTo(8 + 13, 85, 8, 85);
			d.graphics.curveTo( -5, 85, -5, 85 - 13);
			d.graphics.curveTo( -5, 85 - 23, 0, 85 - 26);
			d.graphics.lineTo(0, 0);
			d.graphics.endFill();
			
			var mat2:Matrix = new Matrix();
			var colors2:Array =[0x00ff00,0xffff00,0xff0000];  
			var alphas2:Array =[1,1,1];
			var ratios2:Array =[0,150,255];
			mat2.createGradientBox(14, 79,Math.PI/2,0,-15);
			d.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, mat2);
			
			d.graphics.moveTo(5, 0);
			d.graphics.curveTo(5, -5, 5+3, -5);
			d.graphics.curveTo(11, -5, 11, 0);
			d.graphics.lineTo(11, 85 - 22);
			d.graphics.curveTo(8 + 8, 85 - 20, 8 + 8, 85 - 13);
			d.graphics.curveTo(8 + 8, 85- 6, 8, 85-5);
			d.graphics.curveTo( 5-5, 85-6, 5-5, 85 - 13);
			d.graphics.curveTo( 5-5, 85 - 20, 5, 85 - 22);
			d.graphics.lineTo(5, 0);
			d.graphics.endFill();
			
			this.addChild(d);
			
			
			var sunSpot:Sprite = new Sprite();
			sunSpot.graphics.beginFill(0xffffff);
			sunSpot.graphics.drawCircle(6, 85 - 16, 4);
			sunSpot.graphics.endFill();
			sunSpot.alpha = 0.7;
			
			sunSpot.cacheAsBitmap = true;
			this.addChild(sunSpot);
			
			
			
		}
		
	}

}