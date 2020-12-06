-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Pregame.Pregame_BanProtectIndicator_Background")
require("ui.uieditor.widgets.CAC.GridItemButtonNew")
require("ui.uieditor.widgets.Pregame.Pregame_BanProtectIndicator")
require("ui.uieditor.widgets.Pregame.Pregame_ItemVote_PlayerIndicator")
require("ui.uieditor.widgets.Pregame.Pregame_RestrictionIndicator")
require("ui.uieditor.widgets.Pregame.Pregame_FactionTeamColorBarHeader")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_VoteItem = registerVal1
function CoD.Pregame_VoteItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_VoteItem)
	registerVal2.id = "Pregame_VoteItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Pregame_BanProtectIndicator_Background.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_FAF_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_FAF_)
	registerVal2:addElement(registerVal3)
	registerVal2.PregameBanProtectIndicatorBackground = registerVal3
	local registerVal4 = CoD.GridItemButtonNew.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 108.000000)
	local function __FUNC_FFE_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_FFE_)
	local function __FUNC_104E_(arg0, arg2)
		if arg0.gainFocus then
			local registerVal3 = arg0.gainFocus(arg0, arg2)
		else
			if arg0.super.gainFocus then
				registerVal3 = arg0.super.gainFocus(arg0, arg2)
			end
		end
		local registerVal5 = {}
		registerVal5.elementName = "PregameItemVotePlayerIndicator"
		registerVal5.clipName = "ShowTooltip"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		registerVal5 = {}
		registerVal5.elementName = "PregameItemVoteRestrictionIndicatorText"
		registerVal5.clipName = "ShowTooltip"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_104E_)
	local function __FUNC_1206_(arg0, arg2)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg2)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg2)
			end
		end
		local registerVal5 = {}
		registerVal5.elementName = "PregameItemVotePlayerIndicator"
		registerVal5.clipName = "DefaultClip"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		registerVal5 = {}
		registerVal5.elementName = "PregameItemVoteRestrictionIndicatorText"
		registerVal5.clipName = "DefaultClip"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1206_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Equipped"
	local function __FUNC_13BE_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
			if not registerVal3 then
				registerVal3 = AlwaysFalse()
			else
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_13BE_
	local registerVal9 = {}
	registerVal9.stateName = "New"
	local function __FUNC_1481_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemNew(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
			if not registerVal3 then
				registerVal3 = AlwaysFalse()
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_1481_
	local registerVal10 = {}
	registerVal10.stateName = "Locked"
	local function __FUNC_153C_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemLocked(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_153C_
	local registerVal11 = {}
	registerVal11.stateName = "NotAvailable"
	local function __FUNC_15BE_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemPurchased(arg2, arg1)
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_15BE_
	local registerVal12 = {}
	registerVal12.stateName = "MutuallyExclusive"
	local function __FUNC_1649_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemMutuallyExclusiveWithSelection(arg2, arg1)
		if registerVal3 then
			registerVal3 = AlwaysFalse()
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_1649_
	local registerVal13 = {}
	registerVal13.stateName = "NoConsumablesRemaining"
	local function __FUNC_16DE_(arg0, arg2, arg3)
		local registerVal3 = DoesCACItemHaveConsumablesRemaining(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = AlwaysFalse()
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_16DE_
	local registerVal14 = {}
	registerVal14.stateName = "Invalid"
	local function __FUNC_177E_(arg0, arg2, arg3)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			registerVal3 = ItemIsInRestrictionState(arg0, arg2, arg1, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_NONE)
			if not registerVal3 then
				registerVal3 = ItemIsInRestrictionState(arg0, arg2, arg1, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_BANONLY)
			else
			end
		end
		return true
	end

	registerVal14.condition = __FUNC_177E_
	local registerVal15 = {}
	registerVal15.stateName = "PermanentUnlockRefund"
	local function __FUNC_18E4_(arg0, arg2, arg3)
		local registerVal3 = IsInPermanentUnlockMenu(arg1)
		if registerVal3 then
			registerVal3 = IsPermanentlyUnlocked(arg2, arg1)
			if not registerVal3 then
				registerVal3 = HavePermanentUnlockTokens(arg1)
				registerVal3 = IsCACItemPurchased(arg2, arg1)
				if registerVal3 and registerVal3 then
					registerVal3 = AlwaysFalse()
				else
				end
			end
		end
		return true
	end

	registerVal15.condition = __FUNC_18E4_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_1A14_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "itemIndex", true, __FUNC_1A14_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.Pregame.Update")
	local function __FUNC_1B33_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1B33_)
	registerVal2:addElement(registerVal4)
	registerVal2.GridItemButtonNew = registerVal4
	local registerVal5 = CoD.Pregame_BanProtectIndicator.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_1C5E_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_1C5E_)
	registerVal2:addElement(registerVal5)
	registerVal2.Foreground = registerVal5
	local registerVal6 = CoD.Pregame_ItemVote_PlayerIndicator.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -52.000000, 52.000000)
	registerVal6:setTopBottom(true, false, -26.000000, -7.000000)
	local function __FUNC_1CAE_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1CAE_)
	local function __FUNC_1CFE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "hintText", true, __FUNC_1CFE_)
	registerVal2:addElement(registerVal6)
	registerVal2.PregameItemVotePlayerIndicator = registerVal6
	registerVal7 = CoD.Pregame_RestrictionIndicator.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_1DD4_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1DD4_)
	registerVal2:addElement(registerVal7)
	registerVal2.PregameRestrictionIndicator = registerVal7
	registerVal8 = CoD.Pregame_FactionTeamColorBarHeader.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal8:setTopBottom(true, false, -0.490000, 2.490000)
	local function __FUNC_1E26_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_1E26_)
	registerVal2:addElement(registerVal8)
	registerVal2.PregameFactionTeamColorBarHeader = registerVal8
	registerVal9 = {}
	registerVal10 = {}
	local function __FUNC_1E76_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PregameItemVotePlayerIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultClip = __FUNC_1E76_
	local function __FUNC_1F8A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.Focus = __FUNC_1F8A_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1FEA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PregameItemVotePlayerIndicator:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultClip = __FUNC_1FEA_
	local function __FUNC_20F9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.Focus = __FUNC_20F9_
	registerVal9.ShowHeader = registerVal10
	registerVal10 = {}
	local function __FUNC_215A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PregameItemVotePlayerIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultClip = __FUNC_215A_
	local function __FUNC_226E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.Focus = __FUNC_226E_
	registerVal9.ShowFooter = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal4.id = "GridItemButtonNew"
	local function __FUNC_22CE_(arg0, arg1)
		local registerVal2 = arg0.GridItemButtonNew:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_22CE_)
	local function __FUNC_23D9_(arg0)
		arg0.PregameBanProtectIndicatorBackground:close()
		arg0.GridItemButtonNew:close()
		arg0.Foreground:close()
		arg0.PregameItemVotePlayerIndicator:close()
		arg0.PregameRestrictionIndicator:close()
		arg0.PregameFactionTeamColorBarHeader:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_23D9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

