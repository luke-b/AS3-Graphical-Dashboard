package com.alarex.visual.component 
{
	import flash.display.Sprite;
	import flash.filters.BlurFilter;
	import flash.geom.Matrix;
	import flash.display.GradientType;
	import com.greensock.TweenLite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.AntiAliasType;
	import flash.display.Shape;
	
	
	/**
	 * ...
	 * @author Lukas Benda, luke.benda@gmail.com
	 */
	public class CylinderDigit extends Sprite 
	{
		
		[Embed(source='../../../../../lib/arialnb.ttf', fontFamily="verdFont")]
		public var VerdFont:Class;
		
		private var stripe1:Sprite = new Sprite();
		private var stripe2:Sprite = new Sprite();
		
		private var ty:int = 0;
		private var ty2:int = 0;
		
		private var currStripe:int = 0;
		private var lastValue:int = 0;
		
		private var fr:Sprite = new Sprite();
		private var fr2:Sprite = new Sprite();
		
		private var oldVal:int;
		
		public function CylinderDigit(red:Boolean) 
		{
			
			//this.cacheAsBitmap = true;
			
			var mat:Matrix = new Matrix();
			var colors:Array;
			
			if (red) {
				colors  = [0x190000, 0xee0000, 0xff0000, 0xee0000, 0x190000];
			} else {
				colors  = [0x191919, 0x888888, 0x999999, 0x888888, 0x191919];
			}
			
			var alphas:Array =[1,1,1,1,1];
			var ratios:Array =[0,100,128,150,255];
			mat.createGradientBox(70, 110, Math.PI / 2, 0, 0);
			//fr2.cacheAsBitmap = true;
			
			
			fr2.graphics.beginGradientFill(GradientType.LINEAR,colors,alphas,ratios,mat);
			fr2.graphics.drawRect(0, 0, 70, 110);
			fr2.graphics.endFill();
			
			this.addChild(fr2);
			
			
			
			fr.graphics.beginFill(0x000000); //background color
			fr.graphics.drawRect(66, 0, 4, 110);
			fr.graphics.endFill();
			//fr.cacheAsBitmap = true;
			this.addChild(fr);
			
			var maskShape:Shape = new Shape();
			maskShape.graphics.beginFill(0xffffff);
			maskShape.graphics.drawRect(0, 0, 70, 110);
			maskShape.graphics.endFill();
			
			this.addChild(maskShape);
			this.mask = maskShape;
			
			// num stripe generation
			
			for (var i:int = 0; i < 10; i++) {
			
				var text:TextField = new TextField();
				var spr1:Sprite = new Sprite();
				text.selectable = false;
			
				text.antiAliasType = AntiAliasType.ADVANCED;
				text.embedFonts = true;
			
				text.text = i+"";
				text.alpha = 1;
				text.x = 4;
				text.y = -16 + i * 110;
				text.height = 120;
			
				var format:TextFormat = new TextFormat();
				var spr2:Sprite = new Sprite();
				format.size = 120;
				format.font = "verdFont";
				format.color = 0xffffff;
				
			
				text.setTextFormat(format);
				
				var text2:TextField = new TextField();
				text2.selectable = false;
			
				text2.antiAliasType = AntiAliasType.ADVANCED;
			//	text2.embedFonts = true;
			
				text2.text = i+"";
				text2.alpha = 1;
				text2.x = 4;
				text2.y = -16 + i * 110;
				text2.height = 120;
			
				text2.setTextFormat(format);
					
				
				
				var mat2:Matrix = new Matrix();
				var colors2:Array =[0x777777,0xeeeeee,0xffffff,0xeeeeee,0x777777];  
				var alphas2:Array =[1,1,1,1,1];
				var ratios2:Array =[0,100,128,150,255];
				mat2.createGradientBox(70, 110,Math.PI/2,0,i*110);
				spr1.graphics.beginGradientFill(GradientType.LINEAR,colors2,alphas2,ratios2,mat2);
				spr1.graphics.drawRect(0, i*110, 70, 110);
				spr1.graphics.endFill();
			//	spr1.cacheAsBitmap = true;
			
				spr2.graphics.beginGradientFill(GradientType.LINEAR,colors2,alphas2,ratios2,mat2);
				spr2.graphics.drawRect(0, i*110, 70, 110);
				spr2.graphics.endFill();
			//	spr2.cacheAsBitmap = true;
				stripe1.addChild(spr1);
				stripe1.addChild(text);
				spr1.mask = text;
			//	stripe1.cacheAsBitmap = true;
				
				stripe2.addChild(spr2);
				stripe2.addChild(text2);
				spr2.mask = text2;
			//	stripe2.cacheAsBitmap = true;
				
							
			}
			
			
			this.addChild(stripe1);
			this.addChild(stripe2);
			stripe2.x = 110;
		}
		
	
	
	
		public function getRealWidth():Number {
			
			return (this.fr2.width);
			
		}
	
	public function changeNumber(numx:int):void {
		
		if (oldVal == numx) 
				return;
				
		oldVal = numx;
		
		var num:int = numx % 10;
		var m:String = "0123456789";
		
		var bf1:BlurFilter = new BlurFilter(0, 15);
		//var bf2:BlurFilter = new BlurFilter(0, 15);
			
		stripe1.filters = [bf1];
		//stripe2.filters = [bf2];
			
		TweenLite.to(stripe1, 0.5, {y: -num*110, blurFilter:{ blurY:0}});
		
		/*
		if (lastValue < num && num < 10) {
			if (currStripe == 0) {
				ty = -(num * 120);
				TweenLite.to(stripe1, 0.5, {y: ty, blurFilter:{ blurY:0}});
			} else {
				ty = -(num * 120);
				TweenLite.to(stripe2, 0.5, {y: ty, blurFilter:{ blurY:0}});
			}
		} else {
				if (currStripe == 0) {
			
					stripe2.x = 0;
					stripe2.y = stripe1.y + 10*120;  //10*110
			
					ty = -(num * 120);
					ty2 = ty + num*120; //10*110
			
					TweenLite.to(stripe1, 0.5, {y: ty2, blurFilter:{ blurY:0}});
					TweenLite.to(stripe2, 0.5, {y: ty, blurFilter:{ blurY:0}});
			
					currStripe = 1;
		} else {
			
					stripe1.x = 0;
					stripe1.y = stripe2.y + 10*120;
			
					ty = -(num * 120);
					ty2 = ty + num*120;
		
					TweenLite.to(stripe2, 0.5, {y: ty2, blurFilter:{ blurY:0}});
					TweenLite.to(stripe1, 0.5, {y: ty, blurFilter:{ blurY:0}});
			
					currStripe = 0;
			}
		}
		*/
	}

	}
}