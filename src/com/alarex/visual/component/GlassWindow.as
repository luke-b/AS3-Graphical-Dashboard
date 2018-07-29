package com.alarex.visual.component 
{
	import flash.display.Sprite;
	




	public class GlassWindow extends Sprite 
	{
		
		private var _ipgUP:GlassPanel;
		
		public function GlassWindow(xres:Number, yres:Number) 
		{
			this.cacheAsBitmap = true;
			
			var _DYCTM:Sprite = new Sprite();
			this.addChild(_DYCTM);
			
			_ipgUP = new GlassPanel(xres - 200, yres - 200);
			_DYCTM.addChild(_ipgUP);
			_ipgUP.x = -(xres - 200) / 2;
			_ipgUP.y = -(yres - 200) / 2;
			
			_DYCTM.x = xres / 2;
			_DYCTM.y = yres / 2 ;
			
					}
		
	}

}