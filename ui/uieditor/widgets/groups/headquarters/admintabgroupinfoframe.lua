-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsInputButton")
require("ui.uieditor.widgets.Challenges.Challenges_Title")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AdminTabGroupInfoFrame = registerVal1
function CoD.AdminTabGroupInfoFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AdminTabGroupInfoFrame)
	registerVal2.id = "AdminTabGroupInfoFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 724.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 417.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GroupsInputButton.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal3:setTopBottom(true, false, 38.220000, 72.220000)
	local function __FUNC_823_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_823_)
	local function __FUNC_9B3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_9B3_)
	local function __FUNC_A82_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_AE3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_A82_, __FUNC_AE3_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.GroupsInputButton = registerVal3
	local registerVal4 = CoD.Challenges_Title.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 3.000000, 199.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.250000)
	registerVal2:addElement(registerVal4)
	registerVal2.ChallengesTitle0 = registerVal4
	local function __FUNC_BD3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.Text:setText(registerVal1)
		end
	end

	registerVal2.GroupsInputButton:linkToElementModel(registerVal2, "currentText", true, __FUNC_BD3_)
	local function __FUNC_C7E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.ChallengesTitle0:linkToElementModel(registerVal2, "displayText", true, __FUNC_C7E_)
	registerVal3.id = "GroupsInputButton"
	local function __FUNC_D5B_(arg0, arg1)
		local registerVal2 = arg0.GroupsInputButton:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_D5B_)
	local function __FUNC_E65_(arg0)
		arg0.GroupsInputButton:close()
		arg0.ChallengesTitle0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E65_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

