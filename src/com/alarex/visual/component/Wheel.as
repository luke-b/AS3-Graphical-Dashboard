package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class Wheel extends Sprite 
	{
		
		private var count:int = 30;
		
		private var marks:Array = new Array();
		
		private var anim:Number = 0;
		
		private var lookup1:Array = new Array();
		private var lookup2:Array = new Array();
		
		private var cx:int;
		private var ac:int = 0;
		
		private var factor:Number = 0;
		
		
		public function Wheel() 
		{
			// 105x10
			
			this.cacheAsBitmap = true;
			
			var mat:Matrix = new Matrix();
			var colors:Array;
			colors  = [0x000000, 0xBBBBBB];
			var alphas:Array =[1,1];
			var ratios:Array =[0,255];
			mat.createGradientBox(105, 10, Math.PI / 2, 0, -1);
			
			this.graphics.beginGradientFill(GradientType.LINEAR,colors,alphas,ratios,mat);
			this.graphics.drawRect(0, 0, 105, 10);
			this.graphics.endFill();
			
			this.graphics.beginFill(0x000000);
			this.graphics.drawRect(1, 1, 103, 8);
			this.graphics.endFill();
			
			
			
			var mat2:Matrix = new Matrix();
			var colors2:Array = colors  = [0x090909, 0xAAAAAA, 0xBBBBBB, 0xAAAAAA, 0x090909];
			var alphas2:Array = [1, 1, 1, 1, 1];
			var alphas3:Array =[0.5,0.5,0.5,0.5,0.5];
			var ratios2:Array =[0,100,128,150,255];
			mat2.createGradientBox(105, 2, Math.PI, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, mat2);
			this.graphics.drawRect(4, 3, 97, 2);
			this.graphics.endFill();
			
			this.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas3, ratios2, mat2);
			this.graphics.drawRect(4, 5, 97, 2);
			this.graphics.endFill();
			
			var msk:Sprite = new Sprite();
			msk.graphics.beginFill(0xffffff);
			msk.graphics.drawRect(4, 5, 97, 4);
			msk.graphics.endFill();
			
			msk.cacheAsBitmap = true;
			
		//	this.addChild(msk);
		//	this.mask = msk;
			
			
			for (var i:int = 0; i < count; i++) {
				var s:Sprite = new Sprite();
				s.cacheAsBitmap = true;
				s.graphics.beginFill(0x000000, 0.5);
				s.graphics.drawRect(0, 0, 1, 1);
				s.graphics.endFill();
				
				marks.push(s);
				this.addChild(s);
			}
			
			cx = 2 * Math.PI / 0.01;
			
			var l1:Number = -Math.PI;
			var l2:Number = -Math.PI-Math.PI/300;
			
			for (var j:int = 0; j < cx; j++) {
				
				lookup1.push(Math.cos(l1)*50+51);
				lookup2.push(Math.cos(l2)*50+51);
				
				l1 -= 0.01;
				l2 -= 0.01;
			}
							
			drawEffect(0);
			
			addEventListener(Event.ENTER_FRAME,updateAnim);
		}
		
		public function updateAnim(e:Event):void {
		//	drawEffect(anim);
			if (this.factor != 0) {
				drawEffect2(ac);
			}
			
			ac += 1+3*this.factor;
			
			if (this.factor == 0) {
			ac = 0;
			}
			
			if (ac > 10) ac = 0;
		}
		
		private function getLookup1(off:int):Number {
			
			return (lookup1[off % cx] as Number);
			
		}
		
		private function getLookup2(off:int):Number {
			
			return (lookup2[off % cx] as Number);
			
		}
		
		public function drawEffect2(offset:int):void {
						
			for (var i:int = 0; i < count; i++) {
				
				var x1:Number = getLookup1(offset + i*10);
				var x2:Number = getLookup2(offset + i*10+3);
				
				var d:Number = x2 - x1;
				
				var m:Sprite = this.marks[i] as Sprite;
				
				m.x = x1;
				m.y = 3;
				m.width = d;
				m.height = 4;
																
			}
			
		}
		
		public function setSpeedFactor(f:Number):void {
			
			var v:Number = f;
			if (v < 0) v = 0;
			if (v > 1) v = 1;
			
			this.factor = v;
			
		}
		
		
		public function drawEffect(offset:Number):void {
			var rad:Number = 100;
		
			var s:Number = Math.PI / count;
			var w:Number = Math.PI / (count * 3);
			
			var step:Number = Math.PI - offset;
			
			for (var i:int = 0; i < count; i++) {
				
				var x1:Number = Math.cos(step) * (rad / 2) + 51;
				var x2:Number = Math.cos(step - w) * (rad / 2) + 51;
				
				var d:Number = x2 - x1;
				
				var m:Sprite = this.marks[i] as Sprite;
				
				m.x = x1;
				m.y = 3;
				m.width = d;
				m.height = 4;
																
				step -= s;
			}
			
		}
	}

}