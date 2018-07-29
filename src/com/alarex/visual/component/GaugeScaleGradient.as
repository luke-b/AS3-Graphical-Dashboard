package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.display.BlendMode;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class GaugeScaleGradient extends Sprite 
	{
		
		public function GaugeScaleGradient(xp:Number, yp:Number,rd:Number,thk:Number,colors2:Array,fr:Number) 
		{
			this.cacheAsBitmap = true;
			
			var bg:Sprite = new Sprite();
			bg.graphics.beginFill(0x000000);
			bg.graphics.drawCircle(xp, yp, rd+fr);
			bg.graphics.endFill();
			bg.blendMode = BlendMode.LAYER;
			bg.cacheAsBitmap = true;
			this.addChild(bg);
			
			var bg2:Sprite = new Sprite();
			bg2.graphics.beginFill(0xFFFFFF);
			bg2.graphics.drawCircle(xp, yp, rd - thk - fr);
			bg2.graphics.endFill();
			bg2.graphics.beginFill(0xFFFFFF);
			bg2.graphics.drawRect(xp - (rd+fr), yp+fr, (rd+fr )* 2, (rd+fr));
			bg2.graphics.endFill();
			bg2.blendMode = BlendMode.ERASE;
			bg2.cacheAsBitmap = true;
			bg.addChild(bg2);
			
			
			
			
			var sc:Sprite = new Sprite();
			
			var mat2:Matrix = new Matrix();
			var alphas2:Array = new Array();
			var ratios2:Array = new Array();
			
			for (var i:int = 0; i < colors2.length; i++) {
				alphas2.push(1);
				ratios2.push((255.0 / colors2.length) * i);
			}
			
			mat2.createGradientBox(rd * 2, rd,0,rd/2,0);
			sc.graphics.beginGradientFill(GradientType.LINEAR,colors2,alphas2,ratios2,mat2);
			sc.graphics.drawCircle(xp, yp, rd);
			sc.graphics.endFill();
			sc.blendMode = BlendMode.LAYER;
			sc.cacheAsBitmap = true;
			this.addChild(sc);
			
			var msk:Sprite = new Sprite();
			msk.graphics.beginFill(0x00FF00);
			msk.graphics.drawCircle(xp, yp, rd - thk);
			msk.graphics.endFill();
			msk.graphics.beginFill(0x00ff00);
			msk.graphics.drawRect(xp - rd, yp, rd * 2, rd);
			msk.graphics.endFill();
			msk.blendMode = BlendMode.ERASE;
			msk.cacheAsBitmap = true;
			sc.addChild(msk);
			
	
			
			
			//sc.mask = msk;
		}
		
	}

}