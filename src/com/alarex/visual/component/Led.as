package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.geom.Matrix;
	import com.greensock.TweenLite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	
	public class Led extends Sprite 
	{
		
		private var state:int = 0;
		
		private var redLed:Sprite;
		private var yellowLed:Sprite;
		private var greenLed:Sprite;
		private var blueLed:Sprite;
		private var cyanLed:Sprite;
		
		public function Led() 
		{
						
			this.cacheAsBitmap = true;
			
			addGradientCircle(12, 13, 20, 0x000000, 0x666666, this);
			addGradientCircle(12, 12, 20, 0x8b8b8b, 0x8b8b8b, this);	
			addGradientCircle(12, 12, 19, 0xfbfbfb, 0x8b8b8b, this);	
			addGradientCircle(12, 12, 18, 0xe0e0e0, 0xb7b7b7, this);
			addGradientCircle(12, 12, 16, 0xa9a9a9, 0xfefefe, this);
			addGradientCircle(12, 12, 15, 0x6b6b6b, 0xededed, this);
			
			redLed = addGradientCircle(12, 12, 14, 0xdd0000, 0x990000, this); //cervena
			yellowLed = addGradientCircle(12, 12, 14, 0xdddd00, 0x999900, this); //zluta
			greenLed = addGradientCircle(12, 12, 14, 0x00dd00, 0x009900, this); //zelena
			blueLed = addGradientCircle(12, 12, 14, 0x0000dd, 0x0000dd, this); //modra
			cyanLed = addGradientCircle(12, 12, 14, 0x00dddd, 0x00dddd, this); //cyanova
			
			redLed.alpha = 0.0;
			yellowLed.alpha = 0.0;
			greenLed.alpha = 0.0;
			blueLed.alpha = 0.0;
			cyanLed.alpha = 0.0;
			
			var led1:Sprite = new Sprite();
			//addGradientCircle(0, 0, 14, 0xDD4400, 0x991100, led1);
			addOverlayOval( 4, 0, 16, 10, 0xFFFFFF, 0xFFFFFF, 0.8, 0.3, this);
			addOverlayOval(6, 18, 12, 5, 0xFFFFFF, 0xFFFFFF, 0.0, 0.2, this);
			
			this.addChild(led1);
			
			//this.setState(3);
		}
		
		
		private function addGradientCircle(xp:Number, yp:Number, rad:Number, c1:int, c2:int, parent:Sprite):Sprite {
			
			var mat:Matrix=new Matrix();
			var colors:Array=[c1,c2];
			var alphas:Array=[1,1];
			var ratios:Array=[0,255];
			mat.createGradientBox(rad * 2, rad * 2, Math.PI / 2);
			
			var newSprite:Sprite = new Sprite();
			
			newSprite.graphics.beginGradientFill(GradientType.LINEAR,colors,alphas,ratios,mat);
			newSprite.graphics.drawCircle(xp, yp, rad);
			newSprite.graphics.endFill();
		
			newSprite.cacheAsBitmap = true;
			
			parent.addChild(newSprite);
			
			return newSprite;
		}
		
		private function addOverlayOval(xp:Number, yp:Number, wp:Number, hp:Number, c1:int, c2:int, a1:Number, a2:Number, parent:Sprite):Sprite {
			
			var mat:Matrix=new Matrix();
			var colors:Array=[c1,c2];
			var alphas:Array=[a1,a2];
			var ratios:Array=[0,255];
			mat.createGradientBox(wp, hp, Math.PI / 2);
			
			var newSprite:Sprite = new Sprite();
			
			newSprite.graphics.beginGradientFill(GradientType.LINEAR,colors,alphas,ratios,mat);
			newSprite.graphics.drawEllipse(xp, yp, wp, hp);
			newSprite.graphics.endFill();
			
			newSprite.cacheAsBitmap = true;
		
			parent.addChild(newSprite);
			
			return newSprite;
		}
		
		
		public function setState(value:int):void {
			
			if (this.state != value) {
				   renderStateChange(this.state, value);		
			}
			
		}
		
		private function renderStateChange(oldState:int, newState:int):void {
			switch (oldState) {
				case 0:  break;
				case 1: TweenLite.to(redLed, 1, {alpha: 0.0}); break;
				case 2: TweenLite.to(yellowLed, 1, {alpha: 0.0}); break;
				case 3: TweenLite.to(greenLed, 1, {alpha: 0.0}); break;
				case 4: TweenLite.to(blueLed, 1, {alpha: 0.0} ); break;
				case 5: TweenLite.to(cyanLed, 1, {alpha: 0.0}); break;
			}
			switch (newState) {
				case 0: break;
				case 1: TweenLite.to(redLed, 1, {alpha: 1.0}); break;
				case 2: TweenLite.to(yellowLed, 1, {alpha: 1.0}); break;
				case 3: TweenLite.to(greenLed, 1, {alpha: 1.0}); break;
				case 4: TweenLite.to(blueLed, 1, {alpha: 1.0} ); break;
				case 5: TweenLite.to(cyanLed, 1, {alpha: 1.0}); break;
			}
			state = newState;
		}
	}

}