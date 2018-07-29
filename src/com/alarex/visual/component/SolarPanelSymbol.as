package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import com.greensock.TweenLite;
	




	public class SolarPanelSymbol extends Sprite 
	{
		
		private var _riDn7:Sprite = new Sprite();  		
		public function SolarPanelSymbol(del:Number) 
		{
			var _2DIOw:Number = -12;
			
			this.cacheAsBitmap = true;
			
			var _O5W7b:BlurFilter = new BlurFilter(10, 10);
			
			var _asFRR:Sprite = new Sprite();
			
					
			_asFRR.graphics.beginFill(0x000000);
			_asFRR.graphics.moveTo(4, 2);
			_asFRR.graphics.lineTo(50, 2);
			_asFRR.graphics.lineTo(49 + 88 + _2DIOw, 88);
			_asFRR.graphics.lineTo(90 + _2DIOw, 88);
			_asFRR.graphics.lineTo(4, 2);
			_asFRR.graphics.endFill();
			_asFRR.y += 7;
			_asFRR.filters = [_O5W7b];
			this.addChild(_asFRR);
			
			
			var _2zYF4:Sprite = new Sprite();
			
			_2zYF4.graphics.beginFill(0x002e80);
			_2zYF4.graphics.moveTo(0, 0);
			_2zYF4.graphics.lineTo(52, 0);
			_2zYF4.graphics.lineTo(52 + 88 + _2DIOw, 88);
			_2zYF4.graphics.lineTo(52 + 88 + _2DIOw, 88 + 6);
			_2zYF4.graphics.lineTo(88 + _2DIOw, 88 + 6);
			_2zYF4.graphics.lineTo(0, 6);
			_2zYF4.graphics.endFill();
			
					
			this.addChild(_2zYF4);
			
			var _2gHRG:Sprite = new Sprite();  			
					
			var _8nkVI:Matrix = new Matrix();
			var _8KOAB:Array =[0x00bef9,0x002e80];  
			var _8s5FT:Array =[1,1];
			var _1dfkG:Array =[0,255];
			_8nkVI.createGradientBox(88+49, 88+49,Math.PI/4,0,0);
			_2gHRG.graphics.beginGradientFill(GradientType.LINEAR, _8KOAB, _8s5FT, _1dfkG, _8nkVI);
			
						_2gHRG.graphics.moveTo(4, 2);
			_2gHRG.graphics.lineTo(50, 2);
			_2gHRG.graphics.lineTo(49 + 88 + _2DIOw, 88);
			_2gHRG.graphics.lineTo(90 + _2DIOw, 88);
			_2gHRG.graphics.lineTo(4, 2);
			_2gHRG.graphics.endFill();
			
			this.addChild(_2gHRG);
			
			
		
			
			var _UdgcB:Matrix = new Matrix();
			var _fd9mX:Array =[0xffffff,0xffffff,0xffffff];  
			var _ukpPY:Array =[0,1,0];
			var _T02eg:Array =[0,150,255];
			_UdgcB.createGradientBox(80, 288, 0,0,0);
			_riDn7.graphics.beginGradientFill(GradientType.LINEAR, _fd9mX, _ukpPY, _T02eg, _UdgcB);
			_riDn7.graphics.drawRect(0, -100, 80, 288);
			_riDn7.graphics.endFill();
			_riDn7.rotation = 25;
			_2gHRG.addChild(_riDn7);
			
					
			_riDn7.x -= 100;
			
			
			var _jbkyl:Sprite = new Sprite();  			
			_jbkyl.graphics.beginFill(0x00bef9);
			_jbkyl.graphics.moveTo(4, 2);
			_jbkyl.graphics.lineTo(50, 2);
			_jbkyl.graphics.lineTo(49 + 88 + _2DIOw, 88);
			_jbkyl.graphics.lineTo(90 + _2DIOw, 88);
			_jbkyl.graphics.lineTo(4, 2);
			_jbkyl.graphics.endFill();
			
					
			this.addChild(_jbkyl);
			
			_2gHRG.mask = _jbkyl;
			
		
			
			var _cgqJJ:Sprite = new Sprite();
			
			for (var _Pb5jr:int = 1; _Pb5jr < 6; _Pb5jr++) {
			
			_2gHRG.graphics.beginFill(0x002e80);
			_2gHRG.graphics.moveTo(4+8*_Pb5jr-2, 2);
			_2gHRG.graphics.lineTo(6+8*_Pb5jr-2, 2);
			_2gHRG.graphics.lineTo(4 + 88+8*_Pb5jr-2 + _2DIOw, 88);
			_2gHRG.graphics.lineTo(2 + 88+8*_Pb5jr-2 + _2DIOw, 88);
			_2gHRG.graphics.lineTo(4+8*_Pb5jr-2, 2);
			_2gHRG.graphics.endFill();
			
				
			}
		
					_cgqJJ.cacheAsBitmap = true;
			
			this.addChild(_cgqJJ);
			
			
			TweenLite.to(_riDn7,1, { x:300, onComplete:_XW9Yw, delay:del } );
		}
		
		public function _XW9Yw():void {
			_riDn7.x = -100;
			
			TweenLite.to(_riDn7,1, { x:300, onComplete:_XW9Yw, delay:5 } );
		}
	}

}