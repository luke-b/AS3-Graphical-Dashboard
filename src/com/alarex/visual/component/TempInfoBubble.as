package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import com.greensock.TweenLite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class TempInfoBubble extends Sprite 
	{
		
		
		private var tLabel:TempLabel;
		private var oldLabel:TempLabel;
		private var label:String;
		
		public function TempInfoBubble(l:String) 
		{
			this.cacheAsBitmap = true;
			
			changeString(l);
		}
		
		public function changeString(l:String):void {
			
			if (l != this.label) {
				
				this.label = l;
				
				if (this.tLabel != null) {
					this.oldLabel = this.tLabel;
					
					this.removeChild(this.tLabel);
				//	TweenLite.to(oldLabel, 0.5, { alpha:0.0, y: -20, onComplere:removeOld } );
				}
				
				this.tLabel = new TempLabel(l, 25);
				this.addChild(tLabel);
			}
			
		}
		
		public function removeOld():void {
			if (this.oldLabel != null) {
				this.removeChild(this.oldLabel);
			}
		}
		
	}

}