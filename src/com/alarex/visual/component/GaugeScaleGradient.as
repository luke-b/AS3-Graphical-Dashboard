package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.display.BlendMode;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	




	public class GaugeScaleGradient extends Sprite 
	{
		
		public function GaugeScaleGradient(xp:Number, yp:Number,rd:Number,thk:Number,colors2:Array,fr:Number) 
		{
			this.cacheAsBitmap = true;
			
			var _doQ3T:Sprite = new Sprite();
			_doQ3T.graphics.beginFill(0x000000);
			_doQ3T.graphics.drawCircle(xp, yp, rd+fr);
			_doQ3T.graphics.endFill();
			_doQ3T.blendMode = BlendMode.LAYER;
			_doQ3T.cacheAsBitmap = true;
			this.addChild(_doQ3T);
			
			var _S01hj:Sprite = new Sprite();
			_S01hj.graphics.beginFill(0xFFFFFF);
			_S01hj.graphics.drawCircle(xp, yp, rd - thk - fr);
			_S01hj.graphics.endFill();
			_S01hj.graphics.beginFill(0xFFFFFF);
			_S01hj.graphics.drawRect(xp - (rd+fr), yp+fr, (rd+fr )* 2, (rd+fr));
			_S01hj.graphics.endFill();
			_S01hj.blendMode = BlendMode.ERASE;
			_S01hj.cacheAsBitmap = true;
			_doQ3T.addChild(_S01hj);
			
			
			
			
			var _W9QtW:Sprite = new Sprite();
			
			var _uAMUg:Matrix = new Matrix();
			var _Ocs6C:Array = new Array();
			var _axUNh:Array = new Array();
			
			for (var _R0fKK:int = 0; _R0fKK < colors2.length; _R0fKK++) {
				_Ocs6C.push(1);
				_axUNh.push((255.0 / colors2.length) * _R0fKK);
			}
			
			_uAMUg.createGradientBox(rd * 2, rd,0,rd/2,0);
			_W9QtW.graphics.beginGradientFill(GradientType.LINEAR,colors2,_Ocs6C,_axUNh,_uAMUg);
			_W9QtW.graphics.drawCircle(xp, yp, rd);
			_W9QtW.graphics.endFill();
			_W9QtW.blendMode = BlendMode.LAYER;
			_W9QtW.cacheAsBitmap = true;
			this.addChild(_W9QtW);
			
			var _bq0xu:Sprite = new Sprite();
			_bq0xu.graphics.beginFill(0x00FF00);
			_bq0xu.graphics.drawCircle(xp, yp, rd - thk);
			_bq0xu.graphics.endFill();
			_bq0xu.graphics.beginFill(0x00ff00);
			_bq0xu.graphics.drawRect(xp - rd, yp, rd * 2, rd);
			_bq0xu.graphics.endFill();
			_bq0xu.blendMode = BlendMode.ERASE;
			_bq0xu.cacheAsBitmap = true;
			_W9QtW.addChild(_bq0xu);
			
	
			
			
					}
		
	}

}