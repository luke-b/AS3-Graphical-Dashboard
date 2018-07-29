package com.alarex.visual.component 
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class CylinderString extends Sprite 
	{
	
		private var digitCount:int = 0;
		
		private var prefixCount:int = 0;
		private var suffixCount:int = 0;
		
		private var digits:Array;
		private var oldString:String;
		
		
		public function CylinderString(prefix:String,suffix:String) 
		{
			
		//	this.cacheAsBitmap = true;
			
			prefixCount = prefix.length;
			suffixCount = suffix.length;
			
			this.digitCount = prefixCount + suffixCount;
			this.digits = new Array();
			
			var lastX:int = 0;
					
			
			for (var i:int = 0; i < this.prefixCount; i++) {
				var digit:CylinderDigit = new CylinderDigit(false);
				digit.x = lastX;
				lastX += digit.getRealWidth();
				
				this.digits.push(digit);
				this.addChild(digit);
			}
			
			for (var j:int = 0; j < this.suffixCount; j++) {
				digit = new CylinderDigit(true);
				digit.x = lastX;
				lastX += digit.getRealWidth();
				
				this.digits.push(digit);
				this.addChild(digit);
			}
		}
		
		
		public function changeString(newString:String):void {
			
			
			
			
			var s:String = newString;		
			
						
			if (s.length > this.digitCount) 
				return;
			
			while (s.length < this.digitCount) {
				s = "0" + s;
			}
			
			if (s.indexOf(".") != -1) {
				var o:String = s;
				
				s = o.substring(0, o.indexOf(".")) + o.substring(o.indexOf(".") + 1);
			}
		
			for (var i:int = 0; i < s.length; i++) {
				
				var d:CylinderDigit = digits[i+1] as CylinderDigit;
				var dv:String = s.charAt(i);
											
				d.changeNumber(int(dv));
								
			}
						
		}
		
		
	}

}