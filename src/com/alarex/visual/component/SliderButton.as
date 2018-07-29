package com.alarex.visual.component 
{
	import com.greensock.plugins.BlurFilterPlugin;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.filters.BlurFilter;
	import com.greensock.TweenLite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class SliderButton extends Sprite 
	{
		
		private var green:Sprite = new Sprite();
		public	var red:Sprite = new Sprite();
		public var slider:Sprite = new Sprite();
		
		public var anim:Boolean = false;
		public var state:int = 0;
		
		public function SliderButton() 
		{
			//105x38
			
			this.cacheAsBitmap = true;
			
			var background:Sprite = new Sprite();
			background.cacheAsBitmap = true;			
			var mat:Matrix = new Matrix();
			var colors:Array =[0x999999,0x000000,0xcccccc];  
			var alphas:Array =[1,1,1];
			var ratios:Array = [0,100,255];
			mat.createGradientBox(105, 38 ,Math.PI/2,0,0);
			background.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, mat);	
			background.graphics.drawRoundRect(0, 0, 105, 38, 38, 38);
			background.graphics.endFill();
			
			background.graphics.beginFill(0x000000);
			background.graphics.drawRoundRect(3, 3, 99, 32, 32, 32);
			background.graphics.endFill();
			
			this.addChild(background);
			
			//zeleny podklad
			
			green = new Sprite();
			green.cacheAsBitmap = true;
			green.graphics.beginFill(0x003300);
			green.graphics.drawRoundRect(5, 5, 95, 28, 28, 28);
			green.graphics.endFill();
			
			var light:Sprite = new Sprite();
			light.cacheAsBitmap = true;
			light.graphics.beginFill(0x00BB00);
			light.graphics.drawRoundRect(10, 10, 85, 18, 18, 18);
			light.graphics.endFill();
			
			green.addChild(light);
			
			var blg:BlurFilter = new BlurFilter(8, 8);
			light.filters = [blg];
			
			var sm1:SmallLabel = new SmallLabel("ONLINE", 11, false,false);
			green.addChild(sm1);
			sm1.x = 13;
			sm1.y = 10;
			sm1.cacheAsBitmap = true;
			this.addChild(green);
			
			// konec zeleneho podkladu
			
			red = new Sprite();
			red.cacheAsBitmap = true;
			red.graphics.beginFill(0x330000);
			red.graphics.drawRoundRect(5, 5, 95, 28, 28, 28);
			red.graphics.endFill();
			
			var redlight:Sprite = new Sprite();
			redlight.cacheAsBitmap = true;
			redlight.graphics.beginFill(0xBB0000);
			redlight.graphics.drawRoundRect(10, 10, 85, 18, 18, 18);
			redlight.graphics.endFill();
			
			red.addChild(redlight);
			
			var blg2:BlurFilter = new BlurFilter(8, 8);
			redlight.filters = [blg2];
			
			var sm2:SmallLabel = new SmallLabel("OFFLINE", 11, false,false);
			red.addChild(sm2);
			sm2.x = 48;
			sm2.y = 10;
			sm2.cacheAsBitmap = true;
			this.addChild(red);
			
			
			
			// konec cerveneho podkladu
						
			slider = new Sprite();
			slider.cacheAsBitmap = true;
			slider.graphics.beginFill(0x000000,0.7);
			slider.graphics.drawRoundRect(1, 1, 46, 36, 36, 36);
			slider.graphics.endFill();
			
			var mat2:Matrix = new Matrix();
			var colors2:Array =[0x999999,0x000000,0xcccccc];  
			var alphas2:Array =[1,1,1];
			var ratios2:Array = [0,120,255];
			mat2.createGradientBox(42, 32 ,Math.PI/2,0,0);
			slider.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, mat2);	
			slider.graphics.drawRoundRect(3, 3, 42, 32, 32, 32);
			slider.graphics.endFill();
			slider.cacheAsBitmap = true;
			
			var mat3:Matrix = new Matrix();
			var colors3:Array =[0x999999,0x555555,0x999999];  
			var alphas3:Array =[1,1,1];
			var ratios3:Array = [0,150,255];
			mat3.createGradientBox(38, 28 ,0,0,0);
			slider.graphics.beginGradientFill(GradientType.LINEAR, colors3, alphas3, ratios3, mat3);	
			slider.graphics.drawRoundRect(5, 5, 38, 28, 28, 28);
			slider.graphics.endFill();
			
			this.addChild(slider);
			
			slider.x = 0;
			red.alpha = 1;
		
		//	TweenLite.to(slider, 2, { x:0 } );
		//	TweenLite.to(red, 2, { alpha:1  } );
		}
		
		public function getState():int {
			return this.state;
		}
		
		public function changeState(newState:int):void {
			
			if (!anim && newState != state) {
	
				if (state == 0) {
				//	anim = true;
					state = 1;
					TweenLite.to(red, 1, { alpha:0.0  } );
					TweenLite.to(slider, 1, { x:57 } );
				}
				else
				if (state == 1) {
				//	anim = true;
					state = 0;
					TweenLite.to(red, 1, { alpha:1.0 } );
					TweenLite.to(slider, 1, { x:0 } );
				}
				
			}
		}
		
		public function animFinished():void {
			anim = false;
		}
	}

}