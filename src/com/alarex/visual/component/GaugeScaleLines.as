package com.alarex.visual.component 
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class GaugeScaleLines extends Sprite 
	{
		
		public function GaugeScaleLines(count:int, stp:int) 
		{
			// -65  w:10
			
			this.cacheAsBitmap = true;
			
			var st:Number = 180 / (count-1);
			var p:Number = 0.0;
			
			
			for (var c:int = 0; c < count; c++) {
				
				var line:Sprite = new Sprite();
				
				line.cacheAsBitmap = true;
				
				line.graphics.beginFill(0x000000);
				line.graphics.drawRect( -66, -1.5 - (c%stp!=0?-0.5:0), 12 + (c%stp==0?5:0), 4 - (c%stp!=0?1:0));
				line.graphics.endFill();
				
				line.graphics.beginFill(0xffffff);
				line.graphics.drawRect( -65, -0.5 - (c%stp!=0?-0.5:0), 10 + (c%stp==0?5:0), 2 - (c%stp!=0?1:0));
				line.graphics.endFill();
			
				this.addChild(line);
				
				line.rotation = p;
				p += st;
			}
		}
		
	}

}