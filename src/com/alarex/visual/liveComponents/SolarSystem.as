package com.alarex.visual.liveComponents 
{
	import com.alarex.visual.component.BoilerSymbol;
	import com.alarex.visual.component.HouseFrame;
	import com.alarex.visual.component.Led;
	import com.alarex.visual.component.PipeCurve2;
	import com.alarex.visual.component.PipeStraight;
	import com.alarex.visual.component.SolarPanelSymbol;
	import com.alarex.visual.component.TempInfoBubble;
	import flash.display.Sprite;
	




	public class SolarSystem extends Sprite 
	{
		
		private var _UKzMd:HouseFrame;
		private var _KyATM:BoilerSymbol;
		private var _2bClC:Led;
		
		private var _u2dBg:SolarPanelSymbol;
		private var _szww6:SolarPanelSymbol;
		private var _JZ57A:SolarPanelSymbol;
		
		private var _Ej2UF:PipeCurve2;
		private var _hiHb9:PipeStraight;
		private var _kv7W5:PipeCurve2;
		
		private var _xJVhS:PipeCurve2;
		private var _0NHEr:PipeStraight;
		private var _KNpTG:PipeCurve2;
		
		private var _3yjzg:TempInfoBubble;
		private var _LPCrv:TempInfoBubble;
		
		
		private var _r9HsT:Number = 0;
		
		
		public function SolarSystem() 
		{
			this.cacheAsBitmap = true;
			
			_UKzMd = new HouseFrame();
			this.addChild(_UKzMd);
			
						
			_Ej2UF = new PipeCurve2(0xff0000, 40, 3, 15, true);
			this.addChild(_Ej2UF);
			_Ej2UF.x = 172;
			_Ej2UF.y = 70;
			
			_hiHb9 = new PipeStraight(0xff0000, 40, 3, 15, true);
			this.addChild(_hiHb9);
			_hiHb9.x = 132 + 40;
			_hiHb9.y = 70 + 39.75;
			
			_kv7W5 = new PipeCurve2(0xff0000, 70, 3, 15, true);
			this.addChild(_kv7W5);
			_kv7W5.y = 205
			_kv7W5.x = 110;
					
						
			_xJVhS = new PipeCurve2(0x0000ff, 40, 3, 15, true);
			this.addChild(_xJVhS);
			_xJVhS.rotation = 180;
			_xJVhS.x = 370;
			_xJVhS.y = 115;
			
			
			_0NHEr = new PipeStraight(0x0000ff, 220, 3, 15, false);
			this.addChild(_0NHEr);
			_0NHEr.rotation = 90;
			_0NHEr.x = 150;
			_0NHEr.y = 372;
			
			_KNpTG = new PipeCurve2(0x0000ff, 40, 3, 15, false);
			this.addChild(_KNpTG);
							_KNpTG.x = 110;
			_KNpTG.y = 205;
			
			
						
			_KyATM = new BoilerSymbol();
			this.addChild(_KyATM);
			_KyATM.x = 110;
			_KyATM.y = 90;
			
			_2bClC = new Led();
			this.addChild(_2bClC);
			_2bClC.x = 131;
			_2bClC.y = 130;
			_2bClC.scaleX = 0.3;
			_2bClC.scaleY = 0.3;
			this._2bClC.setState(1); 			
			_u2dBg = new SolarPanelSymbol(1);
			this.addChild(_u2dBg);
			_u2dBg.x = 170;
			_u2dBg.y = 27;
			
			_szww6 = new SolarPanelSymbol(1.5);
			this.addChild(_szww6);
			_szww6.x = 170 + 60;
			_szww6.y = 27;
			
			_JZ57A = new SolarPanelSymbol(2);
			this.addChild(_JZ57A);
			_JZ57A.x = 170 + 120;
			_JZ57A.y = 27;
			
			
			_3yjzg = new TempInfoBubble("\x2d\x2d\x20\xcb\x9a\x43");
			this.addChild(_3yjzg);
			_3yjzg.x = 240;
			_3yjzg.y = 50;
			
			_LPCrv = new TempInfoBubble("\x2d\x2d\x20\xcb\x9a\x43");
			this.addChild(_LPCrv);
			_LPCrv.x = 190;
			_LPCrv.y = 135;
			
		}
		
		public function _FL2K8(ct:Number):void {
			_LPCrv.changeString(ct.toFixed(1) +  "\x20\xcb\x9a\x43");
		}
		
		public function _04iJx(ht:Number):void {
			_3yjzg.changeString(ht.toFixed(1) + "\x20\xcb\x9a\x43");
		}
		
		public function _NI8QF(f:Number):void {
			
			
				_Ej2UF.setDirFac(f);
				_hiHb9.setDirFac(f);
				_kv7W5.setDirFac(f);
		
				_xJVhS.setDirFac(f);
				_0NHEr.setDirFac(f);
				_KNpTG.setDirFac(f);
			
				if (f == 0) {
					_2bClC.setState(1);
				} else {
					_2bClC.setState(3);
				}
			
		}
		
	}

}