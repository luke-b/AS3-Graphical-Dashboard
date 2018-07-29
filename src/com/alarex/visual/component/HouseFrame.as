package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class HouseFrame extends Sprite 
	{
		
		public function HouseFrame() 
		{
			// 0x012f80
			// 122x122
			
			this.cacheAsBitmap = true;
			
			var mat:Matrix = new Matrix();
			var colors:Array =  [ 0x012f80, 0x012f80];
			var alphas:Array =[1,0];
			var ratios:Array =[0,255];
			mat.createGradientBox(122+230+122, 122+170, Math.PI/2, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, mat);
			
			//this.graphics.beginFill(0x012f80);
			this.graphics.moveTo(122, 0);
			this.graphics.lineTo(122 + 230, 0);
			this.graphics.lineTo(122 + 230 + 122, 122);
			this.graphics.lineTo(122 + 230 + 122, 122 + 170);
			this.graphics.lineTo(122 + 230 + 122 - 8, 122 + 170);
			this.graphics.lineTo(122 + 230 + 122 - 8, 122 + 4 );
			this.graphics.lineTo(122 + 230 - 5, 0 + 8);
			this.graphics.lineTo(122 + 5, 0 + 8);
			this.graphics.lineTo(8, 122 + 4);
			this.graphics.lineTo(8, 122 + 170);
			this.graphics.lineTo(0, 122 + 170);
			this.graphics.lineTo(0, 122);
			this.graphics.endFill();
			
			
			var mat2:Matrix = new Matrix();
			var colors2:Array = [0xffffff, 0xffffff];
			var alphas2:Array =[1,0];
			var ratios2:Array =[0,255];
			mat2.createGradientBox(122+230+122, 122+170, Math.PI/2, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, mat2);
			
			this.graphics.moveTo(122 + 5, 0 + 8);
			this.graphics.lineTo(122 + 230 - 5, 0 + 8);
			this.graphics.lineTo(122 + 230 + 122 - 8, 122 + 4);
			this.graphics.lineTo(122 + 230 + 122 - 8, 122 + 170);
			this.graphics.lineTo(122 + 230 + 122 - 8 - 8, 122 + 170);
			this.graphics.lineTo(122 + 230 + 122 - 8 - 8, 122 + 4 + 4);
			this.graphics.lineTo(122 + 230 - 5 - 5, 0 + 8 + 8);
			this.graphics.lineTo(122 + 5 + 5, 0 + 8 + 8);
			this.graphics.lineTo(8 + 8, 122 + 4 + 4);
			this.graphics.lineTo(8 + 8, 122 + 170);
			this.graphics.lineTo(0 + 8, 122 + 170);
			this.graphics.lineTo(0 + 8, 122 + 4);
			this.graphics.endFill();
			
			
			var mat9:Matrix = new Matrix();
			var colors9:Array = [0xffffff, 0xffffff];
			var alphas9:Array =[1,0];
			var ratios9:Array =[0,255];
			mat9.createGradientBox(122+230+122, 122+170,-Math.PI/8, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, colors9, alphas9, ratios9, mat9);
			
			this.graphics.moveTo(122 + 8 + 8 + 8 + 5, 8 + 8 + 8);
			this.graphics.lineTo(122 + 230 - 8 - 8 , 8 + 8 + 8);
			this.graphics.lineTo(122 + 230 + 122 - 8 - 8 - 8 - 5, 122 + 8);
			this.graphics.lineTo(122 + 122 - 8 + 3 + 3, 122 + 8);
			this.graphics.endFill();
			
			var mat3:Matrix = new Matrix();
			var colors3:Array = [0xffffff, 0xffffff];
			var alphas3:Array =[0.3,0];
			var ratios3:Array =[0,180];
			mat3.createGradientBox(122+230+122, 122+100, Math.PI/2, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, colors3, alphas3, ratios3, mat3);	
			this.graphics.moveTo(122 + 8+8, 8 + 8 + 8);
			this.graphics.lineTo(122 + 122 - 8  - 8 + 5, 8  + 122 + 5);
			this.graphics.lineTo(122 + 122 - 8  - 8 + 5, 8 + 8 + 8 + 122 + 122);
			this.graphics.lineTo(8+8+8 + 5 - 3 , 8 + 8 + 8 + 122 + 122 + 3);
			this.graphics.lineTo( 8+8+8 + 5 - 3, 122 + 8 + 3);
	
			this.graphics.endFill();
			
				
			var mat4:Matrix = new Matrix();
			var colors4:Array = [0xffffff, 0xffffff];
			var alphas4:Array =[0.4,0];
			var ratios4:Array =[0,200];
			mat4.createGradientBox(122+230+122, 122+100, Math.PI/7, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, colors4, alphas4, ratios4, mat4);	
			this.graphics.drawRect(122 + 122, 122+8+8+2, 230 - 8 - 8 - 8 -3 , 122);
			this.graphics.endFill();
		}
		
	}

}