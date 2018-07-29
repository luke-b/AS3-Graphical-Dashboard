package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.filters.BlurFilter;
	




	public class ThermometerSymbol extends Sprite 
	{
		
		public function ThermometerSymbol() 
		{
			this.cacheAsBitmap = true;
			
			var _ystDm:Sprite = new Sprite();
			_ystDm.cacheAsBitmap = true;
			_ystDm.graphics.beginFill(0x000000);
			_ystDm.graphics.moveTo(0, 0);
			_ystDm.graphics.curveTo(0, -10, 8, -10);
			_ystDm.graphics.curveTo(16, -10, 16, 0);
			_ystDm.graphics.lineTo(16, 85 - 26);
			_ystDm.graphics.curveTo(8 + 13, 85 - 23, 8 + 13, 85 - 13);
			_ystDm.graphics.curveTo(8 + 13, 85, 8, 85);
			_ystDm.graphics.curveTo( -5, 85, -5, 85 - 13);
			_ystDm.graphics.curveTo( -5, 85 - 23, 0, 85 - 26);
			_ystDm.graphics.lineTo(0, 0);
			_ystDm.graphics.endFill();
			_ystDm.alpha = 0.5;
			
			this.addChild(_ystDm);
			
			var _ST1Vf:BlurFilter = new BlurFilter(10, 10);
			_ystDm.filters = [_ST1Vf];
			
			
			var _bkCht:Sprite = new Sprite();
			_bkCht.cacheAsBitmap = true;
			_bkCht.graphics.beginFill(0xffffff);
			_bkCht.graphics.moveTo(0, 0);
			_bkCht.graphics.curveTo(0, -10, 8, -10);
			_bkCht.graphics.curveTo(16, -10, 16, 0);
			_bkCht.graphics.lineTo(16, 85 - 26);
			_bkCht.graphics.curveTo(8 + 13, 85 - 23, 8 + 13, 85 - 13);
			_bkCht.graphics.curveTo(8 + 13, 85, 8, 85);
			_bkCht.graphics.curveTo( -5, 85, -5, 85 - 13);
			_bkCht.graphics.curveTo( -5, 85 - 23, 0, 85 - 26);
			_bkCht.graphics.lineTo(0, 0);
			_bkCht.graphics.endFill();
			
			var _i7Ayr:Matrix = new Matrix();
			var _45xuQ:Array =[0x00ff00,0xffff00,0xff0000];  
			var _BUbLC:Array =[1,1,1];
			var _v9Tot:Array =[0,150,255];
			_i7Ayr.createGradientBox(14, 79,Math.PI/2,0,-15);
			_bkCht.graphics.beginGradientFill(GradientType.LINEAR, _45xuQ, _BUbLC, _v9Tot, _i7Ayr);
			
			_bkCht.graphics.moveTo(5, 0);
			_bkCht.graphics.curveTo(5, -5, 5+3, -5);
			_bkCht.graphics.curveTo(11, -5, 11, 0);
			_bkCht.graphics.lineTo(11, 85 - 22);
			_bkCht.graphics.curveTo(8 + 8, 85 - 20, 8 + 8, 85 - 13);
			_bkCht.graphics.curveTo(8 + 8, 85- 6, 8, 85-5);
			_bkCht.graphics.curveTo( 5-5, 85-6, 5-5, 85 - 13);
			_bkCht.graphics.curveTo( 5-5, 85 - 20, 5, 85 - 22);
			_bkCht.graphics.lineTo(5, 0);
			_bkCht.graphics.endFill();
			
			this.addChild(_bkCht);
			
			
			var _VlIs5:Sprite = new Sprite();
			_VlIs5.graphics.beginFill(0xffffff);
			_VlIs5.graphics.drawCircle(6, 85 - 16, 4);
			_VlIs5.graphics.endFill();
			_VlIs5.alpha = 0.7;
			
			_VlIs5.cacheAsBitmap = true;
			this.addChild(_VlIs5);
			
			
			
		}
		
	}

}