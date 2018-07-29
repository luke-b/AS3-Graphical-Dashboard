package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import com.greensock.TweenLite;
	




	public class TempInfoBubble extends Sprite 
	{
		
		
		private var _F1jml:TempLabel;
		private var _azNYJ:TempLabel;
		private var _XQpw2:String;
		
		public function TempInfoBubble(l:String) 
		{
			this.cacheAsBitmap = true;
			
			_LebFg(l);
		}
		
		public function _LebFg(l:String):void {
			
			if (l != this._XQpw2) {
				
				this._XQpw2 = l;
				
				if (this._F1jml != null) {
					this._azNYJ = this._F1jml;
					
					this.removeChild(this._F1jml);
								}
				
				this._F1jml = new TempLabel(l, 25);
				this.addChild(_F1jml);
			}
			
		}
		
		public function _hpUCW():void {
			if (this._azNYJ != null) {
				this.removeChild(this._azNYJ);
			}
		}
		
	}

}