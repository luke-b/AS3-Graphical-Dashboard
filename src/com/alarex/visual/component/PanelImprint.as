package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class PanelImprint extends Sprite 
	{
		
		public function PanelImprint(inserted:Sprite=null) 
		{
			this.cacheAsBitmap = true;
			
			this.addChild(getGradientPanel(11, [0x999999,0x000000,0xeeeeee], [0,80,255], [1,1,1]));
			this.addChild(getGradientPanel(9, [0x000000, 0x000000, 0x333333], [0, 200, 255], [1, 1, 1]));
			
			if (inserted != null) {
				var mask:Sprite = getRoundedPanel(3, 0x000000);
				this.addChild(inserted);
				inserted.y = -3;
				this.addChild(mask);
				inserted.mask = mask;
				this.addChild(getGradientPanel(3, [0x333333, 0x000000, 0x000000], [0, 110, 255], [0.8, 0, 0], -Math.PI * 1.42));
			}
			else {
				this.addChild(getGradientPanel(3, [0x333333, 0x000000, 0x000000], [0, 200, 255], [1, 1, 1], -Math.PI * 1.4));
			}
		}
		
		
		private function getRoundedPanel(radius:Number, color:int):Sprite {
			var output:Sprite = new Sprite();
			
			output.graphics.beginFill(color);
			output.graphics.moveTo(0, 0 - radius);
			output.graphics.lineTo(130, 20 - radius);
			output.graphics.curveTo(130 + 8 + (Math.cos(-Math.PI/4) * radius*1.2), 20 + 1 + (Math.sin(-Math.PI/4) * radius*1.2) , 130 + 8 + radius , 20 + 8);
			output.graphics.lineTo(130 + 8 + radius, 20 + 8 + 28);
			output.graphics.curveTo(130 + 8 + (Math.cos(Math.PI/4) * radius*1.2), 20 + 8 + 28 + 7  + (Math.sin(Math.PI/4) * radius*1.2), 130, 20 + 8 + 28 + 8 + radius);
			output.graphics.lineTo(0, 20 + 8 + 28 + 8 + radius);
			output.graphics.endFill();
			
			output.cacheAsBitmap = true;
			
			return output;
		}
		
		private function getGradientPanel(radius:Number, colors2:Array, ratios2:Array, alphas2:Array, rotation:Number=Math.PI/2):Sprite {
			
			var output:Sprite = new Sprite();
			
			var mat2:Matrix = new Matrix();
			mat2.createGradientBox(130+radius, 20 + 8 + 28 + 8 + radius,rotation,0,0);
			output.graphics.beginGradientFill(GradientType.LINEAR,colors2,alphas2,ratios2,mat2);
			
			output.graphics.moveTo(0, 0 - radius);
			output.graphics.lineTo(130, 20 - radius);
			output.graphics.curveTo(130 + 8 + (Math.cos(-Math.PI/4) * radius*1.2), 20 + 1 + (Math.sin(-Math.PI/4) * radius*1.2) , 130 + 8 + radius , 20 + 8);
			output.graphics.lineTo(130 + 8 + radius, 20 + 8 + 28);
			output.graphics.curveTo(130 + 8 + (Math.cos(Math.PI/4) * radius*1.2), 20 + 8 + 28 + 7  + (Math.sin(Math.PI/4) * radius*1.2), 130, 20 + 8 + 28 + 8 + radius);
			output.graphics.lineTo(0, 20 + 8 + 28 + 8 + radius);
			output.graphics.endFill();
			
			output.cacheAsBitmap = true;
			
			return output;
		}
		
		
	}

}