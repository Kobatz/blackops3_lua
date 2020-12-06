-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_GameModeRulesList")
require("ui.uieditor.widgets.GameSettings.GameSettings_SelectedItemInfo")
local function __FUNC_30D_(arg0)
	local registerVal2 = Dvar.ui_gametype:get()
	local registerVal5, registerVal6, registerVal7 = ipairs(CoD.GameOptions.GlobalSettings)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		table.insert({}, CoD.OptionsUtility.CreateListOptions(arg0, CoD.GameOptions.GameSettings[value9].name, CoD.GameOptions.GameSettings[value9].hintText, value9, CoD.GameOptions.GameSettings[value9], ("GameTypeOptionsList_" .. value9)))
	end
	return {}
end

local function __FUNC_559_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_6C9_()
		arg1:updateDataSource(false)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_6C9_, false)
	arg1.updateSubscription = registerVal5
end

local registerVal3 = DataSourceHelpers.ListSetup("GlobalSettings", __FUNC_30D_, nil, nil, __FUNC_559_)
DataSources.GlobalSettings = registerVal3
registerVal3 = InheritFrom(LUI.UIElement)
CoD.GameSettings_GlobalSettings = registerVal3
function CoD.GameSettings_GlobalSettings.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_GlobalSettings)
	registerVal2.id = "GameSettings_GlobalSettings"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 585.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GameSettings_GameModeRulesList.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 27.000000, 630.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.Title.DescTitle:setText(Engine.Localize("MENU_SETTINGS_CAPS"))
	registerVal3.Sliders:setDataSource("GlobalSettings")
	registerVal2:addElement(registerVal3)
	registerVal2.Options = registerVal3
	local registerVal4 = CoD.GameSettings_SelectedItemInfo.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, -135.000000, 0.000000)
	registerVal4.GameModeName:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.GameSettingsSelectedItemInfo = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_D51_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_E7F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0.GameModeInfo:beginAnimation("subkeyframe", 250.000000, false, false, CoD.TweenType.Linear)
			end
			arg0.GameModeInfo:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.GameModeInfo:completeAnimation()
		registerVal2.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(1.000000)
		__FUNC_E7F_(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D51_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal3.id = "Options"
	local function __FUNC_10A8_(arg0, arg1)
		local registerVal2 = arg0.Options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_10A8_)
	local function __FUNC_11AB_(arg0)
		arg0.Options:close()
		arg0.GameSettingsSelectedItemInfo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11AB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

