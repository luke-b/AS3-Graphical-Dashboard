package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	




	public class SmallLabel extends Sprite 
	{
		
		[Embed(source='\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x6c\x69\x62\x2f\x76\x6f\x64\x61\x66\x6f\x6e\x65\x2e\x74\x74\x66', fontFamily="\x76\x6f\x64\x61\x46\x6f\x6e\x74")]
		public var _yHjt9:Class;
		
		private var _bWrUZ:String;
		
		private var _xcaYQ:Number;
		private var _7pnA7:Number;
		
		public function SmallLabel(label:String,size:Number,shine:Boolean,shadow:Boolean=true) 
		{
			this.cacheAsBitmap = true;
			
			this._bWrUZ = label;
			var _GMzCB:Number = -0.8;
			
			if (shine) {
			
			var _PHPLQ:TextField = new TextField();
			_PHPLQ.selectable = false;
			_PHPLQ.cacheAsBitmap = true;
			_PHPLQ.antiAliasType = AntiAliasType.ADVANCED;
			_PHPLQ.embedFonts = true;
			
			_PHPLQ._QYe4V = _bWrUZ;
			_PHPLQ.alpha = 1;
			_PHPLQ.x = _GMzCB;
			_PHPLQ.y = -1;
			_PHPLQ.height = size * 2;
						
			var _8nTCt:TextFormat = new TextFormat();
			_8nTCt.size = size;
			_8nTCt.font = "\x76\x6f\x64\x61\x46\x6f\x6e\x74";
			_8nTCt.color = 0xdddddd;
			
			_PHPLQ.setTextFormat(_8nTCt);
			_PHPLQ.width = _PHPLQ.textWidth + size;
			_PHPLQ.height = _PHPLQ.textHeight;
			
			this.addChild(_PHPLQ);
			
			}
			
			if (shadow) {

			var _QYe4V:TextField = new TextField();
			_QYe4V.selectable = false;
			
			_QYe4V.antiAliasType = AntiAliasType.ADVANCED;
			_QYe4V.embedFonts = true;
			
			_QYe4V._QYe4V = _bWrUZ;
			_QYe4V.alpha = 1;
			_QYe4V.x = _GMzCB;
			_QYe4V.y = 2;
			_QYe4V.height = size * 2;
			_QYe4V.cacheAsBitmap = true;
			
			var _1GrRA:TextFormat = new TextFormat();
			_1GrRA.size = size;
			_1GrRA.font = "\x76\x6f\x64\x61\x46\x6f\x6e\x74";
			_1GrRA.color = 0x000000;
			
			_QYe4V.setTextFormat(_1GrRA);
			_QYe4V.width = _QYe4V.textWidth + size;
			_QYe4V.height = _QYe4V.textHeight;
			
			this.addChild(_QYe4V);

			}
			
			var _RrpM4:Sprite = new Sprite();
			
			var _YiRdd:Matrix = new Matrix();
			var _YKxmZ:Array =[0x666666,0xffffff,0xffffff];  
			var _6uPXA:Array =[1,1,1];
			var _TScKc:Array =[0,180,255];
			_YiRdd.createGradientBox(1, 1,Math.PI/2,0,0);
			_RrpM4.graphics.beginGradientFill(GradientType.LINEAR,_YKxmZ,_6uPXA,_TScKc,_YiRdd);
			_RrpM4.graphics.drawRect(0, 0, 1, 1);
			_RrpM4.graphics.endFill();
			_RrpM4.cacheAsBitmap = true;
			this.addChild(_RrpM4);
			
	
			var _D7MUg:TextField = new TextField();
			_D7MUg.selectable = false;
			
			_D7MUg.antiAliasType = AntiAliasType.ADVANCED;
			_D7MUg.embedFonts = true;
			_D7MUg.cacheAsBitmap = true;
			_D7MUg._QYe4V = _bWrUZ;
			_D7MUg.alpha = 1;
			_D7MUg.x = 0;
			_D7MUg.y = 0;
			_D7MUg.height = size*2;
			
			var _JO6e9:TextFormat = new TextFormat();
			_JO6e9.size = size;
			_JO6e9.font = "\x76\x6f\x64\x61\x46\x6f\x6e\x74";
			_JO6e9.color = 0x000ff;
			
			_D7MUg.setTextFormat(_JO6e9);
			_D7MUg.width = _D7MUg.textWidth + size;
			_D7MUg.height = _D7MUg.textHeight;
			
			_RrpM4.width = _D7MUg.width;
			_RrpM4.height = _D7MUg.height;
			
			this.addChild(_D7MUg);
			_RrpM4.cacheAsBitmap = true;
						_RrpM4.mask = _D7MUg;
			
			this._xcaYQ = _D7MUg.textWidth;
			this._7pnA7 = _D7MUg.textHeight;
		}
		
		public function _gqhjY():Number {
			return this._xcaYQ;
		}
		
		public function _8OoYj():Number {
			return this._7pnA7;
		}
		
	}

}