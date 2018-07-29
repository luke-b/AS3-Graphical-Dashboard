package com.alarex.visual.component 
{
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.filters.BlurFilter;
	




	public class GaugeFrame extends Sprite 
	{
		
		public function GaugeFrame() 
		{
			var _zG87D:Number = 187 / 2;
			
			var _0MkFk:BlurFilter = new BlurFilter(5, 5);
			
			this.cacheAsBitmap = true;
			
			var _iKOiS:Sprite = new Sprite();
			_iKOiS.cacheAsBitmap = true;
			_iKOiS.graphics.beginFill(0xFFFFFF);
			_iKOiS.graphics.drawCircle(_zG87D, _zG87D+1, _zG87D+5);
			_iKOiS.graphics.endFill();
			
			this.addChild(_iKOiS);
			_iKOiS.alpha = 0.5;
			_iKOiS.filters = [ _0MkFk ];
			
			var _LMqkY:Sprite = new Sprite();
			_LMqkY.cacheAsBitmap = true;
			_LMqkY.graphics.beginFill(0x000000);
			_LMqkY.graphics.drawCircle(_zG87D, _zG87D+1, _zG87D+2);
			_LMqkY.graphics.endFill();
			
			var _BAaB8:Matrix = new Matrix();
			var _Pm1FU:Array = _KUmnf  = [ 0x000000, 0x000000, 0xAAAAAA];
			var _3CzUi:Array =[1,1,1];
			var _kPQ2K:Array =[0,60,255];
			_BAaB8.createGradientBox(_zG87D * 2, _zG87D * 2, Math.PI / 2, 0, 0);
			_LMqkY.graphics.beginGradientFill(GradientType.LINEAR, _Pm1FU, _3CzUi, _kPQ2K, _BAaB8);
			_LMqkY.graphics.drawCircle(_zG87D, _zG87D+2, _zG87D - 2);
			_LMqkY.graphics.endFill();
						
			var _Bwzc6:Matrix = new Matrix();
			var _Zs9FF:Array = _KUmnf  = [0x000000, 0x000000, 0xFFFFFF];
			var _5LVs0:Array =[1,1,1];
			var _oQTY1:Array =[0,200,255];
			_Bwzc6.createGradientBox(_zG87D * 2, _zG87D * 2, Math.PI / 2, 0, 0);
			_LMqkY.graphics.beginGradientFill(GradientType.LINEAR, _Zs9FF, _5LVs0, _oQTY1, _Bwzc6);
			_LMqkY.graphics.drawCircle(_zG87D, _zG87D, _zG87D - 4);
			_LMqkY.graphics.endFill();
						
			var _3bjQk:Matrix = new Matrix();  			var _KUmnf:Array = _KUmnf  = [0x000000, 0x000000, 0xAAAAAA];
			var _Pwh0a:Array =[1,1,1];
			var _3VZ8V:Array =[0,220,255];
			_3bjQk.createGradientBox(_zG87D * 2, _zG87D * 2, Math.PI / 2, 0, 0);
			_LMqkY.graphics.beginGradientFill(GradientType.LINEAR, _KUmnf, _Pwh0a, _3VZ8V, _3bjQk);
			_LMqkY.graphics.drawCircle(_zG87D, _zG87D-2, _zG87D - 4);
			_LMqkY.graphics.endFill();
			
			this.addChild(_LMqkY);
			
			var _qSI1P:Sprite = new Sprite();
			
			var _flgo8:Matrix = new Matrix();  			var _XrBpI:Array = _KUmnf  = [0xFFFFFF, 0x999999];
			var _uByf8:Array =[1,1];
			var _Y0x9W:Array =[0,255];
			_flgo8.createGradientBox(_zG87D * 4, _zG87D * 1.75, Math.PI / 2, -_zG87D, -_zG87D*0.5);
			_qSI1P.graphics.beginGradientFill(GradientType.RADIAL, _XrBpI, _uByf8, _Y0x9W, _flgo8);
			_qSI1P.graphics.drawEllipse( -_zG87D, -_zG87D/2, _zG87D * 4, _zG87D*1.85);
			_qSI1P.graphics.endFill();
			_qSI1P.cacheAsBitmap = true;
			this.addChild(_qSI1P);
			
			
			var _WPTHc:Sprite = new Sprite();
			_WPTHc.graphics.beginFill(0xffffff);
			_WPTHc.graphics.drawCircle(_zG87D, _zG87D-2, _zG87D - 4);
			_WPTHc.graphics.endFill();
			_WPTHc.cacheAsBitmap = true;
			this.addChild(_WPTHc);
			
			_qSI1P.mask = _WPTHc;
			
			
			var _wUiGe:Sprite = new Sprite();
			
			_wUiGe.graphics.beginFill(0x000000);
			_wUiGe.graphics.drawCircle(_zG87D, _zG87D, _zG87D - 11);
			_wUiGe.graphics.endFill();
			_wUiGe.cacheAsBitmap = true;
			
			var _KAzLv:Matrix = new Matrix();
			var _xxqvf:Array = _KUmnf  = [0xFFFFFF, 0x000000, 0x000000, 0xFFFFFF];
			var _wVkmr:Array =[1, 1,1,1];
			var _oLukn:Array =[0,80,220,255];
			_KAzLv.createGradientBox(_zG87D * 2 - 26, _zG87D * 2 - 26, Math.PI / 2, 0, 0);
			_wUiGe.graphics.beginGradientFill(GradientType.LINEAR, _xxqvf, _wVkmr, _oLukn, _KAzLv);
			_wUiGe.graphics.drawCircle(_zG87D, _zG87D, _zG87D - 13);
			_wUiGe.graphics.endFill();
			
			_wUiGe.graphics.beginFill(0x000000);
			_wUiGe.graphics.drawCircle(_zG87D, _zG87D, _zG87D - 15);
			_wUiGe.graphics.endFill();
			
			this.addChild(_wUiGe);
			
			var _WErwx:Sprite = new Sprite();
			
			_WErwx.graphics.beginFill(0x000000);
			_WErwx.graphics.drawCircle(_zG87D, _zG87D, _zG87D - 17);
			_WErwx.graphics.endFill();
			
			_WErwx.cacheAsBitmap = true;
			
			this.addChild(_WErwx);
			
			var _zyOHr:Matrix = new Matrix();
			var _JDB7o:Array = _KUmnf  = [ 0xAAAAAA, 0xAAAAAA, 0xAAAAAA];
			var _92V79:Array =[0.5,0.3,0];
			var _rBNaZ:Array =[0,150,255];
			_zyOHr.createGradientBox(_zG87D*2, _zG87D*2, 0, 0, _zG87D);
			_WErwx.graphics.beginGradientFill(GradientType.RADIAL, _JDB7o, _92V79, _rBNaZ, _zyOHr);
			_WErwx.graphics.drawCircle(_zG87D, _zG87D, _zG87D - 13);
			_WErwx.graphics.endFill();
			
			var _Zmr4g:Matrix = new Matrix();
			var _PQSHg:Array = _KUmnf  = [ 0xAAAAAA, 0xAAAAAA, 0xAAAAAA];
			var _vNjEI:Array =[0.4,0.2,0];
			var _AFD3R:Array =[0,150,255];
			_Zmr4g.createGradientBox(_zG87D*2, _zG87D*2, 0, 0, -_zG87D);
			_WErwx.graphics.beginGradientFill(GradientType.RADIAL, _PQSHg, _vNjEI, _AFD3R, _Zmr4g);
			_WErwx.graphics.drawCircle(_zG87D, _zG87D, _zG87D - 13);
			_WErwx.graphics.endFill();
		}
		
	}

}