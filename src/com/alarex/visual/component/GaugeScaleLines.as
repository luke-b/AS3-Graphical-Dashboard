package com.alarex.visual.component 
{
	import flash.display.Sprite;
	




	public class GaugeScaleLines extends Sprite 
	{
		
		public function GaugeScaleLines(count:int, stp:int) 
		{
						
			this.cacheAsBitmap = true;
			
			var _2wChS:Number = 180 / (count-1);
			var _xocOj:Number = 0.0;
			
			
			for (var _zuoTK:int = 0; _zuoTK < count; _zuoTK++) {
				
				var _77Xfs:Sprite = new Sprite();
				
				_77Xfs.cacheAsBitmap = true;
				
				_77Xfs.graphics.beginFill(0x000000);
				_77Xfs.graphics.drawRect( -66, -1.5 - (_zuoTK%stp!=0?-0.5:0), 12 + (_zuoTK%stp==0?5:0), 4 - (_zuoTK%stp!=0?1:0));
				_77Xfs.graphics.endFill();
				
				_77Xfs.graphics.beginFill(0xffffff);
				_77Xfs.graphics.drawRect( -65, -0.5 - (_zuoTK%stp!=0?-0.5:0), 10 + (_zuoTK%stp==0?5:0), 2 - (_zuoTK%stp!=0?1:0));
				_77Xfs.graphics.endFill();
			
				this.addChild(_77Xfs);
				
				_77Xfs.rotation = _xocOj;
				_xocOj += _2wChS;
			}
		}
		
	}

}