-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
require("ui.uieditor.widgets.Pregame.Pregame_ItemVote_BanProtectPopup_Alert")
local function __FUNC_286_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg1, "Pregame.remainingVotes")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local function __FUNC_42A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 and registerVal1 < registerVal4 then
			GoBack(arg2, arg1)
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_42A_, false)
	local function __FUNC_4C7_(arg0)
		arg0.ButtonList.navigateItemUp(arg0)
		arg0.ButtonList.navigateItemUp(arg0)
	end

	arg0.ButtonList.navigateItemUp = __FUNC_4C7_
	local function __FUNC_508_(arg0)
		arg0.ButtonList.navigateItemDown(arg0)
		arg0.ButtonList.navigateItemDown(arg0)
	end

	arg0.ButtonList.navigateItemDown = __FUNC_508_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Pregame_ItemVote_BanProtectPopup = registerVal2
local function __FUNC_54C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.Pregame_ItemVote_BanProtectPopup)
	registerVal2.id = "Pregame_ItemVote_BanProtectPopup"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 244.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 411.890000, 1200.000000)
	registerVal4:setTopBottom(true, false, 20.500000, 54.500000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_126E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "title", true, __FUNC_126E_)
	registerVal2:addElement(registerVal4)
	registerVal2.Title = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 411.890000, 1200.000000)
	registerVal5:setTopBottom(true, false, 60.500000, 80.500000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1326_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "description", true, __FUNC_1326_)
	registerVal2:addElement(registerVal5)
	registerVal2.Description = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 411.890000, 1159.890000)
	registerVal6:setTopBottom(false, true, -110.500000, -10.500000)
	registerVal6:setWidgetType(CoD.CACGenericButton)
	registerVal6:setVerticalCount(3.000000)
	local function __FUNC_13DE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setDataSource(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_13DE_)
	local function __FUNC_1476_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "disabled", true, __FUNC_1476_)
	local function __FUNC_1631_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_1631_)
	local function __FUNC_17C3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_17C3_)
	local function __FUNC_1892_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_191F_(arg0, arg1, arg2)
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_1892_, __FUNC_191F_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.ButtonList = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 61.000000, 305.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 244.000000)
	local function __FUNC_1A4E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "image", true, __FUNC_1A4E_)
	registerVal2:addElement(registerVal7)
	registerVal2.Image = registerVal7
	local registerVal8 = CoD.Pregame_ItemVote_BanProtectPopup_Alert.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 381.890000, 1200.000000)
	registerVal8:setTopBottom(true, false, 90.000000, 122.000000)
	registerVal8.Text:setText(Engine.Localize("Item Banned By: FEXTWOLF"))
	local function __FUNC_1B00_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_1B00_)
	registerVal2:addElement(registerVal8)
	registerVal2.PregameItemVoteBanProtectPopupAlert = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_1B52_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal8.BannedIcon:completeAnimation()
		registerVal8.ProtectedIcon:completeAnimation()
		registerVal2.PregameItemVoteBanProtectPopupAlert:setAlpha(0.000000)
		registerVal2.PregameItemVoteBanProtectPopupAlert.BannedIcon:setAlpha(0.000000)
		registerVal2.PregameItemVoteBanProtectPopupAlert.ProtectedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1B52_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1D16_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal8.Text:completeAnimation()
		registerVal8.BannedIcon:completeAnimation()
		registerVal8.ProtectedIcon:completeAnimation()
		registerVal2.PregameItemVoteBanProtectPopupAlert:setAlpha(1.000000)
		registerVal2.PregameItemVoteBanProtectPopupAlert.Text:setText(Engine.Localize("MENU_BANNED_BY"))
		registerVal2.PregameItemVoteBanProtectPopupAlert.BannedIcon:setAlpha(1.000000)
		registerVal2.PregameItemVoteBanProtectPopupAlert.ProtectedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1D16_
	registerVal9.Banned = registerVal10
	registerVal10 = {}
	local function __FUNC_1F87_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal8.Text:completeAnimation()
		registerVal8.BannedIcon:completeAnimation()
		registerVal8.ProtectedIcon:completeAnimation()
		registerVal2.PregameItemVoteBanProtectPopupAlert:setAlpha(1.000000)
		registerVal2.PregameItemVoteBanProtectPopupAlert.Text:setText(Engine.Localize("MENU_PROTECTED_BY"))
		registerVal2.PregameItemVoteBanProtectPopupAlert.BannedIcon:setAlpha(0.000000)
		registerVal2.PregameItemVoteBanProtectPopupAlert.ProtectedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1F87_
	registerVal9.Protected = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Banned"
	local function __FUNC_21FA_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "state", Enum.VoteType.VOTE_TYPE_BAN)
	end

	registerVal12.condition = __FUNC_21FA_
	local registerVal13 = {}
	registerVal13.stateName = "Protected"
	local function __FUNC_22C3_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "state", Enum.VoteType.VOTE_TYPE_PROTECT)
	end

	registerVal13.condition = __FUNC_22C3_
	registerVal11 = {registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_238F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "state"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "state", true, __FUNC_238F_)
	local function __FUNC_24A7_(arg2)
		UpdateSelfElementState(arg0, registerVal2, arg1)
	end

	registerVal2:subscribeToGlobalModel(arg1, "LobbyRoot", "Pregame.Update", __FUNC_24A7_)
	registerVal6.id = "ButtonList"
	local function __FUNC_2508_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2508_)
	local function __FUNC_260E_(arg0)
		arg0.ButtonList:close()
		arg0.PregameItemVoteBanProtectPopupAlert:close()
		arg0.Title:close()
		arg0.Description:close()
		arg0.Image:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_260E_)
	if __FUNC_286_ then
		__FUNC_286_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Pregame_ItemVote_BanProtectPopup.new = __FUNC_54C_
