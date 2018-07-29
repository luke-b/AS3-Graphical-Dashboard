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
	public class SolarPanelSymbol extends Sprite 
	{
		
		private var fls:Sprite = new Sprite();  //flash
		
		public function SolarPanelSymbol(del:Number) 
		{
			var corr:Number = -12;
			
			this.cacheAsBitmap = true;
			
			var bf:BlurFilter = new BlurFilter(10, 10);
			
			var sh:Sprite = new Sprite();
			
		//	sh.cacheAsBitmap = true;
			
			sh.graphics.beginFill(0x000000);
			sh.graphics.moveTo(4, 2);
			sh.graphics.lineTo(50, 2);
			sh.graphics.lineTo(49 + 88 + corr, 88);
			sh.graphics.lineTo(90 + corr, 88);
			sh.graphics.lineTo(4, 2);
			sh.graphics.endFill();
			sh.y += 7;
			sh.filters = [bf];
			this.addChild(sh);
			
			
			var bg:Sprite = new Sprite();
			
			bg.graphics.beginFill(0x002e80);
			bg.graphics.moveTo(0, 0);
			bg.graphics.lineTo(52, 0);
			bg.graphics.lineTo(52 + 88 + corr, 88);
			bg.graphics.lineTo(52 + 88 + corr, 88 + 6);
			bg.graphics.lineTo(88 + corr, 88 + 6);
			bg.graphics.lineTo(0, 6);
			bg.graphics.endFill();
			
		//	bg.cacheAsBitmap = true;
			
			this.addChild(bg);
			
			var g:Sprite = new Sprite();  //sklo
			
		//	g.cacheAsBitmap = true;
			
			var mat:Matrix = new Matrix();
			var colors:Array =[0x00bef9,0x002e80];  
			var alphas:Array =[1,1];
			var ratios:Array =[0,255];
			mat.createGradientBox(88+49, 88+49,Math.PI/4,0,0);
			g.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, mat);
			
			//g.graphics.beginFill(0x00bef9);
			g.graphics.moveTo(4, 2);
			g.graphics.lineTo(50, 2);
			g.graphics.lineTo(49 + 88 + corr, 88);
			g.graphics.lineTo(90 + corr, 88);
			g.graphics.lineTo(4, 2);
			g.graphics.endFill();
			
			this.addChild(g);
			
			
		
			
			var mat5:Matrix = new Matrix();
			var colors5:Array =[0xffffff,0xffffff,0xffffff];  
			var alphas5:Array =[0,1,0];
			var ratios5:Array =[0,150,255];
			mat5.createGradientBox(80, 288, 0,0,0);
			fls.graphics.beginGradientFill(GradientType.LINEAR, colors5, alphas5, ratios5, mat5);
			fls.graphics.drawRect(0, -100, 80, 288);
			fls.graphics.endFill();
			fls.rotation = 25;
			g.addChild(fls);
			
		//	fls.cacheAsBitmap = true;
			
			fls.x -= 100;
			
			
			var gm:Sprite = new Sprite();  //maska
			
			gm.graphics.beginFill(0x00bef9);
			gm.graphics.moveTo(4, 2);
			gm.graphics.lineTo(50, 2);
			gm.graphics.lineTo(49 + 88 + corr, 88);
			gm.graphics.lineTo(90 + corr, 88);
			gm.graphics.lineTo(4, 2);
			gm.graphics.endFill();
			
		//	gm.cacheAsBitmap = true;
			
			this.addChild(gm);
			
			g.mask = gm;
			
		
			
			var ov:Sprite = new Sprite();
			
			for (var i:int = 1; i < 6; i++) {
			
			g.graphics.beginFill(0x002e80);
			g.graphics.moveTo(4+8*i-2, 2);
			g.graphics.lineTo(6+8*i-2, 2);
			g.graphics.lineTo(4 + 88+8*i-2 + corr, 88);
			g.graphics.lineTo(2 + 88+8*i-2 + corr, 88);
			g.graphics.lineTo(4+8*i-2, 2);
			g.graphics.endFill();
			
				
			}
		
		//	g.cacheAsBitmap = true;
			ov.cacheAsBitmap = true;
			
			this.addChild(ov);
			
			
			TweenLite.to(fls,1, { x:300, onComplete:newFlash, delay:del } );
		}
		
		public function newFlash():void {
			fls.x = -100;
			
			TweenLite.to(fls,1, { x:300, onComplete:newFlash, delay:5 } );
		}
	}

}