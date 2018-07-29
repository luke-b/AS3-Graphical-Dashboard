package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.utils.Timer;
	import com.greensock.easing.Linear;
	import com.greensock.TweenLite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class SunSymbol extends Sprite 
	{
		
		private var rotator:Sprite = new Sprite();
		private var m_Timer:Timer;
		
		private var cnt:Number = 0.0;
	
		private var shineFactor:Number = 0.0;
		
		
		public function SunSymbol(radius:Number,count:int) 
		{
			
			this.cacheAsBitmap = true;
			
			var mat5:Matrix = new Matrix();
			var colors5:Array =[0xffff00,0xffff00];  
			var alphas5:Array =[1,0];
			var ratios5:Array =[0,255];
			mat5.createGradientBox(radius*2, radius*2,0,-radius,-radius);
			rotator.graphics.beginGradientFill(GradientType.RADIAL,colors5,alphas5,ratios5,mat5);
			rotator.graphics.drawCircle(0, 0, radius);
			rotator.graphics.endFill();
				
			rotator.cacheAsBitmap = true;
			
			
			var mat2:Matrix = new Matrix();
			var colors2:Array =[0xffff00,0xffff00,0xffaa00];  
			var alphas2:Array =[1,1,1];
			var ratios2:Array =[0,120,255];
			mat2.createGradientBox(radius*2, radius*2,0,-radius,-radius);
			rotator.graphics.beginGradientFill(GradientType.RADIAL,colors2,alphas2,ratios2,mat2);
			
			
			//this.graphics.beginFill(0xffff00);
			
			var s1:Number = Math.PI / (count) * 2;
			var s2:Number = Math.PI / (count) * 2;
			
			rotator.graphics.moveTo(radius, 0);
			for (var i:int = 1; i < count+1; i++) {
				
				rotator.graphics.curveTo(Math.cos(s1 * i - (s1/2)) * (radius * 0.1),
									  Math.sin(s1 * i - (s1/2)) * (radius * 0.1),
									  Math.cos(s1 * i) * radius,
									  Math.sin(s1 * i) * radius);
								
			}
			
			rotator.graphics.endFill();
			
			this.addChild(rotator);
			
			
			var fg:Sprite = new Sprite();
			
			var mat3:Matrix = new Matrix();
			var colors3:Array =[0xff8800,0xff8800,0xffff00];  
			var alphas3:Array =[1,1,1];
			var ratios3:Array =[0,200,255];
			mat3.createGradientBox(radius*2*0.4, radius*2*0.4,0,-radius*0.4,-radius*0.4);
			
			fg.graphics.beginGradientFill(GradientType.RADIAL, colors3, alphas3, ratios3, mat3);
			//this.graphics.beginFill(0xff8800);
			fg.graphics.drawCircle(0, 0, radius * 0.4);
			fg.graphics.endFill();
			
			fg.cacheAsBitmap = true;
			
			var mat4:Matrix = new Matrix();
			var colors4:Array =[0xffffff,0xffffff];  
			var alphas4:Array =[1,0];
			var ratios4:Array =[0,255];
			mat4.createGradientBox(radius*2*0.4, radius*4*0.4,Math.PI/2,-radius*0.4,-radius*0.4*1.5);
			
			fg.graphics.beginGradientFill(GradientType.LINEAR, colors4, alphas4, ratios4, mat4);
			//this.graphics.beginFill(0xff8800);
			fg.graphics.drawEllipse( -radius * 0.4 * 0.7, -radius * 0.4 * 0.8, radius * 0.4 * 2 * 0.7, radius * 0.4);
			fg.graphics.endFill();
				
			
			rotator.scaleX = 0.7 + 0.3*shineFactor;
			rotator.scaleY = 0.7 + 0.3*shineFactor;
			
			this.addChild(fg);
			
		//	TweenLite.to(rotator, 15, { rotation:360, ease:Linear.easeNone,onComplete:loop } );
			
			m_Timer = new Timer( 30 );
			m_Timer.addEventListener( TimerEvent.TIMER, updateAnim );
			m_Timer.start( );
		}
		
		public function loop():void {
			rotator.rotation = 0;
				TweenLite.to(rotator, 15, { rotation:360, ease:Linear.easeNone,onComplete:loop } );
		}
		
		
		public function setShineFactor(sf:Number):void {
			
			var f:Number = sf;
			
			if (f < 0) f = 0;
			if (f > 1) f = 1;
			
			this.shineFactor = f;
			
		}
		
		
		public function updateAnim(e:TimerEvent):void {
			rotator.rotation += 1 + 2*shineFactor;
			rotator.scaleX = 0.7 + 0.3*shineFactor;
			rotator.scaleY = 0.7 + 0.3*shineFactor;
		}
		
	}

}