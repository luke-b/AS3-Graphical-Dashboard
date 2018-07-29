package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.filters.BlurFilter;
	




	public class GaugeHand extends Sprite 
	{
		private var _QY24w:Sprite = new Sprite();
		private var _vhySp:Sprite = new Sprite();
			
		
		public function GaugeHand() 
		{
			
			this.cacheAsBitmap = true;
			
			var _5xaYC:BlurFilter = new BlurFilter(5, 5);
			
			_QY24w.cacheAsBitmap = true;
			
			_QY24w.graphics.beginFill(0x000000);
			_QY24w.graphics.moveTo( -9, 0);
			_QY24w.graphics.lineTo(  0, -72);
			_QY24w.graphics.lineTo(  9, 0);
			_QY24w.graphics.lineTo( -9, 0);
			_QY24w.graphics.endFill();
			
			_QY24w.graphics.beginFill(0x000000);
			_QY24w.graphics.drawCircle(0, 0, 15);
			_QY24w.graphics.endFill();
			
			this.addChild(_QY24w);
			_QY24w.filters = [_5xaYC];
			
			var _3CyXW:Matrix = new Matrix();
			var _We5Q0:Array =  [ 0xFFFFFF, 0xAAAAAA, 0xAAAAAA];
			var _MHRQz:Array =[1,1,1];
			var _vBE8W:Array =[0,150,255];
			_3CyXW.createGradientBox(10, 70, Math.PI/2, 0, -50);
			_vhySp.graphics.beginGradientFill(GradientType.LINEAR, _We5Q0, _MHRQz, _vBE8W, _3CyXW);
			_vhySp.graphics.moveTo( -5, 0);
			_vhySp.graphics.lineTo(  0, -70);
			_vhySp.graphics.lineTo(  5, 0);
			_vhySp.graphics.lineTo( -5, 0);
			_vhySp.graphics.endFill();
			
			_vhySp.cacheAsBitmap = true;
			
		
			
			this.addChild(_vhySp);
		}
		
	}

}