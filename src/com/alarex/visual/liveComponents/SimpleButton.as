package com.alarex.visual.liveComponents 
{
	import com.alarex.visual.component.ShinyButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import com.greensock.TweenLite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class SimpleButton extends Sprite 
	{
		
		private var btn:ShinyButton;
		private var overlay:Sprite;
		private var fnc:Function;
		
		public function SimpleButton(caption:String) 
		{
			this.btn = new ShinyButton(caption);
			this.addChild(btn);
			
			overlay = new Sprite();
			overlay.graphics.beginFill(0xFFFFFF);
			overlay.graphics.drawRect(3, 3,120-6,40-6);
			overlay.graphics.endFill();
			overlay.alpha = 0;
			this.addChild(overlay);
			overlay.buttonMode = true;
			overlay.useHandCursor = true;
			
			overlay.addEventListener(MouseEvent.MOUSE_OVER, mouseOverHandler);
			overlay.addEventListener(MouseEvent.MOUSE_OUT, mouseOutHandler);
			overlay.addEventListener(MouseEvent.MOUSE_DOWN, clickHandler);
		}
		
		public function addButtonHandler(f:Function):void {
			
			this.fnc = f;
			
		}
		
		public function clickHandler(me:MouseEvent):void {
			TweenLite.to(overlay, 0.25, { alpha:0.2 , onComplete: backAnim } );
			
			if (fnc != null) {
				this.fnc();
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