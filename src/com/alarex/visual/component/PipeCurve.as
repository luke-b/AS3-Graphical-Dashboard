package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.display.BlendMode;
	import flash.events.Event;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class PipeCurve extends Sprite 
	{
		
		private	var da:Sprite = new Sprite();
		private var spots:Array = new Array();
		private var animOffset:Number = 0.0;
		
		private var rotor:Sprite = new Sprite();
		
		private var countX:Number;
		private var radiusX:Number;
		private var thinknessX:Number;
		
		public function PipeCurve(color:int, radius:int, thinkness:int, count:Number) 
		{
			this.cacheAsBitmap = true;
			
			
			var bg:Sprite =  new Sprite();
			bg.cacheAsBitmap = true;
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
			
		//	p1.alpha = 0.5;
			
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
			
			var dab:Sprite = new Sprite();
			dab.graphics.beginFill(0xff0000);
			dab.graphics.drawCircle(0, 0, radius - thinkness);
			dab.graphics.endFill();
			dab.cacheAsBitmap = true;
			dab.graphics.beginFill(0x0000ff);
			dab.graphics.drawRect(0, -radius, radius, radius);
			dab.graphics.endFill();
			
			dab.graphics.beginFill(0x0000ff);
			dab.graphics.drawRect( -radius, 0, radius, radius);
			dab.graphics.endFill();
			
			dab.blendMode = BlendMode.ERASE;
			
			
			
			var dam:Sprite = new Sprite();
			dam.graphics.beginFill(0x0000ff);
			dam.graphics.drawCircle(0, 0, radius);
			dam.graphics.endFill();
			
			da.cacheAsBitmap = true;
					
			
			this.addChild(da);
			this.addChild(dam);
			da.mask = dam;
			
			var spotLength:Number = ((2 * Math.PI * radius) / 4) / count;
			for (var c:int = 0; c < count; c++) {
				var spp:Sprite = this.createSpot(spotLength);
				spots.push(spp);
				da.addChild(spp);
			}
			
			this.countX = count;
			this.radiusX = radius;
			this.thinknessX = thinkness;
			
			addEventListener(Event.ENTER_FRAME,updateAnim);
			
				
		
			
			da.addChild(dab); //has to be last
		
		}
		
		
		public function updateAnim(e:Event):void {
			
			
			for (var i:int = 0; i < countX; i++) {
			
				var s1:Sprite = spots[i] as Sprite;
				
				s1.x = Math.cos(Math.PI+i*((Math.PI/2)/countX)+animOffset)*(radiusX - thinknessX / 2);
				s1.y = Math.sin(Math.PI+i*((Math.PI/2)/countX)+animOffset)*(radiusX - thinknessX / 2);
				
				var off:Number = (Math.PI / 180) * animOffset;
				
				s1.rotation = i * (90/countX);
			
			}
			
			animOffset += 0.01;
			
			if (animOffset > 0.15) animOffset = 0.0;
		}
		
		private function createSpot(length:Number):Sprite {
			
			var spot:Sprite = new Sprite();
			
			var mat2:Matrix = new Matrix();
			var colors2:Array =[0xffffff,0xffffff];  
			var alphas2:Array =[1,0];
			var ratios2:Array = [0,255];
			mat2.createGradientBox(length, length,Math.PI/2,0,-length);
			spot.graphics.beginGradientFill(GradientType.LINEAR,colors2,alphas2,ratios2,mat2);
			spot.graphics.drawCircle(0, 0, length / 2);
			spot.graphics.endFill();
			spot.cacheAsBitmap = true;			
			return spot;
		}
		
	}

}