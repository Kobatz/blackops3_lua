-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_GameModeName")
require("ui.uieditor.widgets.GameSettings.GameSettings_titlebox")
require("ui.uieditor.widgets.GameSettings.GameSettings_Optionstextbox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Competitive_Settings_SelectedItemInfo = registerVal1
function CoD.Competitive_Settings_SelectedItemInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Competitive_Settings_SelectedItemInfo)
	registerVal2.id = "Competitive_Settings_SelectedItemInfo"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 721.000000, 1221.000000)
	registerVal3:setTopBottom(true, false, 271.000000, 562.000000)
	registerVal3:setAlpha(0.250000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = CoD.GameSettings_GameModeName.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 727.000000, 1216.000000)
	registerVal4:setTopBottom(true, false, 607.500000, 645.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.GameSettingsGameModeName0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 727.000000, 1216.000000)
	registerVal5:setTopBottom(true, false, 140.500000, 546.500000)
	registerVal5:setRGB(0.500000, 0.500000, 0.500000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Image0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 789.000000, 1154.000000)
	registerVal6:setTopBottom(true, false, 288.000000, 432.000000)
	local function __FUNC_DD2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "GametypeSettings", "image", __FUNC_DD2_)
	registerVal2:addElement(registerVal6)
	registerVal2.ItemImage = registerVal6
	local registerVal7 = CoD.GameSettings_titlebox.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 727.000000, 1079.000000)
	registerVal7:setTopBottom(true, false, 141.500000, 177.500000)
	local function __FUNC_E84_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.ScorestreaksLabel:setText(Engine.Localize(LocalizeToUpperString(registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "GametypeSettings", "title", __FUNC_E84_)
	registerVal2:addElement(registerVal7)
	registerVal2.GameSettingstitlebox = registerVal7
	local registerVal8 = CoD.GameSettings_Optionstextbox.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 726.300000, 1215.300000)
	registerVal8:setTopBottom(true, false, 181.500000, 203.500000)
	local function __FUNC_F8C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.TextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "GametypeSettings", "description", __FUNC_F8C_)
	registerVal2:addElement(registerVal8)
	registerVal2.GameSettingsOptionstextbox = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 726.000000, 1215.000000)
	registerVal9:setTopBottom(true, false, 273.000000, 559.000000)
	registerVal9:setAlpha(0.500000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal9:setShaderVector(0.000000, 0.008180, 0.013986, 0.000000, 0.000000)
	registerVal9:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.Border = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1063_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_1063_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_10C2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal2.ItemImage:setLeftRight(true, false, 844.500000, 1096.500000)
		registerVal2.ItemImage:setTopBottom(true, false, 290.000000, 542.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.Border:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_10C2_
	registerVal10.SquareImage = registerVal11
	registerVal11 = {}
	local function __FUNC_1289_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal2.ItemImage:setLeftRight(true, false, 762.940000, 1178.060000)
		registerVal2.ItemImage:setTopBottom(true, false, 326.480000, 506.520000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.Border:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1289_
	registerVal10.WeaponImage = registerVal11
	registerVal11 = {}
	local function __FUNC_1451_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal2.ItemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1451_
	registerVal10.CollapsedImage = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_15A5_(arg0)
		arg0.GameSettingsGameModeName0:close()
		arg0.GameSettingstitlebox:close()
		arg0.GameSettingsOptionstextbox:close()
		arg0.ItemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_15A5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

