-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_button_HexBlur")
require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_button_backing_lines")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_ButtonWidget = registerVal1
function CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_ButtonWidget)
	registerVal2.id = "vhud_ms_ButtonWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 86.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 109.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_button_HexBlur.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -36.500000, 36.500000)
	registerVal3:setTopBottom(false, false, -39.000000, 34.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudbuttonHexBlur = registerVal3
	local registerVal4 = CoD.vhud_button_backing_lines.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -36.500000, 36.500000)
	registerVal4:setTopBottom(false, false, -39.000000, 34.000000)
	local function __FUNC_F13_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "PerController", "vehicle.bindings.color", __FUNC_F13_)
	registerVal2:addElement(registerVal4)
	registerVal2.backinglines = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal5:setTopBottom(false, false, 26.930000, 42.930000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal5:setLetterSpacing(0.500000)
	local function __FUNC_FA3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "text", true, __FUNC_FA3_)
	registerVal2:addElement(registerVal5)
	registerVal2.prompt = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -13.670000, 13.910000)
	registerVal6:setTopBottom(false, false, -10.500000, 15.500000)
	registerVal6:setAlpha(0.100000)
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scanlines_add"))
	registerVal6:setShaderVector(0.000000, 2.910000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.button0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -13.670000, 13.910000)
	registerVal7:setTopBottom(false, false, -11.500000, 14.500000)
	registerVal7:setAlpha(0.150000)
	registerVal7:setZoom(15.000000)
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal2:addElement(registerVal7)
	registerVal2.button1 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -13.670000, 13.910000)
	registerVal8:setTopBottom(false, false, -11.500000, 14.500000)
	registerVal8:setAlpha(0.650000)
	registerVal8:setZoom(15.000000)
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.button = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(false, false, -99.880000, 100.120000)
	registerVal9:setTopBottom(false, false, -11.500000, 14.500000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_105A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "bind", true, __FUNC_105A_)
	registerVal2:addElement(registerVal9)
	registerVal2.bind = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1112_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.vhudbuttonHexBlur:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.backinglines:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.prompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.button0:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.button1:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.button:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_1112_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_13D9_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.vhudbuttonHexBlur:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.backinglines:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.prompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.button0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.button1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.button:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_13D9_
	registerVal10.NotInUse = registerVal11
	registerVal11 = {}
	local function __FUNC_168D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.button0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.button1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.button:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_168D_
	registerVal10.hideButtonImage = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "NotInUse"
	local function __FUNC_1834_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg2, arg1, "text")
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1834_
	local registerVal14 = {}
	registerVal14.stateName = "hideButtonImage"
	local function __FUNC_18B2_(arg0, arg2, arg3)
		return IsSelfModelValueNonEmptyString(arg2, arg1, "bind")
	end

	registerVal14.condition = __FUNC_18B2_
	registerVal12 = {registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_192A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "text"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "text", true, __FUNC_192A_)
	local function __FUNC_1A42_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "bind"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "bind", true, __FUNC_1A42_)
	local function __FUNC_1B5A_(arg0)
		arg0.vhudbuttonHexBlur:close()
		arg0.backinglines:close()
		arg0.prompt:close()
		arg0.bind:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1B5A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

