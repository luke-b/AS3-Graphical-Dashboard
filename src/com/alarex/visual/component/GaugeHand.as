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
	public class GaugeHand extends Sprite 
	{
		private var shadow:Sprite = new Sprite();
		private var hand:Sprite = new Sprite();
			
		
		public function GaugeHand() 
		{
			
			this.cacheAsBitmap = true;
			
			var b:BlurFilter = new BlurFilter(5, 5);
			
			shadow.cacheAsBitmap = true;
			
			shadow.graphics.beginFill(0x000000);
			shadow.graphics.moveTo( -9, 0);
			shadow.graphics.lineTo(  0, -72);
			shadow.graphics.lineTo(  9, 0);
			shadow.graphics.lineTo( -9, 0);
			shadow.graphics.endFill();
			
			shadow.graphics.beginFill(0x000000);
			shadow.graphics.drawCircle(0, 0, 15);
			shadow.graphics.endFill();
			
			this.addChild(shadow);
			shadow.filters = [b];
			
			var mat9:Matrix = new Matrix();
			var colors9:Array =  [ 0xFFFFFF, 0xAAAAAA, 0xAAAAAA];
			var alphas9:Array =[1,1,1];
			var ratios9:Array =[0,150,255];
			mat9.createGradientBox(10, 70, Math.PI/2, 0, -50);
			hand.graphics.beginGradientFill(GradientType.LINEAR, colors9, alphas9, ratios9, mat9);
			hand.graphics.moveTo( -5, 0);
			hand.graphics.lineTo(  0, -70);
			hand.graphics.lineTo(  5, 0);
			hand.graphics.lineTo( -5, 0);
			hand.graphics.endFill();
			
			hand.cacheAsBitmap = true;
			
		
			
			this.addChild(hand);
		}
		
	}

}