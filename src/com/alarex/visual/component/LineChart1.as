package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import flash.display.BlendMode;
	import flash.utils.Timer;
	import com.greensock.TweenLite;
	import com.greensock.easing.Linear;
	
	




	public class LineChart1 extends Sprite 
	{
		
		private var _1JrEO:Sprite = new Sprite();
		private var _aajEW:Sprite = new Sprite();
		
		private var _wXx2y:Array = new Array();
		private var _uAesA:int = 0;
		private var _OWEh3:Number;
		private var _xkxkK:Array = new Array();
		
		private var _EbeDC:Sprite = new Sprite();
		private var _jlf73:Number = 0;
		
		private var _EfPYi:Number;
		private var _CqYPv:Number;
		private var _Dfh3r:Number;
		private var _AJHwB:Number;
		
		public function LineChart1(xp:Number,yp:Number,w:Number,h:Number,cnt:int) 
		{
			this.cacheAsBitmap = true;
			
			this._EfPYi = xp;
			this._CqYPv = yp;
			this._Dfh3r = w;
			this._AJHwB = h;
			
			this._uAesA = cnt;
			this._OWEh3 = w / cnt;
			
			
			for (var _NNDsA:int = 0; _NNDsA < cnt; _NNDsA++) {
				_xkxkK.push(Math.random());
			}
						
			for (var _1QhVa:int = 0; _1QhVa < cnt; _1QhVa++) {
				var _08yxx:ChartColumn1 = new ChartColumn1(xp + _1QhVa * _OWEh3, yp, _OWEh3, h, 
														  (_1QhVa == 0?0.0:_xkxkK[_1QhVa - 1] as Number),
														  _xkxkK[_1QhVa] as Number, true);
														  
				_08yxx.cacheAsBitmap = true;
				_EbeDC.addChild(_08yxx);
			}
			_1JrEO.blendMode = BlendMode.LAYER;
			_1JrEO.addChild(_EbeDC);
			_1JrEO.cacheAsBitmap = true;
			_EbeDC.cacheAsBitmap = true;
			this.addChild(_1JrEO);
			
			var _ucjDl:Number = (_OWEh3 / w) * 255;
			
			var _S1IFG:Matrix = new Matrix();
			var _hcK5f:Array =[0xffffff,0xffffff,0xffffff,0xffffff,0xffffff];  
			var _AMuBh:Array =[0,1,1,1,0];
			var _KvnZN:Array =[0,_ucjDl,_ucjDl,255-_ucjDl*2,255-_ucjDl];
			_S1IFG.createGradientBox(w, h,0,0,0);
			_aajEW.graphics.beginGradientFill(GradientType.LINEAR, _hcK5f, _AMuBh, _KvnZN, _S1IFG);
			_aajEW.graphics.drawRect(0-_OWEh3/2, 0, w+_OWEh3, h);
			_aajEW.graphics.endFill();
			
			_aajEW.graphics.beginFill(0xffffff, 0.0);
			_aajEW.graphics.drawRect(w, 0, _OWEh3*5, h);
			_aajEW.graphics.endFill();
			
			_aajEW.graphics.beginFill(0xffffff, 0.0);
			_aajEW.graphics.drawRect(-_OWEh3*5, 0, _OWEh3*5, h);
			_aajEW.graphics.endFill();
			
			_aajEW.cacheAsBitmap = true;
			_aajEW.blendMode = BlendMode.ALPHA;
			_1JrEO.addChild(_aajEW);
			_aajEW.x = xp;
			_aajEW.y = yp;
			
			var _1KEd6:Timer = new Timer(500, 0);
			_1KEd6.addEventListener(TimerEvent.TIMER, _y1Lym);
			_1KEd6.start();
		}
	
		public function _2NuLM(nn:Number):void {
			
				var _e4mKo:Number = nn;
				
				if (nn < 0) _e4mKo = 0;
				if (nn > 1) _e4mKo = 1;
			
				var _08yxx:ChartColumn1 = new ChartColumn1(_EfPYi + _uAesA * _OWEh3 + _jlf73, _CqYPv, _OWEh3, _AJHwB, 
														  (_xkxkK[_uAesA -1] as Number),
														  _e4mKo, true);
				_08yxx.alpha = 0;
				_EbeDC.addChild(_08yxx);
				_jlf73 += _OWEh3;
				_xkxkK[_uAesA - 1] = _e4mKo;
				var _J3zuj:Number = _08yxx.x - _OWEh3;
				
				TweenLite.to(_08yxx, 0.45, { alpha:1,ease:Linear.easeNone } );
				TweenLite.to(_EbeDC, 0.45, { x: -_jlf73, onComplete:_GOVka,ease:Linear.easeNone} ); 					}
		
		public function _GOVka():void {
			_EbeDC.removeChildAt(0);
		}
		
		public function _oBxP0(col:Sprite):void {
			_1JrEO.removeChild(col);
			_EbeDC.addChild(col);
			col.x = _EfPYi + _uAesA * _OWEh3 + _jlf73;
			_1JrEO.removeChildAt(0);
		}
		
		public function _y1Lym(e:TimerEvent):void {
			
			if (_wXx2y.length != 0) {
				
				var _TPdsA:Number = _wXx2y[0] as Number;
				
				if (_wXx2y.length > 1) {
					var _tqLcF:int = _wXx2y.length;
					_wXx2y = _wXx2y.slice(1, _tqLcF - 2);
				} else {
					_wXx2y = new Array();
				}
				
				this._2NuLM(_TPdsA); 
			}
			
		}
		
		public function _dUOce(_TPdsA:Number):void {
			_wXx2y.push(_TPdsA);
		}
	}

}