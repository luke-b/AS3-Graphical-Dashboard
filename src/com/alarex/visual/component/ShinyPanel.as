package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class ShinyPanel extends Sprite 
	{
		
		public function ShinyPanel(w:Number, h:Number, drawShadow:Boolean) 
		{
			this.cacheAsBitmap = true;
			
			this.graphics.beginFill(0x000000);
			this.graphics.drawRect(0, 0, w, h);
			this.graphics.endFill();
			
			var mat:Matrix = new Matrix();
			var colors:Array =[0x888888,0x353535];  
			var alphas:Array =[1,0.5];
			var ratios:Array =[0,255];
			mat.createGradientBox(w, h,0,0,0);
			this.graphics.beginGradientFill(GradientType.RADIAL,colors,alphas,ratios,mat);
		
			this.graphics.moveTo(4, 4);
			this.graphics.lineTo(w - 4, 4);
			this.graphics.lineTo(w - 4, h / 2);
			this.graphics.curveTo(w * 0.75, h / 2 + 4 , w / 2 , h / 2 + 4);
			this.graphics.curveTo(w * 0.25, h / 2 + 4 , 4, h / 2 );
			this.graphics.lineTo(4, 4);
			this.graphics.endFill();
			
			
			var mat2:Matrix = new Matrix();
			var colors2:Array =[0x999999,0x666666,0x666666];  
			var alphas2:Array =[0.5,0,0];
			var ratios2:Array =[0,170,255];
			mat2.createGradientBox(w, h,0,0,0);
			this.graphics.beginGradientFill(GradientType.RADIAL, colors2, alphas2, ratios2, mat2);
			this.graphics.drawRect(4, 4, w - 4, h -4);
			this.graphics.endFill();
			
			var mat3:Matrix = new Matrix();
			var colors3:Array =[0x444444,0xCCCCCC,0x444444];  
			var alphas3:Array =[0.0,0.6,0.0];
			var ratios3:Array =[0,255/2,255];
			mat3.createGradientBox(w, h*0.04,0,0,0);
			this.graphics.beginGradientFill(GradientType.LINEAR, colors3, alphas3, ratios3, mat3);
			this.graphics.drawRect(4, h-2-h*0.04, w - 4, h*0.04);
			this.graphics.endFill();
			
			if (drawShadow) {
				var mat6:Matrix = new Matrix();
				var colors6:Array =[0x000000,0x000000];  
				var alphas6:Array =[0.5,0.0];
				var ratios6:Array =[0,255];
				mat6.createGradientBox(w, h*0.3,Math.PI/2,0,h);
				this.graphics.beginGradientFill(GradientType.LINEAR,colors6,alphas6,ratios6,mat6);
				this.graphics.drawRect(0, h, w, h * 0.3);
				this.graphics.endFill();
			}
		}
		
	}

}