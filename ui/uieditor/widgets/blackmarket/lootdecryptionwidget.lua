-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Effects.fxGlitch1_8")
require("ui.uieditor.widgets.Effects.fxGlitch1_7")
require("ui.uieditor.widgets.Effects.fxGlitch1_6")
require("ui.uieditor.widgets.Effects.fxGlitch1_5")
require("ui.uieditor.widgets.Effects.fxGlitch1_4")
require("ui.uieditor.widgets.Effects.fxGlitch1_3")
require("ui.uieditor.widgets.Effects.fxGlitch1_2")
require("ui.uieditor.widgets.Effects.fxGlitch1_1")
require("ui.uieditor.widgets.BlackMarket.BM_LineLightFX")
require("ui.uieditor.widgets.BlackMarket.BM_LineLight2FX")
require("ui.uieditor.widgets.BlackMarket.LootDecryptionImage")
require("ui.uieditor.widgets.BlackMarket.LootDecryptionFakeImageCycle")
require("ui.uieditor.widgets.BlackMarket.BM_LockItem")
require("ui.uieditor.widgets.BlackMarket.BM_PixelFX")
require("ui.uieditor.widgets.BlackMarket.BM_Pixel02FX")
require("ui.uieditor.widgets.BlackMarket.BM_Pixel03FX")
require("ui.uieditor.widgets.BlackMarket.BM_Pixel04FX")
require("ui.uieditor.widgets.BlackMarket.BM_Pixel05FX")
require("ui.uieditor.widgets.BlackMarket.BM_Pixel06FX")
require("ui.uieditor.widgets.BlackMarket.BM_Circuits02FX")
require("ui.uieditor.widgets.BlackMarket.BM_Circuits01FX")
require("ui.uieditor.widgets.BlackMarket.BM_FlyEmberFX")
require("ui.uieditor.widgets.BlackMarket.BM_ItemHintText")
require("ui.uieditor.widgets.BlackMarket.BM_TimeAndLootBanner")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LootDecryptionWidget = registerVal1
function CoD.LootDecryptionWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LootDecryptionWidget)
	registerVal2.id = "LootDecryptionWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 245.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 340.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 39.070000, 195.070000)
	registerVal3:setTopBottom(true, false, 360.920000, 386.920000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_focusglow3"))
	registerVal2:addElement(registerVal3)
	registerVal2.FocusBar3 = registerVal3
	local registerVal4 = CoD.fxGlitch1_8.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -127.000000, 127.000000)
	registerVal4:setTopBottom(true, false, 149.780000, 149.130000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.fxGlitch1800 = registerVal4
	local registerVal5 = CoD.fxGlitch1_7.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -127.000000, 127.000000)
	registerVal5:setTopBottom(true, false, 167.780000, 167.130000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.fxGlitch1700 = registerVal5
	local registerVal6 = CoD.fxGlitch1_6.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -126.940000, 126.650000)
	registerVal6:setTopBottom(true, false, 122.960000, 190.800000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.fxGlitch1600 = registerVal6
	local registerVal7 = CoD.fxGlitch1_5.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -65.780000, 45.780000)
	registerVal7:setTopBottom(true, false, 114.540000, 199.880000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.fxGlitch1500 = registerVal7
	local registerVal8 = CoD.fxGlitch1_4.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -127.780000, 126.000000)
	registerVal8:setTopBottom(true, false, 122.960000, 207.670000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.fxGlitch1400 = registerVal8
	local registerVal9 = CoD.fxGlitch1_3.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -127.000000, 126.000000)
	registerVal9:setTopBottom(true, false, 91.250000, 253.570000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.fxGlitch1300 = registerVal9
	local registerVal10 = CoD.fxGlitch1_2.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -128.780000, 126.000000)
	registerVal10:setTopBottom(true, false, 106.900000, 237.930000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.fxGlitch1200 = registerVal10
	local registerVal11 = CoD.fxGlitch1_1.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -126.940000, 126.000000)
	registerVal11:setTopBottom(true, false, 114.540000, 216.090000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.fxGlitch1100 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -157.500000, 155.500000)
	registerVal12:setTopBottom(false, false, -199.250000, 199.250000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_blackmarket_backing_glow"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Glow = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, -18.370000, 263.080000)
	registerVal13:setTopBottom(true, false, 30.250000, 368.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setScale(1.550000)
	registerVal13:setImage(RegisterImage("uie_t7_blackmarket_limited_backglow"))
	registerVal2:addElement(registerVal13)
	registerVal2.LimitedBackglow = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -30.000000, 29.000000)
	registerVal14:setTopBottom(true, true, -22.000000, 27.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_blackmarket_limited_backing"))
	registerVal2:addElement(registerVal14)
	registerVal2.LimitedBacking = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -30.000000, 29.000000)
	registerVal15:setTopBottom(true, true, -22.000000, 27.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_blackmarket_limited_backing_glint"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
	registerVal15:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.LimitedBackingGlint = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, -30.000000, 29.000000)
	registerVal16:setTopBottom(true, true, -22.000000, 27.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_blackmarket_epic_backing"))
	registerVal2:addElement(registerVal16)
	registerVal2.EpicBacking = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, false, -152.500000, 151.500000)
	registerVal17:setTopBottom(true, false, -22.000000, 367.000000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setImage(RegisterImage("uie_t7_blackmarket_legendary_backing"))
	registerVal2:addElement(registerVal17)
	registerVal2.LegendaryBacking = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, true, -30.000000, 29.000000)
	registerVal18:setTopBottom(true, true, -22.000000, 27.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_blackmarket_rare_backing"))
	registerVal2:addElement(registerVal18)
	registerVal2.RareBacking = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, true, -30.000000, 29.000000)
	registerVal19:setTopBottom(true, true, -22.000000, 27.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setImage(RegisterImage("uie_t7_blackmarket_common_backing"))
	registerVal2:addElement(registerVal19)
	registerVal2.CommonBacking = registerVal19
	local registerVal20 = CoD.BM_LineLightFX.new(arg0, arg1)
	registerVal20:setLeftRight(false, false, -149.500000, 150.500000)
	registerVal20:setTopBottom(true, false, -22.000000, 368.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.BMLineLightFX = registerVal20
	local registerVal21 = CoD.BM_LineLight2FX.new(arg0, arg1)
	registerVal21:setLeftRight(false, false, -150.500000, 150.500000)
	registerVal21:setTopBottom(true, false, -22.000000, 369.000000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.BMTriangleLightFX = registerVal21
	local registerVal22 = LUI.UIText.new()
	registerVal22:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal22:setTopBottom(false, false, 134.000000, 160.000000)
	registerVal22:setAlpha(0.000000)
	registerVal22:setTTF("fonts/escom.ttf")
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal22:setShaderVector(0.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal22:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal22:setLetterSpacing(1.000000)
	registerVal22:setLineSpacing(1.000000)
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal22:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_596E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal22:linkToElementModel(registerVal2, "rarityName", true, __FUNC_596E_)
	registerVal2:addElement(registerVal22)
	registerVal2.lootRarityTextWhite = registerVal22
	local registerVal23 = LUI.UIText.new()
	registerVal23:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal23:setTopBottom(false, false, 133.000000, 159.000000)
	registerVal23:setAlpha(0.000000)
	registerVal23:setTTF("fonts/escom.ttf")
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal23:setShaderVector(0.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal23:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal23:setLetterSpacing(1.000000)
	registerVal23:setLineSpacing(1.000000)
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal23:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_5A27_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal23:linkToElementModel(registerVal2, "rarityName", true, __FUNC_5A27_)
	registerVal2:addElement(registerVal23)
	registerVal2.lootRarityText = registerVal23
	local registerVal24 = LUI.UIText.new()
	registerVal24:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal24:setTopBottom(false, false, 89.060000, 109.060000)
	registerVal24:setAlpha(0.000000)
	registerVal24:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal24:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_5ADF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal24:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal24:linkToElementModel(registerVal2, "raritySet", true, __FUNC_5ADF_)
	registerVal2:addElement(registerVal24)
	registerVal2.lootRaritySet = registerVal24
	local registerVal25 = LUI.UIText.new()
	registerVal25:setLeftRight(true, true, -1.000000, 0.000000)
	registerVal25:setTopBottom(false, false, 51.060000, 71.060000)
	registerVal25:setAlpha(0.000000)
	registerVal25:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal25:setLetterSpacing(0.200000)
	registerVal25:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal25:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_5B96_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal25:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal25:linkToElementModel(registerVal2, "categoryName", true, __FUNC_5B96_)
	registerVal2:addElement(registerVal25)
	registerVal2.lootCategory = registerVal25
	local registerVal26 = LUI.UIText.new()
	registerVal26:setLeftRight(true, true, -1.000000, 0.000000)
	registerVal26:setTopBottom(false, false, 31.060000, 51.060000)
	registerVal26:setAlpha(0.000000)
	registerVal26:setTTF("fonts/escom.ttf")
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal26:setShaderVector(0.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal26:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal26:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal26:setLetterSpacing(1.000000)
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal26:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_5C4F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal26:setRGB(RarityToColor(registerVal1))
		end
	end

	registerVal26:linkToElementModel(registerVal2, "rarityName", true, __FUNC_5C4F_)
	local function __FUNC_5CFE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal26:setText(LocalizeToUpperString(registerVal1))
		end
	end

	registerVal26:linkToElementModel(registerVal2, "displayText", true, __FUNC_5CFE_)
	registerVal2:addElement(registerVal26)
	registerVal2.lootName = registerVal26
	local registerVal27 = CoD.LootDecryptionImage.new(arg0, arg1)
	registerVal27:setLeftRight(false, false, -127.500000, 126.500000)
	registerVal27:setTopBottom(true, false, -57.000000, 292.000000)
	registerVal27:setAlpha(0.000000)
	local function __FUNC_5DB7_(arg0)
		registerVal27:setModel(arg0, arg1)
	end

	registerVal27:linkToElementModel(registerVal2, nil, false, __FUNC_5DB7_)
	registerVal2:addElement(registerVal27)
	registerVal2.LootDecryptionImage = registerVal27
	local registerVal28 = CoD.LootDecryptionFakeImageCycle.new(arg0, arg1)
	registerVal28:setLeftRight(true, true, -9.500000, 9.500000)
	registerVal28:setTopBottom(true, true, 25.000000, -28.000000)
	registerVal28:setAlpha(0.000000)
	local function __FUNC_5E06_(arg0)
		registerVal28:setModel(arg0, arg1)
	end

	registerVal28:linkToElementModel(registerVal2, nil, false, __FUNC_5E06_)
	registerVal2:addElement(registerVal28)
	registerVal2.LootDecryptionFakeImageCycle = registerVal28
	local registerVal29 = CoD.BM_LockItem.new(arg0, arg1)
	registerVal29:setLeftRight(true, true, 0.000000, -0.940000)
	registerVal29:setTopBottom(true, true, 244.560000, -48.440000)
	registerVal29:setAlpha(0.000000)
	local function __FUNC_5E56_(arg0)
		registerVal29:setModel(arg0, arg1)
	end

	registerVal29:linkToElementModel(registerVal2, nil, false, __FUNC_5E56_)
	local function __FUNC_5EA6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal29.desc:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal29:linkToElementModel(registerVal2, "lockAvailabilityText", true, __FUNC_5EA6_)
	local function __FUNC_5F78_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal29.title:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal29:linkToElementModel(registerVal2, "lockItemText", true, __FUNC_5F78_)
	local registerVal32 = {}
	local registerVal33 = {}
	registerVal33.stateName = "Visible"
	local function __FUNC_604D_(arg0, arg2, arg3)
		return IsSelfModelValueNonEmptyString(arg2, arg1, "lockItemText")
	end

	registerVal33.condition = __FUNC_604D_
	registerVal32 = {registerVal33}
	registerVal29:mergeStateConditions(registerVal32)
	local function __FUNC_60CE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lockItemText"
		arg0:updateElementState(registerVal29, registerVal4)
	end

	registerVal29:linkToElementModel(registerVal29, "lockItemText", true, __FUNC_60CE_)
	registerVal2:addElement(registerVal29)
	registerVal2.BMLockItem = registerVal29
	local registerVal30 = LUI.UIImage.new()
	registerVal30:setLeftRight(true, true, -69.000000, 67.000000)
	registerVal30:setTopBottom(true, true, -62.000000, 69.000000)
	registerVal30:setAlpha(0.000000)
	registerVal30:setImage(RegisterImage("uie_t7_blackmarket_backing_glow100"))
	registerVal2:addElement(registerVal30)
	registerVal2.GLOWrare = registerVal30
	local registerVal31 = LUI.UIImage.new()
	registerVal31:setLeftRight(true, true, -71.000000, 67.000000)
	registerVal31:setTopBottom(true, true, -64.000000, 72.000000)
	registerVal31:setAlpha(0.000000)
	registerVal31:setImage(RegisterImage("uie_t7_blackmarket_backing_glowlegendary"))
	registerVal2:addElement(registerVal31)
	registerVal2.GLOWLengendary = registerVal31
	registerVal32 = LUI.UIImage.new()
	registerVal32:setLeftRight(true, true, -69.000000, 69.000000)
	registerVal32:setTopBottom(true, true, -65.000000, 69.000000)
	registerVal32:setAlpha(0.000000)
	registerVal32:setImage(RegisterImage("uie_t7_blackmarket_backing_epicglow"))
	registerVal2:addElement(registerVal32)
	registerVal2.GLOWEpic = registerVal32
	registerVal33 = LUI.UIImage.new()
	registerVal33:setLeftRight(true, true, -63.000000, 64.000000)
	registerVal33:setTopBottom(true, true, -59.000000, 63.000000)
	registerVal33:setAlpha(0.000000)
	registerVal33:setImage(RegisterImage("uie_t7_blackmarket_backing_glow_common"))
	registerVal2:addElement(registerVal33)
	registerVal2.GLOWcommon = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(true, true, -65.000000, 65.000000)
	registerVal34:setTopBottom(true, true, -64.000000, 66.000000)
	registerVal34:setRGB(1.000000, 0.670000, 0.000000)
	registerVal34:setAlpha(0.000000)
	registerVal34:setScale(1.200000)
	registerVal34:setImage(RegisterImage("uie_t7_blackmarket_backing_boxblur"))
	registerVal2:addElement(registerVal34)
	registerVal2.blurbox = registerVal34
	local registerVal35 = CoD.BM_PixelFX.new(arg0, arg1)
	registerVal35:setLeftRight(true, true, -63.000000, 64.000000)
	registerVal35:setTopBottom(true, true, -64.000000, 62.000000)
	registerVal35:setRGB(1.000000, 0.670000, 0.000000)
	registerVal35:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal35)
	registerVal2.BMPixelFX = registerVal35
	local registerVal36 = CoD.BM_Pixel02FX.new(arg0, arg1)
	registerVal36:setLeftRight(true, true, -63.000000, 64.000000)
	registerVal36:setTopBottom(true, true, -64.000000, 62.000000)
	registerVal36:setRGB(1.000000, 0.670000, 0.000000)
	registerVal36:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal36)
	registerVal2.BMPixel02FX = registerVal36
	local registerVal37 = CoD.BM_Pixel03FX.new(arg0, arg1)
	registerVal37:setLeftRight(true, true, -63.000000, 64.000000)
	registerVal37:setTopBottom(true, true, -64.000000, 62.000000)
	registerVal37:setRGB(1.000000, 0.670000, 0.000000)
	registerVal37:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal37)
	registerVal2.BMPixel03FX = registerVal37
	local registerVal38 = CoD.BM_Pixel04FX.new(arg0, arg1)
	registerVal38:setLeftRight(true, true, -63.000000, 64.000000)
	registerVal38:setTopBottom(true, true, -64.000000, 62.000000)
	registerVal38:setRGB(1.000000, 0.670000, 0.000000)
	registerVal38:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal38)
	registerVal2.BMPixel04FX = registerVal38
	local registerVal39 = CoD.BM_Pixel05FX.new(arg0, arg1)
	registerVal39:setLeftRight(true, true, -68.000000, 59.000000)
	registerVal39:setTopBottom(true, true, -64.000000, 62.000000)
	registerVal39:setAlpha(0.000000)
	registerVal39:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal39)
	registerVal2.BMPixel05FX = registerVal39
	local registerVal40 = CoD.BM_Pixel06FX.new(arg0, arg1)
	registerVal40:setLeftRight(true, true, -68.000000, 59.000000)
	registerVal40:setTopBottom(true, true, -64.000000, 62.000000)
	registerVal40:setAlpha(0.000000)
	registerVal40:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal40)
	registerVal2.BMPixel06FX = registerVal40
	local registerVal41 = LUI.UIImage.new()
	registerVal41:setLeftRight(true, true, -30.000000, 29.000000)
	registerVal41:setTopBottom(true, true, -22.000000, 27.000000)
	registerVal41:setAlpha(0.000000)
	registerVal41:setImage(RegisterImage("uie_t7_blackmarket_common_backing_underglow"))
	registerVal2:addElement(registerVal41)
	registerVal2.LightCommon = registerVal41
	local registerVal42 = LUI.UIImage.new()
	registerVal42:setLeftRight(true, true, -30.000000, 29.000000)
	registerVal42:setTopBottom(true, true, -22.000000, 27.000000)
	registerVal42:setAlpha(0.000000)
	registerVal42:setImage(RegisterImage("uie_t7_blackmarket_rare_backing_underglow"))
	registerVal2:addElement(registerVal42)
	registerVal2.LightRare = registerVal42
	local registerVal43 = LUI.UIImage.new()
	registerVal43:setLeftRight(true, true, -30.000000, 29.000000)
	registerVal43:setTopBottom(true, true, -22.000000, 27.000000)
	registerVal43:setAlpha(0.000000)
	registerVal43:setImage(RegisterImage("uie_t7_blackmarket_legendary_backing_underglow"))
	registerVal2:addElement(registerVal43)
	registerVal2.LightLegendary = registerVal43
	local registerVal44 = LUI.UIImage.new()
	registerVal44:setLeftRight(true, true, -30.000000, 29.000000)
	registerVal44:setTopBottom(true, true, -22.000000, 27.000000)
	registerVal44:setAlpha(0.000000)
	registerVal44:setImage(RegisterImage("uie_t7_blackmarket_epic_backing_underglow"))
	registerVal2:addElement(registerVal44)
	registerVal2.LightEpic = registerVal44
	local registerVal45 = LUI.UIImage.new()
	registerVal45:setLeftRight(true, true, -30.000000, 29.000000)
	registerVal45:setTopBottom(true, true, -22.000000, 27.000000)
	registerVal45:setAlpha(0.000000)
	registerVal45:setImage(RegisterImage("uie_t7_blackmarket_limited_selected"))
	registerVal2:addElement(registerVal45)
	registerVal2.LightLimited = registerVal45
	local registerVal46 = LUI.UIImage.new()
	registerVal46:setLeftRight(true, false, -21.940000, 267.940000)
	registerVal46:setTopBottom(true, false, -13.400000, 358.400000)
	registerVal46:setAlpha(0.000000)
	registerVal46:setImage(RegisterImage("uie_t7_blackmarket_epic_ember"))
	registerVal2:addElement(registerVal46)
	registerVal2.EpicEmber5 = registerVal46
	local registerVal47 = LUI.UIImage.new()
	registerVal47:setLeftRight(true, false, -21.940000, 267.940000)
	registerVal47:setTopBottom(true, false, -13.400000, 358.400000)
	registerVal47:setAlpha(0.000000)
	registerVal47:setImage(RegisterImage("uie_t7_blackmarket_epic_ember4"))
	registerVal2:addElement(registerVal47)
	registerVal2.EpicEmber4 = registerVal47
	local registerVal48 = LUI.UIImage.new()
	registerVal48:setLeftRight(true, false, -21.940000, 267.940000)
	registerVal48:setTopBottom(true, false, -13.400000, 358.400000)
	registerVal48:setAlpha(0.000000)
	registerVal48:setImage(RegisterImage("uie_t7_blackmarket_epic_ember3"))
	registerVal2:addElement(registerVal48)
	registerVal2.EpicEmber3 = registerVal48
	local registerVal49 = LUI.UIImage.new()
	registerVal49:setLeftRight(true, false, -21.940000, 267.940000)
	registerVal49:setTopBottom(true, false, -13.400000, 358.400000)
	registerVal49:setAlpha(0.000000)
	registerVal49:setScale(2.000000)
	registerVal49:setImage(RegisterImage("uie_t7_blackmarket_epic_ember-02"))
	registerVal2:addElement(registerVal49)
	registerVal2.EpicEmber2 = registerVal49
	local registerVal50 = LUI.UIImage.new()
	registerVal50:setLeftRight(true, false, -21.940000, 267.940000)
	registerVal50:setTopBottom(true, false, -13.400000, 358.400000)
	registerVal50:setAlpha(0.000000)
	registerVal50:setScale(2.000000)
	registerVal50:setImage(RegisterImage("uie_t7_blackmarket_epic_ember1"))
	registerVal2:addElement(registerVal50)
	registerVal2.EpicEmber1 = registerVal50
	local registerVal51 = LUI.UIImage.new()
	registerVal51:setLeftRight(true, true, -30.000000, 29.000000)
	registerVal51:setTopBottom(true, true, -22.000000, 27.000000)
	registerVal51:setAlpha(0.000000)
	registerVal51:setImage(RegisterImage("uie_t7_blackmarket_limited_backing_underglow"))
	registerVal2:addElement(registerVal51)
	registerVal2.LimitedBackingFocus = registerVal51
	local registerVal52 = LUI.UIImage.new()
	registerVal52:setLeftRight(true, false, -57.000000, 303.000000)
	registerVal52:setTopBottom(true, false, -42.000000, 390.000000)
	registerVal52:setAlpha(0.000000)
	registerVal52:setImage(RegisterImage("uie_t7_blackmarket_limited_wave1"))
	registerVal2:addElement(registerVal52)
	registerVal2.LimitedWave1 = registerVal52
	local registerVal53 = LUI.UIImage.new()
	registerVal53:setLeftRight(true, false, -57.000000, 303.000000)
	registerVal53:setTopBottom(true, false, -42.000000, 390.000000)
	registerVal53:setAlpha(0.000000)
	registerVal53:setImage(RegisterImage("uie_t7_blackmarket_limited_wave2"))
	registerVal2:addElement(registerVal53)
	registerVal2.LimitedWave2 = registerVal53
	local registerVal54 = LUI.UIImage.new()
	registerVal54:setLeftRight(true, false, -57.000000, 303.000000)
	registerVal54:setTopBottom(true, false, -42.000000, 390.000000)
	registerVal54:setAlpha(0.000000)
	registerVal54:setImage(RegisterImage("uie_t7_blackmarket_limited_wave3"))
	registerVal2:addElement(registerVal54)
	registerVal2.LimitedWave3 = registerVal54
	local registerVal55 = CoD.BM_Circuits02FX.new(arg0, arg1)
	registerVal55:setLeftRight(true, true, -68.000000, 59.000000)
	registerVal55:setTopBottom(true, true, -64.000000, 62.000000)
	registerVal55:setAlpha(0.000000)
	registerVal55:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal55)
	registerVal2.BMCircuits02FX = registerVal55
	local registerVal56 = CoD.BM_Circuits01FX.new(arg0, arg1)
	registerVal56:setLeftRight(true, true, -68.000000, 59.000000)
	registerVal56:setTopBottom(true, true, -64.000000, 62.000000)
	registerVal56:setAlpha(0.000000)
	registerVal56:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal56)
	registerVal2["BMCircuits01FX"] = registerVal56
	local registerVal57 = LUI.UIImage.new()
	registerVal57:setLeftRight(true, false, -25.500000, 282.000000)
	registerVal57:setTopBottom(true, false, -44.000000, 366.050000)
	registerVal57:setAlpha(0.000000)
	registerVal57:setImage(RegisterImage("uie_t7_blackmarket_epic_skull"))
	registerVal57:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook_animated"))
	registerVal57:setShaderVector(0.000000, 27.000000, 1.000000, 0.000000, 0.000000)
	registerVal57:setShaderVector(1.000000, 35.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal57)
	registerVal2["epicSkull"] = registerVal57
	local registerVal58 = LUI.UIImage.new()
	registerVal58:setLeftRight(true, false, -21.940000, 267.940000)
	registerVal58:setTopBottom(true, false, -13.400000, 358.400000)
	registerVal58:setAlpha(0.000000)
	registerVal58:setScale(2.000000)
	registerVal58:setImage(RegisterImage("uie_t7_blackmarket_legendary_ember1"))
	registerVal2:addElement(registerVal58)
	registerVal2["LegendaryEmber1"] = registerVal58
	local registerVal59 = LUI.UIImage.new()
	registerVal59:setLeftRight(true, false, -21.940000, 267.940000)
	registerVal59:setTopBottom(true, false, -13.400000, 358.400000)
	registerVal59:setAlpha(0.000000)
	registerVal59:setScale(2.000000)
	registerVal59:setImage(RegisterImage("uie_t7_blackmarket_legendary_ember2"))
	registerVal2:addElement(registerVal59)
	registerVal2["LegendaryEmber2"] = registerVal59
	local registerVal60 = LUI.UIImage.new()
	registerVal60:setLeftRight(true, false, -21.940000, 267.940000)
	registerVal60:setTopBottom(true, false, -13.400000, 358.400000)
	registerVal60:setAlpha(0.000000)
	registerVal60:setImage(RegisterImage("uie_t7_blackmarket_legendary_ember3"))
	registerVal2:addElement(registerVal60)
	registerVal2["LegendaryEmber3"] = registerVal60
	local registerVal61 = LUI.UIImage.new()
	registerVal61:setLeftRight(true, false, -21.940000, 267.940000)
	registerVal61:setTopBottom(true, false, -13.400000, 358.400000)
	registerVal61:setAlpha(0.000000)
	registerVal61:setImage(RegisterImage("uie_t7_blackmarket_legendary_ember4"))
	registerVal2:addElement(registerVal61)
	registerVal2["LegendaryEmber4"] = registerVal61
	local registerVal62 = LUI.UIImage.new()
	registerVal62:setLeftRight(true, false, -21.940000, 267.940000)
	registerVal62:setTopBottom(true, false, -13.400000, 358.400000)
	registerVal62:setAlpha(0.000000)
	registerVal62:setImage(RegisterImage("uie_t7_blackmarket_legendary_ember5"))
	registerVal2:addElement(registerVal62)
	registerVal2["LegendaryEmber5"] = registerVal62
	local registerVal63 = CoD["BM_FlyEmberFX"].new(arg0, arg1)
	registerVal63:setLeftRight(true, false, 189.500000, 249.500000)
	registerVal63:setTopBottom(true, false, -6.000000, 54.000000)
	registerVal63:setAlpha(0.000000)
	registerVal2:addElement(registerVal63)
	registerVal2["BMFlyEmberFX"] = registerVal63
	local registerVal64 = CoD["BM_FlyEmberFX"].new(arg0, arg1)
	registerVal64:setLeftRight(true, false, -9.500000, 50.500000)
	registerVal64:setTopBottom(true, false, 292.000000, 352.000000)
	registerVal64:setAlpha(0.000000)
	registerVal64:"setZRot"(180.000000)
	registerVal2:addElement(registerVal64)
	registerVal2["BMFlyEmberFX0"] = registerVal64
	local registerVal65 = CoD["BM_ItemHintText"].new(arg0, arg1)
	registerVal65:setLeftRight(false, false, -82.000000, 82.000000)
	registerVal65:setTopBottom(false, true, 22.000000, 52.000000)
	registerVal65:setAlpha(0.000000)
	registerVal65["textCenterAlign"]:"setText"(Engine["Localize"]("MPUI_EQUIP_PROMPT"))
	registerVal65["textCenterAlign"]:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_61EE_(arg0)
		registerVal65:setModel(arg0, arg1)
	end

	registerVal65:linkToElementModel(registerVal2, nil, false, __FUNC_61EE_)
	local registerVal68 = {}
	local registerVal69 = {}
	registerVal69.stateName = "PCHidden"
	local function __FUNC_623E_(arg0, arg1, arg2)
		return IsPC()
	end

	registerVal69.condition = __FUNC_623E_
	local registerVal70 = {}
	registerVal70.stateName = "NoHintText"
	local function __FUNC_6282_(arg0, arg2, arg3)
		local registerVal3 = BlackMarketListItemCanEquip(arg2, arg1)
		return (not registerVal3)
	end

	registerVal70.condition = __FUNC_6282_
	local registerVal71 = {}
	registerVal71.stateName = "CenterAlign"
	local function __FUNC_62E9_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal71.condition = __FUNC_62E9_
	registerVal68 = {registerVal69, registerVal70, registerVal71}
	registerVal65:mergeStateConditions(registerVal68)
	local function __FUNC_6334_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "category"
		arg0:updateElementState(registerVal65, registerVal4)
	end

	registerVal65:linkToElementModel(registerVal65, "category", true, __FUNC_6334_)
	registerVal2:addElement(registerVal65)
	registerVal2["itemHintText"] = registerVal65
	local registerVal66 = CoD["BM_TimeAndLootBanner"].new(arg0, arg1)
	registerVal66:setLeftRight(true, false, 0.000000, 245.000000)
	registerVal66:setTopBottom(true, false, 3.000000, 41.000000)
	registerVal66["BMDateTimeAndTotalCount"]:setAlpha(0.000000)
	local function __FUNC_6452_(arg0)
		registerVal66:setModel(arg0, arg1)
	end

	registerVal66:linkToElementModel(registerVal2, nil, false, __FUNC_6452_)
	local function __FUNC_64A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal66.BMDateTimeAndTotalCount.backing:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal66:linkToElementModel(registerVal2, "dateTime", true, __FUNC_64A2_)
	local function __FUNC_65A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal66:linkToElementModel(registerVal2, "dateTime", true, __FUNC_65A2_)
	local function __FUNC_66AD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal66.BMDateTimeAndTotalCount.TotalCount:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal66:linkToElementModel(registerVal2, "duplicateText", true, __FUNC_66AD_)
	local function __FUNC_67B3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal66.LootBannerText:setText(Engine.Localize(GetCurrentContrabandString(arg1, registerVal1)))
		end
	end

	registerVal66:linkToElementModel(registerVal2, "drop", true, __FUNC_67B3_)
	registerVal69 = {}
	registerVal70 = {}
	registerVal70.stateName = "LimitedItemBanner"
	local function __FUNC_68BE_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal70.condition = __FUNC_68BE_
	registerVal71 = {}
	registerVal71.stateName = "LootBanner"
	local function __FUNC_6909_(arg0, arg2, arg3)
		return IsLootItemFromCurrentContraband(registerVal2, arg1)
	end

	registerVal71.condition = __FUNC_6909_
	registerVal69 = {registerVal70, registerVal71}
	registerVal66:mergeStateConditions(registerVal69)
	registerVal2:addElement(registerVal66)
	registerVal2["BMTimeAndLootBanner"] = registerVal66
	local registerVal67 = LUI.UIImage.new()
	registerVal67:setLeftRight(true, false, -67.750000, 312.250000)
	registerVal67:setTopBottom(true, false, -64.000000, 412.000000)
	registerVal67:setAlpha(0.000000)
	registerVal67:setImage(RegisterImage("uie_t7_blackmarket_limited_circuits"))
	registerVal2:addElement(registerVal67)
	registerVal2["Circuits"] = registerVal67
	registerVal68 = LUI.UIImage.new()
	registerVal68:setLeftRight(true, false, -67.750000, 312.250000)
	registerVal68:setTopBottom(true, false, -64.000000, 412.000000)
	registerVal68:setAlpha(0.000000)
	registerVal68:setImage(RegisterImage("uie_t7_blackmarket_limited_circuits_bright"))
	registerVal2:addElement(registerVal68)
	registerVal2["CircuitsBright"] = registerVal68
	registerVal69 = LUI.UIImage.new()
	registerVal69:setLeftRight(true, false, -91.160000, 338.740000)
	registerVal69:setTopBottom(true, false, -96.930000, 442.550000)
	registerVal69:setAlpha(0.000000)
	registerVal69:setImage(RegisterImage("uie_t7_blackmarket_limited_circuits_brightblur1"))
	registerVal2:addElement(registerVal69)
	registerVal2["CircuitsBrightBlur1"] = registerVal69
	registerVal70 = LUI.UIImage.new()
	registerVal70:setLeftRight(true, false, -91.160000, 338.740000)
	registerVal70:setTopBottom(true, false, -96.930000, 442.550000)
	registerVal70:setAlpha(0.000000)
	registerVal70:setImage(RegisterImage("uie_t7_blackmarket_limited_circuits_brightblur2"))
	registerVal2:addElement(registerVal70)
	registerVal2["CircuitsBrightBlur2"] = registerVal70
	registerVal71 = LUI.UIImage.new()
	registerVal71:setLeftRight(true, false, -18.370000, 263.080000)
	registerVal71:setTopBottom(true, false, 30.250000, 368.000000)
	registerVal71:setAlpha(0.000000)
	registerVal71:setScale(1.550000)
	registerVal71:setImage(RegisterImage("uie_t7_blackmarket_limited_backglow"))
	registerVal2:addElement(registerVal71)
	registerVal2["LimitedBackglowFlash"] = registerVal71
	local registerVal73 = {}
	local registerVal75 = {}
	local function __FUNC_6971_()
		registerVal2:setupElementClipCounter(25.000000)
		registerVal14:completeAnimation()
		registerVal2.LimitedBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.lootRarityTextWhite:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal34:completeAnimation()
		registerVal2.blurbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal34, {})
		registerVal35:completeAnimation()
		registerVal2.BMPixelFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.BMPixel02FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal36, {})
		registerVal37:completeAnimation()
		registerVal2.BMPixel03FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal37, {})
		registerVal38:completeAnimation()
		registerVal2.BMPixel04FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal38, {})
		registerVal39:completeAnimation()
		registerVal2.BMPixel05FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal39, {})
		registerVal40:completeAnimation()
		registerVal2.BMPixel06FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal40, {})
		registerVal41:completeAnimation()
		registerVal2.LightCommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal41, {})
		registerVal42:completeAnimation()
		registerVal2.LightRare:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal42, {})
		registerVal43:completeAnimation()
		registerVal2.LightLegendary:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal43, {})
		registerVal44:completeAnimation()
		registerVal2.LightEpic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal44, {})
		registerVal65:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal65, {})
		registerVal66:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal66, {})
	end

	registerVal75["DefaultClip"] = __FUNC_6971_
	local function __FUNC_72FE_()
		registerVal2:setupElementClipCounter(21.000000)
		local function __FUNC_7C46_(arg0, arg1)
			local function __FUNC_7DBF_(arg0, arg1)
				local function __FUNC_7F37_(arg0, arg1)
					local function __FUNC_80AF_(arg0, arg1)
						local function __FUNC_8227_(arg0, arg1)
							local function __FUNC_837C_(arg0, arg1)
								local function __FUNC_84F7_(arg0, arg1)
									local function __FUNC_866F_(arg0, arg1)
										local function __FUNC_87C4_(arg0, arg1)
											local function __FUNC_891C_(arg0, arg1)
												local function __FUNC_8A97_(arg0, arg1)
													local function __FUNC_8BEC_(arg0, arg1)
														local function __FUNC_8D67_(arg0, arg1)
															local function __FUNC_8EBC_(arg0, arg1)
																local function __FUNC_9037_(arg0, arg1)
																	local function __FUNC_918C_(arg0, arg1)
																		local function __FUNC_9307_(arg0, arg1)
																			local function __FUNC_945C_(arg0, arg1)
																				local function __FUNC_95D7_(arg0, arg1)
																					local function __FUNC_974F_(arg0, arg1)
																						local function __FUNC_98C7_(arg0, arg1)
																							local function __FUNC_9A1C_(arg0, arg1)
																								local function __FUNC_9B97_(arg0, arg1)
																									local function __FUNC_9D0F_(arg0, arg1)
																										local function __FUNC_9E64_(arg0, arg1)
																											local function __FUNC_9FDF_(arg0, arg1)
																												local function __FUNC_A134_(arg0, arg1)
																													local function __FUNC_A2AF_(arg0, arg1)
																														local function __FUNC_A404_(arg0, arg1)
																															local function __FUNC_A57F_(arg0, arg1)
																																local function __FUNC_A6F7_(arg0, arg1)
																																	local function __FUNC_A84C_(arg0, arg1)
																																		local function __FUNC_A9C7_(arg0, arg1)
																																			if not arg1.interrupted then
																																				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																			end
																																			arg0:setAlpha(0.000000)
																																			if arg1.interrupted then
																																				registerVal2.clipFinished(arg0, arg1)
																																			else
																																				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																			end
																																		end

																																		if arg1.interrupted then
																																			__FUNC_A9C7_(arg0, arg1)
																																			return 
																																		end
																																		arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																																		arg0:setAlpha(0.720000)
																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9C7_)
																																	end

																																	if arg1.interrupted then
																																		__FUNC_A84C_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A84C_)
																																end

																																if arg1.interrupted then
																																	__FUNC_A6F7_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																																arg0:setAlpha(0.000000)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6F7_)
																															end

																															if arg1.interrupted then
																																__FUNC_A57F_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																															arg0:setAlpha(1.000000)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A57F_)
																														end

																														if arg1.interrupted then
																															__FUNC_A404_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A404_)
																													end

																													if arg1.interrupted then
																														__FUNC_A2AF_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																													arg0:setAlpha(0.000000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2AF_)
																												end

																												if arg1.interrupted then
																													__FUNC_A134_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A134_)
																											end

																											if arg1.interrupted then
																												__FUNC_9FDF_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																											arg0:setAlpha(0.800000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FDF_)
																										end

																										if arg1.interrupted then
																											__FUNC_9E64_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E64_)
																									end

																									if arg1.interrupted then
																										__FUNC_9D0F_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																									arg0:setAlpha(0.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D0F_)
																								end

																								if arg1.interrupted then
																									__FUNC_9B97_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																								arg0:setAlpha(0.550000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B97_)
																							end

																							if arg1.interrupted then
																								__FUNC_9A1C_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A1C_)
																						end

																						if arg1.interrupted then
																							__FUNC_98C7_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																						arg0:setAlpha(0.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98C7_)
																					end

																					if arg1.interrupted then
																						__FUNC_974F_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																					arg0:setAlpha(0.690000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_974F_)
																				end

																				if arg1.interrupted then
																					__FUNC_95D7_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																				arg0:setAlpha(0.310000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95D7_)
																			end

																			if arg1.interrupted then
																				__FUNC_945C_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_945C_)
																		end

																		if arg1.interrupted then
																			__FUNC_9307_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																		arg0:setAlpha(0.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9307_)
																	end

																	if arg1.interrupted then
																		__FUNC_918C_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_918C_)
																end

																if arg1.interrupted then
																	__FUNC_9037_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(1.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9037_)
															end

															if arg1.interrupted then
																__FUNC_8EBC_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8EBC_)
														end

														if arg1.interrupted then
															__FUNC_8D67_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D67_)
													end

													if arg1.interrupted then
														__FUNC_8BEC_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BEC_)
												end

												if arg1.interrupted then
													__FUNC_8A97_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A97_)
											end

											if arg1.interrupted then
												__FUNC_891C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_891C_)
										end

										if arg1.interrupted then
											__FUNC_87C4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87C4_)
									end

									if arg1.interrupted then
										__FUNC_866F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_866F_)
								end

								if arg1.interrupted then
									__FUNC_84F7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84F7_)
							end

							if arg1.interrupted then
								__FUNC_837C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_837C_)
						end

						if arg1.interrupted then
							__FUNC_8227_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8227_)
					end

					if arg1.interrupted then
						__FUNC_80AF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 0.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80AF_)
				end

				if arg1.interrupted then
					__FUNC_7F37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F37_)
			end

			if arg1.interrupted then
				__FUNC_7DBF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DBF_)
		end

		registerVal4:completeAnimation()
		registerVal2.fxGlitch1800:setAlpha(0.000000)
		__FUNC_7C46_(registerVal4, {})
		local function __FUNC_AB79_(arg0, arg1)
			local function __FUNC_ACF3_(arg0, arg1)
				local function __FUNC_AE6B_(arg0, arg1)
					local function __FUNC_AFE3_(arg0, arg1)
						local function __FUNC_B138_(arg0, arg1)
							local function __FUNC_B2B3_(arg0, arg1)
								local function __FUNC_B408_(arg0, arg1)
									local function __FUNC_B583_(arg0, arg1)
										local function __FUNC_B6D8_(arg0, arg1)
											local function __FUNC_B853_(arg0, arg1)
												local function __FUNC_B9CB_(arg0, arg1)
													local function __FUNC_BB43_(arg0, arg1)
														local function __FUNC_BC98_(arg0, arg1)
															local function __FUNC_BE13_(arg0, arg1)
																local function __FUNC_BF8B_(arg0, arg1)
																	if not arg1.interrupted then
																		arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																	end
																	arg0:setAlpha(0.000000)
																	if arg1.interrupted then
																		registerVal2.clipFinished(arg0, arg1)
																	else
																		arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																	end
																end

																if arg1.interrupted then
																	__FUNC_BF8B_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
																arg0:setAlpha(0.160000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF8B_)
															end

															if arg1.interrupted then
																__FUNC_BE13_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
															arg0:setAlpha(0.190000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE13_)
														end

														if arg1.interrupted then
															__FUNC_BC98_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC98_)
													end

													if arg1.interrupted then
														__FUNC_BB43_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB43_)
												end

												if arg1.interrupted then
													__FUNC_B9CB_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.510000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9CB_)
											end

											if arg1.interrupted then
												__FUNC_B853_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B853_)
										end

										if arg1.interrupted then
											__FUNC_B6D8_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6D8_)
									end

									if arg1.interrupted then
										__FUNC_B583_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B583_)
								end

								if arg1.interrupted then
									__FUNC_B408_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B408_)
							end

							if arg1.interrupted then
								__FUNC_B2B3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2B3_)
						end

						if arg1.interrupted then
							__FUNC_B138_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B138_)
					end

					if arg1.interrupted then
						__FUNC_AFE3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFE3_)
				end

				if arg1.interrupted then
					__FUNC_AE6B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.160000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE6B_)
			end

			if arg1.interrupted then
				__FUNC_ACF3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.190000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACF3_)
		end

		registerVal5:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_AB79_)
		local function __FUNC_C13D_(arg0, arg1)
			local function __FUNC_C2B7_(arg0, arg1)
				local function __FUNC_C42F_(arg0, arg1)
					local function __FUNC_C584_(arg0, arg1)
						local function __FUNC_C6FF_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_C6FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.280000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6FF_)
					end

					if arg1.interrupted then
						__FUNC_C584_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C584_)
				end

				if arg1.interrupted then
					__FUNC_C42F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C42F_)
			end

			if arg1.interrupted then
				__FUNC_C2B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.280000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2B7_)
		end

		registerVal6:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_C13D_)
		local function __FUNC_C8B1_(arg0, arg1)
			local function __FUNC_CA2B_(arg0, arg1)
				local function __FUNC_CBA3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_CBA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBA3_)
			end

			if arg1.interrupted then
				__FUNC_CA2B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.180000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA2B_)
		end

		registerVal7:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_C8B1_)
		local function __FUNC_CD55_(arg0, arg1)
			local function __FUNC_CECF_(arg0, arg1)
				local function __FUNC_D047_(arg0, arg1)
					local function __FUNC_D19C_(arg0, arg1)
						local function __FUNC_D317_(arg0, arg1)
							local function __FUNC_D48F_(arg0, arg1)
								local function __FUNC_D5E4_(arg0, arg1)
									local function __FUNC_D73C_(arg0, arg1)
										local function __FUNC_D8B7_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_D8B7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.330000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8B7_)
									end

									if arg1.interrupted then
										__FUNC_D73C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D73C_)
								end

								if arg1.interrupted then
									__FUNC_D5E4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5E4_)
							end

							if arg1.interrupted then
								__FUNC_D48F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D48F_)
						end

						if arg1.interrupted then
							__FUNC_D317_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D317_)
					end

					if arg1.interrupted then
						__FUNC_D19C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D19C_)
				end

				if arg1.interrupted then
					__FUNC_D047_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D047_)
			end

			if arg1.interrupted then
				__FUNC_CECF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.330000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CECF_)
		end

		registerVal8:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_CD55_)
		local function __FUNC_DA69_(arg0, arg1)
			local function __FUNC_DBE3_(arg0, arg1)
				local function __FUNC_DD5B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_DD5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD5B_)
			end

			if arg1.interrupted then
				__FUNC_DBE3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBE3_)
		end

		registerVal9:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_DA69_)
		local function __FUNC_DF0D_(arg0, arg1)
			local function __FUNC_E087_(arg0, arg1)
				local function __FUNC_E1DC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E1DC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1DC_)
			end

			if arg1.interrupted then
				__FUNC_E087_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E087_)
		end

		registerVal11:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(0.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_DF0D_)
		registerVal14:completeAnimation()
		registerVal2.LimitedBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.lootCategory:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lootName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal27, {})
		local function __FUNC_E391_(arg0, arg1)
			local function __FUNC_E50B_(arg0, arg1)
				local function __FUNC_E683_(arg0, arg1)
					local function __FUNC_E7FB_(arg0, arg1)
						local function __FUNC_E973_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.860000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_E973_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.950000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E973_)
					end

					if arg1.interrupted then
						__FUNC_E7FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.850000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E7FB_)
				end

				if arg1.interrupted then
					__FUNC_E683_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.970000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E683_)
			end

			if arg1.interrupted then
				__FUNC_E50B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.850000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E50B_)
		end

		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		__FUNC_E391_(registerVal28, {})
		registerVal40:completeAnimation()
		registerVal2.BMPixel06FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal40, {})
		registerVal65:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal65, {})
		registerVal66:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal66, {})
		registerVal2.nextClip = "StartFuzz"
	end

	registerVal75["StartFuzz"] = __FUNC_72FE_
	local function __FUNC_EB25_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal75["Focus"] = __FUNC_EB25_
	local function __FUNC_EB86_()
		registerVal2:setupElementClipCounter(15.000000)
		local function __FUNC_F3E5_(arg0, arg1)
			local function __FUNC_F55F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F55F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F55F_)
		end

		registerVal12:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_F3E5_)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		local function __FUNC_F711_(arg0, arg1)
			local function __FUNC_F8AE_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 69.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F8AE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.310000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8AE_)
		end

		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.500000)
		__FUNC_F711_(registerVal19, {})
		local function __FUNC_FA7F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal23:setAlpha(0.000000)
		registerVal23:registerEventHandler("transition_complete_keyframe", __FUNC_FA7F_)
		local function __FUNC_FC31_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal24:setAlpha(0.000000)
		registerVal24:registerEventHandler("transition_complete_keyframe", __FUNC_FC31_)
		local function __FUNC_FDE5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(0.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", __FUNC_FDE5_)
		local function __FUNC_FF99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal26:setAlpha(0.000000)
		registerVal26:registerEventHandler("transition_complete_keyframe", __FUNC_FF99_)
		local function __FUNC_1014D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -127.500000, 126.500000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal27:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal27:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal27:setAlpha(0.000000)
		registerVal27:registerEventHandler("transition_complete_keyframe", __FUNC_1014D_)
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setLeftRight(true, true, -30.000000, 29.000000)
		registerVal2.LootDecryptionFakeImageCycle:setTopBottom(true, true, -22.000000, 27.000000)
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_10371_(arg0, arg1)
			local function __FUNC_104C8_(arg0, arg1)
				local function __FUNC_10643_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_10643_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10643_)
			end

			if arg1.interrupted then
				__FUNC_104C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_104C8_)
		end

		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.GLOWcommon:setAlpha(0.000000)
		__FUNC_10371_(registerVal33, {})
		local function __FUNC_1081E_(arg0, arg1)
			local function __FUNC_10974_(arg0, arg1)
				local function __FUNC_10B12_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.050000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_10B12_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:setScale(1.010000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B12_)
			end

			if arg1.interrupted then
				__FUNC_10974_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10974_)
		end

		registerVal34:completeAnimation()
		registerVal2.blurbox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.blurbox:setAlpha(0.000000)
		registerVal2.blurbox:setScale(1.000000)
		__FUNC_1081E_(registerVal34, {})
		registerVal40:completeAnimation()
		registerVal2.BMPixel06FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal40, {})
		registerVal65:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal65, {})
		local function __FUNC_10D11_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal66:setAlpha(0.000000)
		registerVal66:registerEventHandler("transition_complete_keyframe", __FUNC_10D11_)
	end

	registerVal75["RevealedCommon"] = __FUNC_EB86_
	local function __FUNC_10EC5_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_117E6_(arg0, arg1)
			local function __FUNC_11982_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_11982_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(2.460000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11982_)
		end

		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(3.500000)
		__FUNC_117E6_(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_11B53_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal23:setAlpha(0.000000)
		registerVal23:registerEventHandler("transition_complete_keyframe", __FUNC_11B53_)
		local function __FUNC_11D05_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal24:setAlpha(0.000000)
		registerVal24:registerEventHandler("transition_complete_keyframe", __FUNC_11D05_)
		local function __FUNC_11EB9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(0.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", __FUNC_11EB9_)
		local function __FUNC_1206D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal26:setAlpha(0.000000)
		registerVal26:registerEventHandler("transition_complete_keyframe", __FUNC_1206D_)
		local function __FUNC_12221_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -127.500000, 126.500000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal27:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal27:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal27:setAlpha(0.000000)
		registerVal27:registerEventHandler("transition_complete_keyframe", __FUNC_12221_)
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_12445_(arg0, arg1)
			local function __FUNC_125BF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 539.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_125BF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125BF_)
		end

		registerVal30:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
		registerVal30:setAlpha(0.000000)
		registerVal30:registerEventHandler("transition_complete_keyframe", __FUNC_12445_)
		local function __FUNC_12771_(arg0, arg1)
			local function __FUNC_1290E_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.220000, 0.930000, 0.930000)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1290E_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.050000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1290E_)
		end

		registerVal34:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
		registerVal34:setRGB(0.220000, 0.930000, 0.930000)
		registerVal34:setAlpha(0.000000)
		registerVal34:setScale(1.000000)
		registerVal34:registerEventHandler("transition_complete_keyframe", __FUNC_12771_)
		local function __FUNC_12B12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.600000, 0.900000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal35:completeAnimation()
		registerVal2.BMPixelFX:setRGB(0.000000, 0.600000, 0.900000)
		registerVal2.BMPixelFX:setAlpha(0.000000)
		__FUNC_12B12_(registerVal35, {})
		local function __FUNC_12CF8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.600000, 0.900000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal36:completeAnimation()
		registerVal2.BMPixel02FX:setRGB(0.000000, 0.600000, 0.900000)
		registerVal2.BMPixel02FX:setAlpha(0.000000)
		__FUNC_12CF8_(registerVal36, {})
		local function __FUNC_12EE0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.600000, 0.900000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal37:completeAnimation()
		registerVal2.BMPixel03FX:setRGB(0.000000, 0.600000, 0.900000)
		registerVal2.BMPixel03FX:setAlpha(0.000000)
		__FUNC_12EE0_(registerVal37, {})
		local function __FUNC_130C8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.600000, 0.900000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal38:completeAnimation()
		registerVal2.BMPixel04FX:setRGB(0.000000, 0.600000, 0.900000)
		registerVal2.BMPixel04FX:setAlpha(0.000000)
		__FUNC_130C8_(registerVal38, {})
		registerVal40:completeAnimation()
		registerVal2.BMPixel06FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal40, {})
		registerVal65:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal65, {})
		local function __FUNC_132B0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal66:setAlpha(0.000000)
		registerVal66:registerEventHandler("transition_complete_keyframe", __FUNC_132B0_)
	end

	registerVal75["RevealedRare"] = __FUNC_10EC5_
	local function __FUNC_13465_()
		registerVal2:setupElementClipCounter(24.000000)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_140BE_(arg0, arg1)
			local function __FUNC_1425A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 69.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1425A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(2.460000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1425A_)
		end

		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.LegendaryBacking:setScale(3.500000)
		__FUNC_140BE_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_1442B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal23:setAlpha(0.000000)
		registerVal23:registerEventHandler("transition_complete_keyframe", __FUNC_1442B_)
		local function __FUNC_145DD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal24:setAlpha(0.000000)
		registerVal24:registerEventHandler("transition_complete_keyframe", __FUNC_145DD_)
		local function __FUNC_14791_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(0.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", __FUNC_14791_)
		local function __FUNC_14945_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal26:setAlpha(0.000000)
		registerVal26:registerEventHandler("transition_complete_keyframe", __FUNC_14945_)
		local function __FUNC_14AF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -127.500000, 126.500000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal27:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal27:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal27:setAlpha(0.000000)
		registerVal27:registerEventHandler("transition_complete_keyframe", __FUNC_14AF9_)
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal30:completeAnimation()
		registerVal2.GLOWrare:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal30, {})
		local function __FUNC_14D1D_(arg0, arg1)
			local function __FUNC_14E97_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 489.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_14E97_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E97_)
		end

		registerVal31:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
		registerVal31:setAlpha(0.000000)
		registerVal31:registerEventHandler("transition_complete_keyframe", __FUNC_14D1D_)
		local function __FUNC_15049_(arg0, arg1)
			local function __FUNC_151A0_(arg0, arg1)
				local function __FUNC_1533E_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(0.670000, 0.200000, 1.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.200000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1533E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.040000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1533E_)
			end

			if arg1.interrupted then
				__FUNC_151A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_151A0_)
		end

		registerVal34:completeAnimation()
		registerVal2.blurbox:setRGB(0.670000, 0.200000, 1.000000)
		registerVal2.blurbox:setAlpha(0.000000)
		registerVal2.blurbox:setScale(1.000000)
		__FUNC_15049_(registerVal34, {})
		local function __FUNC_15547_(arg0, arg1)
			local function __FUNC_156BF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.670000, 0.200000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_156BF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_156BF_)
		end

		registerVal35:completeAnimation()
		registerVal2.BMPixelFX:setRGB(0.670000, 0.200000, 1.000000)
		registerVal2.BMPixelFX:setAlpha(0.000000)
		__FUNC_15547_(registerVal35, {})
		local function __FUNC_1589F_(arg0, arg1)
			local function __FUNC_15A17_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.670000, 0.200000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_15A17_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A17_)
		end

		registerVal36:completeAnimation()
		registerVal2.BMPixel02FX:setRGB(0.670000, 0.200000, 1.000000)
		registerVal2.BMPixel02FX:setAlpha(0.000000)
		__FUNC_1589F_(registerVal36, {})
		local function __FUNC_15BF7_(arg0, arg1)
			local function __FUNC_15D6F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.670000, 0.200000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_15D6F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D6F_)
		end

		registerVal37:completeAnimation()
		registerVal2.BMPixel03FX:setRGB(0.670000, 0.200000, 1.000000)
		registerVal2.BMPixel03FX:setAlpha(0.000000)
		__FUNC_15BF7_(registerVal37, {})
		local function __FUNC_15F4F_(arg0, arg1)
			local function __FUNC_160C7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.670000, 0.200000, 1.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_160C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_160C7_)
		end

		registerVal38:completeAnimation()
		registerVal2.BMPixel04FX:setRGB(0.670000, 0.200000, 1.000000)
		registerVal2.BMPixel04FX:setAlpha(0.000000)
		__FUNC_15F4F_(registerVal38, {})
		registerVal40:completeAnimation()
		registerVal2.BMPixel06FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal40, {})
		local function __FUNC_162A7_(arg0, arg1)
			local function __FUNC_1641F_(arg0, arg1)
				local function __FUNC_165BA_(arg0, arg1)
					local function __FUNC_16756_(arg0, arg1)
						local function __FUNC_168CF_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(2.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_168CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
						arg0:setScale(1.860000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_168CF_)
					end

					if arg1.interrupted then
						__FUNC_16756_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.620000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16756_)
				end

				if arg1.interrupted then
					__FUNC_165BA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.220000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_165BA_)
			end

			if arg1.interrupted then
				__FUNC_1641F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1641F_)
		end

		registerVal58:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
		registerVal58:setAlpha(0.000000)
		registerVal58:setScale(1.000000)
		registerVal58:registerEventHandler("transition_complete_keyframe", __FUNC_162A7_)
		local function __FUNC_16AA4_(arg0, arg1)
			local function __FUNC_16C1F_(arg0, arg1)
				local function __FUNC_16DBA_(arg0, arg1)
					local function __FUNC_16F56_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(1.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_16F56_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.460000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F56_)
				end

				if arg1.interrupted then
					__FUNC_16DBA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.260000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16DBA_)
			end

			if arg1.interrupted then
				__FUNC_16C1F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16C1F_)
		end

		registerVal59:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
		registerVal59:setAlpha(0.000000)
		registerVal59:setScale(1.200000)
		registerVal59:registerEventHandler("transition_complete_keyframe", __FUNC_16AA4_)
		local function __FUNC_1712C_(arg0, arg1)
			local function __FUNC_172CA_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setScale(1.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_172CA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_172CA_)
		end

		registerVal60:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
		registerVal60:setAlpha(0.000000)
		registerVal60:setScale(1.100000)
		registerVal60:registerEventHandler("transition_complete_keyframe", __FUNC_1712C_)
		local function __FUNC_174A0_(arg0, arg1)
			local function __FUNC_1761B_(arg0, arg1)
				local function __FUNC_177B6_(arg0, arg1)
					local function __FUNC_17952_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -74.860000, 317.080000)
						arg0:setTopBottom(true, false, -78.350000, 424.350000)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.800000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_17952_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.450000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17952_)
				end

				if arg1.interrupted then
					__FUNC_177B6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(0.960000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_177B6_)
			end

			if arg1.interrupted then
				__FUNC_1761B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1761B_)
		end

		registerVal62:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
		registerVal62:setLeftRight(true, false, -74.860000, 317.080000)
		registerVal62:setTopBottom(true, false, -78.350000, 424.350000)
		registerVal62:setAlpha(0.000000)
		registerVal62:setScale(0.800000)
		registerVal62:registerEventHandler("transition_complete_keyframe", __FUNC_174A0_)
		registerVal65:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal65, {})
		local function __FUNC_17B98_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal66:setAlpha(0.000000)
		registerVal66:registerEventHandler("transition_complete_keyframe", __FUNC_17B98_)
	end

	registerVal75["RevealedLegendary"] = __FUNC_13465_
	local function __FUNC_17D4D_()
		registerVal2:setupElementClipCounter(28.000000)
		local function __FUNC_18CB8_(arg0, arg1)
			local function __FUNC_18E56_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_18E56_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(2.460000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E56_)
		end

		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.EpicBacking:setScale(3.500000)
		__FUNC_18CB8_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.LegendaryBacking:setScale(3.500000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_19027_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal23:setAlpha(0.000000)
		registerVal23:registerEventHandler("transition_complete_keyframe", __FUNC_19027_)
		local function __FUNC_191D9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal24:setAlpha(0.000000)
		registerVal24:registerEventHandler("transition_complete_keyframe", __FUNC_191D9_)
		local function __FUNC_1938D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(0.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", __FUNC_1938D_)
		local function __FUNC_19541_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal26:setAlpha(0.000000)
		registerVal26:registerEventHandler("transition_complete_keyframe", __FUNC_19541_)
		local function __FUNC_196F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -5.000000, 249.000000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal27:setLeftRight(true, false, -5.000000, 249.000000)
		registerVal27:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal27:setAlpha(0.000000)
		registerVal27:registerEventHandler("transition_complete_keyframe", __FUNC_196F5_)
		local function __FUNC_19919_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		__FUNC_19919_(registerVal28, {})
		registerVal30:completeAnimation()
		registerVal2.GLOWrare:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.GLOWLengendary:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal31, {})
		local function __FUNC_19ACD_(arg0, arg1)
			local function __FUNC_19C47_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_19C47_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19C47_)
		end

		registerVal32:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
		registerVal32:setAlpha(0.000000)
		registerVal32:registerEventHandler("transition_complete_keyframe", __FUNC_19ACD_)
		local function __FUNC_19DF9_(arg0, arg1)
			local function __FUNC_19F96_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.670000, 0.000000)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_19F96_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.040000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19F96_)
		end

		registerVal34:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
		registerVal34:setRGB(1.000000, 0.670000, 0.000000)
		registerVal34:setAlpha(0.000000)
		registerVal34:setScale(1.000000)
		registerVal34:registerEventHandler("transition_complete_keyframe", __FUNC_19DF9_)
		local function __FUNC_1A19A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal35:completeAnimation()
		registerVal2.BMPixelFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMPixelFX:setAlpha(0.000000)
		__FUNC_1A19A_(registerVal35, {})
		local function __FUNC_1A37B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal36:completeAnimation()
		registerVal2.BMPixel02FX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMPixel02FX:setAlpha(0.000000)
		__FUNC_1A37B_(registerVal36, {})
		local function __FUNC_1A55B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal37:completeAnimation()
		registerVal2.BMPixel03FX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMPixel03FX:setAlpha(0.000000)
		__FUNC_1A55B_(registerVal37, {})
		local function __FUNC_1A73B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal38:completeAnimation()
		registerVal2.BMPixel04FX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMPixel04FX:setAlpha(0.000000)
		__FUNC_1A73B_(registerVal38, {})
		registerVal40:completeAnimation()
		registerVal2.BMPixel06FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal40, {})
		local function __FUNC_1A91B_(arg0, arg1)
			local function __FUNC_1AAB6_(arg0, arg1)
				local function __FUNC_1AC52_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -74.860000, 317.080000)
					arg0:setTopBottom(true, false, -78.350000, 424.350000)
					arg0:setAlpha(0.000000)
					arg0:setScale(1.800000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1AC52_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.450000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AC52_)
			end

			if arg1.interrupted then
				__FUNC_1AAB6_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(0.980000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AAB6_)
		end

		registerVal46:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
		registerVal46:setLeftRight(true, false, -74.860000, 317.080000)
		registerVal46:setTopBottom(true, false, -78.350000, 424.350000)
		registerVal46:setAlpha(0.000000)
		registerVal46:setScale(0.800000)
		registerVal46:registerEventHandler("transition_complete_keyframe", __FUNC_1A91B_)
		local function __FUNC_1AE98_(arg0, arg1)
			local function __FUNC_1B036_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setScale(1.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1B036_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B036_)
		end

		registerVal48:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
		registerVal48:setAlpha(0.000000)
		registerVal48:setScale(1.100000)
		registerVal48:registerEventHandler("transition_complete_keyframe", __FUNC_1AE98_)
		local function __FUNC_1B20C_(arg0, arg1)
			local function __FUNC_1B3AA_(arg0, arg1)
				local function __FUNC_1B523_(arg0, arg1)
					local function __FUNC_1B69B_(arg0, arg1)
						local function __FUNC_1B836_(arg0, arg1)
							local function __FUNC_1B9AF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								arg0:setScale(1.400000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1B9AF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
							arg0:setScale(1.380000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B9AF_)
						end

						if arg1.interrupted then
							__FUNC_1B836_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.360000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B836_)
					end

					if arg1.interrupted then
						__FUNC_1B69B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.330000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B69B_)
				end

				if arg1.interrupted then
					__FUNC_1B523_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B523_)
			end

			if arg1.interrupted then
				__FUNC_1B3AA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B3AA_)
		end

		registerVal49:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
		registerVal49:setAlpha(0.000000)
		registerVal49:setScale(1.100000)
		registerVal49:registerEventHandler("transition_complete_keyframe", __FUNC_1B20C_)
		local function __FUNC_1BB84_(arg0, arg1)
			local function __FUNC_1BCFF_(arg0, arg1)
				local function __FUNC_1BE9A_(arg0, arg1)
					local function __FUNC_1C013_(arg0, arg1)
						local function __FUNC_1C1AE_(arg0, arg1)
							local function __FUNC_1C327_(arg0, arg1)
								local function __FUNC_1C49F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									arg0:setScale(1.400000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1C49F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
								arg0:setScale(1.390000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C49F_)
							end

							if arg1.interrupted then
								__FUNC_1C327_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
							arg0:setScale(1.360000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C327_)
						end

						if arg1.interrupted then
							__FUNC_1C1AE_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.340000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C1AE_)
					end

					if arg1.interrupted then
						__FUNC_1C013_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C013_)
				end

				if arg1.interrupted then
					__FUNC_1BE9A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.240000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BE9A_)
			end

			if arg1.interrupted then
				__FUNC_1BCFF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.220000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BCFF_)
		end

		registerVal50:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
		registerVal50:setAlpha(0.000000)
		registerVal50:setScale(1.200000)
		registerVal50:registerEventHandler("transition_complete_keyframe", __FUNC_1BB84_)
		local function __FUNC_1C674_(arg0, arg1)
			local function __FUNC_1C810_(arg0, arg1)
				local function __FUNC_1C9CA_(arg0, arg1)
					local function __FUNC_1CB64_(arg0, arg1)
						local function __FUNC_1CD00_(arg0, arg1)
							local function __FUNC_1CE9C_(arg0, arg1)
								local function __FUNC_1D051_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, -58.500000, 310.000000)
									arg0:setTopBottom(true, false, -73.000000, 418.400000)
									arg0:setAlpha(0.000000)
									arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook_animated"))
									arg0:setShaderVector(0.000000, 27.000000, 1.000000, 0.000000, 0.000000)
									arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1D051_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D051_)
							end

							if arg1.interrupted then
								__FUNC_1CE9C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setShaderVector(1.000000, 26.990000, 0.000000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CE9C_)
						end

						if arg1.interrupted then
							__FUNC_1CD00_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
						arg0:setShaderVector(1.000000, 26.151290, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD00_)
					end

					if arg1.interrupted then
						__FUNC_1CB64_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setShaderVector(1.000000, 0.990000, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CB64_)
				end

				if arg1.interrupted then
					__FUNC_1C9CA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setShaderVector(1.000000, 0.495000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C9CA_)
			end

			if arg1.interrupted then
				__FUNC_1C810_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 27.000000, 1.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C810_)
		end

		registerVal57:completeAnimation()
		registerVal2.epicSkull:setLeftRight(true, false, -58.500000, 310.000000)
		registerVal2.epicSkull:setTopBottom(true, false, -73.000000, 418.400000)
		registerVal2.epicSkull:setAlpha(0.000000)
		registerVal2.epicSkull:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook_animated"))
		registerVal2.epicSkull:setShaderVector(0.000000, 27.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.epicSkull:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1C674_(registerVal57, {})
		local function __FUNC_1D369_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal63:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
		registerVal63:setAlpha(0.000000)
		registerVal63:registerEventHandler("transition_complete_keyframe", __FUNC_1D369_)
		local function __FUNC_1D51D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal64:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
		registerVal64:setAlpha(0.000000)
		registerVal64:registerEventHandler("transition_complete_keyframe", __FUNC_1D51D_)
		registerVal65:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal65, {})
		local function __FUNC_1D6D1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal66:setAlpha(0.000000)
		registerVal66:registerEventHandler("transition_complete_keyframe", __FUNC_1D6D1_)
	end

	registerVal75["RevealedEpic"] = __FUNC_17D4D_
	local function __FUNC_1D885_()
		registerVal2:setupElementClipCounter(45.000000)
		local function __FUNC_1EDD1_(arg0, arg1)
			local function __FUNC_1EF28_(arg0, arg1)
				local function __FUNC_1F0A3_(arg0, arg1)
					local function __FUNC_1F21B_(arg0, arg1)
						local function __FUNC_1F393_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1F393_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F393_)
					end

					if arg1.interrupted then
						__FUNC_1F21B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.640000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F21B_)
				end

				if arg1.interrupted then
					__FUNC_1F0A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F0A3_)
			end

			if arg1.interrupted then
				__FUNC_1EF28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EF28_)
		end

		registerVal13:completeAnimation()
		registerVal2.LimitedBackglow:setAlpha(0.000000)
		__FUNC_1EDD1_(registerVal13, {})
		local function __FUNC_1F545_(arg0, arg1)
			local function __FUNC_1F6E2_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1F6E2_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(2.460000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F6E2_)
		end

		registerVal14:completeAnimation()
		registerVal2.LimitedBacking:setAlpha(0.000000)
		registerVal2.LimitedBacking:setScale(3.500000)
		__FUNC_1F545_(registerVal14, {})
		local function __FUNC_1F8B3_(arg0, arg1)
			local function __FUNC_1FA6A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
				arg0:setShaderVector(0.000000, 1.100000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1FA6A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setShaderVector(0.000000, 0.392857, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FA6A_)
		end

		registerVal15:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Linear)
		registerVal15:setAlpha(0.000000)
		registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
		registerVal15:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal15:registerEventHandler("transition_complete_keyframe", __FUNC_1F8B3_)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.LegendaryBacking:setScale(3.500000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_1FCF4_(arg0, arg1)
			local function __FUNC_1FE4C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.000000, 0.000000, 0.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1FE4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FE4C_)
		end

		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.lootRarityText:setAlpha(0.000000)
		__FUNC_1FCF4_(registerVal23, {})
		local function __FUNC_2002A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal24:setAlpha(0.000000)
		registerVal24:registerEventHandler("transition_complete_keyframe", __FUNC_2002A_)
		local function __FUNC_201DD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal25:setAlpha(0.000000)
		registerVal25:registerEventHandler("transition_complete_keyframe", __FUNC_201DD_)
		local function __FUNC_20391_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal26:setAlpha(0.000000)
		registerVal26:registerEventHandler("transition_complete_keyframe", __FUNC_20391_)
		local function __FUNC_20545_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -127.500000, 126.500000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal27:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal27:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal27:setAlpha(0.000000)
		registerVal27:registerEventHandler("transition_complete_keyframe", __FUNC_20545_)
		local function __FUNC_20769_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		__FUNC_20769_(registerVal28, {})
		registerVal30:completeAnimation()
		registerVal2.GLOWrare:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal30, {})
		registerVal31:completeAnimation()
		registerVal2.GLOWLengendary:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal31, {})
		local function __FUNC_2091D_(arg0, arg1)
			local function __FUNC_20A97_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_20A97_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20A97_)
		end

		registerVal32:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
		registerVal32:setAlpha(0.000000)
		registerVal32:registerEventHandler("transition_complete_keyframe", __FUNC_2091D_)
		registerVal34:completeAnimation()
		registerVal2.blurbox:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.blurbox:setAlpha(0.000000)
		registerVal2.blurbox:setScale(1.000000)
		registerVal2.clipFinished(registerVal34, {})
		registerVal35:completeAnimation()
		registerVal2.BMPixelFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMPixelFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.BMPixel02FX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMPixel02FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal36, {})
		registerVal37:completeAnimation()
		registerVal2.BMPixel03FX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMPixel03FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal37, {})
		registerVal38:completeAnimation()
		registerVal2.BMPixel04FX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMPixel04FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal38, {})
		local function __FUNC_20C49_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal39:completeAnimation()
		registerVal2.BMPixel05FX:setAlpha(1.000000)
		__FUNC_20C49_(registerVal39, {})
		local function __FUNC_20DFD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal40:completeAnimation()
		registerVal2.BMPixel06FX:setAlpha(1.000000)
		__FUNC_20DFD_(registerVal40, {})
		local function __FUNC_20FB1_(arg0, arg1)
			local function __FUNC_21108_(arg0, arg1)
				local function __FUNC_21283_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_21283_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21283_)
			end

			if arg1.interrupted then
				__FUNC_21108_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21108_)
		end

		registerVal45:completeAnimation()
		registerVal2.LightLimited:setAlpha(0.000000)
		__FUNC_20FB1_(registerVal45, {})
		registerVal46:completeAnimation()
		registerVal2.EpicEmber5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal46, {})
		registerVal47:completeAnimation()
		registerVal2.EpicEmber4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal47, {})
		registerVal48:completeAnimation()
		registerVal2.EpicEmber3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal48, {})
		registerVal49:completeAnimation()
		registerVal2.EpicEmber2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal49, {})
		registerVal50:completeAnimation()
		registerVal2.EpicEmber1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal50, {})
		local function __FUNC_21435_(arg0, arg1)
			local function __FUNC_2158C_(arg0, arg1)
				local function __FUNC_21707_(arg0, arg1)
					local function __FUNC_2187F_(arg0, arg1)
						local function __FUNC_219F7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_219F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_219F7_)
					end

					if arg1.interrupted then
						__FUNC_2187F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2187F_)
				end

				if arg1.interrupted then
					__FUNC_21707_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21707_)
			end

			if arg1.interrupted then
				__FUNC_2158C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2158C_)
		end

		registerVal51:completeAnimation()
		registerVal2.LimitedBackingFocus:setAlpha(0.000000)
		__FUNC_21435_(registerVal51, {})
		local function __FUNC_21BA9_(arg0, arg1)
			local function __FUNC_21D23_(arg0, arg1)
				local function __FUNC_21EBE_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(1.500000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_21EBE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.410000)
				arg0:setScale(1.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21EBE_)
			end

			if arg1.interrupted then
				__FUNC_21D23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21D23_)
		end

		registerVal52:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal52:setAlpha(0.000000)
		registerVal52:setScale(1.390000)
		registerVal52:registerEventHandler("transition_complete_keyframe", __FUNC_21BA9_)
		local function __FUNC_22094_(arg0, arg1)
			local function __FUNC_2220F_(arg0, arg1)
				local function __FUNC_223AA_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(1.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_223AA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.410000)
				arg0:setScale(1.340000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_223AA_)
			end

			if arg1.interrupted then
				__FUNC_2220F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2220F_)
		end

		registerVal53:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal53:setAlpha(0.000000)
		registerVal53:setScale(1.300000)
		registerVal53:registerEventHandler("transition_complete_keyframe", __FUNC_22094_)
		local function __FUNC_22580_(arg0, arg1)
			local function __FUNC_226FB_(arg0, arg1)
				local function __FUNC_22873_(arg0, arg1)
					local function __FUNC_22A0E_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 369.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(1.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_22A0E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.110000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22A0E_)
				end

				if arg1.interrupted then
					__FUNC_22873_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22873_)
			end

			if arg1.interrupted then
				__FUNC_226FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_226FB_)
		end

		registerVal54:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal54:setAlpha(0.000000)
		registerVal54:setScale(1.000000)
		registerVal54:registerEventHandler("transition_complete_keyframe", __FUNC_22580_)
		local function __FUNC_22BE4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal55:completeAnimation()
		registerVal2.BMCircuits02FX:setAlpha(1.000000)
		__FUNC_22BE4_(registerVal55, {})
		registerVal56:completeAnimation()
		registerVal2.BMCircuits01FX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal56, {})
		registerVal57:completeAnimation()
		registerVal2.epicSkull:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook_animated"))
		registerVal2.epicSkull:setShaderVector(0.000000, 27.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.epicSkull:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal57, {})
		registerVal63:completeAnimation()
		registerVal2.BMFlyEmberFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal63, {})
		registerVal64:completeAnimation()
		registerVal2.BMFlyEmberFX0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal64, {})
		registerVal65:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal65, {})
		local function __FUNC_22D99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal66:setAlpha(0.000000)
		registerVal66:registerEventHandler("transition_complete_keyframe", __FUNC_22D99_)
		local function __FUNC_22F4D_(arg0, arg1)
			local function __FUNC_230C7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_230C7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_230C7_)
		end

		registerVal67:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
		registerVal67:setAlpha(0.000000)
		registerVal67:registerEventHandler("transition_complete_keyframe", __FUNC_22F4D_)
		local function __FUNC_23279_(arg0, arg1)
			local function __FUNC_233D0_(arg0, arg1)
				local function __FUNC_2354B_(arg0, arg1)
					local function __FUNC_236C3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_236C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.750000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_236C3_)
				end

				if arg1.interrupted then
					__FUNC_2354B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2354B_)
			end

			if arg1.interrupted then
				__FUNC_233D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_233D0_)
		end

		registerVal68:completeAnimation()
		registerVal2.CircuitsBright:setAlpha(0.000000)
		__FUNC_23279_(registerVal68, {})
		local function __FUNC_23875_(arg0, arg1)
			local function __FUNC_239CC_(arg0, arg1)
				local function __FUNC_23B47_(arg0, arg1)
					local function __FUNC_23CBF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 369.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(1.200000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_23CBF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.050000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23CBF_)
				end

				if arg1.interrupted then
					__FUNC_23B47_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23B47_)
			end

			if arg1.interrupted then
				__FUNC_239CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_239CC_)
		end

		registerVal69:completeAnimation()
		registerVal2.CircuitsBrightBlur1:setAlpha(0.000000)
		registerVal2.CircuitsBrightBlur1:setScale(1.000000)
		__FUNC_23875_(registerVal69, {})
		local function __FUNC_23E94_(arg0, arg1)
			local function __FUNC_23FEC_(arg0, arg1)
				local function __FUNC_24167_(arg0, arg1)
					local function __FUNC_24302_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 420.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(1.400000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_24302_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.930000)
					arg0:setScale(1.150000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24302_)
				end

				if arg1.interrupted then
					__FUNC_24167_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24167_)
			end

			if arg1.interrupted then
				__FUNC_23FEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23FEC_)
		end

		registerVal70:completeAnimation()
		registerVal2.CircuitsBrightBlur2:setAlpha(0.000000)
		registerVal2.CircuitsBrightBlur2:setScale(1.000000)
		__FUNC_23E94_(registerVal70, {})
		local function __FUNC_244D8_(arg0, arg1)
			local function __FUNC_24653_(arg0, arg1)
				local function __FUNC_247CB_(arg0, arg1)
					local function __FUNC_24943_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_24943_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24943_)
				end

				if arg1.interrupted then
					__FUNC_247CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_247CB_)
			end

			if arg1.interrupted then
				__FUNC_24653_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24653_)
		end

		registerVal71:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
		registerVal71:setAlpha(0.000000)
		registerVal71:registerEventHandler("transition_complete_keyframe", __FUNC_244D8_)
	end

	registerVal75["RevealedLimited"] = __FUNC_1D885_
	registerVal73["DefaultState"] = registerVal75
	registerVal75 = {}
	local function __FUNC_24AF5_()
		registerVal2:setupElementClipCounter(20.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -83.430000, 72.570000)
		registerVal2.FocusBar3:setTopBottom(true, false, 380.920000, 406.920000)
		registerVal2.FocusBar3:setAlpha(0.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(1.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal22:completeAnimation()
		registerVal2.lootRarityTextWhite:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(true, false, -5.000000, 249.000000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.000000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal35:completeAnimation()
		registerVal2.BMPixelFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.BMPixel02FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal36, {})
		registerVal37:completeAnimation()
		registerVal2.BMPixel03FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal37, {})
		registerVal38:completeAnimation()
		registerVal2.BMPixel04FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal38, {})
		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal66, {})
	end

	registerVal75["DefaultClip"] = __FUNC_24AF5_
	local function __FUNC_255BD_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -110.000000, 110.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 350.000000, 409.000000)
		registerVal2.FocusBar3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(1.000000)
		registerVal2.CommonBacking:setScale(1.080000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 146.000000, 172.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.080000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 98.000000, 118.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.080000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 55.000000, 75.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.080000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 35.000000, 55.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.080000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(true, false, -5.000000, 249.000000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.080000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 253.560000, -39.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.080000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal33, {})
		local function __FUNC_261E3_(arg0, arg1)
			local function __FUNC_2635B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.080000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2635B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2635B_)
		end

		registerVal41:completeAnimation()
		registerVal2.LightCommon:setAlpha(1.000000)
		registerVal2.LightCommon:setScale(1.080000)
		__FUNC_261E3_(registerVal41, {})
		registerVal42:completeAnimation()
		registerVal2.LightRare:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal42, {})
		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, -10.000000, 33.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.080000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal66, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal75["Focus"] = __FUNC_255BD_
	local function __FUNC_26530_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_271A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -110.000000, 110.000000)
			arg0:setTopBottom(true, false, 350.000000, 409.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -80.000000, 80.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 364.000000, 408.000000)
		registerVal2.FocusBar3:setAlpha(0.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		__FUNC_271A1_(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		local function __FUNC_273E3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(1.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		__FUNC_273E3_(registerVal19, {})
		local function __FUNC_275B8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 146.000000, 172.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 133.000000, 159.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.000000)
		__FUNC_275B8_(registerVal23, {})
		local function __FUNC_27800_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, 98.000000, 118.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 89.000000, 109.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.000000)
		__FUNC_27800_(registerVal24, {})
		local function __FUNC_27A43_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 55.000000, 75.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 51.000000, 71.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.000000)
		__FUNC_27A43_(registerVal25, {})
		local function __FUNC_27C88_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 35.000000, 55.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 31.000000, 51.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.000000)
		__FUNC_27C88_(registerVal26, {})
		local function __FUNC_27ED0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -127.500000, 126.500000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.000000)
		__FUNC_27ED0_(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_28118_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -0.940000)
			arg0:setTopBottom(true, true, 253.560000, -39.440000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 244.560000, -48.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.000000)
		__FUNC_28118_(registerVal29, {})
		local function __FUNC_28360_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		__FUNC_28360_(registerVal33, {})
		local function __FUNC_28515_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal41:completeAnimation()
		registerVal2.LightCommon:setAlpha(0.000000)
		registerVal2.LightCommon:setScale(1.000000)
		__FUNC_28515_(registerVal41, {})
		local function __FUNC_286EC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.000000, 82.000000)
			arg0:setTopBottom(false, true, 22.000000, 52.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal65:completeAnimation()
		registerVal2.itemHintText:setLeftRight(false, false, -82.000000, 82.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 29.500000, 59.500000)
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.itemHintText:setScale(0.700000)
		__FUNC_286EC_(registerVal65, {})
		local function __FUNC_2892F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -2.000000, 245.000000)
			arg0:setTopBottom(true, false, -10.000000, 33.000000)
			arg0:setScale(1.080000)
			arg0.BMDateTimeAndTotalCount:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, 3.000000, 41.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(0.000000)
		__FUNC_2892F_(registerVal66, {})
	end

	registerVal75["GainFocus"] = __FUNC_26530_
	local function __FUNC_28BF6_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_29865_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -80.000000, 80.000000)
			arg0:setTopBottom(true, false, 364.000000, 408.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -110.000000, 110.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 350.000000, 409.000000)
		registerVal2.FocusBar3:setAlpha(1.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		__FUNC_29865_(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		local function __FUNC_29AAC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(1.000000)
		registerVal2.CommonBacking:setScale(1.080000)
		__FUNC_29AAC_(registerVal19, {})
		local function __FUNC_29C7F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 133.000000, 159.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 146.000000, 172.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.080000)
		__FUNC_29C7F_(registerVal23, {})
		local function __FUNC_29EBF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, 89.000000, 109.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 98.000000, 118.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.080000)
		__FUNC_29EBF_(registerVal24, {})
		local function __FUNC_2A0FA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 51.000000, 71.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 55.000000, 75.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.080000)
		__FUNC_2A0FA_(registerVal25, {})
		local function __FUNC_2A33B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 31.000000, 51.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 35.000000, 55.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.080000)
		__FUNC_2A33B_(registerVal26, {})
		local function __FUNC_2A57B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -127.500000, 126.500000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.080000)
		__FUNC_2A57B_(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_2A7BB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -0.940000)
			arg0:setTopBottom(true, true, 244.560000, -48.440000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 253.560000, -39.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.080000)
		__FUNC_2A7BB_(registerVal29, {})
		local function __FUNC_2A9FB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		__FUNC_2A9FB_(registerVal33, {})
		local function __FUNC_2ABAD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal41:completeAnimation()
		registerVal2.LightCommon:setAlpha(1.000000)
		registerVal2.LightCommon:setScale(1.080000)
		__FUNC_2ABAD_(registerVal41, {})
		local function __FUNC_2AD84_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.000000, 82.000000)
			arg0:setTopBottom(false, true, 29.500000, 59.500000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal65:completeAnimation()
		registerVal2.itemHintText:setLeftRight(false, false, -82.000000, 82.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 22.000000, 52.000000)
		registerVal2.itemHintText:setAlpha(1.000000)
		registerVal2.itemHintText:setScale(1.000000)
		__FUNC_2AD84_(registerVal65, {})
		local function __FUNC_2AFCC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -2.000000, 245.000000)
			arg0:setTopBottom(true, false, 3.000000, 41.000000)
			arg0:setScale(1.000000)
			arg0.BMDateTimeAndTotalCount:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, -10.000000, 33.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.080000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(1.000000)
		__FUNC_2AFCC_(registerVal66, {})
	end

	registerVal75["LoseFocus"] = __FUNC_28BF6_
	registerVal73["RevealedCommon"] = registerVal75
	registerVal75 = {}
	local function __FUNC_2B296_()
		registerVal2:setupElementClipCounter(21.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -79.000000, 77.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 380.000000, 406.000000)
		registerVal2.FocusBar3:setAlpha(0.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setLeftRight(true, true, -30.000000, 29.000000)
		registerVal2.EpicBacking:setTopBottom(true, true, -22.000000, 27.000000)
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(1.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(0.650000, 0.880000, 1.000000)
		registerVal2.BMLineLightFX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.lootRarityTextWhite:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.000000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal35:completeAnimation()
		registerVal2.BMPixelFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.BMPixel02FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal36, {})
		registerVal37:completeAnimation()
		registerVal2.BMPixel03FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal37, {})
		registerVal38:completeAnimation()
		registerVal2.BMPixel04FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal38, {})
	end

	registerVal75["DefaultClip"] = __FUNC_2B296_
	local function __FUNC_2BE13_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -110.000000, 110.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 350.000000, 409.000000)
		registerVal2.FocusBar3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(1.000000)
		registerVal2.RareBacking:setScale(1.080000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(0.650000, 0.880000, 1.000000)
		registerVal2.BMLineLightFX:setAlpha(1.000000)
		registerVal2.BMLineLightFX:setScale(1.080000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 146.000000, 172.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.080000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 98.000000, 118.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.080000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 55.000000, 75.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.080000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 35.000000, 55.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.080000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.080000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 253.560000, -39.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.080000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal33, {})
		local function __FUNC_2CAB3_(arg0, arg1)
			local function __FUNC_2CC2B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.080000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2CC2B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CC2B_)
		end

		registerVal42:completeAnimation()
		registerVal2.LightRare:setAlpha(1.000000)
		registerVal2.LightRare:setScale(1.080000)
		__FUNC_2CAB3_(registerVal42, {})
		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, -10.000000, 33.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.080000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(0.000000, 0.570000, 0.820000)
		registerVal2.clipFinished(registerVal66, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal75["Focus"] = __FUNC_2BE13_
	local function __FUNC_2CE00_()
		registerVal2:setupElementClipCounter(19.000000)
		local function __FUNC_2DC21_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -110.000000, 110.000000)
			arg0:setTopBottom(true, false, 350.000000, 409.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -80.000000, 80.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 364.000000, 408.000000)
		registerVal2.FocusBar3:setAlpha(0.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		__FUNC_2DC21_(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_2DE63_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(1.000000)
		registerVal2.RareBacking:setScale(1.000000)
		__FUNC_2DE63_(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_2E038_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.650000, 0.880000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(0.650000, 0.880000, 1.000000)
		registerVal2.BMLineLightFX:setAlpha(0.000000)
		registerVal2.BMLineLightFX:setScale(1.000000)
		__FUNC_2E038_(registerVal20, {})
		local function __FUNC_2E23E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 146.000000, 172.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 133.000000, 159.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.000000)
		__FUNC_2E23E_(registerVal23, {})
		local function __FUNC_2E484_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, 98.000000, 118.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 89.000000, 109.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.000000)
		__FUNC_2E484_(registerVal24, {})
		local function __FUNC_2E6C7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 55.000000, 75.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 51.000000, 71.000000)
		registerVal2.lootCategory:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.000000)
		__FUNC_2E6C7_(registerVal25, {})
		local function __FUNC_2E930_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 35.000000, 55.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 31.000000, 51.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.000000)
		__FUNC_2E930_(registerVal26, {})
		local function __FUNC_2EB78_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -5.000000, 249.000000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(true, false, -5.000000, 249.000000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.000000)
		__FUNC_2EB78_(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_2EDC0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -0.940000)
			arg0:setTopBottom(true, true, 253.560000, -39.440000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 244.560000, -48.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.000000)
		__FUNC_2EDC0_(registerVal29, {})
		local function __FUNC_2F008_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		__FUNC_2F008_(registerVal33, {})
		registerVal41:completeAnimation()
		registerVal2.LightCommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal41, {})
		local function __FUNC_2F1BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal42:completeAnimation()
		registerVal2.LightRare:setAlpha(0.000000)
		registerVal2.LightRare:setScale(1.000000)
		__FUNC_2F1BD_(registerVal42, {})
		local function __FUNC_2F394_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.000000, 82.000000)
			arg0:setTopBottom(false, true, 22.000000, 52.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal65:completeAnimation()
		registerVal2.itemHintText:setLeftRight(false, false, -82.000000, 82.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 29.500000, 59.500000)
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.itemHintText:setScale(0.700000)
		__FUNC_2F394_(registerVal65, {})
		local function __FUNC_2F5D7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount.dateTimeReceived:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -2.000000, 245.000000)
			arg0:setTopBottom(true, false, -10.000000, 33.000000)
			arg0:setScale(1.080000)
			arg0.BMDateTimeAndTotalCount:setAlpha(1.000000)
			arg0.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(0.000000, 0.570000, 0.820000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, 3.000000, 41.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(0.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(0.000000, 0.570000, 0.820000)
		__FUNC_2F5D7_(registerVal66, {})
	end

	registerVal75["GainFocus"] = __FUNC_2CE00_
	local function __FUNC_2F94F_()
		registerVal2:setupElementClipCounter(18.000000)
		local function __FUNC_306F0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -80.000000, 80.000000)
			arg0:setTopBottom(true, false, 364.000000, 408.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -110.000000, 110.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 350.000000, 409.000000)
		registerVal2.FocusBar3:setAlpha(1.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		__FUNC_306F0_(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		local function __FUNC_30938_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(1.000000)
		registerVal2.RareBacking:setScale(1.080000)
		__FUNC_30938_(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_30B0B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.650000, 0.880000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(0.650000, 0.880000, 1.000000)
		registerVal2.BMLineLightFX:setAlpha(1.000000)
		registerVal2.BMLineLightFX:setScale(1.080000)
		__FUNC_30B0B_(registerVal20, {})
		local function __FUNC_30D09_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 133.000000, 159.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 146.000000, 172.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.080000)
		__FUNC_30D09_(registerVal23, {})
		local function __FUNC_30F4B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, 89.000000, 109.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 98.000000, 118.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.080000)
		__FUNC_30F4B_(registerVal24, {})
		local function __FUNC_31186_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 51.000000, 71.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 55.000000, 75.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.080000)
		__FUNC_31186_(registerVal25, {})
		local function __FUNC_313C7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 31.000000, 51.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 35.000000, 55.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.080000)
		__FUNC_313C7_(registerVal26, {})
		local function __FUNC_31607_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -127.500000, 126.500000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.080000)
		__FUNC_31607_(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_31847_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -0.940000)
			arg0:setTopBottom(true, true, 244.560000, -48.440000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 253.560000, -39.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.080000)
		__FUNC_31847_(registerVal29, {})
		local function __FUNC_31A87_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		__FUNC_31A87_(registerVal33, {})
		local function __FUNC_31C39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal42:completeAnimation()
		registerVal2.LightRare:setAlpha(1.000000)
		registerVal2.LightRare:setScale(1.080000)
		__FUNC_31C39_(registerVal42, {})
		local function __FUNC_31E10_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.000000, 82.000000)
			arg0:setTopBottom(false, true, 29.500000, 59.500000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal65:completeAnimation()
		registerVal2.itemHintText:setLeftRight(false, false, -82.000000, 82.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 22.000000, 52.000000)
		registerVal2.itemHintText:setAlpha(1.000000)
		registerVal2.itemHintText:setScale(1.000000)
		__FUNC_31E10_(registerVal65, {})
		local function __FUNC_32058_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount.dateTimeReceived:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -2.000000, 245.000000)
			arg0:setTopBottom(true, false, 3.000000, 41.000000)
			arg0:setScale(1.000000)
			arg0.BMDateTimeAndTotalCount:setAlpha(0.000000)
			arg0.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(0.000000, 0.570000, 0.820000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, -10.000000, 33.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.080000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(0.000000, 0.570000, 0.820000)
		__FUNC_32058_(registerVal66, {})
	end

	registerVal75["LoseFocus"] = __FUNC_2F94F_
	registerVal73["RevealedRare"] = registerVal75
	registerVal75 = {}
	local function __FUNC_323CE_()
		registerVal2:setupElementClipCounter(22.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(true, false, 39.070000, 195.070000)
		registerVal2.FocusBar3:setTopBottom(true, false, 380.920000, 406.920000)
		registerVal2.FocusBar3:setAlpha(0.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(0.860000, 0.740000, 1.000000)
		registerVal2.BMLineLightFX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setLeftRight(false, false, -149.500000, 150.500000)
		registerVal2.BMTriangleLightFX:setTopBottom(true, false, -22.000000, 368.000000)
		registerVal2.BMTriangleLightFX:setRGB(0.670000, 0.200000, 1.000000)
		registerVal2.BMTriangleLightFX:setAlpha(1.000000)
		registerVal2.BMTriangleLightFX:setScale(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.lootRarityTextWhite:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.000000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal35:completeAnimation()
		registerVal2.BMPixelFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.BMPixel02FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal36, {})
		registerVal37:completeAnimation()
		registerVal2.BMPixel03FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal37, {})
		registerVal38:completeAnimation()
		registerVal2.BMPixel04FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal38, {})
		registerVal65:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal65, {})
	end

	registerVal75["DefaultClip"] = __FUNC_323CE_
	local function __FUNC_32FEF_()
		registerVal2:setupElementClipCounter(18.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -110.000000, 110.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 350.000000, 409.000000)
		registerVal2.FocusBar3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(1.000000)
		registerVal2.LegendaryBacking:setScale(1.080000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(0.860000, 0.740000, 1.000000)
		registerVal2.BMLineLightFX:setAlpha(1.000000)
		registerVal2.BMLineLightFX:setScale(1.080000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setRGB(0.670000, 0.200000, 1.000000)
		registerVal2.BMTriangleLightFX:setAlpha(1.000000)
		registerVal2.BMTriangleLightFX:setScale(1.080000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 146.000000, 172.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.080000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 98.000000, 118.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.080000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 55.000000, 75.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.080000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 35.000000, 55.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.080000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.080000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 253.560000, -39.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.080000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal33, {})
		local function __FUNC_33D4F_(arg0, arg1)
			local function __FUNC_33EC7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.080000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_33EC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33EC7_)
		end

		registerVal43:completeAnimation()
		registerVal2.LightLegendary:setAlpha(1.000000)
		registerVal2.LightLegendary:setScale(1.080000)
		__FUNC_33D4F_(registerVal43, {})
		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, -10.000000, 33.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.080000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(0.670000, 0.200000, 1.000000)
		registerVal2.clipFinished(registerVal66, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal75["Focus"] = __FUNC_32FEF_
	local function __FUNC_3409C_()
		registerVal2:setupElementClipCounter(21.000000)
		local function __FUNC_34FAC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -110.000000, 110.000000)
			arg0:setTopBottom(true, false, 350.000000, 409.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -80.000000, 80.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 364.000000, 408.000000)
		registerVal2.FocusBar3:setAlpha(0.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		__FUNC_34FAC_(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_351EF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(1.000000)
		registerVal2.LegendaryBacking:setScale(1.000000)
		__FUNC_351EF_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_353C4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.860000, 0.740000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(0.860000, 0.740000, 1.000000)
		registerVal2.BMLineLightFX:setAlpha(0.000000)
		registerVal2.BMLineLightFX:setScale(1.000000)
		__FUNC_353C4_(registerVal20, {})
		local function __FUNC_355CA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.670000, 0.200000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setRGB(0.670000, 0.200000, 1.000000)
		registerVal2.BMTriangleLightFX:setAlpha(0.000000)
		registerVal2.BMTriangleLightFX:setScale(1.000000)
		__FUNC_355CA_(registerVal21, {})
		local function __FUNC_357D3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 146.000000, 172.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 133.000000, 159.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.000000)
		__FUNC_357D3_(registerVal23, {})
		local function __FUNC_35A18_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, 98.000000, 118.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 89.000000, 109.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.000000)
		__FUNC_35A18_(registerVal24, {})
		local function __FUNC_35C5B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 55.000000, 75.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 51.000000, 71.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.000000)
		__FUNC_35C5B_(registerVal25, {})
		local function __FUNC_35EA0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 35.000000, 55.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 31.000000, 51.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.000000)
		__FUNC_35EA0_(registerVal26, {})
		local function __FUNC_360E8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -5.000000, 249.000000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(true, false, -5.000000, 249.000000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.000000)
		__FUNC_360E8_(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_36330_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -0.940000)
			arg0:setTopBottom(true, true, 253.560000, -39.440000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 244.560000, -48.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.000000)
		__FUNC_36330_(registerVal29, {})
		local function __FUNC_36578_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		__FUNC_36578_(registerVal33, {})
		registerVal41:completeAnimation()
		registerVal2.LightCommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal41, {})
		registerVal42:completeAnimation()
		registerVal2.LightRare:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal42, {})
		local function __FUNC_3672D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal43:completeAnimation()
		registerVal2.LightLegendary:setAlpha(0.000000)
		registerVal2.LightLegendary:setScale(1.000000)
		__FUNC_3672D_(registerVal43, {})
		local function __FUNC_36904_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.000000, 82.000000)
			arg0:setTopBottom(false, true, 22.000000, 52.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal65:completeAnimation()
		registerVal2.itemHintText:setLeftRight(false, false, -82.000000, 82.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 29.500000, 59.500000)
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.itemHintText:setScale(0.700000)
		__FUNC_36904_(registerVal65, {})
		local function __FUNC_36B47_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount.dateTimeReceived:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -2.000000, 245.000000)
			arg0:setTopBottom(true, false, -10.000000, 33.000000)
			arg0:setScale(1.080000)
			arg0.BMDateTimeAndTotalCount:setAlpha(1.000000)
			arg0.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(0.670000, 0.200000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, 3.000000, 41.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(0.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(0.670000, 0.200000, 1.000000)
		__FUNC_36B47_(registerVal66, {})
	end

	registerVal75["GainFocus"] = __FUNC_3409C_
	local function __FUNC_36EBA_()
		registerVal2:setupElementClipCounter(19.000000)
		local function __FUNC_37D18_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -80.000000, 80.000000)
			arg0:setTopBottom(true, false, 364.000000, 408.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -110.000000, 110.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 350.000000, 409.000000)
		registerVal2.FocusBar3:setAlpha(1.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		__FUNC_37D18_(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		local function __FUNC_37F60_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(1.000000)
		registerVal2.LegendaryBacking:setScale(1.080000)
		__FUNC_37F60_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_38133_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.860000, 0.740000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(0.860000, 0.740000, 1.000000)
		registerVal2.BMLineLightFX:setAlpha(0.000000)
		registerVal2.BMLineLightFX:setScale(1.080000)
		__FUNC_38133_(registerVal20, {})
		local function __FUNC_38336_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.670000, 0.200000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setRGB(0.670000, 0.200000, 1.000000)
		registerVal2.BMTriangleLightFX:setAlpha(0.000000)
		registerVal2.BMTriangleLightFX:setScale(1.080000)
		__FUNC_38336_(registerVal21, {})
		local function __FUNC_3853A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 133.000000, 159.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 146.000000, 172.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.080000)
		__FUNC_3853A_(registerVal23, {})
		local function __FUNC_3877B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, 89.000000, 109.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 98.000000, 118.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.080000)
		__FUNC_3877B_(registerVal24, {})
		local function __FUNC_389B6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 51.000000, 71.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 55.000000, 75.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.080000)
		__FUNC_389B6_(registerVal25, {})
		local function __FUNC_38BF7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 31.000000, 51.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 35.000000, 55.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.080000)
		__FUNC_38BF7_(registerVal26, {})
		local function __FUNC_38E37_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -127.500000, 126.500000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.080000)
		__FUNC_38E37_(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_39077_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -0.940000)
			arg0:setTopBottom(true, true, 244.560000, -48.440000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 253.560000, -39.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.080000)
		__FUNC_39077_(registerVal29, {})
		local function __FUNC_392B7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		__FUNC_392B7_(registerVal33, {})
		local function __FUNC_39469_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal43:completeAnimation()
		registerVal2.LightLegendary:setAlpha(1.000000)
		registerVal2.LightLegendary:setScale(1.080000)
		__FUNC_39469_(registerVal43, {})
		local function __FUNC_39640_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.000000, 82.000000)
			arg0:setTopBottom(false, true, 29.500000, 59.500000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal65:completeAnimation()
		registerVal2.itemHintText:setLeftRight(false, false, -82.000000, 82.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 22.000000, 52.000000)
		registerVal2.itemHintText:setAlpha(1.000000)
		registerVal2.itemHintText:setScale(1.000000)
		__FUNC_39640_(registerVal65, {})
		local function __FUNC_39888_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount.dateTimeReceived:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -2.000000, 245.000000)
			arg0:setTopBottom(true, false, 3.000000, 41.000000)
			arg0:setScale(1.000000)
			arg0.BMDateTimeAndTotalCount:setAlpha(0.000000)
			arg0.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(0.670000, 0.200000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, -10.000000, 33.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.080000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(0.670000, 0.200000, 1.000000)
		__FUNC_39888_(registerVal66, {})
	end

	registerVal75["LoseFocus"] = __FUNC_36EBA_
	registerVal73["RevealedLegendary"] = registerVal75
	registerVal75 = {}
	local function __FUNC_39BFE_()
		registerVal2:setupElementClipCounter(25.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(true, false, 39.070000, 195.070000)
		registerVal2.FocusBar3:setTopBottom(true, false, 380.920000, 406.920000)
		registerVal2.FocusBar3:setAlpha(0.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.LegendaryBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(1.000000, 0.870000, 0.610000)
		registerVal2.BMLineLightFX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMTriangleLightFX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.lootRarityTextWhite:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.000000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal35:completeAnimation()
		registerVal2.BMPixelFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.BMPixel02FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal36, {})
		registerVal37:completeAnimation()
		registerVal2.BMPixel03FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal37, {})
		registerVal38:completeAnimation()
		registerVal2.BMPixel04FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal38, {})
		registerVal44:completeAnimation()
		registerVal2.LightEpic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal44, {})
		registerVal63:completeAnimation()
		registerVal2.BMFlyEmberFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal63, {})
		registerVal64:completeAnimation()
		registerVal2.BMFlyEmberFX0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal64, {})
		registerVal65:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal65, {})
	end

	registerVal75["DefaultClip"] = __FUNC_39BFE_
	local function __FUNC_3A8C2_()
		registerVal2:setupElementClipCounter(21.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -110.000000, 110.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 350.000000, 409.000000)
		registerVal2.FocusBar3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(1.000000)
		registerVal2.EpicBacking:setScale(1.080000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.LegendaryBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMLineLightFX:setAlpha(1.000000)
		registerVal2.BMLineLightFX:setScale(1.080000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setLeftRight(false, false, -150.500000, 150.500000)
		registerVal2.BMTriangleLightFX:setTopBottom(true, false, -22.000000, 369.000000)
		registerVal2.BMTriangleLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMTriangleLightFX:setAlpha(1.000000)
		registerVal2.BMTriangleLightFX:setScale(1.080000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 146.000000, 172.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.080000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 98.000000, 118.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.080000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 55.000000, 75.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.080000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 35.000000, 55.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.080000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.080000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 253.560000, -39.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.080000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal43:completeAnimation()
		registerVal2.LightLegendary:setAlpha(0.000000)
		registerVal2.LightLegendary:setScale(1.080000)
		registerVal2.clipFinished(registerVal43, {})
		local function __FUNC_3B820_(arg0, arg1)
			local function __FUNC_3B99B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.080000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3B99B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B99B_)
		end

		registerVal44:completeAnimation()
		registerVal2.LightEpic:setAlpha(1.000000)
		registerVal2.LightEpic:setScale(1.080000)
		__FUNC_3B820_(registerVal44, {})
		registerVal63:completeAnimation()
		registerVal2.BMFlyEmberFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal63, {})
		registerVal64:completeAnimation()
		registerVal2.BMFlyEmberFX0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal64, {})
		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, -10.000000, 33.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.080000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.clipFinished(registerVal66, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal75["Focus"] = __FUNC_3A8C2_
	local function __FUNC_3BB70_()
		registerVal2:setupElementClipCounter(20.000000)
		local function __FUNC_3CA50_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -110.000000, 110.000000)
			arg0:setTopBottom(true, false, 350.000000, 409.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -80.000000, 80.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 364.000000, 408.000000)
		registerVal2.FocusBar3:setAlpha(0.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		__FUNC_3CA50_(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_3CC93_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(1.000000)
		registerVal2.EpicBacking:setScale(1.000000)
		__FUNC_3CC93_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.LegendaryBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_3CE68_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMLineLightFX:setAlpha(0.000000)
		registerVal2.BMLineLightFX:setScale(1.000000)
		__FUNC_3CE68_(registerVal20, {})
		local function __FUNC_3D06E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMTriangleLightFX:setAlpha(0.000000)
		registerVal2.BMTriangleLightFX:setScale(1.000000)
		__FUNC_3D06E_(registerVal21, {})
		local function __FUNC_3D272_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 146.000000, 172.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 133.000000, 159.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.000000)
		__FUNC_3D272_(registerVal23, {})
		local function __FUNC_3D4B8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, 98.000000, 118.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 89.000000, 109.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.000000)
		__FUNC_3D4B8_(registerVal24, {})
		local function __FUNC_3D6FB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 55.000000, 75.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 51.000000, 71.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.000000)
		__FUNC_3D6FB_(registerVal25, {})
		local function __FUNC_3D940_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 35.000000, 55.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 31.000000, 51.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.000000)
		__FUNC_3D940_(registerVal26, {})
		local function __FUNC_3DB88_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -127.500000, 126.500000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.000000)
		__FUNC_3DB88_(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_3DDD0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -0.940000)
			arg0:setTopBottom(true, true, 253.560000, -39.440000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 244.560000, -48.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.000000)
		__FUNC_3DDD0_(registerVal29, {})
		local function __FUNC_3E018_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		__FUNC_3E018_(registerVal33, {})
		registerVal43:completeAnimation()
		registerVal2.LightLegendary:setAlpha(0.000000)
		registerVal2.LightLegendary:setScale(1.000000)
		registerVal2.clipFinished(registerVal43, {})
		local function __FUNC_3E1CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal44:completeAnimation()
		registerVal2.LightEpic:setAlpha(0.000000)
		registerVal2.LightEpic:setScale(1.000000)
		__FUNC_3E1CD_(registerVal44, {})
		local function __FUNC_3E3A4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.000000, 82.000000)
			arg0:setTopBottom(false, true, 22.000000, 52.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal65:completeAnimation()
		registerVal2.itemHintText:setLeftRight(false, false, -82.000000, 82.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 29.500000, 59.500000)
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.itemHintText:setScale(0.700000)
		__FUNC_3E3A4_(registerVal65, {})
		local function __FUNC_3E5E7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount.dateTimeReceived:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -2.000000, 245.000000)
			arg0:setTopBottom(true, false, -10.000000, 33.000000)
			arg0:setScale(1.080000)
			arg0.BMDateTimeAndTotalCount:setAlpha(1.000000)
			arg0.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(1.000000, 0.670000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, 3.000000, 41.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(0.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(1.000000, 0.670000, 0.000000)
		__FUNC_3E5E7_(registerVal66, {})
	end

	registerVal75["GainFocus"] = __FUNC_3BB70_
	local function __FUNC_3E95A_()
		registerVal2:setupElementClipCounter(22.000000)
		local function __FUNC_3F8E4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -80.000000, 80.000000)
			arg0:setTopBottom(true, false, 364.000000, 408.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -110.000000, 110.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 350.000000, 409.000000)
		registerVal2.FocusBar3:setAlpha(1.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		__FUNC_3F8E4_(registerVal3, {})
		registerVal14:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_3FB2C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(1.000000)
		registerVal2.EpicBacking:setScale(1.080000)
		__FUNC_3FB2C_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.LegendaryBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_3FCFF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMLineLightFX:setAlpha(1.000000)
		registerVal2.BMLineLightFX:setScale(1.080000)
		__FUNC_3FCFF_(registerVal20, {})
		local function __FUNC_3FEFD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMTriangleLightFX:setAlpha(0.000000)
		registerVal2.BMTriangleLightFX:setScale(1.080000)
		__FUNC_3FEFD_(registerVal21, {})
		local function __FUNC_400FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 133.000000, 159.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 146.000000, 172.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.080000)
		__FUNC_400FD_(registerVal23, {})
		local function __FUNC_4033F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, 90.000000, 110.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 98.000000, 118.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.080000)
		__FUNC_4033F_(registerVal24, {})
		local function __FUNC_4057A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 51.000000, 71.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 55.000000, 75.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.080000)
		__FUNC_4057A_(registerVal25, {})
		local function __FUNC_407BB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 31.000000, 51.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 35.000000, 55.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.080000)
		__FUNC_407BB_(registerVal26, {})
		local function __FUNC_409FB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -127.500000, 126.500000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.080000)
		__FUNC_409FB_(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_40C3B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -0.940000)
			arg0:setTopBottom(true, true, 244.560000, -48.440000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 253.560000, -39.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.080000)
		__FUNC_40C3B_(registerVal29, {})
		local function __FUNC_40E7B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		__FUNC_40E7B_(registerVal33, {})
		local function __FUNC_4102D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal43:completeAnimation()
		registerVal2.LightLegendary:setAlpha(0.000000)
		registerVal2.LightLegendary:setScale(1.080000)
		__FUNC_4102D_(registerVal43, {})
		local function __FUNC_41204_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal44:completeAnimation()
		registerVal2.LightEpic:setAlpha(1.000000)
		registerVal2.LightEpic:setScale(1.080000)
		__FUNC_41204_(registerVal44, {})
		registerVal63:completeAnimation()
		registerVal2.BMFlyEmberFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal63, {})
		registerVal64:completeAnimation()
		registerVal2.BMFlyEmberFX0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal64, {})
		local function __FUNC_413DC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.000000, 82.000000)
			arg0:setTopBottom(false, true, 29.500000, 59.500000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal65:completeAnimation()
		registerVal2.itemHintText:setLeftRight(false, false, -82.000000, 82.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 22.000000, 52.000000)
		registerVal2.itemHintText:setAlpha(1.000000)
		registerVal2.itemHintText:setScale(1.000000)
		__FUNC_413DC_(registerVal65, {})
		local function __FUNC_41624_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount.dateTimeReceived:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -2.000000, 245.000000)
			arg0:setTopBottom(true, false, 3.000000, 41.000000)
			arg0:setScale(1.000000)
			arg0.BMDateTimeAndTotalCount:setAlpha(0.000000)
			arg0.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(1.000000, 0.670000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, -10.000000, 33.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.080000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(1.000000, 0.670000, 0.000000)
		__FUNC_41624_(registerVal66, {})
	end

	registerVal75["LoseFocus"] = __FUNC_3E95A_
	registerVal73["RevealedEpic"] = registerVal75
	registerVal75 = {}
	local function __FUNC_41995_()
		registerVal2:setupElementClipCounter(34.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(true, false, 39.070000, 195.070000)
		registerVal2.FocusBar3:setTopBottom(true, false, 380.920000, 406.920000)
		registerVal2.FocusBar3:setAlpha(0.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_429D8_(arg0, arg1)
			local function __FUNC_42B53_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_42B53_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42B53_)
		end

		registerVal13:completeAnimation()
		registerVal2.LimitedBackglow:setAlpha(0.500000)
		__FUNC_429D8_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LimitedBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LimitedBackingGlint:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.LegendaryBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(1.000000, 0.870000, 0.610000)
		registerVal2.BMLineLightFX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMTriangleLightFX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.lootRarityTextWhite:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityTextWhite:setTopBottom(false, false, 134.000000, 160.000000)
		registerVal2.lootRarityTextWhite:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.lootRarityTextWhite:setAlpha(1.000000)
		registerVal2.lootRarityTextWhite:setScale(1.000000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.000000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.000000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.000000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.000000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.000000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.000000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal35:completeAnimation()
		registerVal2.BMPixelFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal35, {})
		registerVal36:completeAnimation()
		registerVal2.BMPixel02FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal36, {})
		registerVal37:completeAnimation()
		registerVal2.BMPixel03FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal37, {})
		registerVal38:completeAnimation()
		registerVal2.BMPixel04FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal38, {})
		registerVal39:completeAnimation()
		registerVal2.BMPixel05FX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal39, {})
		registerVal40:completeAnimation()
		registerVal2.BMPixel06FX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal40, {})
		registerVal44:completeAnimation()
		registerVal2.LightEpic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal44, {})
		registerVal45:completeAnimation()
		registerVal2.LightLimited:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal45, {})
		registerVal51:completeAnimation()
		registerVal2.LimitedBackingFocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal51, {})
		registerVal55:completeAnimation()
		registerVal2.BMCircuits02FX:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal55, {})
		registerVal56:completeAnimation()
		registerVal2.BMCircuits01FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal56, {})
		registerVal63:completeAnimation()
		registerVal2.BMFlyEmberFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal63, {})
		registerVal64:completeAnimation()
		registerVal2.BMFlyEmberFX0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal64, {})
		registerVal65:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal65, {})
		local function __FUNC_42D05_(arg0, arg1)
			local function __FUNC_42E7F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.250000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_42E7F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42E7F_)
		end

		registerVal67:completeAnimation()
		registerVal2.Circuits:setAlpha(0.250000)
		__FUNC_42D05_(registerVal67, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal75["DefaultClip"] = __FUNC_41995_
	local function __FUNC_43031_()
		registerVal2:setupElementClipCounter(32.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -110.000000, 110.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 350.000000, 409.000000)
		registerVal2.FocusBar3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_443E3_(arg0, arg1)
			local function __FUNC_4455B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4455B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4455B_)
		end

		registerVal13:completeAnimation()
		registerVal2.LimitedBackglow:setAlpha(1.000000)
		registerVal2.LimitedBackglow:setScale(1.600000)
		__FUNC_443E3_(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LimitedBacking:setAlpha(1.000000)
		registerVal2.LimitedBacking:setScale(1.080000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LimitedBackingGlint:setAlpha(1.000000)
		registerVal2.LimitedBackingGlint:setScale(1.080000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.LegendaryBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMLineLightFX:setAlpha(1.000000)
		registerVal2.BMLineLightFX:setScale(1.080000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setLeftRight(false, false, -150.500000, 150.500000)
		registerVal2.BMTriangleLightFX:setTopBottom(true, false, -22.000000, 369.000000)
		registerVal2.BMTriangleLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMTriangleLightFX:setAlpha(1.000000)
		registerVal2.BMTriangleLightFX:setScale(1.080000)
		registerVal2.clipFinished(registerVal21, {})
		registerVal22:completeAnimation()
		registerVal2.lootRarityTextWhite:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityTextWhite:setTopBottom(false, false, 147.000000, 173.000000)
		registerVal2.lootRarityTextWhite:setAlpha(1.000000)
		registerVal2.lootRarityTextWhite:setScale(1.080000)
		registerVal2.clipFinished(registerVal22, {})
		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 146.000000, 172.000000)
		registerVal2.lootRarityText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.080000)
		registerVal2.clipFinished(registerVal23, {})
		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 98.000000, 118.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.080000)
		registerVal2.clipFinished(registerVal24, {})
		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 55.000000, 75.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.080000)
		registerVal2.clipFinished(registerVal25, {})
		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 35.000000, 55.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.080000)
		registerVal2.clipFinished(registerVal26, {})
		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(true, false, -5.000000, 249.000000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.080000)
		registerVal2.clipFinished(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 253.560000, -39.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.080000)
		registerVal2.clipFinished(registerVal29, {})
		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal33, {})
		registerVal43:completeAnimation()
		registerVal2.LightLegendary:setAlpha(0.000000)
		registerVal2.LightLegendary:setScale(1.080000)
		registerVal2.clipFinished(registerVal43, {})
		registerVal44:completeAnimation()
		registerVal2.LightEpic:setAlpha(0.000000)
		registerVal2.LightEpic:setScale(1.080000)
		registerVal2.clipFinished(registerVal44, {})
		local function __FUNC_44730_(arg0, arg1)
			local function __FUNC_448AB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.080000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_448AB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_448AB_)
		end

		registerVal45:completeAnimation()
		registerVal2.LightLimited:setAlpha(1.000000)
		registerVal2.LightLimited:setScale(1.080000)
		__FUNC_44730_(registerVal45, {})
		local function __FUNC_44A80_(arg0, arg1)
			local function __FUNC_44BFB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 659.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				arg0:setScale(1.080000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_44BFB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.750000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44BFB_)
		end

		registerVal51:completeAnimation()
		registerVal2.LimitedBackingFocus:setAlpha(1.000000)
		registerVal2.LimitedBackingFocus:setScale(1.080000)
		__FUNC_44A80_(registerVal51, {})
		registerVal52:completeAnimation()
		registerVal2.LimitedWave1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal52, {})
		registerVal53:completeAnimation()
		registerVal2.LimitedWave2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal53, {})
		registerVal54:completeAnimation()
		registerVal2.LimitedWave3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal54, {})
		registerVal55:completeAnimation()
		registerVal2.BMCircuits02FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal55, {})
		registerVal56:completeAnimation()
		registerVal2.BMCircuits01FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal56, {})
		registerVal63:completeAnimation()
		registerVal2.BMFlyEmberFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal63, {})
		registerVal64:completeAnimation()
		registerVal2.BMFlyEmberFX0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal64, {})
		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, -10.000000, 33.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.080000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.clipFinished(registerVal66, {})
		registerVal67:completeAnimation()
		registerVal2.Circuits:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal67, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal75["Focus"] = __FUNC_43031_
	local function __FUNC_44DD0_()
		registerVal2:setupElementClipCounter(28.000000)
		local function __FUNC_45FED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -110.000000, 110.000000)
			arg0:setTopBottom(true, false, 350.000000, 409.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -80.000000, 80.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 364.000000, 408.000000)
		registerVal2.FocusBar3:setAlpha(0.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		__FUNC_45FED_(registerVal3, {})
		local function __FUNC_4622F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.LimitedBackglow:setAlpha(0.000000)
		registerVal2.LimitedBackglow:setScale(1.550000)
		__FUNC_4622F_(registerVal13, {})
		local function __FUNC_46404_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.LimitedBacking:setAlpha(1.000000)
		registerVal2.LimitedBacking:setScale(1.000000)
		__FUNC_46404_(registerVal14, {})
		local function __FUNC_465DC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.LimitedBackingGlint:setAlpha(1.000000)
		registerVal2.LimitedBackingGlint:setScale(1.000000)
		__FUNC_465DC_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.LegendaryBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_467B4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMLineLightFX:setAlpha(0.000000)
		registerVal2.BMLineLightFX:setScale(1.000000)
		__FUNC_467B4_(registerVal20, {})
		local function __FUNC_469BA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMTriangleLightFX:setAlpha(0.000000)
		registerVal2.BMTriangleLightFX:setScale(1.000000)
		__FUNC_469BA_(registerVal21, {})
		local function __FUNC_46BBE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 147.000000, 173.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.lootRarityTextWhite:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityTextWhite:setTopBottom(false, false, 134.000000, 160.000000)
		registerVal2.lootRarityTextWhite:setAlpha(1.000000)
		registerVal2.lootRarityTextWhite:setScale(1.000000)
		__FUNC_46BBE_(registerVal22, {})
		local function __FUNC_46E04_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 146.000000, 172.000000)
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 133.000000, 159.000000)
		registerVal2.lootRarityText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.000000)
		__FUNC_46E04_(registerVal23, {})
		local function __FUNC_47070_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, 98.000000, 118.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 89.000000, 109.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.000000)
		__FUNC_47070_(registerVal24, {})
		local function __FUNC_472B3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 55.000000, 75.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 51.000000, 71.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.000000)
		__FUNC_472B3_(registerVal25, {})
		local function __FUNC_474F8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 35.000000, 55.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 31.000000, 51.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.000000)
		__FUNC_474F8_(registerVal26, {})
		local function __FUNC_47740_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -127.500000, 126.500000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(false, false, -127.500000, 126.500000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.000000)
		__FUNC_47740_(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_47988_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -0.940000)
			arg0:setTopBottom(true, true, 253.560000, -39.440000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 244.560000, -48.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.000000)
		__FUNC_47988_(registerVal29, {})
		local function __FUNC_47BD0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		__FUNC_47BD0_(registerVal33, {})
		registerVal43:completeAnimation()
		registerVal2.LightLegendary:setAlpha(0.000000)
		registerVal2.LightLegendary:setScale(1.000000)
		registerVal2.clipFinished(registerVal43, {})
		registerVal44:completeAnimation()
		registerVal2.LightEpic:setAlpha(0.000000)
		registerVal2.LightEpic:setScale(1.000000)
		registerVal2.clipFinished(registerVal44, {})
		local function __FUNC_47D85_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal45:completeAnimation()
		registerVal2.LightLimited:setAlpha(0.000000)
		registerVal2.LightLimited:setScale(1.000000)
		__FUNC_47D85_(registerVal45, {})
		local function __FUNC_47F5C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.080000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal51:completeAnimation()
		registerVal2.LimitedBackingFocus:setAlpha(0.000000)
		registerVal2.LimitedBackingFocus:setScale(1.000000)
		__FUNC_47F5C_(registerVal51, {})
		registerVal55:completeAnimation()
		registerVal2.BMCircuits02FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal55, {})
		registerVal56:completeAnimation()
		registerVal2.BMCircuits01FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal56, {})
		local function __FUNC_48134_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.000000, 82.000000)
			arg0:setTopBottom(false, true, 22.000000, 52.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal65:completeAnimation()
		registerVal2.itemHintText:setLeftRight(false, false, -82.000000, 82.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 29.500000, 59.500000)
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.itemHintText:setScale(0.700000)
		__FUNC_48134_(registerVal65, {})
		local function __FUNC_48377_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount.dateTimeReceived:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -2.000000, 245.000000)
			arg0:setTopBottom(true, false, -10.000000, 33.000000)
			arg0:setScale(1.080000)
			arg0.BMDateTimeAndTotalCount:setAlpha(1.000000)
			arg0.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(1.000000, 0.670000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, 3.000000, 41.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(0.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(1.000000, 0.670000, 0.000000)
		__FUNC_48377_(registerVal66, {})
		registerVal67:completeAnimation()
		registerVal2.Circuits:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal67, {})
	end

	registerVal75["GainFocus"] = __FUNC_44DD0_
	local function __FUNC_486EA_()
		registerVal2:setupElementClipCounter(30.000000)
		local function __FUNC_499B6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -80.000000, 80.000000)
			arg0:setTopBottom(true, false, 364.000000, 408.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FocusBar3:setLeftRight(false, false, -110.000000, 110.000000)
		registerVal2.FocusBar3:setTopBottom(true, false, 350.000000, 409.000000)
		registerVal2.FocusBar3:setAlpha(1.000000)
		registerVal2.FocusBar3:setScale(1.000000)
		__FUNC_499B6_(registerVal3, {})
		local function __FUNC_49BFC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.550000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.LimitedBackglow:setAlpha(1.000000)
		registerVal2.LimitedBackglow:setScale(1.600000)
		__FUNC_49BFC_(registerVal13, {})
		local function __FUNC_49DD4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.LimitedBacking:setAlpha(1.000000)
		registerVal2.LimitedBacking:setScale(1.080000)
		__FUNC_49DD4_(registerVal14, {})
		local function __FUNC_49FA7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.LimitedBackingGlint:setAlpha(1.000000)
		registerVal2.LimitedBackingGlint:setScale(1.080000)
		__FUNC_49FA7_(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.EpicBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.LegendaryBacking:setAlpha(0.000000)
		registerVal2.LegendaryBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.RareBacking:setAlpha(0.000000)
		registerVal2.RareBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.CommonBacking:setAlpha(0.000000)
		registerVal2.CommonBacking:setScale(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		local function __FUNC_4A177_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal20:completeAnimation()
		registerVal2.BMLineLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMLineLightFX:setAlpha(1.000000)
		registerVal2.BMLineLightFX:setScale(1.080000)
		__FUNC_4A177_(registerVal20, {})
		local function __FUNC_4A375_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.670000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal2.BMTriangleLightFX:setRGB(1.000000, 0.670000, 0.000000)
		registerVal2.BMTriangleLightFX:setAlpha(0.000000)
		registerVal2.BMTriangleLightFX:setScale(1.080000)
		__FUNC_4A375_(registerVal21, {})
		local function __FUNC_4A575_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 134.000000, 160.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.lootRarityTextWhite:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityTextWhite:setTopBottom(false, false, 147.000000, 173.000000)
		registerVal2.lootRarityTextWhite:setAlpha(1.000000)
		registerVal2.lootRarityTextWhite:setScale(1.080000)
		__FUNC_4A575_(registerVal22, {})
		local function __FUNC_4A7B7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -1.000000)
			arg0:setTopBottom(false, false, 133.000000, 159.000000)
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal23:completeAnimation()
		registerVal2.lootRarityText:setLeftRight(true, true, 0.000000, -1.000000)
		registerVal2.lootRarityText:setTopBottom(false, false, 146.000000, 172.000000)
		registerVal2.lootRarityText:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.lootRarityText:setAlpha(1.000000)
		registerVal2.lootRarityText:setScale(1.080000)
		__FUNC_4A7B7_(registerVal23, {})
		local function __FUNC_4AA1B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, 90.000000, 110.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:completeAnimation()
		registerVal2.lootRaritySet:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.lootRaritySet:setTopBottom(false, false, 98.000000, 118.000000)
		registerVal2.lootRaritySet:setAlpha(1.000000)
		registerVal2.lootRaritySet:setScale(1.080000)
		__FUNC_4AA1B_(registerVal24, {})
		local function __FUNC_4AC56_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 51.000000, 71.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.lootCategory:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootCategory:setTopBottom(false, false, 55.000000, 75.000000)
		registerVal2.lootCategory:setAlpha(1.000000)
		registerVal2.lootCategory:setScale(1.080000)
		__FUNC_4AC56_(registerVal25, {})
		local function __FUNC_4AE97_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -1.000000, 0.000000)
			arg0:setTopBottom(false, false, 31.000000, 51.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal26:completeAnimation()
		registerVal2.lootName:setLeftRight(true, true, -1.000000, 0.000000)
		registerVal2.lootName:setTopBottom(false, false, 35.000000, 55.000000)
		registerVal2.lootName:setAlpha(1.000000)
		registerVal2.lootName:setScale(1.080000)
		__FUNC_4AE97_(registerVal26, {})
		local function __FUNC_4B0D7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -5.000000, 249.000000)
			arg0:setTopBottom(true, false, -57.000000, 292.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal27:completeAnimation()
		registerVal2.LootDecryptionImage:setLeftRight(true, false, -5.000000, 249.000000)
		registerVal2.LootDecryptionImage:setTopBottom(true, false, -57.000000, 292.000000)
		registerVal2.LootDecryptionImage:setAlpha(1.000000)
		registerVal2.LootDecryptionImage:setScale(1.080000)
		__FUNC_4B0D7_(registerVal27, {})
		registerVal28:completeAnimation()
		registerVal2.LootDecryptionFakeImageCycle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal28, {})
		local function __FUNC_4B317_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -0.940000)
			arg0:setTopBottom(true, true, 244.560000, -48.440000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.BMLockItem:setLeftRight(true, true, 0.000000, -0.940000)
		registerVal2.BMLockItem:setTopBottom(true, true, 253.560000, -39.440000)
		registerVal2.BMLockItem:setAlpha(1.000000)
		registerVal2.BMLockItem:setScale(1.080000)
		__FUNC_4B317_(registerVal29, {})
		local function __FUNC_4B557_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:completeAnimation()
		registerVal2.GLOWcommon:setAlpha(0.000000)
		__FUNC_4B557_(registerVal33, {})
		local function __FUNC_4B709_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal43:completeAnimation()
		registerVal2.LightLegendary:setAlpha(0.000000)
		registerVal2.LightLegendary:setScale(1.080000)
		__FUNC_4B709_(registerVal43, {})
		registerVal44:completeAnimation()
		registerVal2.LightEpic:setAlpha(0.000000)
		registerVal2.LightEpic:setScale(1.080000)
		registerVal2.clipFinished(registerVal44, {})
		local function __FUNC_4B8E0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal45:completeAnimation()
		registerVal2.LightLimited:setAlpha(1.000000)
		registerVal2.LightLimited:setScale(1.080000)
		__FUNC_4B8E0_(registerVal45, {})
		local function __FUNC_4BAB8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal51:completeAnimation()
		registerVal2.LimitedBackingFocus:setAlpha(1.000000)
		registerVal2.LimitedBackingFocus:setScale(1.080000)
		__FUNC_4BAB8_(registerVal51, {})
		registerVal55:completeAnimation()
		registerVal2.BMCircuits02FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal55, {})
		registerVal56:completeAnimation()
		registerVal2.BMCircuits01FX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal56, {})
		registerVal63:completeAnimation()
		registerVal2.BMFlyEmberFX:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal63, {})
		registerVal64:completeAnimation()
		registerVal2.BMFlyEmberFX0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal64, {})
		local function __FUNC_4BC90_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -82.000000, 82.000000)
			arg0:setTopBottom(false, true, 29.500000, 59.500000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal65:completeAnimation()
		registerVal2.itemHintText:setLeftRight(false, false, -82.000000, 82.000000)
		registerVal2.itemHintText:setTopBottom(false, true, 22.000000, 52.000000)
		registerVal2.itemHintText:setAlpha(1.000000)
		registerVal2.itemHintText:setScale(1.000000)
		__FUNC_4BC90_(registerVal65, {})
		local function __FUNC_4BED8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0.BMDateTimeAndTotalCount.dateTimeReceived:beginAnimation("subkeyframe", 209.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -2.000000, 245.000000)
			arg0:setTopBottom(true, false, 3.000000, 41.000000)
			arg0:setScale(1.000000)
			arg0.BMDateTimeAndTotalCount:setAlpha(0.000000)
			arg0.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(1.000000, 0.670000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal66:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount:completeAnimation()
		registerVal66.BMDateTimeAndTotalCount.dateTimeReceived:completeAnimation()
		registerVal2.BMTimeAndLootBanner:setLeftRight(true, false, -2.000000, 245.000000)
		registerVal2.BMTimeAndLootBanner:setTopBottom(true, false, -10.000000, 33.000000)
		registerVal2.BMTimeAndLootBanner:setScale(1.080000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount:setAlpha(1.000000)
		registerVal2.BMTimeAndLootBanner.BMDateTimeAndTotalCount.dateTimeReceived:setRGB(1.000000, 0.670000, 0.000000)
		__FUNC_4BED8_(registerVal66, {})
		registerVal67:completeAnimation()
		registerVal2.Circuits:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal67, {})
	end

	registerVal75["LoseFocus"] = __FUNC_486EA_
	registerVal73["RevealedLimited"] = registerVal75
	registerVal2["clipsPerState"] = registerVal73
	local registerVal74 = {}
	registerVal75 = {}
	registerVal75.stateName = "RevealedCommon"
	local function __FUNC_4C249_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "rarityName", "MPUI_BM_COMMON")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "reveal")
		end
		return registerVal3
	end

	registerVal75.condition = __FUNC_4C249_
	local registerVal76 = {}
	registerVal76.stateName = "RevealedRare"
	local function __FUNC_4C327_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "rarityName", "MPUI_BM_RARE")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "reveal")
		end
		return registerVal3
	end

	registerVal76.condition = __FUNC_4C327_
	local registerVal77 = {}
	registerVal77.stateName = "RevealedLegendary"
	local function __FUNC_4C401_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "rarityName", "MPUI_BM_LEGENDARY")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "reveal")
		end
		return registerVal3
	end

	registerVal77.condition = __FUNC_4C401_
	local registerVal78 = {}
	registerVal78.stateName = "RevealedEpic"
	local function __FUNC_4C4E2_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "rarityName", "MPUI_BM_EPIC")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "reveal")
		end
		return registerVal3
	end

	registerVal78.condition = __FUNC_4C4E2_
	local registerVal79 = {}
	registerVal79.stateName = "RevealedLimited"
	local function __FUNC_4C5BD_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "rarityName", "MPUI_BM_LIMITED")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "reveal")
		end
		return registerVal3
	end

	registerVal79.condition = __FUNC_4C5BD_
	registerVal74 = {registerVal75, registerVal76, registerVal77, registerVal78, registerVal79}
	registerVal2:mergeStateConditions(registerVal74)
	local function __FUNC_4C69C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "rarityName"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "rarityName", true, __FUNC_4C69C_)
	local function __FUNC_4C7BC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "reveal"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "reveal", true, __FUNC_4C7BC_)
	local function __FUNC_4C8D8_(arg0)
		arg0.fxGlitch1800:close()
		arg0.fxGlitch1700:close()
		arg0.fxGlitch1600:close()
		arg0.fxGlitch1500:close()
		arg0.fxGlitch1400:close()
		arg0.fxGlitch1300:close()
		arg0.fxGlitch1200:close()
		arg0.fxGlitch1100:close()
		arg0.BMLineLightFX:close()
		arg0.BMTriangleLightFX:close()
		arg0.LootDecryptionImage:close()
		arg0.LootDecryptionFakeImageCycle:close()
		arg0.BMLockItem:close()
		arg0.BMPixelFX:close()
		arg0.BMPixel02FX:close()
		arg0.BMPixel03FX:close()
		arg0.BMPixel04FX:close()
		arg0.BMPixel05FX:close()
		arg0.BMPixel06FX:close()
		arg0.BMCircuits02FX:close()
		arg0.BMCircuits01FX:close()
		arg0.BMFlyEmberFX:close()
		arg0.BMFlyEmberFX0:close()
		arg0.itemHintText:close()
		arg0.BMTimeAndLootBanner:close()
		arg0.lootRarityTextWhite:close()
		arg0.lootRarityText:close()
		arg0.lootRaritySet:close()
		arg0.lootCategory:close()
		arg0.lootName:close()
	end

	LUI["OverrideFunction_CallOriginalSecond"](registerVal2, "close", __FUNC_4C8D8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

