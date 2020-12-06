-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_lines")
require("ui.uieditor.widgets.Social.Social_JoinBtn")
local function __FUNC_27F_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "Social.selectedFriendXUID")
end

local function __FUNC_33F_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0:setForceMouseEventDispatch(true)
	end
	arg0:registerEventHandler("update_state", LUI.UIElement.updateState)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.Social_InfoPane_Presence_Joinable = registerVal3
local function __FUNC_45C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_27F_ then
		__FUNC_27F_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_InfoPane_Presence_Joinable)
	registerVal2.id = "Social_InfoPane_Presence_Joinable"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 354.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 66.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 9.000000, 23.670000)
	registerVal3:setTopBottom(true, false, -24.000000, -2.000000)
	registerVal3:setRGB(0.870000, 0.900000, 0.900000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_iconjoinable"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.Icon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 10.670000, -73.330000)
	registerVal4:setTopBottom(false, true, -59.000000, -37.000000)
	registerVal4:setScale(LanguageOverrideNumber("japanese", 0.900000, 1.000000))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1057_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(LobbyJoinableToString(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "joinable", true, __FUNC_1057_)
	registerVal2:addElement(registerVal4)
	registerVal2.notjoinableText = registerVal4
	local registerVal5 = CoD.MissionRecordVault_lines.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal5:setTopBottom(false, true, -65.440000, -61.440000)
	registerVal5:setAlpha(0.750000)
	registerVal2:addElement(registerVal5)
	registerVal2.MissionRecordVaultlines01 = registerVal5
	local registerVal6 = CoD.MissionRecordVault_lines.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal6:setTopBottom(false, true, -12.440000, -8.440000)
	registerVal6:setAlpha(0.750000)
	registerVal2:addElement(registerVal6)
	registerVal2.MissionRecordVaultlines010 = registerVal6
	local registerVal7 = CoD.Social_JoinBtn.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -209.000000, -10.000000)
	registerVal7:setTopBottom(false, true, -61.000000, -35.000000)
	local function __FUNC_1135_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1135_)
	local function __FUNC_1186_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("button_action", __FUNC_1186_)
	registerVal2:addElement(registerVal7)
	registerVal2.SocialJoinBtn = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_127D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.notjoinableText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.SocialJoinBtn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_127D_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1435_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.notjoinableText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.SocialJoinBtn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1435_
	registerVal8.LobbyLocked = registerVal9
	registerVal9 = {}
	local function __FUNC_15E8_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.notjoinableText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.SocialJoinBtn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_15E8_
	registerVal8.HideJoinButton = registerVal9
	registerVal9 = {}
	local function __FUNC_179C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.notjoinableText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.SocialJoinBtn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_179C_
	registerVal8.NotJoinable = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "LobbyLocked"
	local function __FUNC_1955_(arg0, arg2, arg3)
		return IsGlobalModelValueTrue(arg2, arg1, "lobbyRoot.lobbyLockedIn")
	end

	registerVal11.condition = __FUNC_1955_
	local registerVal12 = {}
	registerVal12.stateName = "HideJoinButton"
	local function __FUNC_19D9_(arg0, arg2, arg3)
		return ShouldHideJoinButton(registerVal2, arg1, "hideJoinButton")
	end

	registerVal12.condition = __FUNC_19D9_
	local registerVal13 = {}
	registerVal13.stateName = "NotJoinable"
	local function __FUNC_1A52_(arg0, arg2, arg3)
		local registerVal3 = IsJoinable(registerVal2, arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1A52_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_1AA8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyLockedIn"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_1AA8_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "Social.selectedFriendXUID")
	local function __FUNC_1BD5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Social.selectedFriendXUID"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_1BD5_)
	local function __FUNC_1D03_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "joinable"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "joinable", true, __FUNC_1D03_)
	local function __FUNC_1E1E_(arg0)
		arg0.MissionRecordVaultlines01:close()
		arg0.MissionRecordVaultlines010:close()
		arg0.SocialJoinBtn:close()
		arg0.notjoinableText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1E1E_)
	if __FUNC_33F_ then
		__FUNC_33F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Social_InfoPane_Presence_Joinable.new = __FUNC_45C_
