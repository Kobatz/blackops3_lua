-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Terminal.FocusWidget_BG")
require("ui.uieditor.widgets.Terminal.FocusWidgetWhiteBars")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EntryModsLoad = registerVal1
function CoD.EntryModsLoad.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EntryModsLoad)
	registerVal2.id = "EntryModsLoad"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FocusWidget_BG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FocusWidgetBG1 = registerVal3
	local registerVal4 = CoD.FocusWidget_BG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FocusWidgetBG2 = registerVal4
	local registerVal5 = CoD.FocusWidgetWhiteBars.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -0.320000, 0.680000)
	registerVal5:setTopBottom(true, false, -3.420000, 3.420000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusWidgetWhiteBars = registerVal5
	local registerVal6 = CoD.FocusWidgetWhiteBars.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -0.320000, 0.680000)
	registerVal6:setTopBottom(true, false, 20.000000, 26.840000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusWidgetWhiteBars0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 9.000000, 590.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 21.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.ModName = registerVal7
	local function __FUNC_AC4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.ModName:linkToElementModel(registerVal2, "name", true, __FUNC_AC4_)
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_B7E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusWidgetBG1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusWidgetBG2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusWidgetWhiteBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusWidgetWhiteBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ModName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_B7E_
	local function __FUNC_E15_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusWidgetBG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusWidgetBG2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusWidgetWhiteBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusWidgetWhiteBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ModName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_E15_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_10A8_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusWidgetBG1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusWidgetBG2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusWidgetWhiteBars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusWidgetWhiteBars0:setLeftRight(true, true, -0.320000, 0.680000)
		registerVal2.FocusWidgetWhiteBars0:setTopBottom(true, false, 20.580000, 27.420000)
		registerVal2.FocusWidgetWhiteBars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ModName:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_10A8_
	local function __FUNC_1457_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FocusWidgetBG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusWidgetBG2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusWidgetWhiteBars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusWidgetWhiteBars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ModName:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Focus = __FUNC_1457_
	registerVal8.Loaded = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Loaded"
	local function __FUNC_1773_(arg0, arg2, arg3)
		Mods_UsingModsUgcName()
		return IsSelfModelValueEqualTo(arg2, arg1, "ugcName", Mods_UsingModsUgcName)
	end

	registerVal11.condition = __FUNC_1773_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	local function __FUNC_180D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ugcName"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "ugcName", true, __FUNC_180D_)
	local function __FUNC_1929_(arg0)
		arg0.FocusWidgetBG1:close()
		arg0.FocusWidgetBG2:close()
		arg0.FocusWidgetWhiteBars:close()
		arg0.FocusWidgetWhiteBars0:close()
		arg0.ModName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1929_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

