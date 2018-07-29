package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class CurvyPanel extends Sprite 
	{
		
		public function CurvyPanel(w:Number, h:Number) 
		{
	
			this.cacheAsBitmap = true;
			
			var curveFactor:Number = 0.2;
			var shOff1:Number = 0.15*h;
			var shOff2:Number = 0.05*h;
			
			this.graphics.beginFill(0x000000,0.3);
			this.graphics.moveTo(0, 0-shOff1);
			this.graphics.curveTo(w * 0.25, h * curveFactor-shOff1, w / 2, h * curveFactor-shOff1);
			this.graphics.curveTo(w * 0.75, h * curveFactor-shOff1, w, 0-shOff1);
			this.graphics.lineTo(w, h);
			this.graphics.lineTo(0, h);
			this.graphics.lineTo(0, 0);
			this.graphics.endFill();
			
				
			this.graphics.beginFill(0x000000,0.3);
			this.graphics.moveTo(0, 0-shOff2);
			this.graphics.curveTo(w * 0.25, h * curveFactor-shOff2, w / 2, h * curveFactor-shOff2);
			this.graphics.curveTo(w * 0.75, h * curveFactor-shOff2, w, 0-shOff2);
			this.graphics.lineTo(w, h);
			this.graphics.lineTo(0, h);
			this.graphics.lineTo(0, 0);
			this.graphics.endFill();
			
			this.graphics.beginFill(0x000000);
			this.graphics.moveTo(0, 0);
			this.graphics.curveTo(w * 0.25, h * curveFactor, w / 2, h * curveFactor);
			this.graphics.curveTo(w * 0.75, h * curveFactor, w, 0);
			this.graphics.lineTo(w, h);
			this.graphics.lineTo(0, h);
			this.graphics.lineTo(0, 0);
			this.graphics.endFill();
			
			var mat:Matrix = new Matrix();
			var colors:Array =[0x888888,0x353535];  
			var alphas:Array =[1,0.5];
			var ratios:Array =[0,255];
			mat.createGradientBox(w, h,0,0,0);
			this.graphics.beginGradientFill(GradientType.RADIAL,colors,alphas,ratios,mat);
		
			this.graphics.moveTo(4, 4);
			
			this.graphics.curveTo(w * 0.25, h * curveFactor + 4, w / 2, h * curveFactor + 4);
			this.graphics.curveTo(w * 0.75, h * curveFactor + 4, w - 4, 4);
			
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
			this.graphics.drawRect(4, h-2-h*0.02, w - 4, h*0.02);
			this.graphics.endFill();
			
			
		
			
		}
		
	}

}