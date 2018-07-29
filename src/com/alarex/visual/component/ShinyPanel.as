package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	




	public class ShinyPanel extends Sprite 
	{
		
		public function ShinyPanel(w:Number, h:Number, drawShadow:Boolean) 
		{
			this.cacheAsBitmap = true;
			
			this.graphics.beginFill(0x000000);
			this.graphics.drawRect(0, 0, w, h);
			this.graphics.endFill();
			
			var _NgG9r:Matrix = new Matrix();
			var _8KReD:Array =[0x888888,0x353535];  
			var _qqq2R:Array =[1,0.5];
			var _e9B2V:Array =[0,255];
			_NgG9r.createGradientBox(w, h,0,0,0);
			this.graphics.beginGradientFill(GradientType.RADIAL,_8KReD,_qqq2R,_e9B2V,_NgG9r);
		
			this.graphics.moveTo(4, 4);
			this.graphics.lineTo(w - 4, 4);
			this.graphics.lineTo(w - 4, h / 2);
			this.graphics.curveTo(w * 0.75, h / 2 + 4 , w / 2 , h / 2 + 4);
			this.graphics.curveTo(w * 0.25, h / 2 + 4 , 4, h / 2 );
			this.graphics.lineTo(4, 4);
			this.graphics.endFill();
			
			
			var _BC6cV:Matrix = new Matrix();
			var _lhMJq:Array =[0x999999,0x666666,0x666666];  
			var _TqI0o:Array =[0.5,0,0];
			var _H3EZR:Array =[0,170,255];
			_BC6cV.createGradientBox(w, h,0,0,0);
			this.graphics.beginGradientFill(GradientType.RADIAL, _lhMJq, _TqI0o, _H3EZR, _BC6cV);
			this.graphics.drawRect(4, 4, w - 4, h -4);
			this.graphics.endFill();
			
			var _HVpL8:Matrix = new Matrix();
			var _jmRPW:Array =[0x444444,0xCCCCCC,0x444444];  
			var _YHX71:Array =[0.0,0.6,0.0];
			var _tjX3h:Array =[0,255/2,255];
			_HVpL8.createGradientBox(w, h*0.04,0,0,0);
			this.graphics.beginGradientFill(GradientType.LINEAR, _jmRPW, _YHX71, _tjX3h, _HVpL8);
			this.graphics.drawRect(4, h-2-h*0.04, w - 4, h*0.04);
			this.graphics.endFill();
			
			if (drawShadow) {
				var _LwGer:Matrix = new Matrix();
				var _qnvgf:Array =[0x000000,0x000000];  
				var _lN4xd:Array =[0.5,0.0];
				var _Dy9M6:Array =[0,255];
				_LwGer.createGradientBox(w, h*0.3,Math.PI/2,0,h);
				this.graphics.beginGradientFill(GradientType.LINEAR,_qnvgf,_lN4xd,_Dy9M6,_LwGer);
				this.graphics.drawRect(0, h, w, h * 0.3);
				this.graphics.endFill();
			}
		}
		
	}

}