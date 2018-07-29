package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class PopupBubble extends Sprite 
	{
		
		public function PopupBubble(xp:Number,yp:Number,w:Number,h:Number,orientation:int) 
		{
			this.cacheAsBitmap = true;
			
			switch (orientation) {
				
				case 0: 
					
					drawPanelX(xp, yp+10, w, h-10,this);
					drawArrowX(xp + w / 2 , yp, 10, 10, orientation, this);
					
					drawPanel(xp, yp+10, w, h-10,this);
					drawArrow(xp + w / 2 , yp, 10, 10, orientation, this);
					
					break;
				case 1: 
					drawPanelX(xp+10, yp, w-10, h,this);
					drawArrowX(xp, yp  + h / 2, 10, 10, orientation, this);
					
					drawPanel(xp+10, yp, w-10, h,this);
					drawArrow(xp, yp  + h / 2, 10, 10, orientation, this);
					
					break;
				case 2: 
					
					drawPanelX(xp, yp, w, h-10,this);
					drawArrowX(xp + w / 2, yp + h, 10, 10, orientation, this);
					
					drawPanel(xp, yp, w, h-10,this);
					drawArrow(xp + w / 2, yp + h, 10, 10, orientation, this);
					
					break;
				case 3: 
					drawPanelX(xp, yp, w-10, h,this);
					drawArrowX(xp + w, yp + h / 2, 10, 10, orientation, this);
					
					drawPanel(xp, yp, w-10, h,this);
					drawArrow(xp + w, yp + h / 2, 10, 10, orientation, this);
					
					break;
								
			}
		}
		
		private function drawArrow(xp:Number, yp:Number, w:Number, h:Number,orientation:int,holder:Sprite):void {
			
			var arrow:Sprite = new Sprite();
			
			var mat5:Matrix = new Matrix();
			var colors5:Array =[0xdddddd,0xffffff];  
			var alphas5:Array =[1,1];
			var ratios5:Array =[0,255];
			mat5.createGradientBox(w, h,Math.PI/2,0,0);
			arrow.graphics.beginGradientFill(GradientType.LINEAR, colors5, alphas5, ratios5, mat5);
			arrow.graphics.moveTo(0, 0);
			arrow.graphics.lineTo(w/2, h);
			arrow.graphics.lineTo(-w/2, h);
			arrow.graphics.endFill();
			arrow.x = xp;
			arrow.y = yp;
			arrow.rotation = -orientation * 90;
			arrow.cacheAsBitmap = true;
			holder.addChild(arrow);
		}
		
		private function drawPanel(xp:Number, yp:Number, w:Number, h:Number,holder:Sprite):void {
			
			var panel:Sprite = new Sprite();
			
			var mat5:Matrix = new Matrix();
			var colors5:Array =[0xeeeeee,0xffffff,0xffffff,0xeeeeee];  
			var alphas5:Array =[1,1,1,1];
			var ratios5:Array =[0,45,210,255];
			mat5.createGradientBox(w, h,Math.PI/2,0,-h*0.1);
			panel.graphics.beginGradientFill(GradientType.LINEAR, colors5, alphas5, ratios5, mat5);
			panel.graphics.drawRoundRect(0, 0, w, h, 20, 20);
			panel.graphics.endFill();
			panel.x = xp;
			panel.y = yp;
			panel.cacheAsBitmap = true;
			holder.addChild(panel);
		}
		
		
		private function drawArrowX(xp:Number, yp:Number, w:Number, h:Number,orientation:int,holder:Sprite):void {
			
			var arrow:Sprite = new Sprite();
			
			arrow.graphics.beginFill(0x000000);
			arrow.graphics.moveTo(0, 0-3);
			arrow.graphics.lineTo(w/2+2, h);
			arrow.graphics.lineTo(-w/2-2, h);
			arrow.graphics.endFill();
			arrow.x = xp;
			arrow.y = yp;
			arrow.rotation = -orientation * 90;
			arrow.cacheAsBitmap = true;
			holder.addChild(arrow);
		}
		
		private function drawPanelX(xp:Number, yp:Number, w:Number, h:Number,holder:Sprite):void {
			
			holder.cacheAsBitmap = true;
			
			holder.graphics.beginFill(0x000000);
			holder.graphics.drawRoundRect(xp-2, yp-2, w+4, h+4, 24, 24);
			holder.graphics.endFill();
			
		}
		
	}

}