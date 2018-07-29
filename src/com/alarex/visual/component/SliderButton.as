package com.alarex.visual.component 
{
	import com.greensock.plugins.BlurFilterPlugin;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.filters.BlurFilter;
	import com.greensock.TweenLite;
	




	public class SliderButton extends Sprite 
	{
		
		private var _crMZO:Sprite = new Sprite();
		public	var _3gi1J:Sprite = new Sprite();
		public var _Zt3s3:Sprite = new Sprite();
		
		public var _ielCe:Boolean = false;
		public var _lOUXX:int = 0;
		
		public function SliderButton() 
		{
						
			this.cacheAsBitmap = true;
			
			var _WTFwi:Sprite = new Sprite();
			_WTFwi.cacheAsBitmap = true;			
			var _rJS4F:Matrix = new Matrix();
			var _SYmwz:Array =[0x999999,0x000000,0xcccccc];  
			var _4KqTE:Array =[1,1,1];
			var _vtiae:Array = [0,100,255];
			_rJS4F.createGradientBox(105, 38 ,Math.PI/2,0,0);
			_WTFwi.graphics.beginGradientFill(GradientType.LINEAR, _SYmwz, _4KqTE, _vtiae, _rJS4F);	
			_WTFwi.graphics.drawRoundRect(0, 0, 105, 38, 38, 38);
			_WTFwi.graphics.endFill();
			
			_WTFwi.graphics.beginFill(0x000000);
			_WTFwi.graphics.drawRoundRect(3, 3, 99, 32, 32, 32);
			_WTFwi.graphics.endFill();
			
			this.addChild(_WTFwi);
			
						
			_crMZO = new Sprite();
			_crMZO.cacheAsBitmap = true;
			_crMZO.graphics.beginFill(0x003300);
			_crMZO.graphics.drawRoundRect(5, 5, 95, 28, 28, 28);
			_crMZO.graphics.endFill();
			
			var _fmjqD:Sprite = new Sprite();
			_fmjqD.cacheAsBitmap = true;
			_fmjqD.graphics.beginFill(0x00BB00);
			_fmjqD.graphics.drawRoundRect(10, 10, 85, 18, 18, 18);
			_fmjqD.graphics.endFill();
			
			_crMZO.addChild(_fmjqD);
			
			var _2l008:BlurFilter = new BlurFilter(8, 8);
			_fmjqD.filters = [_2l008];
			
			var _W6QE3:SmallLabel = new SmallLabel("\x4f\x4e\x4c\x49\x4e\x45", 11, false,false);
			_crMZO.addChild(_W6QE3);
			_W6QE3.x = 13;
			_W6QE3.y = 10;
			_W6QE3.cacheAsBitmap = true;
			this.addChild(_crMZO);
			
						
			_3gi1J = new Sprite();
			_3gi1J.cacheAsBitmap = true;
			_3gi1J.graphics.beginFill(0x330000);
			_3gi1J.graphics.drawRoundRect(5, 5, 95, 28, 28, 28);
			_3gi1J.graphics.endFill();
			
			var _AnjaY:Sprite = new Sprite();
			_AnjaY.cacheAsBitmap = true;
			_AnjaY.graphics.beginFill(0xBB0000);
			_AnjaY.graphics.drawRoundRect(10, 10, 85, 18, 18, 18);
			_AnjaY.graphics.endFill();
			
			_3gi1J.addChild(_AnjaY);
			
			var _zDapJ:BlurFilter = new BlurFilter(8, 8);
			_AnjaY.filters = [_zDapJ];
			
			var _2bGKC:SmallLabel = new SmallLabel("\x4f\x46\x46\x4c\x49\x4e\x45", 11, false,false);
			_3gi1J.addChild(_2bGKC);
			_2bGKC.x = 48;
			_2bGKC.y = 10;
			_2bGKC.cacheAsBitmap = true;
			this.addChild(_3gi1J);
			
			
			
									
			_Zt3s3 = new Sprite();
			_Zt3s3.cacheAsBitmap = true;
			_Zt3s3.graphics.beginFill(0x000000,0.7);
			_Zt3s3.graphics.drawRoundRect(1, 1, 46, 36, 36, 36);
			_Zt3s3.graphics.endFill();
			
			var _M6u1Z:Matrix = new Matrix();
			var _GCcay:Array =[0x999999,0x000000,0xcccccc];  
			var _79cUJ:Array =[1,1,1];
			var _V97ul:Array = [0,120,255];
			_M6u1Z.createGradientBox(42, 32 ,Math.PI/2,0,0);
			_Zt3s3.graphics.beginGradientFill(GradientType.LINEAR, _GCcay, _79cUJ, _V97ul, _M6u1Z);	
			_Zt3s3.graphics.drawRoundRect(3, 3, 42, 32, 32, 32);
			_Zt3s3.graphics.endFill();
			_Zt3s3.cacheAsBitmap = true;
			
			var _vhZhU:Matrix = new Matrix();
			var _vrqCl:Array =[0x999999,0x555555,0x999999];  
			var _q0P0c:Array =[1,1,1];
			var _rg5hx:Array = [0,150,255];
			_vhZhU.createGradientBox(38, 28 ,0,0,0);
			_Zt3s3.graphics.beginGradientFill(GradientType.LINEAR, _vrqCl, _q0P0c, _rg5hx, _vhZhU);	
			_Zt3s3.graphics.drawRoundRect(5, 5, 38, 28, 28, 28);
			_Zt3s3.graphics.endFill();
			
			this.addChild(_Zt3s3);
			
			_Zt3s3.x = 0;
			_3gi1J.alpha = 1;
		
						}
		
		public function _ayrXH():int {
			return this._lOUXX;
		}
		
		public function _R4Nil(newState:int):void {
			
			if (!_ielCe && newState != _lOUXX) {
	
				if (_lOUXX == 0) {
									_lOUXX = 1;
					TweenLite.to(_3gi1J, 1, { alpha:0.0  } );
					TweenLite.to(_Zt3s3, 1, { x:57 } );
				}
				else
				if (_lOUXX == 1) {
									_lOUXX = 0;
					TweenLite.to(_3gi1J, 1, { alpha:1.0 } );
					TweenLite.to(_Zt3s3, 1, { x:0 } );
				}
				
			}
		}
		
		public function _hXJyQ():void {
			_ielCe = false;
		}
	}

}