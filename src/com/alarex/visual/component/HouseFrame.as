package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	




	public class HouseFrame extends Sprite 
	{
		
		public function HouseFrame() 
		{
									
			this.cacheAsBitmap = true;
			
			var _XPjKW:Matrix = new Matrix();
			var _nfF2X:Array =  [ 0x012f80, 0x012f80];
			var _5tkK6:Array =[1,0];
			var _mej46:Array =[0,255];
			_XPjKW.createGradientBox(122+230+122, 122+170, Math.PI/2, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, _nfF2X, _5tkK6, _mej46, _XPjKW);
			
						this.graphics.moveTo(122, 0);
			this.graphics.lineTo(122 + 230, 0);
			this.graphics.lineTo(122 + 230 + 122, 122);
			this.graphics.lineTo(122 + 230 + 122, 122 + 170);
			this.graphics.lineTo(122 + 230 + 122 - 8, 122 + 170);
			this.graphics.lineTo(122 + 230 + 122 - 8, 122 + 4 );
			this.graphics.lineTo(122 + 230 - 5, 0 + 8);
			this.graphics.lineTo(122 + 5, 0 + 8);
			this.graphics.lineTo(8, 122 + 4);
			this.graphics.lineTo(8, 122 + 170);
			this.graphics.lineTo(0, 122 + 170);
			this.graphics.lineTo(0, 122);
			this.graphics.endFill();
			
			
			var _pJneF:Matrix = new Matrix();
			var _vfV91:Array = [0xffffff, 0xffffff];
			var _Eexws:Array =[1,0];
			var _Cdqak:Array =[0,255];
			_pJneF.createGradientBox(122+230+122, 122+170, Math.PI/2, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, _vfV91, _Eexws, _Cdqak, _pJneF);
			
			this.graphics.moveTo(122 + 5, 0 + 8);
			this.graphics.lineTo(122 + 230 - 5, 0 + 8);
			this.graphics.lineTo(122 + 230 + 122 - 8, 122 + 4);
			this.graphics.lineTo(122 + 230 + 122 - 8, 122 + 170);
			this.graphics.lineTo(122 + 230 + 122 - 8 - 8, 122 + 170);
			this.graphics.lineTo(122 + 230 + 122 - 8 - 8, 122 + 4 + 4);
			this.graphics.lineTo(122 + 230 - 5 - 5, 0 + 8 + 8);
			this.graphics.lineTo(122 + 5 + 5, 0 + 8 + 8);
			this.graphics.lineTo(8 + 8, 122 + 4 + 4);
			this.graphics.lineTo(8 + 8, 122 + 170);
			this.graphics.lineTo(0 + 8, 122 + 170);
			this.graphics.lineTo(0 + 8, 122 + 4);
			this.graphics.endFill();
			
			
			var _kI5bA:Matrix = new Matrix();
			var _z6pbQ:Array = [0xffffff, 0xffffff];
			var _70Jrz:Array =[1,0];
			var _XLRJn:Array =[0,255];
			_kI5bA.createGradientBox(122+230+122, 122+170,-Math.PI/8, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, _z6pbQ, _70Jrz, _XLRJn, _kI5bA);
			
			this.graphics.moveTo(122 + 8 + 8 + 8 + 5, 8 + 8 + 8);
			this.graphics.lineTo(122 + 230 - 8 - 8 , 8 + 8 + 8);
			this.graphics.lineTo(122 + 230 + 122 - 8 - 8 - 8 - 5, 122 + 8);
			this.graphics.lineTo(122 + 122 - 8 + 3 + 3, 122 + 8);
			this.graphics.endFill();
			
			var _1Mrfl:Matrix = new Matrix();
			var _sy2ok:Array = [0xffffff, 0xffffff];
			var _772H7:Array =[0.3,0];
			var _BfaRt:Array =[0,180];
			_1Mrfl.createGradientBox(122+230+122, 122+100, Math.PI/2, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, _sy2ok, _772H7, _BfaRt, _1Mrfl);	
			this.graphics.moveTo(122 + 8+8, 8 + 8 + 8);
			this.graphics.lineTo(122 + 122 - 8  - 8 + 5, 8  + 122 + 5);
			this.graphics.lineTo(122 + 122 - 8  - 8 + 5, 8 + 8 + 8 + 122 + 122);
			this.graphics.lineTo(8+8+8 + 5 - 3 , 8 + 8 + 8 + 122 + 122 + 3);
			this.graphics.lineTo( 8+8+8 + 5 - 3, 122 + 8 + 3);
	
			this.graphics.endFill();
			
				
			var _1GKvr:Matrix = new Matrix();
			var _saYrD:Array = [0xffffff, 0xffffff];
			var _umulW:Array =[0.4,0];
			var _oYApc:Array =[0,200];
			_1GKvr.createGradientBox(122+230+122, 122+100, Math.PI/7, 0, 0);
			this.graphics.beginGradientFill(GradientType.LINEAR, _saYrD, _umulW, _oYApc, _1GKvr);	
			this.graphics.drawRect(122 + 122, 122+8+8+2, 230 - 8 - 8 - 8 -3 , 122);
			this.graphics.endFill();
		}
		
	}

}