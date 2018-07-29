package com.alarex.visual.liveComponents 
{
	import com.alarex.visual.component.DigitalString;
	import com.alarex.visual.component.GaugeFrame;
	import com.alarex.visual.component.GaugeHand;
	import com.alarex.visual.component.GaugeHandTop;
	import com.alarex.visual.component.GaugeScaleGradient;
	import com.alarex.visual.component.GaugeScaleLines;
	import com.alarex.visual.component.SmallLabel;
	import flash.display.Sprite;
	import com.greensock.TweenLite;
	import com.greensock.easing.Elastic;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class PowerGauge extends Sprite 
	{

		private var frame:GaugeFrame;
		private var lineScale:GaugeScaleLines;
		private var gradScale:GaugeScaleGradient;
		private var hand:GaugeHand;
		private var label:SmallLabel;
		private var digital:DigitalString;
		private var handTop:GaugeHandTop;
		private var overlay:Sprite;
		
		private var minValue:Number;
		private var maxValue:Number;
		private var newValue:Number;
		
		private var fnc:Function = null;
		
		public function PowerGauge(mValue:Number, maValue:Number) 
		{
			this.cacheAsBitmap = true;
			
			this.minValue = mValue;
			this.maxValue = maValue;
			
			
			frame = new GaugeFrame();
			this.addChild(frame);
		
				label = new SmallLabel("kW TH", 15, false);
			this.addChild(label);
			label.x = 91-label.getXres()/2;
			label.y = 145;
			
			digital = new DigitalString("000");
			digital.scaleX = 0.25;
			digital.scaleY = 0.25;
			this.addChild(digital);
			digital.x = 57;
			digital.y = 115;
			
			digital.changeString("0.00");
			
			
			lineScale = new GaugeScaleLines(21, 5);
			this.addChild(lineScale);
			lineScale.x = 93;
			lineScale.y = 93;
			
			gradScale = new GaugeScaleGradient(93, 93, 75, 5, [0xff0000, 0xffff00, 0x00ff00], 2);
			this.addChild(gradScale);
			
			
			hand = new GaugeHand();
			this.addChild(hand);
			hand.x = 93;
			hand.y = 93;
			
			hand.rotation = -90;
			
			handTop = new GaugeHandTop();
			this.addChild(handTop);
			handTop.x = 93;
			handTop.y = 93;
			
			
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
		
		
		public function setValueKW(nValue:Number):void {
			
			
			if (this.newValue != nValue) {
	
				var step:Number = 180 / (this.maxValue - this.minValue);
				var hndValue:Number = nValue;
				if (hndValue < minValue) hndValue = minValue;
				if (hndValue > maxValue) hndValue = maxValue;
				
				var hndAngle:Number = hndValue * step - 90;
				//hand.rotation = nValue * step - 90;
					
				TweenLite.to(hand, 2, { rotation:hndAngle, ease:Elastic.easeOut} );
				
				this.newValue = nValue;
				
				if (this.newValue < 0) this.newValue = 0;
				if (this.newValue > 99) this.newValue = 99;
				
				var str:String = newValue.toFixed(2);
				digital.changeString(str);
			}
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