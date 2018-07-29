package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class SmallLabel extends Sprite 
	{
		
		[Embed(source='../../../../../lib/vodafone.ttf', fontFamily="vodaFont")]
		public var VodaFont:Class;
		
		private var lab:String;
		
		private var xres:Number;
		private var yres:Number;
		
		public function SmallLabel(label:String,size:Number,shine:Boolean,shadow:Boolean=true) 
		{
			this.cacheAsBitmap = true;
			
			this.lab = label;
			var xoff:Number = -0.8;
			
			if (shine) {
			
			var text3:TextField = new TextField();
			text3.selectable = false;
			text3.cacheAsBitmap = true;
			text3.antiAliasType = AntiAliasType.ADVANCED;
			text3.embedFonts = true;
			
			text3.text = lab;
			text3.alpha = 1;
			text3.x = xoff;
			text3.y = -1;
			text3.height = size * 2;
						
			var format3:TextFormat = new TextFormat();
			format3.size = size;
			format3.font = "vodaFont";
			format3.color = 0xdddddd;
			
			text3.setTextFormat(format3);
			text3.width = text3.textWidth + size;
			text3.height = text3.textHeight;
			
			this.addChild(text3);
			
			}
			
			if (shadow) {

			var text:TextField = new TextField();
			text.selectable = false;
			
			text.antiAliasType = AntiAliasType.ADVANCED;
			text.embedFonts = true;
			
			text.text = lab;
			text.alpha = 1;
			text.x = xoff;
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
			
			this.addChild(text);

			}
			
			var overlay:Sprite = new Sprite();
			
			var mat2:Matrix = new Matrix();
			var colors2:Array =[0x666666,0xffffff,0xffffff];  
			var alphas2:Array =[1,1,1];
			var ratios2:Array =[0,180,255];
			mat2.createGradientBox(1, 1,Math.PI/2,0,0);
			overlay.graphics.beginGradientFill(GradientType.LINEAR,colors2,alphas2,ratios2,mat2);
			overlay.graphics.drawRect(0, 0, 1, 1);
			overlay.graphics.endFill();
			overlay.cacheAsBitmap = true;
			this.addChild(overlay);
			
	
			var text2:TextField = new TextField();
			text2.selectable = false;
			
			text2.antiAliasType = AntiAliasType.ADVANCED;
			text2.embedFonts = true;
			text2.cacheAsBitmap = true;
			text2.text = lab;
			text2.alpha = 1;
			text2.x = 0;
			text2.y = 0;
			text2.height = size*2;
			
			var format2:TextFormat = new TextFormat();
			format2.size = size;
			format2.font = "vodaFont";
			format2.color = 0x000ff;
			
			text2.setTextFormat(format2);
			text2.width = text2.textWidth + size;
			text2.height = text2.textHeight;
			
			overlay.width = text2.width;
			overlay.height = text2.height;
			
			this.addChild(text2);
			overlay.cacheAsBitmap = true;
			//mask.cacheAsBitmap = true;
			overlay.mask = text2;
			
			this.xres = text2.textWidth;
			this.yres = text2.textHeight;
		}
		
		public function getXres():Number {
			return this.xres;
		}
		
		public function getYres():Number {
			return this.yres;
		}
		
	}

}