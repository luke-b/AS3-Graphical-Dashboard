package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	




	public class CurvyPanel extends Sprite 
	{
		
		public function CurvyPanel(w:Number, h:Number) 
		{
	
			this.cacheAsBitmap = true;
			
			var _Q36Fy:Number = 0.2;
			var _lwhXS:Number = 0.15*h;
			var _EKYMg:Number = 0.05*h;
			
			this.graphics.beginFill(0x000000,0.3);
			this.graphics.moveTo(0, 0-_lwhXS);
			this.graphics.curveTo(w * 0.25, h * _Q36Fy-_lwhXS, w / 2, h * _Q36Fy-_lwhXS);
			this.graphics.curveTo(w * 0.75, h * _Q36Fy-_lwhXS, w, 0-_lwhXS);
			this.graphics.lineTo(w, h);
			this.graphics.lineTo(0, h);
			this.graphics.lineTo(0, 0);
			this.graphics.endFill();
			
				
			this.graphics.beginFill(0x000000,0.3);
			this.graphics.moveTo(0, 0-_EKYMg);
			this.graphics.curveTo(w * 0.25, h * _Q36Fy-_EKYMg, w / 2, h * _Q36Fy-_EKYMg);
			this.graphics.curveTo(w * 0.75, h * _Q36Fy-_EKYMg, w, 0-_EKYMg);
			this.graphics.lineTo(w, h);
			this.graphics.lineTo(0, h);
			this.graphics.lineTo(0, 0);
			this.graphics.endFill();
			
			this.graphics.beginFill(0x000000);
			this.graphics.moveTo(0, 0);
			this.graphics.curveTo(w * 0.25, h * _Q36Fy, w / 2, h * _Q36Fy);
			this.graphics.curveTo(w * 0.75, h * _Q36Fy, w, 0);
			this.graphics.lineTo(w, h);
			this.graphics.lineTo(0, h);
			this.graphics.lineTo(0, 0);
			this.graphics.endFill();
			
			var _ErTnS:Matrix = new Matrix();
			var _LtE85:Array =[0x888888,0x353535];  
			var _ReZOl:Array =[1,0.5];
			var _qTI8j:Array =[0,255];
			_ErTnS.createGradientBox(w, h,0,0,0);
			this.graphics.beginGradientFill(GradientType.RADIAL,_LtE85,_ReZOl,_qTI8j,_ErTnS);
		
			this.graphics.moveTo(4, 4);
			
			this.graphics.curveTo(w * 0.25, h * _Q36Fy + 4, w / 2, h * _Q36Fy + 4);
			this.graphics.curveTo(w * 0.75, h * _Q36Fy + 4, w - 4, 4);
			
			this.graphics.lineTo(w - 4, h / 2);
			this.graphics.curveTo(w * 0.75, h / 2 + 4 , w / 2 , h / 2 + 4);
			this.graphics.curveTo(w * 0.25, h / 2 + 4 , 4, h / 2 );
			this.graphics.lineTo(4, 4);
			this.graphics.endFill();
			
			
			var _XTwFO:Matrix = new Matrix();
			var _VAdQz:Array =[0x999999,0x666666,0x666666];  
			var _NxoCP:Array =[0.5,0,0];
			var _BzVG2:Array =[0,170,255];
			_XTwFO.createGradientBox(w, h,0,0,0);
			this.graphics.beginGradientFill(GradientType.RADIAL, _VAdQz, _NxoCP, _BzVG2, _XTwFO);
			this.graphics.drawRect(4, 4, w - 4, h -4);
			this.graphics.endFill();
			
			var _ak7Rg:Matrix = new Matrix();
			var _1aabF:Array =[0x444444,0xCCCCCC,0x444444];  
			var _1U50O:Array =[0.0,0.6,0.0];
			var _xLPfL:Array =[0,255/2,255];
			_ak7Rg.createGradientBox(w, h*0.04,0,0,0);
			this.graphics.beginGradientFill(GradientType.LINEAR, _1aabF, _1U50O, _xLPfL, _ak7Rg);
			this.graphics.drawRect(4, h-2-h*0.02, w - 4, h*0.02);
			this.graphics.endFill();
			
			
		
			
		}
		
	}

}