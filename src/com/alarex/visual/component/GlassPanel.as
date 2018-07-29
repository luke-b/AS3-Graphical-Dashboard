package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.display.BlendMode;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	




	public class GlassPanel extends Sprite 
	{
		private const _2FPwi:Number = 5;
		private const _p9x7T:Number = 20;
		
		private var _M0ogl:Sprite = new Sprite();
				
		public function GlassPanel(w:Number,h:Number ) 
		{
			this.cacheAsBitmap = true;
			
			this.addChild(_tyGDX(-1, -1, w+2, h+2, 30+2, 28+2, 2,[0x000000, 0x000000,0x000000],[0.5,0.0,0.1],[0,50,100]));
			this.addChild(_tyGDX(1, 1, w - 2, h - 2, 30 - 2, 28 - 4, 4, [0xffffff, 0x008888,0xffffff,0x008888],[1,0.2,1,0.2],[0,100,150,255]));
			
			this.addChild(_tyGDX(3, 3, w - 6, h- 6, 30 - 6, 28 - 6, 2, [0xffffff, 0x008888,0x004444],[1,0.2,0.3],[0,150,255]));
			
						
			var _dUOyc:Sprite = new Sprite();
			
			var _Iafhf:Matrix = new Matrix();
			var _Q0lSv:Array =[0xffffff,0xffffff,0xffffff];  
			var _lr5ay:Array =[0.3,0.3,0.5];
			var _YV3Da:Array =[0,170,255];
			_Iafhf.createGradientBox(w-10, h-10,Math.PI/2,0,0);
			_dUOyc.graphics.beginGradientFill(GradientType.LINEAR, _Q0lSv, _lr5ay, _YV3Da, _Iafhf);
			_dUOyc.graphics.drawRoundRect(5, 5, w - 10, h - 10, 28 - 6, 28 - 6);
			_dUOyc.graphics.endFill();
			_dUOyc.cacheAsBitmap = true;
			this.addChild(_dUOyc);
			
			
			var _2qF00:Sprite = new Sprite();
			
			var _OJBvs:Matrix = new Matrix();
			var _rWACX:Array =[0xffffff,0xffffff];  
			var _zrjrc:Array =[1,0.3];
			var _Y2QTu:Array =[0,255];
			_OJBvs.createGradientBox(w-10, h*0.6,Math.PI/2,0,0);
			_2qF00.graphics.beginGradientFill(GradientType.LINEAR, _rWACX, _zrjrc, _Y2QTu, _OJBvs);
			_2qF00.cacheAsBitmap = true;
			_2qF00.graphics.moveTo(5 + 12, 5);
			_2qF00.graphics.lineTo(w - 5 - 12, 5);
			_2qF00.graphics.curveTo(w-5,5+1,w - 5, 5 +12 );
			_2qF00.graphics.lineTo(w - 5, h * 0.3);
			_2qF00.graphics.curveTo(w/2,h*0.2,5, h * 0.6);
			_2qF00.graphics.lineTo(5, 5 + 12);
			_2qF00.graphics.curveTo(5+1,5+1,5 + 12, 5);
			_2qF00.graphics.endFill();
			
			this.addChild(_2qF00);
		}
		
		public function _pFQX8(xp:Number, yp:Number, w:Number, h:Number, rad:Number,rad2:Number, thk:Number,clr:int=0xffffff):Sprite {
			
			var _G9q0h:Sprite = new Sprite();
			_G9q0h.blendMode = BlendMode.LAYER;
		
			_G9q0h.graphics.beginFill(clr);
			_G9q0h.graphics.drawRoundRect(xp, yp, w, h, rad, rad);
			_G9q0h.graphics.endFill();
			
			var _MCYp2:Sprite = new Sprite();
			_MCYp2.blendMode = BlendMode.ERASE;
			
			_MCYp2.graphics.beginFill(0x000000);
			_MCYp2.graphics.drawRoundRect(xp + thk, yp + thk, w - thk * 2, h - thk * 2, rad2, rad2);
			_MCYp2.graphics.endFill();
			_G9q0h.addChild(_MCYp2);
			
			return _G9q0h;
			
		}
		
		public function _tyGDX(xp:Number, yp:Number, w:Number, h:Number, rad:Number,rad2:Number, thk:Number,colors2:Array, alphas2:Array, ratios2:Array, rotation:Number=Math.PI/2):Sprite {
			
			var _G9q0h:Sprite = new Sprite();
			_G9q0h.blendMode = BlendMode.LAYER;
		
			var _aqgKj:Matrix = new Matrix();
			_aqgKj.createGradientBox(w, h,rotation,0,0);
			_G9q0h.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, _aqgKj);
			
			_G9q0h.graphics.drawRoundRect(xp, yp, w, h, rad, rad);
			_G9q0h.graphics.endFill();
			
			var _MCYp2:Sprite = new Sprite();
			_MCYp2.blendMode = BlendMode.ERASE;
			
			_MCYp2.graphics.beginFill(0x000000);
			_MCYp2.graphics.drawRoundRect(xp + thk, yp + thk, w - thk * 2, h - thk * 2, rad2, rad2);
			_MCYp2.graphics.endFill();
			_G9q0h.addChild(_MCYp2);
			
			return _G9q0h;
			
		}
		
	}

}