package com.alarex.visual.component 
{
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.filters.BlurFilter;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class GaugeFrame extends Sprite 
	{
		
		public function GaugeFrame() 
		{
			var d:Number = 187 / 2;
			
			var b1:BlurFilter = new BlurFilter(5, 5);
			
			this.cacheAsBitmap = true;
			
			var ff:Sprite = new Sprite();
			ff.cacheAsBitmap = true;
			ff.graphics.beginFill(0xFFFFFF);
			ff.graphics.drawCircle(d, d+1, d+5);
			ff.graphics.endFill();
			
			this.addChild(ff);
			ff.alpha = 0.5;
			ff.filters = [ b1 ];
			
			var i1:Sprite = new Sprite();
			i1.cacheAsBitmap = true;
			i1.graphics.beginFill(0x000000);
			i1.graphics.drawCircle(d, d+1, d+2);
			i1.graphics.endFill();
			
			var mat3:Matrix = new Matrix();
			var colors3:Array = colors  = [ 0x000000, 0x000000, 0xAAAAAA];
			var alphas3:Array =[1,1,1];
			var ratios3:Array =[0,60,255];
			mat3.createGradientBox(d * 2, d * 2, Math.PI / 2, 0, 0);
			i1.graphics.beginGradientFill(GradientType.LINEAR, colors3, alphas3, ratios3, mat3);
			i1.graphics.drawCircle(d, d+2, d - 2);
			i1.graphics.endFill();
						
			var mat2:Matrix = new Matrix();
			var colors2:Array = colors  = [0x000000, 0x000000, 0xFFFFFF];
			var alphas2:Array =[1,1,1];
			var ratios2:Array =[0,200,255];
			mat2.createGradientBox(d * 2, d * 2, Math.PI / 2, 0, 0);
			i1.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, mat2);
			i1.graphics.drawCircle(d, d, d - 4);
			i1.graphics.endFill();
						
			var mat:Matrix = new Matrix();  // stred
			var colors:Array = colors  = [0x000000, 0x000000, 0xAAAAAA];
			var alphas:Array =[1,1,1];
			var ratios:Array =[0,220,255];
			mat.createGradientBox(d * 2, d * 2, Math.PI / 2, 0, 0);
			i1.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, mat);
			i1.graphics.drawCircle(d, d-2, d - 4);
			i1.graphics.endFill();
			
			this.addChild(i1);
			
			var fr1:Sprite = new Sprite();
			
			var mat5:Matrix = new Matrix();  // stred
			var colors5:Array = colors  = [0xFFFFFF, 0x999999];
			var alphas5:Array =[1,1];
			var ratios5:Array =[0,255];
			mat5.createGradientBox(d * 4, d * 1.75, Math.PI / 2, -d, -d*0.5);
			fr1.graphics.beginGradientFill(GradientType.RADIAL, colors5, alphas5, ratios5, mat5);
			fr1.graphics.drawEllipse( -d, -d/2, d * 4, d*1.85);
			fr1.graphics.endFill();
			fr1.cacheAsBitmap = true;
			this.addChild(fr1);
			
			
			var fr2:Sprite = new Sprite();
			fr2.graphics.beginFill(0xffffff);
			fr2.graphics.drawCircle(d, d-2, d - 4);
			fr2.graphics.endFill();
			fr2.cacheAsBitmap = true;
			this.addChild(fr2);
			
			fr1.mask = fr2;
			
			
			var ovr1:Sprite = new Sprite();
			
			ovr1.graphics.beginFill(0x000000);
			ovr1.graphics.drawCircle(d, d, d - 11);
			ovr1.graphics.endFill();
			ovr1.cacheAsBitmap = true;
			
			var mat4:Matrix = new Matrix();
			var colors4:Array = colors  = [0xFFFFFF, 0x000000, 0x000000, 0xFFFFFF];
			var alphas4:Array =[1, 1,1,1];
			var ratios4:Array =[0,80,220,255];
			mat4.createGradientBox(d * 2 - 26, d * 2 - 26, Math.PI / 2, 0, 0);
			ovr1.graphics.beginGradientFill(GradientType.LINEAR, colors4, alphas4, ratios4, mat4);
			ovr1.graphics.drawCircle(d, d, d - 13);
			ovr1.graphics.endFill();
			
			ovr1.graphics.beginFill(0x000000);
			ovr1.graphics.drawCircle(d, d, d - 15);
			ovr1.graphics.endFill();
			
			this.addChild(ovr1);
			
			var i2:Sprite = new Sprite();
			
			i2.graphics.beginFill(0x000000);
			i2.graphics.drawCircle(d, d, d - 17);
			i2.graphics.endFill();
			
			i2.cacheAsBitmap = true;
			
			this.addChild(i2);
			
			var mat6:Matrix = new Matrix();
			var colors6:Array = colors  = [ 0xAAAAAA, 0xAAAAAA, 0xAAAAAA];
			var alphas6:Array =[0.5,0.3,0];
			var ratios6:Array =[0,150,255];
			mat6.createGradientBox(d*2, d*2, 0, 0, d);
			i2.graphics.beginGradientFill(GradientType.RADIAL, colors6, alphas6, ratios6, mat6);
			i2.graphics.drawCircle(d, d, d - 13);
			i2.graphics.endFill();
			
			var mat7:Matrix = new Matrix();
			var colors7:Array = colors  = [ 0xAAAAAA, 0xAAAAAA, 0xAAAAAA];
			var alphas7:Array =[0.4,0.2,0];
			var ratios7:Array =[0,150,255];
			mat7.createGradientBox(d*2, d*2, 0, 0, -d);
			i2.graphics.beginGradientFill(GradientType.RADIAL, colors7, alphas7, ratios7, mat7);
			i2.graphics.drawCircle(d, d, d - 13);
			i2.graphics.endFill();
		}
		
	}

}