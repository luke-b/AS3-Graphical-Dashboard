package com.alarex.visual.liveComponents 
{
	import com.alarex.visual.component.InfoSideBox;
	import flash.display.Sprite;
	




	public class SideInfoPanel extends Sprite 
	{
		private const _XheJM:int = 4;
		
		private var _SHGSs:Array = new Array();		
		
		public function SideInfoPanel() 
		{
			this.cacheAsBitmap = true;
			
			for (var _9I9lF:int = 0; _9I9lF < _XheJM; _9I9lF++) {
				
				var _jpU4k:InfoSideBox = new InfoSideBox("\x31\x30\x2c\x30\x30\x30", "\x75\xc5\xa1\x65\x74\xc5\x99\x65\x6e\x6f");
				this.addChild(_jpU4k);
				_jpU4k.y = _9I9lF * 83;
				
			}
		}
		
	}

}