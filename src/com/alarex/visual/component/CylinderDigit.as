package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import com.greensock.TweenLite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.display.Shape;
	
	




	public class CylinderDigit extends Sprite 
	{

		[Embed(source='\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x6c\x69\x62\x2f\x61\x72\x69\x61\x6c\x6e\x62\x2e\x74\x74\x66', fontFamily="\x76\x65\x72\x64\x46\x6f\x6e\x74")]
		public var _XAVpd:Class;
		
		private var _pE9iX:Sprite = new Sprite();
		private var _0Gps9:Sprite = new Sprite();
		
		private var _47G6q:int = 0;
		private var _Mk3D0:int = 0;
		
		private var _DqXi1:int = 0;
		private var _GyBj9:int = 0;
		
		private var _tJTyX:Sprite = new Sprite();
		private var _Oyflm:Sprite = new Sprite();
		
		private var _XfC84:int;
		
		public function CylinderDigit(red:Boolean) 
		{

			
			var _FmUB6:Matrix = new Matrix();
			var _x3ifC:Array;

			if (red) {
				_x3ifC  = [0x190000, 0xee0000, 0xff0000, 0xee0000, 0x190000];

				_x3ifC  = [0x191919, 0x888888, 0x999999, 0x888888, 0x191919];


			var _7XJrY:Array =[1,1,1,1,1];
			var _EGpzV:Array =[0,100,128,150,255];
			_FmUB6.createGradientBox(70, 110, Math.PI / 2, 0, 0);
			

			_Oyflm.graphics.beginGradientFill(GradientType.LINEAR,_x3ifC,_7XJrY,_EGpzV,_FmUB6);
			_Oyflm.graphics.drawRect(0, 0, 70, 110);
			_Oyflm.graphics.endFill();

			this.addChild(_Oyflm);
			
			
			
			_tJTyX.graphics.beginFill(0x000000); 			_tJTyX.graphics.drawRect(66, 0, 4, 110);
			_tJTyX.graphics.endFill();
						this.addChild(_tJTyX);
			
			var _b1pt6:Shape = new Shape();
			_b1pt6.graphics.beginFill(0xffffff);
			_b1pt6.graphics.drawRect(0, 0, 70, 110);
			_b1pt6.graphics.endFill();
			
			this.addChild(_b1pt6);
			this.mask = _b1pt6;
			
						
			for (var _MhbtG:int = 0; _MhbtG < 10; _MhbtG++) {
			
				var _k1SrA:TextField = new TextField();
				var _N7nyg:Sprite = new Sprite();
				_k1SrA.selectable = false;
			
				_k1SrA.antiAliasType = AntiAliasType.ADVANCED;
				_k1SrA.embedFonts = true;
			
				_k1SrA._k1SrA = _MhbtG+"";
				_k1SrA.alpha = 1;
				_k1SrA.x = 4;
				_k1SrA.y = -16 + _MhbtG * 110;
				_k1SrA.height = 120;
			
				var _Lomyb:TextFormat = new TextFormat();
				var _w1CNO:Sprite = new Sprite();
				_Lomyb.size = 120;
				_Lomyb.font = "\x76\x65\x72\x64\x46\x6f\x6e\x74";
				_Lomyb.color = 0xffffff;
				
			
				_k1SrA.setTextFormat(_Lomyb);
				
				var _GPFHV:TextField = new TextField();
				_GPFHV.selectable = false;
			
				_GPFHV.antiAliasType = AntiAliasType.ADVANCED;
						
				_GPFHV._k1SrA = _MhbtG+"";
				_GPFHV.alpha = 1;
				_GPFHV.x = 4;
				_GPFHV.y = -16 + _MhbtG * 110;
				_GPFHV.height = 120;
			
				_GPFHV.setTextFormat(_Lomyb);
					
				
				
				var _yslrd:Matrix = new Matrix();
				var _D086g:Array =[0x777777,0xeeeeee,0xffffff,0xeeeeee,0x777777];  
				var _Zyx4q:Array =[1,1,1,1,1];
				var _adigj:Array =[0,100,128,150,255];
				_yslrd.createGradientBox(70, 110,Math.PI/2,0,_MhbtG*110);
				_N7nyg.graphics.beginGradientFill(GradientType.LINEAR,_D086g,_Zyx4q,_adigj,_yslrd);
				_N7nyg.graphics.drawRect(0, _MhbtG*110, 70, 110);
				_N7nyg.graphics.endFill();
						
				_w1CNO.graphics.beginGradientFill(GradientType.LINEAR,_D086g,_Zyx4q,_adigj,_yslrd);
				_w1CNO.graphics.drawRect(0, _MhbtG*110, 70, 110);
				_w1CNO.graphics.endFill();
							_pE9iX.addChild(_N7nyg);
				_pE9iX.addChild(_k1SrA);
				_N7nyg.mask = _k1SrA;
							
				_0Gps9.addChild(_w1CNO);
				_0Gps9.addChild(_GPFHV);
				_w1CNO.mask = _GPFHV;
							
							

			
			
			this.addChild(_pE9iX);
			this.addChild(_0Gps9);
			_0Gps9.x = 110;

		
	
	
	
		public function _PClNo():Number {
			
			return (this._Oyflm.width);
			
		}
	
	public function _QwXe9(numx:int):void {
		
		if (_XfC84 == numx) 
				return;
				
		_XfC84 = numx;
		
		var _ZHUC3:int = numx % 10;
		var _eVIfi:String = "\x30\x31\x32\x33\x34\x35\x36\x37\x38\x39";
		
		var _nCj7r:BlurFilter = new BlurFilter(0, 15);
					
		_pE9iX.filters = [_nCj7r];
					
		TweenLite.to(_pE9iX, 0.5, {y: -_ZHUC3*110, blurFilter:{ blurY:0}});
		





			} else {


			}


			


			


			


			


			


			


		


			

			}
		}

	}

	}
}