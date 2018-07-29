package com.alarex.visual.component 
{
	import flash.display.GradientType;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.text.TextFormatAlign;
	




	public class InfoSideBox extends Sprite 
	{
		
		[Embed(source='\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x2e\x2e\x2f\x6c\x69\x62\x2f\x76\x6f\x64\x61\x66\x6f\x6e\x65\x2e\x74\x74\x66', fontFamily="\x76\x6f\x64\x61\x46\x6f\x6e\x74")]
		public var _Qx8Y9:Class;
		
		public function InfoSideBox(bigString:String, smallString:String) 
		{
						
			this.cacheAsBitmap = true;
			
			var _K8ugz:Matrix = new Matrix();
			var _iG1Ot:Array =[0xffffff,0xffffff];  
			var _5r7oh:Array =[1,0.4];
			var _gO0MI:Array =[0,255];
			_K8ugz.createGradientBox(160, 78,0,0,0);
			this.graphics.beginGradientFill(GradientType.LINEAR, _iG1Ot, _5r7oh, _gO0MI, _K8ugz);
			this.graphics.drawRect(0, 0, 165, 78);
			this.graphics.endFill();
			
			var _lP3yl:Matrix = new Matrix();
			var _7m8cZ:Array =[0x000000,0x000000];  
			var _BRGo5:Array =[0.3,0.0];
			var _UU007:Array =[0,255];
			_lP3yl.createGradientBox(165, 3,Math.PI/2,0,79);
			this.graphics.beginGradientFill(GradientType.LINEAR, _7m8cZ, _BRGo5, _UU007, _lP3yl);
			this.graphics.drawRect(0, 78, 165, 165);
			this.graphics.endFill();
			
			
			
			
			var _R5E46:TextField = new TextField();
			_R5E46.selectable = false;
			
			_R5E46.antiAliasType = AntiAliasType.ADVANCED;
			_R5E46.embedFonts = true;
			
			_R5E46.text = bigString;
			_R5E46.alpha = 1;
			_R5E46.x = 0;
			_R5E46.y = 2;
					
			_R5E46.height = 40*2;
			
			var _Grihg:TextFormat = new TextFormat();
			_Grihg.align =  TextFormatAlign.CENTER;
			_Grihg.size = 40;
			_Grihg.font = "\x76\x6f\x64\x61\x46\x6f\x6e\x74";
			_Grihg.color = 0x7bac86;
			
			_R5E46.setTextFormat(_Grihg);
			_R5E46.width = 165;
			_R5E46.height = _R5E46.textHeight;
			
			this.addChild(_R5E46);
			
						
			var _97soU:TextField = new TextField();
			_97soU.selectable = false;
			
			_97soU.antiAliasType = AntiAliasType.ADVANCED;
			_97soU.embedFonts = true;
			
			_97soU.text = smallString;
			_97soU.alpha = 1;
			_97soU.x = 0;
			_97soU.y = 48;
					
			_97soU.height = 20*2;
			
			var _VcxPG:TextFormat = new TextFormat();
			_VcxPG.align =  TextFormatAlign.CENTER;
			_VcxPG.size = 15;
			_VcxPG.font = "\x76\x6f\x64\x61\x46\x6f\x6e\x74";
			_VcxPG.color = 0x333333;
			
			_97soU.setTextFormat(_VcxPG);
			_97soU.width = 165;
			_97soU.height = _97soU.textHeight;
			
			this.addChild(_97soU);
			
		}
		
	}

}