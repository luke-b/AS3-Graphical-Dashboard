package com.alarex.visual.component 
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.display.BlendMode;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.display.DisplayObject;
	
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class GlassPanel extends Sprite 
	{
		private const BLUR_BORDER_THIKNESS:Number = 5;
		private const ROUNDNESS:Number = 20;
		
		private var holder:Sprite = new Sprite();
		
		private var blurBorder:Sprite = new Sprite();
				
		public function GlassPanel(w:Number,h:Number ) 
		{
			this.cacheAsBitmap = true;
			
			this.addChild(getGradientRect(-1, -1, w+2, h+2, 30+2, 28+2, 2,[0x000000, 0x000000,0x000000],[0.5,0.0,0.1],[0,50,100]));
			this.addChild(getGradientRect(1, 1, w - 2, h - 2, 30 - 2, 28 - 4, 4, [0xffffff, 0x008888,0xffffff,0x008888],[1,0.2,1,0.2],[0,100,150,255]));
			
			this.addChild(getGradientRect(3, 3, w - 6, h- 6, 30 - 6, 28 - 6, 2, [0xffffff, 0x008888,0x004444],[1,0.2,0.3],[0,150,255]));
			
			//this.addChild(getCutoutRect(3, 3, 320-6, 240-6, 30-6, 28-6, 1));
			
			var ov:Sprite = new Sprite();
			
			var mat3:Matrix = new Matrix();
			var colors3:Array =[0xffffff,0xffffff,0xffffff];  
			var alphas3:Array =[0.3,0.3,0.5];
			var ratios3:Array =[0,170,255];
			mat3.createGradientBox(w-10, h-10,Math.PI/2,0,0);
			ov.graphics.beginGradientFill(GradientType.LINEAR, colors3, alphas3, ratios3, mat3);
			ov.graphics.drawRoundRect(5, 5, w - 10, h - 10, 28 - 6, 28 - 6);
			ov.graphics.endFill();
			ov.cacheAsBitmap = true;
			this.addChild(ov);
			
			
			
			this.addChild(holder);
			
			var overlay:Sprite = new Sprite();
			
			var mat4:Matrix = new Matrix();
			var colors4:Array =[0xffffff,0xffffff];  
			var alphas4:Array =[1,0.3];
			var ratios4:Array =[0,255];
			mat4.createGradientBox(w-10, h*0.6,Math.PI/2,0,0);
			overlay.graphics.beginGradientFill(GradientType.LINEAR, colors4, alphas4, ratios4, mat4);
			overlay.cacheAsBitmap = true;
			overlay.graphics.moveTo(5 + 12, 5);
			overlay.graphics.lineTo(w - 5 - 12, 5);
			overlay.graphics.curveTo(w-5,5+1,w - 5, 5 +12 );
			overlay.graphics.lineTo(w - 5, h * 0.3);
			overlay.graphics.curveTo(w/2,h*0.2,5, h * 0.6);
			overlay.graphics.lineTo(5, 5 + 12);
			overlay.graphics.curveTo(5+1,5+1,5 + 12, 5);
			overlay.graphics.endFill();
			
			this.addChild(overlay);
		}
		
		public function addUnderOverlay(sp:DisplayObject):void {
			this.holder.addChild(sp);
		}
		
		public function getCutoutRect(xp:Number, yp:Number, w:Number, h:Number, rad:Number,rad2:Number, thk:Number,clr:int=0xffffff):Sprite {
			
			var output:Sprite = new Sprite();
			output.blendMode = BlendMode.LAYER;
		
			output.graphics.beginFill(clr);
			output.graphics.drawRoundRect(xp, yp, w, h, rad, rad);
			output.graphics.endFill();
			
			var cut:Sprite = new Sprite();
			cut.blendMode = BlendMode.ERASE;
			
			cut.graphics.beginFill(0x000000);
			cut.graphics.drawRoundRect(xp + thk, yp + thk, w - thk * 2, h - thk * 2, rad2, rad2);
			cut.graphics.endFill();
			output.addChild(cut);
			
			return output;
			
		}
		
		public function getGradientRect(xp:Number, yp:Number, w:Number, h:Number, rad:Number,rad2:Number, thk:Number,colors2:Array, alphas2:Array, ratios2:Array, rotation:Number=Math.PI/2):Sprite {
			
			var output:Sprite = new Sprite();
			output.blendMode = BlendMode.LAYER;
		
			var mat2:Matrix = new Matrix();
			mat2.createGradientBox(w, h,rotation,0,0);
			output.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, mat2);
			
			output.graphics.drawRoundRect(xp, yp, w, h, rad, rad);
			output.graphics.endFill();
			
			var cut:Sprite = new Sprite();
			cut.blendMode = BlendMode.ERASE;
			
			cut.graphics.beginFill(0x000000);
			cut.graphics.drawRoundRect(xp + thk, yp + thk, w - thk * 2, h - thk * 2, rad2, rad2);
			cut.graphics.endFill();
			output.addChild(cut);
			
			return output;
			
		}
		
	}

}