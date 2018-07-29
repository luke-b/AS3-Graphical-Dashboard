package com.alarex.visual.liveComponents 
{
	import com.alarex.visual.component.CylinderString;
	import com.alarex.visual.component.GaugeFrame;
	import com.alarex.visual.component.SmallLabel;
	import com.alarex.visual.component.Wheel;
	import flash.display.Sprite;
	import com.greensock.TweenLite;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class SumGauge extends Sprite 
	{
		
		private var frame:GaugeFrame;
		private var label1:SmallLabel;
		private var label2:SmallLabel;
		private var wheel:Wheel;
		private var sum:CylinderString;
		
		private var overlay:Sprite;
		private var fnc:Function = null;
		
		
		public function SumGauge(english:Boolean = false ) 
		{
			this.cacheAsBitmap = true;
			
			frame = new GaugeFrame();
			this.addChild(frame);
			
			if (!english) {
				label1 = new SmallLabel("Ušetřeno:", 15, false);
			} else {
				label1 = new SmallLabel("You Saved:", 15, false);
			}
			this.addChild(label1);
			label1.x = 91 - label1.getXres() / 2;
			label1.y = 40;
			
			if (!english) {
				label2 = new SmallLabel("Kilowatt hodin", 15, false);
			} else {
				label2 = new SmallLabel("Kilowatt Hours", 15, false);
			}
			this.addChild(label2);
			label2.x = 91 - label2.getXres() / 2;
			label2.y = 100;
			
			wheel = new Wheel();
			this.addChild(wheel);
			wheel.x = 42;
			wheel.y = 130;
			
			sum = new CylinderString("000000", "000");
			this.addChild(sum);
			sum.scaleX = 0.18;
			sum.scaleY = 0.18;
			
			sum.x = 37;
			sum.y = 70;
			
			this.wheel.setSpeedFactor(0.0);
			
				overlay = new Sprite();
			overlay.graphics.beginFill(0xFFFFFF);
			overlay.graphics.drawCircle(187 / 2, 187 / 2, 187 / 2);
			overlay.graphics.endFill();
			overlay.alpha = 0;
			this.addChild(overlay);
			overlay.buttonMode = true;
			overlay.useHandCursor = true;
			
			
		
			overlay.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler);
			overlay.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler);
			overlay.addEventListener(MouseEvent.MOUSE_DOWN, clickHandler);
			
		}
		
		public function setWeelSpeedFactor(factor:Number):void {
			this.wheel.setSpeedFactor(factor);
		}
		
		public function setKWHSum(s:Number):void {
			sum.changeString(s.toFixed(3));
		}
		
		public function setGaugeClickHandler(f:Function):void {
			this.fnc = f;
		}
		
		public function clickHandler(me:MouseEvent):void {
			TweenLite.to(overlay, 0.25, { alpha:0.2 , onComplete: backAnim } );
		
			if (fnc != null) {
				fnc();
			}
		}
		
		public function backAnim():void {
			TweenLite.to(overlay, 0.25, { alpha:0.5 } );
		}
		
		
		private function mouseOverHandler(me:MouseEvent):void {
			TweenLite.to(overlay,2, { alpha:0.5 } );
		}
		
		private function mouseOutHandler(me:MouseEvent):void {
			TweenLite.to(overlay,2, { alpha:0.0 } );
		}
		
	}

}