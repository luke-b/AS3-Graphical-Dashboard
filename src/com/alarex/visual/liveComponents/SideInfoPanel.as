package com.alarex.visual.liveComponents 
{
	import com.alarex.visual.component.InfoSideBox;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class SideInfoPanel extends Sprite 
	{
		private const PANEL_COUNT:int = 4;
		
		private var panels:Array = new Array();		
		
		public function SideInfoPanel() 
		{
			this.cacheAsBitmap = true;
			
		
			var i:int = 0;
			
			var panel:InfoSideBox = new InfoSideBox("1000", "TONS of CO2 saved!");
			this.addChild(panel);
			panel.y = 0 * 83;
				
			panel = new InfoSideBox("8€", "EUR saved today!");
			this.addChild(panel);
			panel.y = 1 * 83;
			
			panel = new InfoSideBox("40€", "EUR saved this month!");
			this.addChild(panel);
			panel.y = 2 * 83;
			
			panel = new InfoSideBox("3000€", "EUR saved total!");
			this.addChild(panel);
			panel.y = 3 * 83;
			
		}
		
	}

}