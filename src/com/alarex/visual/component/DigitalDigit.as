package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import com.greensock.TweenLite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class DigitalDigit extends Sprite 
	{
		private var s1:int = 0;
		private var s2:int = 0;
		private var s3:int = 0;
		private var s4:int = 0;
		private var s5:int = 0;
		private var s6:int = 0;
		private var s7:int = 0;
		private var s8:int = 0;
		
		private var topSegment:Sprite = new Sprite();
		private var middleSegment:Sprite = new Sprite();
		private var bottomSegment:Sprite = new Sprite();
		private var topLeftSegment:Sprite = new Sprite();
		private var topRightSegment:Sprite = new Sprite();
		private var bottomLeftSegment:Sprite = new Sprite();
		private var bottomRightSegment:Sprite = new Sprite();
		private var dotSegment:Sprite = new Sprite;	
		
		
		public function DigitalDigit() // 11:40,
		{
			//polygon fill  -- lineto moveto
			//radial gradient
			//glow nebo blur
			//13x21 (?)
			
			this.cacheAsBitmap = true;
			
			this.graphics.beginFill(0x333333); //background color
			this.graphics.drawRect(0, 0, 70, 110);
			this.graphics.endFill();
			
			this.graphics.beginFill(0x000000); //background color
			this.graphics.drawRect(66, 0, 4, 110);
			this.graphics.endFill();
			
			
			// off segments bellow
			
			topSegment = createSegment(true);
			topSegment.x = 14;
			topSegment.y = 10;
			topSegment.rotation = 0;
			topSegment.cacheAsBitmap = true;
			this.addChild(topSegment);
			
			middleSegment = createSegment(true);
			middleSegment.x = 14;
			middleSegment.y = 54;
			middleSegment.rotation = 0;
			middleSegment.cacheAsBitmap = true;
			this.addChild(middleSegment);
			
			bottomSegment = createSegment(true);
			bottomSegment.x = 14;
			bottomSegment.y = 98;
			bottomSegment.rotation = 0;
			bottomSegment.cacheAsBitmap = true;
			this.addChild(bottomSegment);
			
			topLeftSegment = createSegment(true);
			topLeftSegment.x = 12;
			topLeftSegment.y = 12;
			topLeftSegment.rotation = 90;
			topLeftSegment.cacheAsBitmap = true;
			this.addChild(topLeftSegment);
			
			topRightSegment = createSegment(true);
			topRightSegment.x = 56;
			topRightSegment.y = 12;
			topRightSegment.rotation = 90;
			topRightSegment.cacheAsBitmap = true;
			this.addChild(topRightSegment);
			
			bottomLeftSegment = createSegment(true);
			bottomLeftSegment.x = 12;
			bottomLeftSegment.y = 56;
			bottomLeftSegment.rotation = 90;
			bottomLeftSegment.cacheAsBitmap = true;
			this.addChild(bottomLeftSegment);
			
			bottomRightSegment = createSegment(true);
			bottomRightSegment.x = 56;
			bottomRightSegment.y = 56;
			bottomRightSegment.rotation = 90;
			bottomRightSegment.cacheAsBitmap = true;
			this.addChild(bottomRightSegment);
			
			dotSegment = createDotSegment(true);
			dotSegment.x = 55;
			dotSegment.y = 100;
			dotSegment.rotation = 0;
			dotSegment.cacheAsBitmap = true;
			this.addChild(dotSegment);
			
			
			// lighted segment bellow
			
			topSegment = createSegment(false);
			topSegment.x = 14;
			topSegment.y = 10;
			topSegment.rotation = 0;
			topSegment.alpha = 0.0;
			topSegment.cacheAsBitmap = true;
			this.addChild(topSegment);
			
			middleSegment = createSegment(false);
			middleSegment.x = 14;
			middleSegment.y = 54;
			middleSegment.rotation = 0;
			middleSegment.alpha = 0.0;
			middleSegment.cacheAsBitmap = true;
			this.addChild(middleSegment);
			
			bottomSegment = createSegment(false);
			bottomSegment.x = 14;
			bottomSegment.y = 98;
			bottomSegment.rotation = 0;
			bottomSegment.alpha = 0.0;
			bottomSegment.cacheAsBitmap = true;
			this.addChild(bottomSegment);
			
			topLeftSegment = createSegment(false);
			topLeftSegment.x = 12;
			topLeftSegment.y = 12;
			topLeftSegment.rotation = 90;
			topLeftSegment.alpha = 0.0;
			topLeftSegment.cacheAsBitmap = true;
			this.addChild(topLeftSegment);
			
			topRightSegment = createSegment(false);
			topRightSegment.x = 56;
			topRightSegment.y = 12;
			topRightSegment.rotation = 90;
			topRightSegment.alpha = 0.0;
			topRightSegment.cacheAsBitmap = true;
			this.addChild(topRightSegment);
			
			bottomLeftSegment = createSegment(false);
			bottomLeftSegment.x = 12;
			bottomLeftSegment.y = 56;
			bottomLeftSegment.rotation = 90;
			bottomLeftSegment.alpha = 0.0;
			bottomLeftSegment.cacheAsBitmap = true;
			this.addChild(bottomLeftSegment);
			
			bottomRightSegment = createSegment(false);
			bottomRightSegment.x = 56;
			bottomRightSegment.y = 56;
			bottomRightSegment.rotation = 90;
			bottomRightSegment.alpha = 0.0;
			bottomRightSegment.cacheAsBitmap = true;
			this.addChild(bottomRightSegment);
			
			dotSegment = createDotSegment(false);
			dotSegment.x = 55;
			dotSegment.y = 100;
			dotSegment.rotation = 0;
			dotSegment.alpha = 0.0;
			dotSegment.cacheAsBitmap = true;
			this.addChild(dotSegment);
			
		}  //12:04, 13:03
		
		public function changeNumber(s:String,dotOn:Boolean=false):void {  //12:35
			
			switch (s) {
				//                            0  1  2  3  4  5  6
				case "-": changeSegmentConfig(0, 0, 0, 1, 0, 0, 0); break;
				case "0": changeSegmentConfig(1, 1, 1, 0, 1, 1, 1); break;
				case "1": changeSegmentConfig(0, 0, 1, 0, 0, 1, 0); break;
				case "2": changeSegmentConfig(1, 0, 1, 1, 1, 0, 1); break;
				case "3": changeSegmentConfig(1, 0, 1, 1, 0, 1, 1); break;
				case "4": changeSegmentConfig(0, 1, 1, 1, 0, 1, 0); break;
				case "5": changeSegmentConfig(1, 1, 0, 1, 0, 1, 1); break;
				case "6": changeSegmentConfig(1, 1, 0, 1, 1, 1, 1); break;
				case "7": changeSegmentConfig(1, 0, 1, 0, 0, 1, 0); break;
				case "8": changeSegmentConfig(1, 1, 1, 1, 1, 1, 1); break;
				case "9": changeSegmentConfig(1, 1, 1, 1, 0, 1, 1); break;
			}
			
			if (dotOn && s8 == 0) {
				
						TweenLite.to(dotSegment, 1, {alpha: 1.0});
						this.s8 = 1;
				
			}
			
			if (!dotOn && s8 == 1) {
				
					   TweenLite.to(dotSegment, 1, {alpha: 0.0});
						this.s8 = 0;
			}
			
		}
		
		private function changeSegmentConfig(s1:int, s2:int, s3:int, s4:int, s5:int, s6:int, s7:int):void {
					
			if (s1 != this.s1) {
				if (s1 == 0) {
					TweenLite.to(topSegment, 1, {alpha: 0.0});
				} else {
					TweenLite.to(topSegment, 1, {alpha: 1.0});
				}
				this.s1 = s1;
			}
			
			if (s2 != this.s2) {
				if (s2 == 0) {
					TweenLite.to(topLeftSegment, 1, {alpha: 0.0});
				} else {
					TweenLite.to(topLeftSegment, 1, {alpha: 1.0});
				}
				this.s2 = s2;
			}
			
			if (s3 != this.s3) {
				if (s3 == 0) {
					TweenLite.to(topRightSegment, 1, {alpha: 0.0});
				} else {
					TweenLite.to(topRightSegment, 1, {alpha: 1.0});
				}
				this.s3 = s3;
			}
			
			if (s4 != this.s4) {
				if (s4 == 0) {
					TweenLite.to(middleSegment, 1, {alpha: 0.0});
				} else {
					TweenLite.to(middleSegment, 1, {alpha: 1.0});
				}
				this.s4 = s4;
			}
			
			if (s5 != this.s5) {
				if (s5 == 0) {
					TweenLite.to(bottomLeftSegment, 1, {alpha: 0.0});
				} else {
					TweenLite.to(bottomLeftSegment, 1, {alpha: 1.0});
				}
				this.s5 = s5;
			}
			
			if (s6 != this.s6) {
				if (s6 == 0) {
					TweenLite.to(bottomRightSegment, 1, {alpha: 0.0});
				} else {
					TweenLite.to(bottomRightSegment, 1, {alpha: 1.0});
				}
				this.s6 = s6;
			}
			
			if (s7 != this.s7) {
				if (s7 == 0) {
					TweenLite.to(bottomSegment, 1, {alpha: 0.0});
				} else {
					TweenLite.to(bottomSegment, 1, {alpha: 1.0});
				}
				this.s7 = s7;
			}
		}
												
		
		private function createSegment(on:Boolean):Sprite {
			
			var segment:Sprite = new Sprite();
			
			if (on) {
			
				segment.graphics.beginFill(0x222222);
				
			
			} else {
				
				var mat:Matrix = new Matrix();
				var colors:Array =[0xadfc34,0x2e7e00];  //42a200
				var alphas:Array =[1,1];
				var ratios:Array =[0,255];
				mat.createGradientBox(40, 20,0,0,-10);
				segment.graphics.beginGradientFill(GradientType.RADIAL,colors,alphas,ratios,mat);
							
			}
			
			segment.graphics.moveTo(0, 0);
			segment.graphics.lineTo(5, -5);
			segment.graphics.lineTo(35, -5);
			segment.graphics.lineTo(40, 0);
			segment.graphics.lineTo(35, 5);
			segment.graphics.lineTo(5, 5);
			segment.graphics.lineTo(0, 0);
			segment.graphics.endFill();
			
			
			// glow effect code bellow 
			
			// var glow:Sprite = new Sprite();
			// glow.graphics.beginFill(0xadfc34,0.25);
			// glow.graphics.drawEllipse(0, -10, 40, 20);
			// glow.graphics.endFill();
			
			// var bf1:BlurFilter = new BlurFilter(5, 5);
			// glow.filters = [ bf1 ];			
			// segment.addChild(glow);
			
			return segment;
		}
		
		private function createDotSegment(on:Boolean):Sprite {
			
			var segment:Sprite = new Sprite();
			
			if (on) {
			
				segment.graphics.beginFill(0x222222);
				
			
			} else {
				
				segment.graphics.beginFill(0xadfc34);		
			}
			
		//	segment.graphics.moveTo(0+10, 0);
		//	segment.graphics.lineTo(5+10, -5);
		//	segment.graphics.lineTo(10+10, 5);
		//	segment.graphics.lineTo(5+10, 15);
		//	segment.graphics.lineTo(0 + 10, 10);
			
			segment.graphics.drawRect(10, 0, 10, 20);
			
			segment.graphics.endFill();
			
			
			// glow effect code bellow 
			
			// var glow:Sprite = new Sprite();
			// glow.graphics.beginFill(0xadfc34,0.25);
			// glow.graphics.drawEllipse(0, -10, 40, 20);
			// glow.graphics.endFill();
			
			// var bf1:BlurFilter = new BlurFilter(5, 5);
			// glow.filters = [ bf1 ];			
			// segment.addChild(glow);
			
			return segment;
		}
		
	}

}
