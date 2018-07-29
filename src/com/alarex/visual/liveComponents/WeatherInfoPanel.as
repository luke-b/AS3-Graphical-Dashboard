package com.alarex.visual.liveComponents 
{
	import com.alarex.visual.component.SunSymbol;
	import com.alarex.visual.component.ThermometerSymbol;
	import com.alarex.visual.component.WeatherPanel;
	import flash.display.Sprite;
	




	public class WeatherInfoPanel extends Sprite 
	{
		
		private var _4zdHd:WeatherPanel;
		private var _JsOTy:SunSymbol;
		private var _yAMLR:ThermometerSymbol;
		
		public function WeatherInfoPanel() 
		{
			this.cacheAsBitmap = true;
			
			_4zdHd = new WeatherPanel();
			this.addChild(_4zdHd);
			
			_JsOTy = new SunSymbol(60, 15);
			this.addChild(_JsOTy);
			_JsOTy.x = 180;
			_JsOTy.y = 60;
			
			_yAMLR = new ThermometerSymbol();
			this.addChild(_yAMLR);
			_yAMLR.scaleX = 0.8;
			_yAMLR.scaleY = 0.8;
			_yAMLR.x = 270;
			_yAMLR.y = 35;
			
		}
		
		
		public function _MvCNn(sf:Number):void {
			_JsOTy._MvCNn(sf);
		}
		
	}

}