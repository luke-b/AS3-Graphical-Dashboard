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
	import flash.events.MouseEvent;
	import com.greensock.TweenLite;
	import com.greensock.easing.Elastic;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class SolarSystem extends Sprite 
	{
		
		private var houseFrame:HouseFrame;
		private var boiler:BoilerSymbol;
		private var boilerState:Led;
		
		private var panel1:SolarPanelSymbol;
		private var panel2:SolarPanelSymbol;
		private var panel3:SolarPanelSymbol;
		
		private var pcr1:PipeCurve2;
		private var psr1:PipeStraight;
		private var pcr2:PipeCurve2;
		
		private var pcb1:PipeCurve2;
		private var psb1:PipeStraight;
		private var pcb2:PipeCurve2;
		
		private var hotWater:TempInfoBubble;
		private var coldWater:TempInfoBubble;
		
		
		private var flowFactor:Number = 0;
		
		
		private function doAnim(e:MouseEvent):void {
			TweenLite.to(boiler, 6, { rotation:360, ease:Elastic.easeOut } );
		}
		
		public function SolarSystem() 
		{
			this.cacheAsBitmap = true;
			
			houseFrame = new HouseFrame();
			this.addChild(houseFrame);
			
			//red pipes
			
			pcr1 = new PipeCurve2(0xff0000, 40, 3, 15, true);
			this.addChild(pcr1);
			pcr1.x = 172;
			pcr1.y = 70;
			
			psr1 = new PipeStraight(0xff0000, 40, 3, 15, true);
			this.addChild(psr1);
			psr1.x = 132 + 40;
			psr1.y = 70 + 39.75;
			
			pcr2 = new PipeCurve2(0xff0000, 70, 3, 15, true);
			this.addChild(pcr2);
			pcr2.y = 205
			pcr2.x = 110;
		//	pcr2.rotation = 90;
			
			//blue pipes
			
			pcb1 = new PipeCurve2(0x0000ff, 40, 3, 15, true);
			this.addChild(pcb1);
			pcb1.rotation = 180;
			pcb1.x = 370;
			pcb1.y = 115;
			
			
			psb1 = new PipeStraight(0x0000ff, 220, 3, 15, false);
			this.addChild(psb1);
			psb1.rotation = 90;
			psb1.x = 150;
			psb1.y = 372;
			
			pcb2 = new PipeCurve2(0x0000ff, 40, 3, 15, false);
			this.addChild(pcb2);
		//	pcb2.rotation = 90;
		//	pcb2.scaleX *= -1;
			pcb2.x = 110;
			pcb2.y = 205;
			
			
			//symbols go last
			
			boiler = new BoilerSymbol();
			this.addChild(boiler);
			boiler.x = 110;
			boiler.y = 90;
			
			
			
			boilerState = new Led();
			boiler.addChild(boilerState);
			boilerState.x = 22;
			boilerState.y = 40;
			boilerState.scaleX = 0.3;
			boilerState.scaleY = 0.3;
			this.boilerState.setState(1); //1-cervena , 3-zelena
			
			boiler.addEventListener(MouseEvent.MOUSE_DOWN, doAnim);
			
			panel1 = new SolarPanelSymbol(1);
			this.addChild(panel1);
			panel1.x = 170;
			panel1.y = 27;
			
			panel2 = new SolarPanelSymbol(1.5);
			this.addChild(panel2);
			panel2.x = 170 + 60;
			panel2.y = 27;
			
			panel3 = new SolarPanelSymbol(2);
			this.addChild(panel3);
			panel3.x = 170 + 120;
			panel3.y = 27;
			
			
			hotWater = new TempInfoBubble("-- ˚C");
			this.addChild(hotWater);
			hotWater.x = 240;
			hotWater.y = 50;
			
			coldWater = new TempInfoBubble("-- ˚C");
			this.addChild(coldWater);
			coldWater.x = 190;
			coldWater.y = 135;
			
		}
		
		public function setColdTemp(ct:Number):void {
			coldWater.changeString(ct.toFixed(1) +  " ˚C");
		}
		
		public function setHotTemp(ht:Number):void {
			hotWater.changeString(ht.toFixed(1) + " ˚C");
		}
		
		public function setFlowFactor(f:Number):void {
			
			
				pcr1.setDirFac(f);
				psr1.setDirFac(f);
				pcr2.setDirFac(f);
		
				pcb1.setDirFac(f);
				psb1.setDirFac(f);
				pcb2.setDirFac(f);
			
				if (f == 0) {
					boilerState.setState(1);
				} else {
					boilerState.setState(3);
				}
			
		}
		
	}

}