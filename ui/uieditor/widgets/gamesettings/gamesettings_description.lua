-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Scorestreaks.scorestreaks_TitleBox")
require("ui.uieditor.widgets.GameSettings.GameSettings_Optionstextbox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameSettings_Description = registerVal1
function CoD.GameSettings_Description.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_Description)
	registerVal2.id = "GameSettings_Description"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 489.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 400.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 489.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 135.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = CoD.scorestreaks_TitleBox.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 251.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 35.000000)
	registerVal4.TitleGlow1:setAlpha(0.900000)
	local function __FUNC_980_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ScorestreaksLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GametypeSettings", "title", __FUNC_980_)
	registerVal2:addElement(registerVal4)
	registerVal2.TitleBox = registerVal4
	local registerVal5 = CoD.GameSettings_Optionstextbox.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 489.000000)
	registerVal5:setTopBottom(true, false, 39.910000, 61.910000)
	local function __FUNC_A61_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.TextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "GametypeSettings", "description", __FUNC_A61_)
	registerVal2:addElement(registerVal5)
	registerVal2.GameSettingsOptionstextbox = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_B37_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setLeftRight(true, false, 0.000000, 489.000000)
		registerVal2.Background:setTopBottom(true, false, 0.000000, 135.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_B37_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_C8E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setLeftRight(true, false, 0.000000, 489.000000)
		registerVal2.Background:setTopBottom(true, false, 0.000000, 400.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_C8E_
	registerVal6.ExtraVeryLongText = registerVal7
	registerVal7 = {}
	local function __FUNC_DE6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setLeftRight(true, false, 0.000000, 489.000000)
		registerVal2.Background:setTopBottom(true, false, 0.000000, 300.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_DE6_
	registerVal6.VeryLongText = registerVal7
	registerVal7 = {}
	local function __FUNC_F3E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setLeftRight(true, false, 0.000000, 489.000000)
		registerVal2.Background:setTopBottom(true, false, 0.000000, 215.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_F3E_
	registerVal6.LongText = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "ExtraVeryLongText"
	local function __FUNC_1096_(arg0, arg1, arg2)
		return TextHeightGreaterThan(registerVal2, "Description", 275.000000)
	end

	registerVal9.condition = __FUNC_1096_
	local registerVal10 = {}
	registerVal10.stateName = "VeryLongText"
	local function __FUNC_1111_(arg0, arg1, arg2)
		return TextHeightGreaterThan(registerVal2, "Description", 175.000000)
	end

	registerVal10.condition = __FUNC_1111_
	local registerVal11 = {}
	registerVal11.stateName = "LongText"
	local function __FUNC_118D_(arg0, arg1, arg2)
		return TextHeightGreaterThan(registerVal2, "Description", 75.000000)
	end

	registerVal11.condition = __FUNC_118D_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1209_(arg0)
		arg0.TitleBox:close()
		arg0.GameSettingsOptionstextbox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1209_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

