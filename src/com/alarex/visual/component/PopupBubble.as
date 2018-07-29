package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	




	public class PopupBubble extends Sprite 
	{
		
		public function PopupBubble(xp:Number,yp:Number,w:Number,h:Number,orientation:int) 
		{
			this.cacheAsBitmap = true;
			
			switch (orientation) {
				
				case 0: 
					
					_zwuwC(xp, yp+10, w, h-10,this);
					_n6Gyv(xp + w / 2 , yp, 10, 10, orientation, this);
					
					_RGb4N(xp, yp+10, w, h-10,this);
					_IcbPv(xp + w / 2 , yp, 10, 10, orientation, this);
					
					break;
				case 1: 
					_zwuwC(xp+10, yp, w-10, h,this);
					_n6Gyv(xp, yp  + h / 2, 10, 10, orientation, this);
					
					_RGb4N(xp+10, yp, w-10, h,this);
					_IcbPv(xp, yp  + h / 2, 10, 10, orientation, this);
					
					break;
				case 2: 
					
					_zwuwC(xp, yp, w, h-10,this);
					_n6Gyv(xp + w / 2, yp + h, 10, 10, orientation, this);
					
					_RGb4N(xp, yp, w, h-10,this);
					_IcbPv(xp + w / 2, yp + h, 10, 10, orientation, this);
					
					break;
				case 3: 
					_zwuwC(xp, yp, w-10, h,this);
					_n6Gyv(xp + w, yp + h / 2, 10, 10, orientation, this);
					
					_RGb4N(xp, yp, w-10, h,this);
					_IcbPv(xp + w, yp + h / 2, 10, 10, orientation, this);
					
					break;
								
			}
		}
		
		private function _IcbPv(xp:Number, yp:Number, w:Number, h:Number,orientation:int,holder:Sprite):void {
			
			var _X7k9g:Sprite = new Sprite();
			
			var _xOARz:Matrix = new Matrix();
			var _ADhWC:Array =[0xdddddd,0xffffff];  
			var _P3WSg:Array =[1,1];
			var _TeuCO:Array =[0,255];
			_xOARz.createGradientBox(w, h,Math.PI/2,0,0);
			_X7k9g.graphics.beginGradientFill(GradientType.LINEAR, _ADhWC, _P3WSg, _TeuCO, _xOARz);
			_X7k9g.graphics.moveTo(0, 0);
			_X7k9g.graphics.lineTo(w/2, h);
			_X7k9g.graphics.lineTo(-w/2, h);
			_X7k9g.graphics.endFill();
			_X7k9g.x = xp;
			_X7k9g.y = yp;
			_X7k9g.rotation = -orientation * 90;
			_X7k9g.cacheAsBitmap = true;
			holder.addChild(_X7k9g);
		}
		
		private function _RGb4N(xp:Number, yp:Number, w:Number, h:Number,holder:Sprite):void {
			
			var _dhkmA:Sprite = new Sprite();
			
			var _xOARz:Matrix = new Matrix();
			var _ADhWC:Array =[0xeeeeee,0xffffff,0xffffff,0xeeeeee];  
			var _P3WSg:Array =[1,1,1,1];
			var _TeuCO:Array =[0,45,210,255];
			_xOARz.createGradientBox(w, h,Math.PI/2,0,-h*0.1);
			_dhkmA.graphics.beginGradientFill(GradientType.LINEAR, _ADhWC, _P3WSg, _TeuCO, _xOARz);
			_dhkmA.graphics.drawRoundRect(0, 0, w, h, 20, 20);
			_dhkmA.graphics.endFill();
			_dhkmA.x = xp;
			_dhkmA.y = yp;
			_dhkmA.cacheAsBitmap = true;
			holder.addChild(_dhkmA);
		}
		
		
		private function _n6Gyv(xp:Number, yp:Number, w:Number, h:Number,orientation:int,holder:Sprite):void {
			
			var _X7k9g:Sprite = new Sprite();
			
			_X7k9g.graphics.beginFill(0x000000);
			_X7k9g.graphics.moveTo(0, 0-3);
			_X7k9g.graphics.lineTo(w/2+2, h);
			_X7k9g.graphics.lineTo(-w/2-2, h);
			_X7k9g.graphics.endFill();
			_X7k9g.x = xp;
			_X7k9g.y = yp;
			_X7k9g.rotation = -orientation * 90;
			_X7k9g.cacheAsBitmap = true;
			holder.addChild(_X7k9g);
		}
		
		private function _zwuwC(xp:Number, yp:Number, w:Number, h:Number,holder:Sprite):void {
			
			holder.cacheAsBitmap = true;
			
			holder.graphics.beginFill(0x000000);
			holder.graphics.drawRoundRect(xp-2, yp-2, w+4, h+4, 24, 24);
			holder.graphics.endFill();
			
		}
		
	}

}