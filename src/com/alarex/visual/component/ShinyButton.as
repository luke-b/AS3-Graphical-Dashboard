package com.alarex.visual.component 
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class ShinyButton extends Sprite 
	{
		
		private var back:ShinyPanel;
		private var label:String;
		private var lbl:SmallLabel;
		
		public function ShinyButton(lab:String) 
		{
				this.cacheAsBitmap = true;
			
				back = new ShinyPanel(120, 40, false);
				this.addChild(back);
				
				this.label = lab;
				
				lbl = new SmallLabel(lab, 13, false, true);
				this.addChild(lbl);
				lbl.x = 60 - lbl.getXres() / 2;
				lbl.y = 10;
				
				lbl.cacheAsBitmap = true;
		}
		
		
		public function getButtonWidth():Number {
			return lbl.getXres();
		}
		
		public function getButtonHeight():Number {
			return lbl.getYres();
		}
	}

}