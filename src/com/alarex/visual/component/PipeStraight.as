package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class PipeStraight extends Sprite 
	{
		
		private var stripe1:Sprite = new Sprite();
		private var holder:Sprite = new Sprite();
		
		private var an:int = 0.0;
		private var anDir:Number = -1;
		private var limit:Number = 10;
		private var dir:Boolean;
		
		private var lmt:Number;
		
		private var ccx:Number;
	
		private var dirFac:Number = 0.0;
		private var unitLength:Number = 0;
		
		public function PipeStraight(color:int, radius:int, thinkness:int, l:Number, reverse:Boolean=false) 
		{
			
		this.cacheAsBitmap = true;	
		
		
			
		var count:Number = radius/l;
		
		this.unitLength = l;
		
		lmt = l;
		
		var ix:Number = l*0.1;
		
		ccx = l/ix;
		
		this.dir = reverse;
			
			if (dir) {
				anDir = ix;
			} else {
				anDir = -ix;
			}
		
		
			var b:Sprite = new Sprite();
			
			 var bg:Sprite = new Sprite();
			 
			 bg.graphics.beginFill(0x000000);
			 bg.graphics.drawRect( -radius - 4, -radius - 4, 8 + thinkness, radius + 8);
			 bg.graphics.endFill();
			 bg.cacheAsBitmap = true;
			 bg.alpha = 0.5;
			 
			 var bf:BlurFilter = new BlurFilter(5, 5);
			 bg.filters = [bf];
			 b.cacheAsBitmap = true;
			 b.addChild(bg);
			 
			 var fg:Sprite = new Sprite();
			 
			 fg.graphics.beginFill(0xffffff);
			 fg.graphics.drawRect( -radius - 2, -radius, 4 + thinkness, radius);
			 fg.graphics.endFill();
			 fg.cacheAsBitmap = true;
			 fg.graphics.beginFill(color);
			 fg.graphics.drawRect( -radius, -radius, thinkness, radius);
			 fg.graphics.endFill();
			 
			 b.addChild(fg);
			 
			 var mk:Sprite = new Sprite();
			 mk.graphics.beginFill(0x00ff00);
			 mk.graphics.drawRect( -radius - 20, -radius, 40 + thinkness, radius);
			 mk.graphics.endFill();
			 mk.cacheAsBitmap = true;
			 
			 
			 this.addChild(b);
			 this.addChild(mk);
			 
			 b.mask = mk;
			 
			 l = radius / count;
			 
			 limit = l;
			 
			 for (var c:int = -1; c < count+1; c++) {
				 
				 var axx:Sprite = createSpot(l,radius,thinkness);
				 
				 axx.y = -c * l;
				 if (dir) {
					axx.scaleY *= -1;
					axx.y -= l;
				 }
				 
				 stripe1.addChild(axx);
				 
			 }
			
			
			 holder.cacheAsBitmap = true;
			 this.addChild(holder);
			 
			 holder.addChild(stripe1);
			 
			 var spm:Sprite = new Sprite();
			 spm.graphics.beginFill(0xff0000);
			 spm.graphics.drawRect( -radius, -radius, thinkness, radius);
			 spm.graphics.endFill();
			 spm.cacheAsBitmap = true;
			 this.addChild(spm);
			 holder.mask = spm;
			 
			 stripe1.alpha = 0;
			 
			 addEventListener(Event.ENTER_FRAME,updateAnim);
		}
		
		
		public function updateAnim(e:Event):void {
		
			an++;
			
			if (an*dirFac > unitLength) {
				an = 0;
			}
			
			stripe1.y = an*anDir*dirFac;
		
			//rotor.rotation += this.dirVal;
		}
		
		public function setDirFac(f:Number):void {
			
			var v:Number = f;
			
			if (f < 0) v = 0;
			if (f > 1) v = 1;
			
			if (f == 0) {
				stripe1.alpha = 0;
			} else {
				stripe1.alpha = 1;
			}
			
			this.dirFac = v;
			
		}
		
		
		private function createSpot(length:Number,radius:Number,thinkness:Number):Sprite {
			
			var spot:Sprite = new Sprite();
			
			var mat2:Matrix = new Matrix();
			var colors2:Array =[0xffffff,0xffffff];  
			var alphas2:Array =[0.8,0];
			var ratios2:Array = [0,255];
			mat2.createGradientBox(length, length/2,Math.PI/2,0,-length/2);
			spot.graphics.beginGradientFill(GradientType.LINEAR,colors2,alphas2,ratios2,mat2);
		//	spot.graphics.beginFill(0xff0000);
			spot.graphics.drawCircle(-radius + thinkness/2, 0, length / 2);
			spot.graphics.endFill();
			spot.cacheAsBitmap = true;			
			return spot;
		}
		
	}

}