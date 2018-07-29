package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;




	public class BoilerSymbol extends Sprite 
	{
		
		public function BoilerSymbol() 
		{
			this.cacheAsBitmap = true;
			
			var _nBFTo:Sprite = new Sprite();
			
			var _stZ85:BlurFilter = new BlurFilter(10, 10);
			
			_nBFTo.graphics.beginFill(0x000000);
			_nBFTo.graphics.moveTo(1, 0);
			_nBFTo.graphics.curveTo(12,-6,25, -6);
			_nBFTo.graphics.curveTo(37,-6,49, 0)
			_nBFTo.graphics.lineTo(50, 2);
			_nBFTo.graphics.lineTo(50, 84);
			_nBFTo.graphics.lineTo(49, 86);
			_nBFTo.graphics.curveTo(37, 92,25, 92);
			_nBFTo.graphics.curveTo(12,92,1, 86);
			_nBFTo.graphics.lineTo(0, 84);
			_nBFTo.graphics.lineTo(0, 2);
			_nBFTo.graphics.endFill();
			_nBFTo.alpha = 0.5;
			_nBFTo.filters = [_stZ85];
			
			_nBFTo.scaleY = 1.1;
			
			this.addChild(_nBFTo);
			_nBFTo.y = 3;
			
			var _dEhFW:Sprite = new Sprite();
			_dEhFW.cacheAsBitmap = true;
			
			var _CZnyv:Matrix = new Matrix();
			var _HylPY:Array = [0xffffff, 0xaaaaaa];  
			var _ApGRG:Array =[1,1];
			var _BXgJb:Array =[0,255];
			_CZnyv.createGradientBox(50, 98, Math.PI/2,0,0);
			_dEhFW.graphics.beginGradientFill(GradientType.LINEAR, _HylPY, _ApGRG, _BXgJb, _CZnyv);
			_dEhFW.graphics.moveTo(1, 0);
			_dEhFW.graphics.curveTo(12,-6,25, -6);
			_dEhFW.graphics.curveTo(37,-6,49, 0)
			_dEhFW.graphics.lineTo(50, 2);
			_dEhFW.graphics.lineTo(50, 84);
			_dEhFW.graphics.lineTo(49, 86);
			_dEhFW.graphics.curveTo(37, 92,25, 92);
			_dEhFW.graphics.curveTo(12,92,1, 86);
			_dEhFW.graphics.lineTo(0, 84);
			_dEhFW.graphics.lineTo(0, 2);
			_dEhFW.graphics.endFill();
			
			var _vl7qp:Matrix = new Matrix();
			var _4JLyl:Array = [0xcccccc,0xeeeeee, 0xffffff, 0xeeeeee];  
			var _y8GFO:Array =[1,1,1,1];
			var _FPFUE:Array =[0,70,150,255];
			_vl7qp.createGradientBox(50, 98, 0,0,0);
			_dEhFW.graphics.beginGradientFill(GradientType.LINEAR, _4JLyl, _y8GFO, _FPFUE, _vl7qp);
			_dEhFW.graphics.moveTo(1, 0);
			_dEhFW.graphics.curveTo(12,-3,25, -3);
			_dEhFW.graphics.curveTo(37,-3,49, 0)
			_dEhFW.graphics.lineTo(50, 2);
			_dEhFW.graphics.lineTo(50, 84);
			_dEhFW.graphics.lineTo(49, 86);
			_dEhFW.graphics.curveTo(37, 89,25, 89);
			_dEhFW.graphics.curveTo(12,89,1, 86);
			_dEhFW.graphics.lineTo(0, 84);
			_dEhFW.graphics.lineTo(0, 2);
			_dEhFW.graphics.endFill();
			
			this.addChild(_dEhFW);
			
			
			var _d4s3g:Sprite = new Sprite();
			_d4s3g.cacheAsBitmap = true;
			
			_d4s3g.graphics.beginFill(0x000000);
			_d4s3g.graphics.moveTo(0, 7);
			_d4s3g.graphics.curveTo(17, 7-2, 25, 7-2);
			_d4s3g.graphics.curveTo(37, 7 - 2, 50, 7);
			_d4s3g.graphics.lineTo(50, 10);
			_d4s3g.graphics.curveTo(37, 10 - 2, 25, 10 - 2);
			_d4s3g.graphics.curveTo(17, 10 - 2, 0, 10);
			_d4s3g.graphics.endFill();
			
			
			_d4s3g.graphics.beginFill(0x000000);
			_d4s3g.graphics.moveTo(0, 7+70);
			_d4s3g.graphics.curveTo(17, 7 +2+70, 25, 7+2+70);
			_d4s3g.graphics.curveTo(37, 7 + 2+70, 50, 7+70);
			_d4s3g.graphics.lineTo(50, 10+70);
			_d4s3g.graphics.curveTo(37, 10 + 2 + 70, 25, 10 + 2 + 70);
			_d4s3g.graphics.curveTo(17, 10 + 2+70, 0, 10+70);
			_d4s3g.graphics.endFill();
			
			this.addChild(_d4s3g);
			
			_d4s3g.alpha = 0.1;
		}
		
	}

}