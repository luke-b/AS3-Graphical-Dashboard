package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class BoilerSymbol extends Sprite 
	{
		
		public function BoilerSymbol() 
		{
			this.cacheAsBitmap = true;
			
			var bg:Sprite = new Sprite();
			
			var bf:BlurFilter = new BlurFilter(10, 10);
			
			bg.graphics.beginFill(0x000000);
			bg.graphics.moveTo(1, 0);
			bg.graphics.curveTo(12,-6,25, -6);
			bg.graphics.curveTo(37,-6,49, 0)
			bg.graphics.lineTo(50, 2);
			bg.graphics.lineTo(50, 84);
			bg.graphics.lineTo(49, 86);
			bg.graphics.curveTo(37, 92,25, 92);
			bg.graphics.curveTo(12,92,1, 86);
			bg.graphics.lineTo(0, 84);
			bg.graphics.lineTo(0, 2);
			bg.graphics.endFill();
			bg.alpha = 0.5;
			bg.filters = [bf];
			
			bg.scaleY = 1.1;
			
			this.addChild(bg);
			bg.y = 3;
			
			var fg:Sprite = new Sprite();
			fg.cacheAsBitmap = true;
			
			var mat:Matrix = new Matrix();
			var colors:Array = [0xffffff, 0xaaaaaa];  
			var alphas:Array =[1,1];
			var ratios:Array =[0,255];
			mat.createGradientBox(50, 98, Math.PI/2,0,0);
			fg.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, mat);
			fg.graphics.moveTo(1, 0);
			fg.graphics.curveTo(12,-6,25, -6);
			fg.graphics.curveTo(37,-6,49, 0)
			fg.graphics.lineTo(50, 2);
			fg.graphics.lineTo(50, 84);
			fg.graphics.lineTo(49, 86);
			fg.graphics.curveTo(37, 92,25, 92);
			fg.graphics.curveTo(12,92,1, 86);
			fg.graphics.lineTo(0, 84);
			fg.graphics.lineTo(0, 2);
			fg.graphics.endFill();
			
			var mat2:Matrix = new Matrix();
			var colors2:Array = [0xcccccc,0xeeeeee, 0xffffff, 0xeeeeee];  
			var alphas2:Array =[1,1,1,1];
			var ratios2:Array =[0,70,150,255];
			mat2.createGradientBox(50, 98, 0,0,0);
			fg.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, mat2);
			fg.graphics.moveTo(1, 0);
			fg.graphics.curveTo(12,-3,25, -3);
			fg.graphics.curveTo(37,-3,49, 0)
			fg.graphics.lineTo(50, 2);
			fg.graphics.lineTo(50, 84);
			fg.graphics.lineTo(49, 86);
			fg.graphics.curveTo(37, 89,25, 89);
			fg.graphics.curveTo(12,89,1, 86);
			fg.graphics.lineTo(0, 84);
			fg.graphics.lineTo(0, 2);
			fg.graphics.endFill();
			
			this.addChild(fg);
			
			
			var ovr:Sprite = new Sprite();
			ovr.cacheAsBitmap = true;
			
			ovr.graphics.beginFill(0x000000);
			ovr.graphics.moveTo(0, 7);
			ovr.graphics.curveTo(17, 7-2, 25, 7-2);
			ovr.graphics.curveTo(37, 7 - 2, 50, 7);
			ovr.graphics.lineTo(50, 10);
			ovr.graphics.curveTo(37, 10 - 2, 25, 10 - 2);
			ovr.graphics.curveTo(17, 10 - 2, 0, 10);
			ovr.graphics.endFill();
			
			
			ovr.graphics.beginFill(0x000000);
			ovr.graphics.moveTo(0, 7+70);
			ovr.graphics.curveTo(17, 7 +2+70, 25, 7+2+70);
			ovr.graphics.curveTo(37, 7 + 2+70, 50, 7+70);
			ovr.graphics.lineTo(50, 10+70);
			ovr.graphics.curveTo(37, 10 + 2 + 70, 25, 10 + 2 + 70);
			ovr.graphics.curveTo(17, 10 + 2+70, 0, 10+70);
			ovr.graphics.endFill();
			
			this.addChild(ovr);
			
			ovr.alpha = 0.1;
		}
		
	}

}