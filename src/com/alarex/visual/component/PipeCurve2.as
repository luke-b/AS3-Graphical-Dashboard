package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.display.BlendMode;
	import flash.events.Event;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class PipeCurve2 extends Sprite 
	{
		
		private	var da:Sprite = new Sprite();
		private var spots:Array = new Array();
		private var animOffset:Number = 0.0;
		
		private var rotor:Sprite = new Sprite();
		
		private var countX:Number;
		private var radiusX:Number;
		private var thinknessX:Number;
		
		private var dir:Boolean;
		private var dirVal:Number;
		
		private var dirFac:Number = 0.0;
		
		public function PipeCurve2(color:int, radius:int, thinkness:int, rt:Number, reverse:Boolean=false) 
		{
			
			this.cacheAsBitmap = true;
			
			this.dir = reverse;
			
			var cl:Number = 2 * Math.PI * radius / 4;
			var cc:Number = cl / rt;
			
			var dll:Number = 90 / cc;
			var px:Number = dll * 0.1;
			
			if (dir) {
				dirVal = -px;
			} else {
				dirVal = px;
			}
			
			var bg:Sprite =  new Sprite();
			var bf:BlurFilter = new BlurFilter(5, 5);
			
			var p1:Sprite = new Sprite();
			p1.cacheAsBitmap = true;
			p1.graphics.beginFill(0x000000);
			p1.graphics.drawCircle(0, 0, radius + 4);
			p1.graphics.endFill();
			
			p1.filters = [bf];
			p1.blendMode = BlendMode.LAYER;
			
			var p1b:Sprite = new Sprite();
			p1b.cacheAsBitmap = true;
			p1b.graphics.beginFill(0x00ff00);
			p1b.graphics.drawCircle(0, 0, radius - thinkness - 4);
			p1b.graphics.endFill();
			
			p1b.blendMode = BlendMode.ERASE;
			
			p1.addChild(p1b);
			
			p1.alpha = 0.5;
			
			bg.addChild(p1);
			
			
			
			var p2:Sprite = new Sprite();
			p2.cacheAsBitmap = true;
			p2.graphics.beginFill(0xFFFFFF);
			p2.graphics.drawCircle(0, 0, radius +2 );
			p2.graphics.endFill();
			
			p2.graphics.beginFill(color);
			p2.graphics.drawCircle(0, 0, radius);
			p2.graphics.endFill();
			
			p2.graphics.beginFill(0xFFFFFF);
			p2.graphics.drawCircle(0, 0, radius - thinkness);
			p2.graphics.endFill();
			
			p2.blendMode = BlendMode.LAYER;
			
			
			var p2b:Sprite = new Sprite();
			p2b.cacheAsBitmap = true;
			p2b.graphics.beginFill(0x00ff00);
			p2b.graphics.drawCircle(0, 0, radius - thinkness - 2);
			p2b.graphics.endFill();
			
			p2b.blendMode = BlendMode.ERASE;
			
			p2.addChild(p2b);
			bg.cacheAsBitmap = true;
			bg.addChild(p2);
			
			
			var m1:Sprite = new Sprite();
			m1.graphics.beginFill(0xff0000);
			m1.graphics.drawRect( -radius - 4 - 5, -radius - 4 - 5, radius + 4 + 5, radius + 4 + 5);
			m1.graphics.endFill();
			m1.cacheAsBitmap = true;
			this.addChild(bg);
			this.addChild(m1);
			bg.mask = m1;
			
			//---- drawing area ----
			
		
			//da.graphics.beginFill(0x00ff00);
			//da.graphics.drawRect( -radius - 4, -radius - 4, radius + 4, radius + 4);
			//da.graphics.endFill();
			
			da.blendMode = BlendMode.LAYER;
			da.cacheAsBitmap = true;
			
			var dab:Sprite = new Sprite();
			dab.graphics.beginFill(0xff0000);
			dab.graphics.drawCircle(0, 0, radius - thinkness);
			dab.graphics.endFill();
			dab.cacheAsBitmap = true;
			dab.graphics.beginFill(0x0000ff);
			dab.graphics.drawRect(0, -radius, radius, radius*2);
			dab.graphics.endFill();
			
			dab.graphics.beginFill(0x0000ff);
			dab.graphics.drawRect( -radius, 0, radius, radius);
			dab.graphics.endFill();
			
			dab.blendMode = BlendMode.ERASE;
			
			
			
			var dam:Sprite = new Sprite();
			dam.graphics.beginFill(0x0000ff);
			dam.graphics.drawCircle(0, 0, radius);
			dam.graphics.endFill();
			
			dam.cacheAsBitmap = true;
					
			
			this.addChild(da);
			this.addChild(dam);
			da.mask = dam;
			
			da.addChild(rotor);
			
			var count:Number = (2 * Math.PI * radius) / 4 / rt;
			
			rt = 90 / count;
		
				
			this.countX = count;
			this.radiusX = radius;
			this.thinknessX = thinkness;
			
			rotor.cacheAsBitmap = true;
			
			var spotLength:Number = ((2 * Math.PI * radius) / 4) / count;
			for (var c:int = 0; c < count * 4; c++) {
				
				
				var spp:Sprite = this.createSpot(spotLength);
				if (dir) spp.scaleY *= -1;
			//	spp.x = -radius + thinkness / 2;
				rotor.addChild(spp);
				spp.rotation = c*rt;
				
				spots.push(spp);
				
			}
		
			rotor.alpha = 0.0;
			
			addEventListener(Event.ENTER_FRAME,updateAnim);
			
			//var myTimer:Timer = new Timer(30, 0);
			//myTimer.addEventListener(TimerEvent.TIMER, updateAnim);
		
			da.addChild(dab); //has to be last
		
		}
		
		
		public function setDirFac(f:Number):void {
			
			var v:Number = f;
			
			if (f < 0) v = 0;
			if (f > 1) v = 1;
			
			if (f == 0) {
				rotor.alpha = 0;
			} else {
				rotor.alpha = 1;
			}
			
			this.dirFac = v;
			
		}
		
		
		public function updateAnim(e:Event):void {
			rotor.rotation += this.dirVal*this.dirFac;
		}
		
		private function createSpot(length:Number):Sprite {
			
			var spot:Sprite = new Sprite();
			
			var mat2:Matrix = new Matrix();
			var colors2:Array =[0xffffff,0xffffff];  
			var alphas2:Array =[0.8,0];
			var ratios2:Array = [0,255];
			mat2.createGradientBox(length, length/2,Math.PI/2,0,-length/2);
			spot.graphics.beginGradientFill(GradientType.LINEAR,colors2,alphas2,ratios2,mat2);
			spot.graphics.drawCircle(-radiusX + thinknessX/2, 0, length / 2);
			spot.graphics.endFill();
			spot.cacheAsBitmap = true;	
			return spot;
		}
		
	}

}