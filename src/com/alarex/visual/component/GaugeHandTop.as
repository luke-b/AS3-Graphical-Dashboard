package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class GaugeHandTop extends Sprite 
	{
		
		private var hand:Sprite = new Sprite();
		
		public function GaugeHandTop() 
		{
			this.cacheAsBitmap = true;
			
			var mat7:Matrix = new Matrix();
			var colors7:Array =  [ 0xFFFFFF, 0xFFFFFF, 0xAAAAAA];
			var alphas7:Array =[1,1,1];
			var ratios7:Array =[0,150,255];
			mat7.createGradientBox(26, 26, Math.PI/2, 0, -20);
			hand.graphics.beginGradientFill(GradientType.LINEAR, colors7, alphas7, ratios7, mat7);
			hand.graphics.drawCircle(0, 0, 13);
			hand.graphics.endFill();
			hand.cacheAsBitmap = true;
			
			var mat8:Matrix = new Matrix();
			var colors8:Array =  [ 0xFFFFFF, 0xFFFFFF, 0xAAAAAA];
			var alphas8:Array =[1,1,1];
			var ratios8:Array =[0,150,255];
			mat8.createGradientBox(26, 26, -Math.PI/2, 0, -10);
			hand.graphics.beginGradientFill(GradientType.LINEAR, colors8, alphas8, ratios8, mat8);
			hand.graphics.drawCircle(0, 0, 10);
			hand.graphics.endFill();
			
			
			this.addChild(hand);
		}
		
	}

}