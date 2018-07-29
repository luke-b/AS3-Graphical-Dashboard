package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	




	public class PanelImprint extends Sprite 
	{
		
		public function PanelImprint(inserted:Sprite=null) 
		{
			this.cacheAsBitmap = true;
			
			this.addChild(_wyR3c(11, [0x999999,0x000000,0xeeeeee], [0,80,255], [1,1,1]));
			this.addChild(_wyR3c(9, [0x000000, 0x000000, 0x333333], [0, 200, 255], [1, 1, 1]));
			
			if (inserted != null) {
				var _SlnOz:Sprite = _cKMRl(3, 0x000000);
				this.addChild(inserted);
				inserted.y = -3;
				this.addChild(_SlnOz);
				inserted._SlnOz = _SlnOz;
				this.addChild(_wyR3c(3, [0x333333, 0x000000, 0x000000], [0, 110, 255], [0.8, 0, 0], -Math.PI * 1.42));
			}
			else {
				this.addChild(_wyR3c(3, [0x333333, 0x000000, 0x000000], [0, 200, 255], [1, 1, 1], -Math.PI * 1.4));
			}
		}
		
		
		private function _cKMRl(radius:Number, color:int):Sprite {
			var _ob4tP:Sprite = new Sprite();
			
			_ob4tP.graphics.beginFill(color);
			_ob4tP.graphics.moveTo(0, 0 - radius);
			_ob4tP.graphics.lineTo(130, 20 - radius);
			_ob4tP.graphics.curveTo(130 + 8 + (Math.cos(-Math.PI/4) * radius*1.2), 20 + 1 + (Math.sin(-Math.PI/4) * radius*1.2) , 130 + 8 + radius , 20 + 8);
			_ob4tP.graphics.lineTo(130 + 8 + radius, 20 + 8 + 28);
			_ob4tP.graphics.curveTo(130 + 8 + (Math.cos(Math.PI/4) * radius*1.2), 20 + 8 + 28 + 7  + (Math.sin(Math.PI/4) * radius*1.2), 130, 20 + 8 + 28 + 8 + radius);
			_ob4tP.graphics.lineTo(0, 20 + 8 + 28 + 8 + radius);
			_ob4tP.graphics.endFill();
			
			_ob4tP.cacheAsBitmap = true;
			
			return _ob4tP;
		}
		
		private function _wyR3c(radius:Number, colors2:Array, ratios2:Array, alphas2:Array, rotation:Number=Math.PI/2):Sprite {
			
			var _ob4tP:Sprite = new Sprite();
			
			var _e6q7H:Matrix = new Matrix();
			_e6q7H.createGradientBox(130+radius, 20 + 8 + 28 + 8 + radius,rotation,0,0);
			_ob4tP.graphics.beginGradientFill(GradientType.LINEAR,colors2,alphas2,ratios2,_e6q7H);
			
			_ob4tP.graphics.moveTo(0, 0 - radius);
			_ob4tP.graphics.lineTo(130, 20 - radius);
			_ob4tP.graphics.curveTo(130 + 8 + (Math.cos(-Math.PI/4) * radius*1.2), 20 + 1 + (Math.sin(-Math.PI/4) * radius*1.2) , 130 + 8 + radius , 20 + 8);
			_ob4tP.graphics.lineTo(130 + 8 + radius, 20 + 8 + 28);
			_ob4tP.graphics.curveTo(130 + 8 + (Math.cos(Math.PI/4) * radius*1.2), 20 + 8 + 28 + 7  + (Math.sin(Math.PI/4) * radius*1.2), 130, 20 + 8 + 28 + 8 + radius);
			_ob4tP.graphics.lineTo(0, 20 + 8 + 28 + 8 + radius);
			_ob4tP.graphics.endFill();
			
			_ob4tP.cacheAsBitmap = true;
			
			return _ob4tP;
		}
		
		
	}

}