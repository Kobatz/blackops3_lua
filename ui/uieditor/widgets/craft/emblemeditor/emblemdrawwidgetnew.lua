-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedBlur")
require("ui.uieditor.widgets.BorderBakedMask")
require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.BorderBaked")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.BlackMarket.BM_GoldBar")
local function __FUNC_341_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0.m_preventFromBeingCurrentMouseFocus = true
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.EmblemDrawWidgetNew = registerVal2
local function __FUNC_3D2_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemDrawWidgetNew)
	registerVal2.id = "EmblemDrawWidgetNew"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 314.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BorderBakedBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderBakedBlur0 = registerVal3
	local registerVal4 = CoD.BorderBakedMask.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedMask0 = registerVal4
	local registerVal5 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.BorderBakedSolid0 = registerVal5
	local registerVal6 = CoD.BorderBaked.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 1.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BorderBaked0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 2.500000, -1.500000)
	registerVal7:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.backgroundMask = registerVal7
	local registerVal8 = LUI.UIElement.new()
	registerVal8:setLeftRight(true, true, 10.000000, -10.000000)
	registerVal8:setTopBottom(true, true, 10.000000, -10.000000)
	local function __FUNC_14D1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setupEmblem(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "Customization", "type", __FUNC_14D1_)
	registerVal2:addElement(registerVal8)
	registerVal2.emblemDrawingArea = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -1.120000, 1.380000)
	registerVal9:setTopBottom(true, false, -1.000000, 6.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -1.120000, 1.380000)
	registerVal10:setTopBottom(true, false, 274.000000, 281.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarT0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 5.500000, -6.500000)
	registerVal11:setTopBottom(false, true, -9.500000, 5.500000)
	registerVal11:setRGB(1.000000, 0.150000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glitch2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal12:setTopBottom(true, false, -6.000000, 7.500000)
	registerVal12:setRGB(1.000000, 0.090000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -24.000000, 24.000000)
	registerVal13:setTopBottom(false, false, -24.000000, 24.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_img_t7_menu_customclass_plus"))
	registerVal2:addElement(registerVal13)
	registerVal2.emptyLayerIcon = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal14:setRGB(0.110000, 0.110000, 0.110000)
	registerVal2:addElement(registerVal14)
	registerVal2.bgImage = registerVal14
	local registerVal15 = CoD.BM_GoldBar.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, 0.000000, 1.380000)
	registerVal15:setTopBottom(false, false, -13.500000, 6.500000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.BMGoldBar = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 125.500000, -118.500000)
	registerVal16:setTopBottom(true, true, 25.500000, -32.500000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_icon_blackmarket_encryptedicon_large"))
	registerVal2:addElement(registerVal16)
	registerVal2.blackMarketBrandIcon0 = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_1568_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBaked0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.backgroundMask:setLeftRight(true, true, 2.500000, -1.500000)
		registerVal2.backgroundMask:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.backgroundMask:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.backgroundMask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.emblemDrawingArea:setLeftRight(true, true, 10.000000, -10.000000)
		registerVal2.emblemDrawingArea:setTopBottom(true, true, 10.000000, -10.000000)
		registerVal2.emblemDrawingArea:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BMGoldBar:setLeftRight(true, true, 2.500000, 0.000000)
		registerVal2.BMGoldBar:setTopBottom(false, false, -10.000000, 10.000000)
		registerVal2.BMGoldBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.blackMarketBrandIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1568_
	local function __FUNC_1D0B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal13:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal15:completeAnimation()
		registerVal2.BMGoldBar:setLeftRight(true, true, 0.000000, 1.380000)
		registerVal2.BMGoldBar:setTopBottom(false, false, -13.500000, 6.500000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.Focus = __FUNC_1D0B_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_1ED4_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBaked0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.backgroundMask:setLeftRight(true, true, 2.500000, -1.500000)
		registerVal2.backgroundMask:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.backgroundMask:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.backgroundMask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.emblemDrawingArea:setLeftRight(true, true, 10.000000, -10.000000)
		registerVal2.emblemDrawingArea:setTopBottom(true, true, 10.000000, -10.000000)
		registerVal2.emblemDrawingArea:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.bgImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BMGoldBar:setLeftRight(true, true, 15.500000, -6.500000)
		registerVal2.BMGoldBar:setTopBottom(false, false, -10.000000, 10.000000)
		registerVal2.BMGoldBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.blackMarketBrandIcon0:setLeftRight(true, true, 143.500000, -142.500000)
		registerVal2.blackMarketBrandIcon0:setTopBottom(true, true, 48.000000, -52.000000)
		registerVal2.blackMarketBrandIcon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1ED4_
	registerVal17.BMClassified = registerVal18
	registerVal18 = {}
	local function __FUNC_26E5_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBaked0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.backgroundMask:setLeftRight(true, true, 2.500000, -1.500000)
		registerVal2.backgroundMask:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.backgroundMask:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.backgroundMask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.emblemDrawingArea:setLeftRight(true, true, 10.000000, -10.000000)
		registerVal2.emblemDrawingArea:setTopBottom(true, true, 10.000000, -10.000000)
		registerVal2.emblemDrawingArea:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BMGoldBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.blackMarketBrandIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_26E5_
	registerVal17.Unfocusable = registerVal18
	registerVal18 = {}
	local function __FUNC_2E37_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedBlur0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.500000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBaked0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.backgroundMask:setLeftRight(true, true, 2.500000, -1.500000)
		registerVal2.backgroundMask:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.backgroundMask:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.backgroundMask:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.emblemDrawingArea:setLeftRight(true, true, 10.000000, -10.000000)
		registerVal2.emblemDrawingArea:setTopBottom(true, true, 10.000000, -10.000000)
		registerVal2.emblemDrawingArea:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.bgImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.BMGoldBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.blackMarketBrandIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_2E37_
	local function __FUNC_3587_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal13:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal18.Focus = __FUNC_3587_
	registerVal17.EmptySlot = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "BMClassified"
	local function __FUNC_3685_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isBMClassified")
	end

	registerVal20.condition = __FUNC_3685_
	local registerVal21 = {}
	registerVal21.stateName = "Unfocusable"
	local function __FUNC_36FE_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_36FE_
	local registerVal22 = {}
	registerVal22.stateName = "EmptySlot"
	local function __FUNC_3749_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal22.condition = __FUNC_3749_
	registerVal19 = {registerVal20, registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_3795_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isBMClassified", true, __FUNC_3795_)
	registerVal15.id = "BMGoldBar"
	local function __FUNC_38B8_(arg0, arg1)
		local registerVal2 = arg0.BMGoldBar:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_38B8_)
	local function __FUNC_39BD_(arg0)
		arg0.BorderBakedBlur0:close()
		arg0.BorderBakedMask0:close()
		arg0.BorderBakedSolid0:close()
		arg0.BorderBaked0:close()
		arg0.FocusBarT:close()
		arg0.FocusBarT0:close()
		arg0.BMGoldBar:close()
		arg0.emblemDrawingArea:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_39BD_)
	if __FUNC_341_ then
		__FUNC_341_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.EmblemDrawWidgetNew.new = __FUNC_3D2_
