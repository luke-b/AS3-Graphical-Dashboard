package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	




	public class SimplePanel extends Sprite 
	{
		
		private var _IOqtE:Sprite = new Sprite();
		private var _KBxa4:Sprite = new Sprite();
		private var _oIuzX:Sprite = new Sprite();
		
		public function SimplePanel(w:Number,h:Number) 
		{
			
			this.cacheAsBitmap = true;
			
			_AxSvY(w, h);
						
			this.addEventListener(Event.RESIZE, _xn2jH);			
		}
		
		
		public function _xn2jH(e:Event):void {
			
			this.removeChild(_IOqtE);
			this.removeChild(_KBxa4);
			this.removeChild(_oIuzX);
			
			_AxSvY(this.width, this.height);
			
		}
		
		private function _AxSvY(w:Number, h:Number):void {
			
			_IOqtE = new Sprite();
			_IOqtE.cacheAsBitmap = true;
			_IOqtE.graphics.beginFill(0x000000);
			_IOqtE.graphics.drawRoundRect(-1, -1, w+2, h+2, 15 ,15);
			_IOqtE.graphics.endFill();
						
			_IOqtE.graphics.beginFill(0x666666);
			_IOqtE.graphics.drawRoundRect(0, 0, w, h, 10 ,10);
			_IOqtE.graphics.endFill();
			
			this.addChild(_IOqtE);
			
			_KBxa4 = new Sprite();
			_KBxa4.cacheAsBitmap = true;
			_KBxa4.graphics.beginFill(0xffffff);
			_KBxa4.graphics.drawRoundRect(0, 0, w, h-2, 10, 10);
			_KBxa4.graphics.endFill();
					
			this.addChild(_KBxa4);
			
			
			var _fo8QP:Matrix = new Matrix();
			var _gBvS2:Array =[0xffffff,0xdddddd];  
			var _Z1W5x:Array =[1,1];
			var _H6lwa:Array =[0,255];
			_fo8QP.createGradientBox(w, h-4,Math.PI/2,0,13);
			_KBxa4.graphics.beginGradientFill(GradientType.LINEAR, _gBvS2, _Z1W5x, _H6lwa, _fo8QP);
			
			_KBxa4.graphics.drawRoundRect(0, 0, w, h-4, 10, 10);
			_KBxa4.graphics.endFill();
			
			
			var _oJxWA:Matrix = new Matrix();
			var _GnsAs:Array =[0xffffff,0xdddddd];  
			var _9efv2:Array =[1,1];
			var _x4El5:Array =[0,255];
			_oJxWA.createGradientBox(w, h-4,-Math.PI/2,0,-13);
			_KBxa4.graphics.beginGradientFill(GradientType.LINEAR, _gBvS2, _Z1W5x, _H6lwa, _fo8QP);
			
			_KBxa4.graphics.drawRoundRect(0, 0, w, h-4, 10, 10);
			_KBxa4.graphics.endFill();
			
			_oIuzX = new Sprite();
			
			this.addChild(_oIuzX);
			
		}
		
	}

}