package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class SimplePanel extends Sprite 
	{
		
		private var bg:Sprite = new Sprite();
		private var fg:Sprite = new Sprite();
		private var ov:Sprite = new Sprite();
		
		public function SimplePanel(w:Number,h:Number) 
		{
			
			this.cacheAsBitmap = true;
			
			render(w, h);
						
			this.addEventListener(Event.RESIZE, redraw);			
		}
		
		
		public function redraw(e:Event):void {
			
			this.removeChild(bg);
			this.removeChild(fg);
			this.removeChild(ov);
			
			render(this.width, this.height);
			
		}
		
		private function render(w:Number, h:Number):void {
			
			bg = new Sprite();
			bg.cacheAsBitmap = true;
			bg.graphics.beginFill(0x000000);
			bg.graphics.drawRoundRect(-1, -1, w+2, h+2, 15 ,15);
			bg.graphics.endFill();
						
			bg.graphics.beginFill(0x666666);
			bg.graphics.drawRoundRect(0, 0, w, h, 10 ,10);
			bg.graphics.endFill();
			
			this.addChild(bg);
			
			fg = new Sprite();
			fg.cacheAsBitmap = true;
			fg.graphics.beginFill(0xffffff);
			fg.graphics.drawRoundRect(0, 0, w, h-2, 10, 10);
			fg.graphics.endFill();
					
			this.addChild(fg);
			
			
			var mat2:Matrix = new Matrix();
			var colors2:Array =[0xffffff,0xdddddd];  
			var alphas2:Array =[1,1];
			var ratios2:Array =[0,255];
			mat2.createGradientBox(w, h-4,Math.PI/2,0,13);
			fg.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, mat2);
			
			fg.graphics.drawRoundRect(0, 0, w, h-4, 10, 10);
			fg.graphics.endFill();
			
			
			var mat3:Matrix = new Matrix();
			var colors3:Array =[0xffffff,0xdddddd];  
			var alphas3:Array =[1,1];
			var ratios3:Array =[0,255];
			mat3.createGradientBox(w, h-4,-Math.PI/2,0,-13);
			fg.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, mat2);
			
			fg.graphics.drawRoundRect(0, 0, w, h-4, 10, 10);
			fg.graphics.endFill();
			
			ov = new Sprite();
			
			this.addChild(ov);
			
		}
		
	}

}