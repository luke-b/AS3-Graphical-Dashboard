package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.text.TextFormat;
	import flash.text.TextField;
	import flash.text.AntiAliasType;
	
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class GlassLabel extends Sprite 
	{
		
		[Embed(source='../../../../../lib/vodafone.ttf', fontFamily="vodaFont")]
		public var VodaFont:Class;
		
		private var back:GlassPanel;
	
		
		public function GlassLabel(str:String) 
		{
			this.cacheAsBitmap = true;
			
			var text:TextField = new TextField();
			text.selectable = false;
			
			text.antiAliasType = AntiAliasType.ADVANCED;
			text.embedFonts = true;
			
			text.text = str;
			text.alpha = 1;
			text.x = 3;
			text.y = 2;
			text.height = 30;
			
			text.cacheAsBitmap = true;
			
			var format:TextFormat = new TextFormat();
			format.size = 20;
			format.font = "vodaFont";
			format.color = 0x444444;
			
			text.setTextFormat(format);
			text.width = text.textWidth+5;
			text.height = text.textHeight;
			
			text.x = 10;
			text.y = 5;
			
			
			back = new GlassPanel(text.width + 20, text.height + 18);
			
			this.addChild(back);
			back.addUnderOverlay(text);
		}
		
	}

}