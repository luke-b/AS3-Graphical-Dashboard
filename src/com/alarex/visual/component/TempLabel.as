package com.alarex.visual.component 
{
	import flash.text.TextField;
	import flash.text.AntiAliasType;
	import flash.text.TextFormat;
	import flash.display.Sprite;
	import com.alarex.visual.component.SimplePanel;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class TempLabel extends Sprite
	{
		
		[Embed(source='../../../../../lib/vodafone.ttf', fontFamily="vodaFont")]
		public var VodaFont:Class;
		
		private var lab:String;
		
		public function TempLabel(l:String,size:Number) 
		{
			this.lab = l;
			
			this.cacheAsBitmap = true;
			
			var xoff:Number = 22;
			
			var text:TextField = new TextField();
			text.selectable = false;
			
			text.antiAliasType = AntiAliasType.ADVANCED;
			text.embedFonts = true;
			
			text.text = lab;
			text.alpha = 1;
			text.x = xoff+3;
			text.y = 2;
			text.height = size * 2;
			
			text.cacheAsBitmap = true;
			
			var format:TextFormat = new TextFormat();
			format.size = size;
			format.font = "vodaFont";
			format.color = 0x000000;
			
			text.setTextFormat(format);
			text.width = text.textWidth + size;
			text.height = text.textHeight;
			
			var sp:SimplePanel = new SimplePanel(text.textWidth+size/2+xoff, text.textHeight+size/3);
			this.addChild(sp);
			
			var tm:ThermometerSymbol = new ThermometerSymbol();
			this.addChild(tm);
			tm.x = 10;
			tm.y = -5;
			tm.scaleX = 0.6;
			tm.scaleY = 0.6;
			
			this.addChild(text);

		}
		
	}

}