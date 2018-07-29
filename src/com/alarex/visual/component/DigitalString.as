package com.alarex.visual.component 
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class DigitalString extends Sprite 
	{
		
	
		private var digitCount:int = 0;
		private var digits:Array;
		private var dotOffset:int = -1;
		private var unsigned:Boolean = false;
		
		public function DigitalString(mask:String,dotOffset:int = -1,unsign:Boolean=false) 
		{
			this.digitCount = mask.length+(unsign?0:1);
			this.digits = new Array();
			
			this.cacheAsBitmap = true;
			
			this.unsigned = unsign;
			
			var lastX:int = 0;
			
			this.dotOffset = dotOffset;
			
			for (var i:int = 0; i < this.digitCount; i++) {
				var digit:DigitalDigit = new DigitalDigit();
				digit.x = lastX;
			
				lastX += digit.width;
				
				this.digits.push(digit);
				this.addChild(digit);
			}
		}
		
		
		public function changeString(newString:String):void {
			
			
			var s:String = newString;		
			
			if (s.indexOf(".") != -1) {
				this.dotOffset = (this.digitCount - 1) - ((s.length) - s.indexOf("."));		
				
				var p:int = s.indexOf(".");
				
				s = s.substring(0, p) + s.substring(p + 1, s.length);
				
			} else {
				this.dotOffset = -1;
			}
			
			
			if (!unsigned) {
				if (newString.indexOf("-") != -1) {
					var d2:DigitalDigit = digits[0] as DigitalDigit;
					d2.changeNumber("-");
					s = s.replace("-", "0");
				}
			}
			
			if (s.length > this.digitCount) 
				return;
			
			while (s.length < this.digitCount-1) {
				s = "0" + s;
			}
		
			for (var i:int = 0; i < s.length; i++) {
				
				var d:DigitalDigit = digits[i+(!unsigned?1:0)] as DigitalDigit;
				var dv:String = s.charAt(i);
											
				d.changeNumber(dv,(i==dotOffset?true:false));
								
			}
						
		}
		
		
		
	}

}