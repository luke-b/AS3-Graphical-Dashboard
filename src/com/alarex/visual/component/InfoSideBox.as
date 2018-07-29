package com.alarex.visual.component 
{
	import flash.display.GradientType;
	import flash.display.Sprite;
	import flash.geom.Matrix;
	
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.text.TextFormatAlign;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class InfoSideBox extends Sprite 
	{
		
		[Embed(source='../../../../../lib/vodafone.ttf', fontFamily="vodaFont")]
		public var VodaFont:Class;
		
		public function InfoSideBox(bigString:String, smallString:String) 
		{
			// 165x78
			
			this.cacheAsBitmap = true;
			
			var mat:Matrix = new Matrix();
			var colors:Array =[0xffffff,0xffffff];  
			var alphas:Array =[1,0.4];
			var ratios:Array =[0,255];
			mat.createGradientBox(160, 78,0,0,0);
			this.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, mat);
			this.graphics.drawRect(0, 0, 165, 78);
			this.graphics.endFill();
			
			var mat2:Matrix = new Matrix();
			var colors2:Array =[0x000000,0x000000];  
			var alphas2:Array =[0.3,0.0];
			var ratios2:Array =[0,255];
			mat2.createGradientBox(165, 3,Math.PI/2,0,79);
			this.graphics.beginGradientFill(GradientType.LINEAR, colors2, alphas2, ratios2, mat2);
			this.graphics.drawRect(0, 78, 165, 165);
			this.graphics.endFill();
			
			
			
			
			var text1:TextField = new TextField();
			text1.selectable = false;
			
			text1.antiAliasType = AntiAliasType.ADVANCED;
			text1.embedFonts = true;
			
			text1.text = bigString;
			text1.alpha = 1;
			text1.x = 0;
			text1.y = 2;
					
			text1.height = 40*2;
			
			var format1:TextFormat = new TextFormat();
			format1.align =  TextFormatAlign.CENTER;
			format1.size = 40;
			format1.font = "vodaFont";
			format1.color = 0x7bac86;
			
			text1.setTextFormat(format1);
			text1.width = 165;
			text1.height = text1.textHeight;
			
			this.addChild(text1);
			
			// ---
			
			var text2:TextField = new TextField();
			text2.selectable = false;
			
			text2.antiAliasType = AntiAliasType.ADVANCED;
			text2.embedFonts = true;
			
			text2.text = smallString;
			text2.alpha = 1;
			text2.x = 0;
			text2.y = 48;
					
			text2.height = 20*2;
			
			var format2:TextFormat = new TextFormat();
			format2.align =  TextFormatAlign.CENTER;
			format2.size = 15;
			format2.font = "vodaFont";
			format2.color = 0x333333;
			
			text2.setTextFormat(format2);
			text2.width = 165;
			text2.height = text2.textHeight;
			
			this.addChild(text2);
			
		}
		
	}

}