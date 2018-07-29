package com.alarex.visual.component 
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class GlassWindow extends Sprite 
	{
		
		private var gp:GlassPanel;
		
		public function GlassWindow(xres:Number, yres:Number) 
		{
			this.cacheAsBitmap = true;
			
			var holder:Sprite = new Sprite();
			this.addChild(holder);
			
			gp = new GlassPanel(xres - 200, yres - 200);
			holder.addChild(gp);
			gp.x = -(xres - 200) / 2;
			gp.y = -(yres - 200) / 2;
			
			holder.x = xres / 2;
			holder.y = yres / 2 ;
			
			//holder.rotationY = 45;
		}
		
	}

}