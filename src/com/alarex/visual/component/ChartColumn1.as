package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class ChartColumn1 extends Sprite 
	{
		private const LINES:int = 2;
		
		public function ChartColumn1(xp:Number, yp:Number, w:Number, h:Number, prev:Number, curr:Number, dropShadow:Boolean=true, colors5x:Array=null,colors4x:Array=null) 
		{
			
			this.cacheAsBitmap = false;
			
			var colors5:Array;
			if (colors5x == null) {
				colors5 = [0xffff00, 0xff5500];
			}
			
			var colors4:Array;
			if (colors4x == null) {
				colors4 = [0x0088ff, 0x0088ff];
			}
			
			
			
			if (dropShadow) {
				
			
			var bg:Sprite = new Sprite();
			
			
			bg.graphics.beginFill(0xffffff);
			bg.graphics.drawRect(0, h - LINES, w, LINES);
			bg.graphics.endFill();
			
			var mat4:Matrix = new Matrix();
			//var colors4:Array =[0x0000ff,0x0000ff];  
			var alphas4:Array =[1,0.0];
			var ratios4:Array =[0,255];
			mat4.createGradientBox(w, h,Math.PI/2,0,0);
			bg.graphics.beginGradientFill(GradientType.LINEAR, colors4, alphas4, ratios4, mat4);
			
			bg.graphics.drawRect(0, 0, w, h-LINES);
			bg.graphics.endFill();
			
			bg.graphics.beginFill(0x000000,0.5);
			bg.graphics.drawRect(w/2, 0, LINES/2, h-LINES);
			bg.graphics.endFill();
			
			var cnt:int = (h-LINES) / w;
			
			for (var j:int = 1; j < cnt+1; j++) {
				bg.graphics.beginFill(0x000000,0.5);
				bg.graphics.drawRect(0, h-j * w, w, LINES / 2);
				bg.graphics.endFill();
			}
		
			this.addChild(bg);
			bg.x = xp;
			bg.y = yp;
			bg.alpha = 1;
		}
			
			
			
			
			var scale:Sprite = new Sprite();
			
			var mat5:Matrix = new Matrix();
			//var colors5:Array =[0xff0000,0xffff00];  
			var alphas5:Array =[1,1];
			var ratios5:Array =[0,255];
			mat5.createGradientBox(w, h-LINES,Math.PI/2,0,0);
			scale.graphics.beginGradientFill(GradientType.LINEAR, colors5, alphas5, ratios5, mat5);
			scale.graphics.drawRect(-w/2, 0, w - LINES/2 + LINES/2, h - LINES);
			scale.graphics.endFill();
			
			scale.cacheAsBitmap = false;
			
			
			for (var k:int = 0; k < cnt+1; k++) {
				scale.graphics.beginFill(0xffffff,0.5);
				scale.graphics.drawRect(-w/2, h-k * w, w, LINES / 2);
				scale.graphics.endFill();
			}
			
			scale.graphics.beginFill(0xffffff,0.5);
			scale.graphics.drawRect(-w/2, 0, LINES/2, h);
			scale.graphics.endFill();
			
			//shading below
			//scale.graphics.beginFill(0x000000,0.5);
			//scale.graphics.moveTo( -w / 2, h - h * prev);
			//scale.graphics.lineTo( w / 2, h - h * curr);
			//scale.graphics.lineTo( w / 2, (h - h * curr)+LINES*4 );
			//scale.graphics.lineTo( -w / 2, (h - h * prev)+LINES*4 );
			
			this.addChild(scale);
			scale.x = xp;
			scale.y = yp;
			
			var plane:Sprite = new Sprite();
			
			plane.graphics.beginFill(0xffffff);
			plane.graphics.moveTo( -w / 2, h - h * prev);
			plane.graphics.lineTo( w / 2, h - h * curr);
			plane.graphics.lineTo( w / 2, h - LINES);
			plane.graphics.lineTo( -w / 2, h - LINES);
			plane.graphics.endFill();
			plane.x = xp;
			plane.y = yp;
			
			plane.cacheAsBitmap = false;
			
			this.addChild(plane);
			scale.mask = plane;
			
			var lines:Sprite = new Sprite();
			
			lines.graphics.lineStyle(LINES*4, 0x000000, 0.2);
			lines.graphics.moveTo( -w / 2, h - h * prev);
			lines.graphics.lineTo( w / 2, h - h * curr);
			
			lines.graphics.lineStyle(LINES*4, 0x000000, 0.2);
			lines.graphics.moveTo( -w / 2, h - LINES/2);
			lines.graphics.lineTo( w / 2, h - LINES/2);
			
			lines.graphics.lineStyle(LINES, 0xffffff, 1);
			lines.graphics.moveTo( -w / 2, h - h * prev);
			lines.graphics.lineTo( w / 2, h - h * curr);
			
			lines.cacheAsBitmap = false;
			
			this.addChild(lines);
			lines.x = xp;
			lines.y = yp;
			  
			var lineMask:Sprite = new Sprite();
			lineMask.graphics.beginFill(0x000000);
			lineMask.graphics.drawRect( -w*0.5, 0, w*1.5, h - LINES);
			lineMask.graphics.endFill();
			this.addChild(lineMask);
			lineMask.x = xp;
			lineMask.y = yp;
			
			lineMask.cacheAsBitmap = false;
			
			lines.mask = lineMask;
			
		
		}
		
	}

}