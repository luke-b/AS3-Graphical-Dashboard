package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.utils.Timer;
	import com.greensock.easing.Linear;
	import com.greensock.TweenLite;
	




	public class SunSymbol extends Sprite 
	{
		
		private var _igVKz:Sprite = new Sprite();
		private var _31TPt:Timer;
		
		private var _O9tNm:Number = 0.0;
	
		private var _08KTG:Number = 0.0;
		
		
		public function SunSymbol(radius:Number,count:int) 
		{
			
			this.cacheAsBitmap = true;
			
			var _QjPAT:Matrix = new Matrix();
			var _ll52G:Array =[0xffff00,0xffff00];  
			var _6JAsZ:Array =[1,0];
			var _4kqmf:Array =[0,255];
			_QjPAT.createGradientBox(radius*2, radius*2,0,-radius,-radius);
			_igVKz.graphics.beginGradientFill(GradientType.RADIAL,_ll52G,_6JAsZ,_4kqmf,_QjPAT);
			_igVKz.graphics.drawCircle(0, 0, radius);
			_igVKz.graphics.endFill();
				
			_igVKz.cacheAsBitmap = true;
			
			
			var _uZn2z:Matrix = new Matrix();
			var _L15We:Array =[0xffff00,0xffff00,0xffaa00];  
			var _7tcxa:Array =[1,1,1];
			var _8gsjf:Array =[0,120,255];
			_uZn2z.createGradientBox(radius*2, radius*2,0,-radius,-radius);
			_igVKz.graphics.beginGradientFill(GradientType.RADIAL,_L15We,_7tcxa,_8gsjf,_uZn2z);
			
			
						
			var _Fx0eO:Number = Math.PI / (count) * 2;
			var _OnG7J:Number = Math.PI / (count) * 2;
			
			_igVKz.graphics.moveTo(radius, 0);
			for (var _XDBkz:int = 1; _XDBkz < count+1; _XDBkz++) {
				
				_igVKz.graphics.curveTo(Math.cos(_Fx0eO * _XDBkz - (_Fx0eO/2)) * (radius * 0.1),
									  Math.sin(_Fx0eO * _XDBkz - (_Fx0eO/2)) * (radius * 0.1),
									  Math.cos(_Fx0eO * _XDBkz) * radius,
									  Math.sin(_Fx0eO * _XDBkz) * radius);
								
			}
			
			_igVKz.graphics.endFill();
			
			this.addChild(_igVKz);
			
			
			var _NPHa2:Sprite = new Sprite();
			
			var _MNwoa:Matrix = new Matrix();
			var _HftH3:Array =[0xff8800,0xff8800,0xffff00];  
			var _oiJzc:Array =[1,1,1];
			var _ZV471:Array =[0,200,255];
			_MNwoa.createGradientBox(radius*2*0.4, radius*2*0.4,0,-radius*0.4,-radius*0.4);
			
			_NPHa2.graphics.beginGradientFill(GradientType.RADIAL, _HftH3, _oiJzc, _ZV471, _MNwoa);
						_NPHa2.graphics.drawCircle(0, 0, radius * 0.4);
			_NPHa2.graphics.endFill();
			
			_NPHa2.cacheAsBitmap = true;
			
			var _24nQK:Matrix = new Matrix();
			var _zYOYJ:Array =[0xffffff,0xffffff];  
			var _ylkRn:Array =[1,0];
			var _tDsv9:Array =[0,255];
			_24nQK.createGradientBox(radius*2*0.4, radius*4*0.4,Math.PI/2,-radius*0.4,-radius*0.4*1.5);
			
			_NPHa2.graphics.beginGradientFill(GradientType.LINEAR, _zYOYJ, _ylkRn, _tDsv9, _24nQK);
						_NPHa2.graphics.drawEllipse( -radius * 0.4 * 0.7, -radius * 0.4 * 0.8, radius * 0.4 * 2 * 0.7, radius * 0.4);
			_NPHa2.graphics.endFill();
				
			
			_igVKz.scaleX = 0.7 + 0.3*_08KTG;
			_igVKz.scaleY = 0.7 + 0.3*_08KTG;
			
			this.addChild(_NPHa2);
			
					
			_31TPt = new Timer( 30 );
			_31TPt.addEventListener( TimerEvent.TIMER, _1URI9 );
			_31TPt.start( );
		}
		
		public function _M10E4():void {
			_igVKz.rotation = 0;
				TweenLite.to(_igVKz, 15, { rotation:360, ease:Linear.easeNone,onComplete:_M10E4 } );
		}
		
		
		public function _JKM2h(sf:Number):void {
			
			var _9Pf1c:Number = sf;
			
			if (_9Pf1c < 0) _9Pf1c = 0;
			if (_9Pf1c > 1) _9Pf1c = 1;
			
			this._08KTG = _9Pf1c;
			
		}
		
		
		public function _1URI9(e:TimerEvent):void {
			_igVKz.rotation += 1 + 2*_08KTG;
			_igVKz.scaleX = 0.7 + 0.3*_08KTG;
			_igVKz.scaleY = 0.7 + 0.3*_08KTG;
		}
		
	}

}