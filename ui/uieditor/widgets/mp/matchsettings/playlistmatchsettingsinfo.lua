-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MP.MatchSettings.matchSettingsInfo")
require("ui.uieditor.widgets.MP.MatchSettings.Playlist_SpecialEventWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.playlistMatchSettingsInfo = registerVal1
function CoD.playlistMatchSettingsInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.playlistMatchSettingsInfo)
	registerVal2.id = "playlistMatchSettingsInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.matchSettingsInfo.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 446.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal3.FRBestTime.BestTimeValueText:setText(Engine.Localize("--:--:--"))
	local function __FUNC_BE4_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_BE4_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "AspectRatio_1x1"
	local function __FUNC_C36_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal7.condition = __FUNC_C36_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.gameModeInfo = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 1.000000, 446.000000)
	registerVal4:setTopBottom(true, false, -22.000000, -2.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C80_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "playlistCount", true, __FUNC_C80_)
	registerVal2:addElement(registerVal4)
	registerVal2.playlistCount = registerVal4
	local registerVal5 = CoD.Playlist_SpecialEventWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 8.550000, 408.550000)
	registerVal5:setTopBottom(true, false, 277.000000, 307.000000)
	local function __FUNC_D3A_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_D3A_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "DoubleXPWeaponXP"
	local function __FUNC_D8A_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "hasDoubleXP", true)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "hasDoubleWeaponXP", true)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_D8A_
	local registerVal10 = {}
	registerVal10.stateName = "DoubleXPDoubleCryptokeys"
	local function __FUNC_E41_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "hasDoubleXP", true)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "hasDoubleCryptokeys", true)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_E41_
	local registerVal11 = {}
	registerVal11.stateName = "WeaponXPDoubleCryptokeysCopy"
	local function __FUNC_EFB_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "hasDoubleWeaponXP", true)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "hasDoubleCryptokeys", true)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_EFB_
	local registerVal12 = {}
	registerVal12.stateName = "DoubleXP"
	local function __FUNC_FB9_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "hasDoubleXP", true)
	end

	registerVal12.condition = __FUNC_FB9_
	local registerVal13 = {}
	registerVal13.stateName = "DoubleWeaponXP"
	local function __FUNC_1036_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "hasDoubleWeaponXP", true)
	end

	registerVal13.condition = __FUNC_1036_
	local registerVal14 = {}
	registerVal14.stateName = "DoubleCryptokeys"
	local function __FUNC_10B8_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "hasDoubleCryptokeys", true)
	end

	registerVal14.condition = __FUNC_10B8_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_113E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hasDoubleXP"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "hasDoubleXP", true, __FUNC_113E_)
	local function __FUNC_125D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hasDoubleWeaponXP"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "hasDoubleWeaponXP", true, __FUNC_125D_)
	local function __FUNC_1383_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hasDoubleCryptokeys"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "hasDoubleCryptokeys", true, __FUNC_1383_)
	registerVal2:addElement(registerVal5)
	registerVal2.PlaylistSpecialEventWidget = registerVal5
	registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_14A9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_14A9_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_150A_(arg0)
		arg0.gameModeInfo:close()
		arg0.PlaylistSpecialEventWidget:close()
		arg0.playlistCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_150A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

