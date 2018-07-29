package com.alarex.visual
{
	
	import com.alarex.visual.component.GlassLabel;
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
	import flash.display.SimpleButton;
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
	import com.alarex.visual.liveComponents.SimpleButton;
	import flash.geom.Rectangle;
	import com.greensock.easing.Quint;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class Main extends Sprite
	{
		
		private const DEMO_CONFIG:Boolean = true;
		
		private const WINDOW_TITLE:String = "Alarex Solar Monitor";  //Alarex Solar Monitor
		private const HOUSE_NAME:String = "Smart Home";
		private var XRES:Number = 800;
		private var YRES:Number = 600;
		private const BLURX:Number = 0;
		private const BLURY:Number = 0;
		private const BLUR:Boolean = false;
		
		private const ENGLISH:Boolean = true;
		
		private const KW_MIN:Number = 0;
		private const KW_MAX:Number = 2;
		
		private var timer:Timer = new Timer(1000,0);
		private var powerGauge1:PowerGauge = new PowerGauge(KW_MIN,KW_MAX);
		private var sumGauge1:SumGauge = new SumGauge(ENGLISH);
		private var slide:SliderButton = new SliderButton();
		private var weather:WeatherInfoPanel = new WeatherInfoPanel();
		private var solarSystem:SolarSystem = new SolarSystem();
		
		private var chartHolder:Sprite;
		
		private var background:Sprite = new Sprite();
		
		private var isOnline:Boolean = false;
		
		private var gaugeZoomed:Boolean = false;
		private var gaugeZoomed2:Boolean = false;
		
		private var chartSet:Boolean = false;
		
		private var cnt:int = 0;
		
		private var kwSum:Number = 0;
		
		private var leftImprint:PanelImprint;
		private var rightImprint:PanelImprint;
		private var gp:GlassPanel;
		
		[Embed("../../../../lib/landscape.jpg")]
		private const BackgroundImage:Class;
		
		[Embed("../../../../lib/factor-logo.png")]
		private const FactorLogo:Class;
 
		[Embed("../../../../lib/alarex-logo.png")]
		private const AlarexLogo:Class;
		
		private var lineChart:LineChart1;

		// C:\Android\as3-obf\obfuscate.bat   
		// C:\Android\as3-obf\makedirs.bat
		// C:\Android\as3-obf\runobf.bat

		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			
		}
		
		public function initComponents(sizeCode:int):void {
			
			//sampleInstances();
				
			if (sizeCode == 1) {
				
				XRES = Capabilities.screenResolutionX;
				YRES = Capabilities.screenResolutionY;
				
				//XRES = 400;
				//YRES = 600;
							
			} else {
				
				XRES = 800;
				YRES = 600;
				
				
			}
				
			while (numChildren > 0) {
					removeChildAt(0);
			}
			
		//	XRES = stage.width;
		//	YRES = stage.height;


			this.addChild(background);
			
			background.graphics.beginFill(0x000000);
			background.graphics.drawRect(0, 0, XRES, YRES);
			background.graphics.endFill();
						
		//	s = -XRES / 2;
		//	background.y = -YRES / 2;
			
			
			
			var raster:DisplayObject = new BackgroundImage();
			background.addChild(raster);
			raster.width = XRES;
			raster.height = YRES;
			
			if (sizeCode == 1) {
				var bf:BlurFilter = new BlurFilter(BLURX, BLURY);
				raster.filters = [bf];
			}
			
			var border:Sprite = new Sprite();
			border.graphics.beginFill(0x000000);
			border.graphics.drawRect(0, 0, XRES, YRES);
			border.graphics.endFill();
			background.addChild(border);
			
			background.mask = border;
			
			if (DEMO_CONFIG) {
			    setProjectName(HOUSE_NAME,background);
			}
			
			chartHolder = new Sprite();
			background.addChild(chartHolder);
		//	chartHolder.cacheAsBitmap = true;
				
			chartHolder.x = XRES - 140 + 65;
			chartHolder.y = YRES / 2 + 65;
					
			
			if (lineChart != null) {
				chartHolder.addChild(lineChart);
			}
			
			
			var topPanel:ShinyPanel = new ShinyPanel(XRES, 60, true);
			background.addChild(topPanel);
			
			var bottomPanel:CurvyPanel = new CurvyPanel(XRES, 125);
			background.addChild(bottomPanel);
			bottomPanel.y = YRES - 125;
			
			
			var headerText:SmallLabel = new SmallLabel(WINDOW_TITLE,30,false);
			background.addChild(headerText);
			headerText.x = XRES/2-headerText.getXres()/2;
			headerText.y = 8;
			
			
			
			
			
			
			
			
			background.addChild(sumGauge1);
			sumGauge1.x = XRES / 2 + 25;
			sumGauge1.y = YRES - 210;
			
			
			
			var sidePanel:SideInfoPanel = new SideInfoPanel();
			background.addChild(sidePanel);
			sidePanel.y = 95;
			sidePanel.x = -10;
			
		
			background.addChild(weather);
			weather.x = XRES - 260;
			weather.y = 95;
			
			
		
			
			background.addChild(solarSystem);
			solarSystem.x = XRES/2-475/2;
			solarSystem.y = YRES/2-300/2;
			
			
		
			background.addChild(slide);
			slide.x = 15;
			slide.y = 12;
			
			var fullscreen:com.alarex.visual.liveComponents.SimpleButton = new com.alarex.visual.liveComponents.SimpleButton("Fullscreen");
			background.addChild(fullscreen);
			fullscreen.addButtonHandler(this.toggleFullscreen);
			fullscreen.x = XRES - 130;
			fullscreen.y = 10;
			
			contextMenuInit();
			
		
			
		
			var logo2:DisplayObject = new AlarexLogo();
			var logo2Holder:Sprite = new Sprite();
			logo2Holder.addChild(logo2);
		
			leftImprint = new PanelImprint(logo2Holder);
			background.addChild(leftImprint);
			leftImprint.x = 4;
			leftImprint.y = YRES - 95;
			
			var logo:DisplayObject = new FactorLogo();
			var logoHolder:Sprite = new Sprite();
			logoHolder.addChild(logo);
			logoHolder.scaleX *= -1;
			logoHolder.x = 146;
			
		
			
			rightImprint = new PanelImprint(logoHolder);
			background.addChild(rightImprint);
			rightImprint.x = XRES-4;
			rightImprint.y = YRES - 95;
			rightImprint.scaleX *= -1;
			
			
			
			background.addChild(powerGauge1);
			powerGauge1.x = XRES/2-195;
			powerGauge1.y = YRES - 210;
			
			powerGauge1.setGaugeClickHandler(function():void {
				if (!gaugeZoomed) {
					
					if (background.getChildIndex(powerGauge1) <
						background.getChildIndex(sumGauge1)) {
							background.swapChildren(powerGauge1, sumGauge1);
						}
					
					TweenLite.to(powerGauge1, 0.5, { x: XRES / 2 - 200, y:YRES / 2 - 200, scaleX:2, scaleY:2, ease:Quint.easeOut } );
					
					if (gaugeZoomed2) {
						
						TweenLite.to(sumGauge1, 0.5, { x: XRES/2+25, y:YRES - 210, scaleX:1, scaleY:1, ease:Quint.easeOut } );
						gaugeZoomed2 = false;
					}
					
					gaugeZoomed = true;
				} else {
					TweenLite.to(powerGauge1, 0.5, { x: XRES/2-195, y:YRES - 210, scaleX:1, scaleY:1, ease:Quint.easeOut } );
					gaugeZoomed = false;
				}
			} );
			
			background.addChild(sumGauge1);
			sumGauge1.x = XRES / 2 + 25;
			sumGauge1.y = YRES - 210;
			
			sumGauge1.setGaugeClickHandler(function():void {
				if (!gaugeZoomed2) {
					
					if (background.getChildIndex(powerGauge1) >
						background.getChildIndex(sumGauge1)) {
							background.swapChildren(powerGauge1, sumGauge1);
						}
					
					TweenLite.to(sumGauge1, 0.5, { x: XRES / 2 - 200, y:YRES / 2 - 200, scaleX:2, scaleY:2, ease:Quint.easeOut } );
					
					if (gaugeZoomed) {
						TweenLite.to(powerGauge1, 0.5, { x: XRES/2-195, y:YRES - 210, scaleX:1, scaleY:1, ease:Quint.easeOut } );
						gaugeZoomed = false;
					}
					
					gaugeZoomed2 = true;
				} else {
					TweenLite.to(sumGauge1, 0.5, { x: XRES/2+25, y:YRES - 210, scaleX:1, scaleY:1, ease:Quint.easeOut } );
					gaugeZoomed2 = false;
				}
			} );
			
			
		//	gp = new GlassPanel(130,50);
		//	background.addChild(gp);
		//	gp.x = XRES-140;
		//	gp.y = YRES / 2;		
		
		
		//	var pp1:PopupBubble = new PopupBubble(50, 50, 150, 50, 0);
		//	this.addChild(pp1);
		
		//	var pp2:PopupBubble = new PopupBubble(50, 150, 150, 50, 1);
		//	this.addChild(pp2);
			
		//	var pp3:PopupBubble = new PopupBubble(50, 250, 150, 50, 2);
		//	this.addChild(pp3);
			
		//	var pp4:PopupBubble = new PopupBubble(50, 350, 150, 50, 3);
		//	this.addChild(pp4);
		
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			TweenPlugin.activate([BlurFilterPlugin]);
			
			//addEventListener(Event.RESIZE, initComponents);
			this.cacheAsBitmap = true;
			initComponents(0);
			
			Security.allowDomain("*");
			Security.allowInsecureDomain("*");
			
			//runDemo();
			//stopDemo();
			//setColdTemp(Number);	
			//setHotTemp(Number);
			//setValueKW(Number);
			//setKWHSum(Number);
			
			ExternalInterface.addCallback("_ax_runDemo", runDemo);
			ExternalInterface.addCallback("_ax_stopDemo", stopDemo);
			ExternalInterface.addCallback("_ax_setColdTemp", setColdTemp);
			ExternalInterface.addCallback("_ax_setHotTemp", setHotTemp);
			ExternalInterface.addCallback("_ax_setValueKW", setValueKW);
			ExternalInterface.addCallback("_ax_setKWHSum", setKWHSum);
			ExternalInterface.addCallback("_ax_toggleFullscreen", toggleFullscreen);
			ExternalInterface.addCallback("_ax_setProjectName", setProjectName);
			ExternalInterface.addCallback("_ax_setChartValues", setChartValues);
			
			
			contextMenuInit();
			
		//	slide.changeState(1);
			
			timer.addEventListener(TimerEvent.TIMER, updateTimer);
	
			if (DEMO_CONFIG) {
						timer.start();
						this.setChartValues(new Array(1,1,1,1.5,1.5,1.5,1,1,1));
			}
	    }
		
		public function contextMenuInit():void {
			
			var my_menu:ContextMenu = new ContextMenu();
			my_menu.builtInItems.forwardAndBack = false;
			my_menu.builtInItems.loop = false;
			my_menu.builtInItems.play = false;
			my_menu.builtInItems.print = false;
			my_menu.builtInItems.quality = false;
			my_menu.builtInItems.rewind = false;
			my_menu.builtInItems.save = false;
			my_menu.builtInItems.zoom = false;
			contextMenu = my_menu;
			
			var cmi:ContextMenuItem = new ContextMenuItem("(c) 2011 Lukas Benda, luke.benda@gmail.com");
			my_menu.customItems.push(cmi);
			
			var cmi2:ContextMenuItem = new ContextMenuItem("toggle fullscreen");
			cmi2.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT, toggleFullscreen);
			my_menu.customItems.push(cmi2);
			
		}
		
		public function toggleFullscreen(e:ContextMenuEvent = null):void {
		
			if (stage.displayState == StageDisplayState.NORMAL) {
				
				this.initComponents(0);
				//stage.fullScreenSourceRect = new Rectangle(0,0,XRES,YRES);
				
			
				stage.scaleMode = StageScaleMode.SHOW_ALL;
				
				stage.displayState = StageDisplayState.FULL_SCREEN;
				
				
				
			} else {
				
				this.initComponents(0);
				stage.fullScreenSourceRect = new Rectangle(0,0,XRES,YRES);
				stage.scaleMode = StageScaleMode.NO_SCALE;
				stage.displayState=StageDisplayState.NORMAL;
			}
		}
		
		
		public function setChartValues(ar:Array):void {
			
			if (ar != null && !chartSet) {
			
				if (ar.length > 5) {
				
					var hxxx:Sprite = new Sprite();
					
					lineChart = new LineChart1(-65, -65, 130, 130, ar.length, ar, KW_MIN, KW_MAX); //ar.length cols
					hxxx.addChild(lineChart);
					lineChart.alpha = 1;
				//	lineChart.rotationY = 1000;
					//lineChart.rotationX = 500;
				//	lineChart.scaleX = 3;
				//	lineChart.scaleY = 3;
					
				
					chartHolder.addChild(hxxx);
				
					chartSet = true;
					
					//TweenLite.to(lineChart, 3, { alpha:1, rotationY: 0, rotationX: 0, scaleX: 1, scaleY: 1} );
				}
			
			}
		}
	
		
		
		public function updateTimer(e:TimerEvent):void {
			
			cnt++;
			
			var nv:Number = 1.0 + Math.random() * 0.7;
			
			this.setValueKW(nv);
			this.kwSum += nv;
			this.setKWHSum(this.kwSum);
			
			if (this.lineChart != null) {
			this.lineChart.insertColumnValue(nv/2);	
			}
			
			
			this.setColdTemp(nv * 10 + 10);
			this.setHotTemp(nv * 30 + 60);
			
		//	powerGauge1.setValueKW(Math.random() * 2);
		//	sumGauge1.setKWHSum(cnt);
			
		//	lineChart.insertColumnValue(Math.random());
			
		//	if (cnt > 4) {
		//		cnt = 0;
				
		//		if (slide.getState() == 0) {
		//			slide.changeState(1);
				
		//		}
		//		else {
		//			slide.changeState(0);
					
		//		}
				
		//	}
	
		}
		
		public function setOnline():void {
			
			if (!isOnline) {
				
				slide.changeState(1);
				
				isOnline = true;
			}
			
		}
		
		public function setProjectName(pn:String,holder:Sprite):void {
			var houseName:GlassLabel = new GlassLabel(pn);
			holder.addChild(houseName);
			houseName.x = XRES/2-houseName.width/2;
			houseName.y = 100;
		}
		
		// -----------------------------------------------
		// ------------- EXTERNAL METHODS ----------------
		// -----------------------------------------------
		
		public function runDemo():void {
			timer.start();
		}
		
		public function stopDemo():void {
			timer.stop();
		}
		
		//SolarSystem::public function setColdTemp(ct:Number):void
		
		public function setColdTemp(ct:Number):void {
			solarSystem.setColdTemp(ct);
			this.setOnline();
		}
				
		//SolarSystem::public function setHotTemp(ht:Number):void 
		
		public function setHotTemp(ht:Number):void {
			solarSystem.setHotTemp(ht);
			this.setOnline();
		}
		
		//SolarSystem::public function setFlowFactor(f:Number):void
		
		public function setFlowFactor(f:Number):void {
			solarSystem.setFlowFactor(f);
			this.setOnline();
		}
		
		//PowerGauge::public function setValueKW(nValue:Number):void
		
		public function setValueKW(v:Number):void {
			this.setOnline();
			powerGauge1.setValueKW(v);
			
			var ff:Number = v / (KW_MAX - KW_MIN);
			
			if (this.lineChart != null) {
				lineChart.insertColumnValue(v / KW_MAX);
			}
			
			setWheelSpeedFactor(v*ff);
			setShineFactor(v*ff); 
			setFlowFactor(v*ff);
		}
		
		//SumGauge::public function setWeelSpeedFactor(factor:Number):void
		
		public function setWheelSpeedFactor(f:Number):void {
			this.setOnline();
			sumGauge1.setWeelSpeedFactor(f);
		}
		
		//SumGague::public function setKWHSum(s:Number):void
	
		public function setKWHSum(s:Number):void {
			this.setOnline();
			sumGauge1.setKWHSum(s);
		}
		
		//WeatherInfoPanel::public function setShineFactor(sf:Number):void 
		
		public function setShineFactor(sf:Number):void {
			this.setOnline();
			weather.setShineFactor(sf);
		}
		
	}
	
}