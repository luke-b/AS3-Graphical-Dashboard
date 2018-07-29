package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	




	public class ChartColumn1 extends Sprite 
	{
		private const _qYEcR:int = 2;
		
		public function ChartColumn1(xp:Number, yp:Number, w:Number, h:Number, prev:Number, curr:Number, dropShadow:Boolean=true, colors5x:Array=null,colors4x:Array=null) 
		{
			
			this.cacheAsBitmap = true;
			
			var _uW7Jd:Array;
			if (colors5x == null) {
				_uW7Jd = [0xffff00, 0xff5500];
			}
			
			var _AS0eS:Array;
			if (colors4x == null) {
				_AS0eS = [0x0088ff, 0x0088ff];
			}
			
			
			
			if (dropShadow) {
				
			
			var _JfHVY:Sprite = new Sprite();
			
			
			_JfHVY.graphics.beginFill(0xffffff);
			_JfHVY.graphics.drawRect(0, h - _qYEcR, w, _qYEcR);
			_JfHVY.graphics.endFill();
			
			var _rBlWG:Matrix = new Matrix();
						var _6OOOS:Array =[1,0.0];
			var _FBVJJ:Array =[0,255];
			_rBlWG.createGradientBox(w, h,Math.PI/2,0,0);
			_JfHVY.graphics.beginGradientFill(GradientType.LINEAR, _AS0eS, _6OOOS, _FBVJJ, _rBlWG);
			
			_JfHVY.graphics.drawRect(0, 0, w, h-_qYEcR);
			_JfHVY.graphics.endFill();
			
			_JfHVY.graphics.beginFill(0x000000,0.5);
			_JfHVY.graphics.drawRect(w/2, 0, _qYEcR/2, h-_qYEcR);
			_JfHVY.graphics.endFill();
			
			var _sUrRE:int = (h-_qYEcR) / w;
			
			for (var _5aEye:int = 1; _5aEye < _sUrRE+1; _5aEye++) {
				_JfHVY.graphics.beginFill(0x000000,0.5);
				_JfHVY.graphics.drawRect(0, h-_5aEye * w, w, _qYEcR / 2);
				_JfHVY.graphics.endFill();
			}
		
			this.addChild(_JfHVY);
			_JfHVY.x = xp;
			_JfHVY.y = yp;
			_JfHVY.alpha = 1;
		}
			
			
			
			
			var _dJNkq:Sprite = new Sprite();
			
			var _acptn:Matrix = new Matrix();
						var _1xdvJ:Array =[1,1];
			var _grd3Z:Array =[0,255];
			_acptn.createGradientBox(w, h-_qYEcR,Math.PI/2,0,0);
			_dJNkq.graphics.beginGradientFill(GradientType.LINEAR, _uW7Jd, _1xdvJ, _grd3Z, _acptn);
			_dJNkq.graphics.drawRect(-w/2, 0, w - _qYEcR/2 + _qYEcR/2, h - _qYEcR);
			_dJNkq.graphics.endFill();
			
			_dJNkq.cacheAsBitmap = true;
			
			
			for (var _IOtJ0:int = 0; _IOtJ0 < _sUrRE+1; _IOtJ0++) {
				_dJNkq.graphics.beginFill(0xffffff,0.5);
				_dJNkq.graphics.drawRect(-w/2, h-_IOtJ0 * w, w, _qYEcR / 2);
				_dJNkq.graphics.endFill();
			}
			
			_dJNkq.graphics.beginFill(0xffffff,0.5);
			_dJNkq.graphics.drawRect(-w/2, 0, _qYEcR/2, h);
			_dJNkq.graphics.endFill();
			
																					
			this.addChild(_dJNkq);
			_dJNkq.x = xp;
			_dJNkq.y = yp;
			
			var _fzhYa:Sprite = new Sprite();
			
			_fzhYa.graphics.beginFill(0xffffff);
			_fzhYa.graphics.moveTo( -w / 2, h - h * prev);
			_fzhYa.graphics.lineTo( w / 2, h - h * curr);
			_fzhYa.graphics.lineTo( w / 2, h - _qYEcR);
			_fzhYa.graphics.lineTo( -w / 2, h - _qYEcR);
			_fzhYa.graphics.endFill();
			_fzhYa.x = xp;
			_fzhYa.y = yp;
			
			_fzhYa.cacheAsBitmap = true;
			
			this.addChild(_fzhYa);
			_dJNkq.mask = _fzhYa;
			
			var _t0wxa:Sprite = new Sprite();
			
			_t0wxa.graphics.lineStyle(_qYEcR*4, 0x000000, 0.2);
			_t0wxa.graphics.moveTo( -w / 2, h - h * prev);
			_t0wxa.graphics.lineTo( w / 2, h - h * curr);
			
			_t0wxa.graphics.lineStyle(_qYEcR*4, 0x000000, 0.2);
			_t0wxa.graphics.moveTo( -w / 2, h - _qYEcR/2);
			_t0wxa.graphics.lineTo( w / 2, h - _qYEcR/2);
			
			_t0wxa.graphics.lineStyle(_qYEcR, 0xffffff, 1);
			_t0wxa.graphics.moveTo( -w / 2, h - h * prev);
			_t0wxa.graphics.lineTo( w / 2, h - h * curr);
			
			_t0wxa.cacheAsBitmap = true;
			
			this.addChild(_t0wxa);
			_t0wxa.x = xp;
			_t0wxa.y = yp;
			  
			var _bblrp:Sprite = new Sprite();
			_bblrp.graphics.beginFill(0x000000);
			_bblrp.graphics.drawRect( -w*0.5, 0, w*1.5, h - _qYEcR);
			_bblrp.graphics.endFill();
			this.addChild(_bblrp);
			_bblrp.x = xp;
			_bblrp.y = yp;
			
			_bblrp.cacheAsBitmap = true;
			
			_t0wxa.mask = _bblrp;
			
		
		}
		
	}

}