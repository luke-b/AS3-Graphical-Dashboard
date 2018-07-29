package com.alarex.visual.component 
{
	import flash.text.TextField;
	import flash.text.AntiAliasType;
	import flash.text.TextFormat;
	import flash.display.Sprite;
	import com.alarex.visual.component.SimplePanel;
	




	public class TempLabel extends Sprite
	{
		
		[Embed(source='\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x6c\x69\x62\x2f\x76\x6f\x64\x61\x66\x6f\x6e\x65\x2e\x74\x74\x66', fontFamily="\x76\x6f\x64\x61\x46\x6f\x6e\x74")]
		public var _GElsA:Class;
		
		private var _ohnh4:String;
		
		public function TempLabel(l:String,size:Number) 
		{
			this._ohnh4 = l;
			
			this.cacheAsBitmap = true;
			
			var _Xdv8S:Number = 22;
			
			var _cGWPV:TextField = new TextField();
			_cGWPV.selectable = false;
			
			_cGWPV.antiAliasType = AntiAliasType.ADVANCED;
			_cGWPV.embedFonts = true;
			
			_cGWPV._cGWPV = _ohnh4;
			_cGWPV.alpha = 1;
			_cGWPV.x = _Xdv8S+3;
			_cGWPV.y = 2;
			_cGWPV.height = size * 2;
			
			_cGWPV.cacheAsBitmap = true;
			
			var _KrepD:TextFormat = new TextFormat();
			_KrepD.size = size;
			_KrepD.font = "\x76\x6f\x64\x61\x46\x6f\x6e\x74";
			_KrepD.color = 0x000000;
			
			_cGWPV.setTextFormat(_KrepD);
			_cGWPV.width = _cGWPV.textWidth + size;
			_cGWPV.height = _cGWPV.textHeight;
			
			var _aJrWi:SimplePanel = new SimplePanel(_cGWPV.textWidth+size/2+_Xdv8S, _cGWPV.textHeight+size/3);
			this.addChild(_aJrWi);
			
			var _zoTwC:ThermometerSymbol = new ThermometerSymbol();
			this.addChild(_zoTwC);
			_zoTwC.x = 10;
			_zoTwC.y = -5;
			_zoTwC.scaleX = 0.6;
			_zoTwC.scaleY = 0.6;
			
			this.addChild(_cGWPV);

		}
		
	}

}