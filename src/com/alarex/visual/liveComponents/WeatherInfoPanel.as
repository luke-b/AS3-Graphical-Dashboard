package com.alarex.visual.liveComponents 
{
	import com.alarex.visual.component.SunSymbol;
	import com.alarex.visual.component.ThermometerSymbol;
	import com.alarex.visual.component.WeatherPanel;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class WeatherInfoPanel extends Sprite 
	{
		
		private var panel:WeatherPanel;
		private var sun:SunSymbol;
		private var meterSymbol:ThermometerSymbol;
		
		public function WeatherInfoPanel() 
		{
			this.cacheAsBitmap = true;
			
			panel = new WeatherPanel();
			this.addChild(panel);
			
			sun = new SunSymbol(60, 15);
			this.addChild(sun);
			sun.x = 180;
			sun.y = 60;
			
			meterSymbol = new ThermometerSymbol();
			this.addChild(meterSymbol);
			meterSymbol.scaleX = 0.8;
			meterSymbol.scaleY = 0.8;
			meterSymbol.x = 270;
			meterSymbol.y = 35;
			
		}
		
		
		public function setShineFactor(sf:Number):void {
			sun.setShineFactor(sf);
		}
		
	}

}