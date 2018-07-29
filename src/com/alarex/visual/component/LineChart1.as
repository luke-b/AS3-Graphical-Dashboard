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
	
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class LineChart1 extends Sprite 
	{
		
		private var columns:Sprite = new Sprite();
		private var columnMask:Sprite = new Sprite();
		
		private var newValues:Array = new Array();
		private var count:int = 0;
		private var columnWidth:Number;
		private var values:Array = new Array();
		
		private var slider:Sprite = new Sprite();
		private var slide:Number = 0;
		
		private var xpp:Number;
		private var ypp:Number;
		private var wp:Number;
		private var hp:Number;
		private var pos:int = 0;
		
		private var twl:TweenLite = null;
		
		public function LineChart1(xp:Number,yp:Number,w:Number,h:Number,cnt:int,ar:Array=null,chmin:Number=0,chmax:Number=1) 
		{
			this.cacheAsBitmap = false;
			
			this.xpp = xp;
			this.ypp = yp;
			this.wp = w;
			this.hp = h;
			
			this.count = cnt;
			this.columnWidth = w / cnt;
			
			
			for (var j:int = 0; j < cnt; j++) {
				if (ar == null) {
				    values.push(0);
				} else {
					values.push((ar[j] as Number)/chmax);
				}
			}
						
			for (var i:int = 0; i < cnt; i++) {
				var column:ChartColumn1 = new ChartColumn1(xp + i * columnWidth, yp, columnWidth, h, 
														  (i == 0?0.0:values[i - 1] as Number),
														  values[i] as Number, true);
														  
				column.cacheAsBitmap = false;
				slider.addChild(column);
			}
			columns.blendMode = BlendMode.LAYER;
			columns.addChild(slider);
			columns.cacheAsBitmap = false;
			slider.cacheAsBitmap = false;
			this.addChild(columns);
			
			var fc:Number = (columnWidth / w) * 255;
			
			var mat4:Matrix = new Matrix();
			var colors4:Array =[0xffffff,0xffffff,0xffffff,0xffffff,0xffffff];  
			var alphas4:Array = [0, 1, 1, 1, 0];  //posledni 0 dela pekny rozmaz 
 			var ratios4:Array =[0,fc,fc,255-fc*2,255-fc];
			mat4.createGradientBox(w, h,0,0,0);
			columnMask.graphics.beginGradientFill(GradientType.LINEAR, colors4, alphas4, ratios4, mat4);
			columnMask.graphics.drawRect(0-columnWidth/2, 0, w+columnWidth, h);
			columnMask.graphics.endFill();
			
			columnMask.graphics.beginFill(0xffffff, 0.0);
			columnMask.graphics.drawRect(w, 0, columnWidth*5, h);
			columnMask.graphics.endFill();
			
			columnMask.graphics.beginFill(0xffffff, 0.0);
			columnMask.graphics.drawRect(-columnWidth*5, 0, columnWidth*5, h);
			columnMask.graphics.endFill();
			
			columnMask.cacheAsBitmap = false;
			columnMask.blendMode = BlendMode.ALPHA;
			columns.addChild(columnMask);
			columnMask.x = xp;
			columnMask.y = yp;
			
			
			
			var t:Timer = new Timer(500, 0);
			t.addEventListener(TimerEvent.TIMER, updateChart);
			t.start();
		}
	
		public function insertColumnValue(nn:Number):void {
			
				pos++;
				var n:Number = nn;

				TweenLite.killTweensOf(slider);
				TweenLite.killTweensOf(column);
				if (pos>3) {
				   kickFirstColumn();
				}
				
				if (nn < 0) n = 0;
				if (nn > 1) n = 1;
			
				var column:ChartColumn1 = new ChartColumn1(xpp + count * columnWidth + slide, ypp, columnWidth, hp, 
														  (values[count -1] as Number),
														  n, true);
				column.alpha = 0;
				slider.addChild(column);
				slide += columnWidth;
				values[count - 1] = n;
				var np:Number = column.x - columnWidth;
				
				TweenLite.to(column, 0.45, { alpha:1,ease:Linear.easeNone } );
				twl = TweenLite.to(slider, 0.45, { x: -slide, ease:Linear.easeNone} ); //, onComplete:finishSlide(column) 
			//	TweenLite.to(column, 0.25, { x: np} );
			
			
		}
		
		public function kickFirstColumn():void {
			
			
			slider.removeChildAt(0);
		}
		
		public function finishSlide(col:Sprite):void {
			columns.removeChild(col);
			slider.addChild(col);
			col.x = xpp + count * columnWidth + slide;
			columns.removeChildAt(0);
		}
		
		public function updateChart(e:TimerEvent):void {
			
			if (newValues.length != 0) {
				
				var v:Number = newValues[0] as Number;
				
				if (newValues.length > 1) {
					var l:int = newValues.length;
					newValues = newValues.slice(1, l - 2);
				} else {
					newValues = new Array();
				}
				
				this.insertColumnValue(v); 
			}
			
		}
		
		public function addValue(v:Number):void {
			newValues.push(v);
		}
	}

}