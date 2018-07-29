package com.alarex.visual
{
	
	import com.alarex.visual.component.GlassPanel;
	import com.alarex.visual.component.HouseFrame;
	import com.alarex.visual.component.ChartColumn1;
	import com.alarex.visual.component.LineChart1;
	import com.alarex.visual.component.PanelImprint;
	import com.alarex.visual.component.PopupBubble;
	import com.alarex.visual.component.ShinyButton;
	import com.alarex.visual.component.SliderButton;
	import com.alarex.visual.component.Wheel;
	import com.alarex.visual.liveComponents.PowerGauge;
	import com.alarex.visual.liveComponents.SideInfoPanel;
	import com.alarex.visual.liveComponents.SumGauge;
	import com.alarex.visual.liveComponents.WeatherInfoPanel;
	import com.greensock.core.SimpleTimeline;
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.events.ContextMenuEvent;
	import flash.events.Event;
	import flash.external.ExternalInterface;
	import flash.filters.BlurFilter;
	import flash.system.System;
	import com.greensock.TweenLite;
	import flash.system.Security;
	import flash.ui.ContextMenuItem;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import com.greensock.plugins.TweenPlugin;
	import com.greensock.plugins.BlurFilterPlugin;
	import flash.ui.ContextMenu;
	import flash.display.StageDisplayState;
	import flash.display.DisplayObject;
	import flash.display.StageScaleMode;
	import com.alarex.visual.component.Led;
	import com.alarex.visual.component.CylinderDigit;
	import com.alarex.visual.component.CylinderString;
	import com.alarex.visual.component.DigitalString;
	import com.alarex.visual.component.ShinyPanel;
	import com.alarex.visual.component.CurvyPanel;
	import com.alarex.visual.component.SmallLabel;
	import com.alarex.visual.component.GaugeFrame;
	import com.alarex.visual.liveComponents.SolarSystem;
	import com.alarex.visual.component.GlassWindow;
	import flash.system.Capabilities;
	
	




	public class Main extends Sprite
	{
		private const _UiLKy:String = "\x41\x6c\x61\x72\x65\x78\x20\x53\x6f\x6c\x61\x72\x20\x4d\x6f\x6e\x69\x74\x6f\x72";
		private var _EXVib:Number = 800;
		private var _hiNDj:Number = 600;
		private const _5PBwd:Number = 0;
		private const _ZNYZh:Number = 0;
		private const _xARx4:Boolean = false;
		
		private const _oPMis:Number = 0;
		private const _rxbhu:Number = 2;
		
		private var _wGN0w:Timer = new Timer(4000,0);
		private var _L88fJ:PowerGauge = new PowerGauge(_oPMis,_rxbhu);
		private var _yLAv3:SumGauge = new SumGauge();
		private var _i1nm4:SliderButton = new SliderButton();
		private var _peUPE:WeatherInfoPanel = new WeatherInfoPanel();
		private var _9wbgv:SolarSystem = new SolarSystem();
		
		private var _N1oJy:Boolean = false;
		
		
		private var _sD9kD:int = 0;
		
		private var _kHs52:Number = 0;
		
		private var _IaODu:PanelImprint;
		private var _ZwII6:PanelImprint;
		private var _UrPnV:GlassPanel;
		
		[Embed("\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x6c\x69\x62\x2f\x6c\x61\x6e\x64\x73\x63\x61\x70\x65\x2e\x6a\x70\x67")]
		private const _YYcEc:Class;
		
		[Embed("\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x6c\x69\x62\x2f\x66\x61\x63\x74\x6f\x72\x2d\x6c\x6f\x67\x6f\x2e\x70\x6e\x67")]
		private const _ISWzl:Class;
 
		[Embed("\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x6c\x69\x62\x2f\x61\x6c\x61\x72\x65\x78\x2d\x6c\x6f\x67\x6f\x2e\x70\x6e\x67")]
		private const _dY6ii:Class;
		
		private var _VVxXd:LineChart1;

						
		
		public function Main():void 
		{
			if (stage) _yeGtm();
			else addEventListener(Event.ADDED_TO_STAGE, _yeGtm);
			
		}
		
		public function _Y2smD(e:Event = null):void {
			
								
			if (stage.displayState == StageDisplayState.FULL_SCREEN) {
				
				
				
				_EXVib = Capabilities.screenResolutionX;
				_hiNDj = Capabilities.screenResolutionY;
				
			} else {
				
				_EXVib = 800;
				_hiNDj = 600;
				
			}
				
				
			var _Lzvnj:Sprite = new Sprite();
			this.addChild(_Lzvnj);
			
			_Lzvnj.graphics.beginFill(0x000000);
			_Lzvnj.graphics.drawRect(0, 0, _EXVib, _hiNDj);
			_Lzvnj.graphics.endFill();
						
							
			
			
			var _nu3BS:DisplayObject = new _YYcEc();
			_Lzvnj.addChild(_nu3BS);
			
			if (_xARx4) {
				var _GBkCs:BlurFilter = new BlurFilter(_5PBwd, _ZNYZh);
				_nu3BS.filters = [_GBkCs];
			}
			
			var _WHUrT:Sprite = new Sprite();
			_WHUrT.graphics.beginFill(0x000000);
			_WHUrT.graphics.drawRect(0, 0, _EXVib, _hiNDj);
			_WHUrT.graphics.endFill();
			_Lzvnj.addChild(_WHUrT);
			
			_Lzvnj.mask = _WHUrT;
			
			
			var _cHKMe:ShinyPanel = new ShinyPanel(_EXVib, 60, true);
			_Lzvnj.addChild(_cHKMe);
			
			var _J2K6p:CurvyPanel = new CurvyPanel(_EXVib, 125);
			_Lzvnj.addChild(_J2K6p);
			_J2K6p.y = _hiNDj - 125;
			
			
			var _Ig4gK:SmallLabel = new SmallLabel(_UiLKy,30,false);
			_Lzvnj.addChild(_Ig4gK);
			_Ig4gK.x = _EXVib/2-_Ig4gK.getXres()/2;
			_Ig4gK.y = 8;
			
			
			
			_Lzvnj.addChild(_L88fJ);
			_L88fJ.x = _EXVib/2-195;
			_L88fJ.y = _hiNDj-210;
			
			_Lzvnj.addChild(_yLAv3);
			_yLAv3.x = _EXVib / 2 + 25;
			_yLAv3.y = _hiNDj - 210;
			
			
			
									
		
			_Lzvnj.addChild(_peUPE);
			_peUPE.x = _EXVib - 340;
			_peUPE.y = 95;
			
			
			_Lzvnj.addChild(_9wbgv);
			_9wbgv.x = 172;
			_9wbgv.y = 170;
			
			
		
			_Lzvnj.addChild(_i1nm4);
			_i1nm4.x = 15;
			_i1nm4.y = 12;
			
											
									
		
			var _IMwAQ:DisplayObject = new _dY6ii();
			var _hjytS:Sprite = new Sprite();
			_hjytS.addChild(_IMwAQ);
		
			_IaODu = new PanelImprint(_hjytS);
			_Lzvnj.addChild(_IaODu);
			_IaODu.x = 4;
			_IaODu.y = _hiNDj - 95;
			
			var _eRT5Q:DisplayObject = new _ISWzl();
			var _qy6Jq:Sprite = new Sprite();
			_qy6Jq.addChild(_eRT5Q);
			_qy6Jq.scaleX *= -1;
			_qy6Jq.x = 146;
			
		
			
			_ZwII6 = new PanelImprint(_qy6Jq);
			_Lzvnj.addChild(_ZwII6);
			_ZwII6.x = _EXVib-4;
			_ZwII6.y = _hiNDj - 95;
			_ZwII6.scaleX *= -1;
			
			
										
		
						
							
							
						
		}
		
		private function _yeGtm(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, _yeGtm);
						TweenPlugin.activate([BlurFilterPlugin]);
			
			addEventListener(Event.RESIZE, _Y2smD);
					
			this.cacheAsBitmap = true;
			
			_Y2smD();
		
		
			
			Security.allowDomain("\x2a");
			Security.allowInsecureDomain("\x2a");
			
																					
			ExternalInterface.addCallback("\x5f\x61\x78\x5f\x72\x75\x6e\x44\x65\x6d\x6f", _HjCWl);
			ExternalInterface.addCallback("\x5f\x61\x78\x5f\x73\x74\x6f\x70\x44\x65\x6d\x6f", _WjxYi);
			ExternalInterface.addCallback("\x5f\x61\x78\x5f\x73\x65\x74\x43\x6f\x6c\x64\x54\x65\x6d\x70", _i1A8t);
			ExternalInterface.addCallback("\x5f\x61\x78\x5f\x73\x65\x74\x48\x6f\x74\x54\x65\x6d\x70", _Dcuu4);
			ExternalInterface.addCallback("\x5f\x61\x78\x5f\x73\x65\x74\x56\x61\x6c\x75\x65\x4b\x57", _x8bLw);
			ExternalInterface.addCallback("\x5f\x61\x78\x5f\x73\x65\x74\x4b\x57\x48\x53\x75\x6d", _ZF1ST);
			
			_SsidT();
			
					
			
			_wGN0w.addEventListener(TimerEvent.TIMER, _byyP9);
		

		}
		
		public function _SsidT():void {
			
			var _DyzGl:ContextMenu = new ContextMenu();
			_DyzGl.builtInItems.forwardAndBack = false;
			_DyzGl.builtInItems.loop = false;
			_DyzGl.builtInItems.play = false;
			_DyzGl.builtInItems.print = false;
			_DyzGl.builtInItems.quality = false;
			_DyzGl.builtInItems.rewind = false;
			_DyzGl.builtInItems.save = false;
			_DyzGl.builtInItems.zoom = false;
			contextMenu = _DyzGl;
			
			var _42xtS:ContextMenuItem = new ContextMenuItem("\x28\x63\x29\x20\x32\x30\x31\x31\x20\x4c\x75\x6b\x61\x73\x20\x42\x65\x6e\x64\x61\x2c\x20\x6c\x75\x6b\x65\x2e\x62\x65\x6e\x64\x61\x40\x67\x6d\x61\x69\x6c\x2e\x63\x6f\x6d");
			_DyzGl.customItems.push(_42xtS);
			
			var _3EZaZ:ContextMenuItem = new ContextMenuItem("\x74\x6f\x67\x67\x6c\x65\x20\x66\x75\x6c\x6c\x73\x63\x72\x65\x65\x6e");
			_3EZaZ.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT, _aGvHs);
			_DyzGl.customItems.push(_3EZaZ);
			
		}
		
		public function _aGvHs(e:ContextMenuEvent):void {
			if (stage.displayState == StageDisplayState.NORMAL) {
				stage.scaleMode = StageScaleMode.SHOW_ALL;
				stage.displayState=StageDisplayState.FULL_SCREEN;
			} else {
				stage.displayState=StageDisplayState.NORMAL;
			}
		}
		
		
		
	
		
		
		public function _byyP9(e:TimerEvent):void {
			
			_sD9kD++;
			
			var _XfS5S:Number = Math.random() * 2;
			
			this._x8bLw(_XfS5S);
			this._kHs52 += _XfS5S;
			this._ZF1ST(this._kHs52);
			
			this._i1A8t(_XfS5S * 10 + 10);
			this._Dcuu4(_XfS5S * 60 + 60);
			
							
					
								
								
											
						
			
		}
		
		public function _jMx1B():void {
			
			if (!_N1oJy) {
				
				_i1nm4.changeState(1);
				
				_N1oJy = true;
			}
			
		}
		
								
		public function _HjCWl():void {
			_wGN0w.start();
		}
		
		public function _WjxYi():void {
			_wGN0w.stop();
		}
		
				
		public function _i1A8t(ct:Number):void {
			_9wbgv._i1A8t(ct);
			this._jMx1B();
		}
				
				
		public function _Dcuu4(ht:Number):void {
			_9wbgv._Dcuu4(ht);
			this._jMx1B();
		}
		
				
		public function _i2l3b(f:Number):void {
			_9wbgv._i2l3b(f);
			this._jMx1B();
		}
		
				
		public function _x8bLw(v:Number):void {
			this._jMx1B();
			_L88fJ._x8bLw(v);
			
			var _mnto0:Number = v / (_rxbhu-_oPMis);
			
			_rfROh(v*_mnto0);
			_5UWt3(v*_mnto0); 
			_i2l3b(v*_mnto0);
		}
		
				
		public function _rfROh(f:Number):void {
			this._jMx1B();
			_yLAv3.setWeelSpeedFactor(f);
		}
		
			
		public function _ZF1ST(s:Number):void {
			this._jMx1B();
			_yLAv3._ZF1ST(s);
		}
		
				
		public function _5UWt3(sf:Number):void {
			this._jMx1B();
			_peUPE._5UWt3(sf);
		}
		
	}
	
}