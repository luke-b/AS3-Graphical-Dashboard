package com.alarex.visual.component 
{
	import flash.display.Sprite;
	




	public class ShinyButton extends Sprite 
	{
		
		private var _l1qYw:ShinyPanel;
		private var _Q4NlO:String;
		private var _SKiSa:SmallLabel;
		
		public function ShinyButton(lab:String) 
		{
				this.cacheAsBitmap = true;
			
				_l1qYw = new ShinyPanel(120, 40, false);
				this.addChild(_l1qYw);
				
				this._Q4NlO = lab;
				
				_SKiSa = new SmallLabel(lab, 13, false, true);
				this.addChild(_SKiSa);
				_SKiSa.x = 60 - _SKiSa.getXres() / 2;
				_SKiSa.y = 10;
				
				_SKiSa.cacheAsBitmap = true;
		}
		
	}

}