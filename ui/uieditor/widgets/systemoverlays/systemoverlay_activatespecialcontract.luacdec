-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SpecialContracts.SpecialContracts_RewardImage")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundMultilineText")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_ActivateSpecialContract = registerVal1
function CoD.SystemOverlay_ActivateSpecialContract.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_ActivateSpecialContract)
	registerVal2.id = "SystemOverlay_ActivateSpecialContract"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 190.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = CoD.SpecialContracts_RewardImage.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 64.000000, 384.000000)
	registerVal4:setTopBottom(true, false, 6.500000, 183.500000)
	registerVal4.ItemImage:setScale(1.700000)
	registerVal4.CallingCard.CardIconFrame:setScale(0.660000)
	local function __FUNC_10CC_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_10CC_)
	local function __FUNC_111E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ItemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_111E_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Dimensions4by1"
	local function __FUNC_11EF_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "calling_card")
	end

	registerVal8.condition = __FUNC_11EF_
	local registerVal9 = {}
	registerVal9.stateName = "Dimensions2by1"
	local function __FUNC_127A_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "trifecta")
	end

	registerVal9.condition = __FUNC_127A_
	local registerVal10 = {}
	registerVal10.stateName = "Dimensions1by1"
	local function __FUNC_1302_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "grand_slam")
	end

	registerVal10.condition = __FUNC_1302_
	local registerVal11 = {}
	registerVal11.stateName = "DropBundle"
	local function __FUNC_138C_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "default")
	end

	registerVal11.condition = __FUNC_138C_
	local registerVal12 = {}
	registerVal12.stateName = "BlackjackContract"
	local function __FUNC_1415_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "blackjack_contract")
	end

	registerVal12.condition = __FUNC_1415_
	local registerVal13 = {}
	registerVal13.stateName = "Camo"
	local function __FUNC_14A8_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "state", "camo")
	end

	registerVal13.condition = __FUNC_14A8_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_152E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "state"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "state", true, __FUNC_152E_)
	registerVal2:addElement(registerVal4)
	registerVal2.RewardImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 384.000000, 414.000000)
	registerVal5:setTopBottom(true, false, 11.000000, 41.000000)
	local function __FUNC_1647_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "categoryType", true, __FUNC_1647_)
	registerVal2:addElement(registerVal5)
	registerVal2.categoryTypeImage = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 421.000000, 621.000000)
	registerVal6:setTopBottom(true, false, 11.000000, 41.000000)
	registerVal6:setTTF("fonts/escom.ttf")
	local function __FUNC_1727_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "title", true, __FUNC_1727_)
	registerVal2:addElement(registerVal6)
	registerVal2.title = registerVal6
	registerVal7 = CoD.systemOverlay_Layout_ForegroundMultilineText.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 422.000000, 1127.000000)
	registerVal7:setTopBottom(true, false, 45.000000, 65.000000)
	registerVal7:setAlpha(0.850000)
	local function __FUNC_17DE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.text:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "description", true, __FUNC_17DE_)
	registerVal2:addElement(registerVal7)
	registerVal2.text = registerVal7
	registerVal8 = LUI.UIList.new(arg0, arg1, 3.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 422.000000, 1170.000000)
	registerVal8:setTopBottom(true, false, 119.000000, 221.000000)
	registerVal8:setWidgetType(CoD.CACGenericButton)
	registerVal8:setVerticalCount(3.000000)
	registerVal8:setSpacing(3.000000)
	local function __FUNC_18B0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setDataSource(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "listDatasource", true, __FUNC_18B0_)
	local function __FUNC_194A_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal8:linkToElementModel(registerVal8, "disabled", true, __FUNC_194A_)
	local function __FUNC_1B05_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_1B05_)
	local function __FUNC_1C97_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_1C97_)
	local function __FUNC_1D66_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDisabled(arg0, arg2)
		if not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_1DF3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsDisabled(arg0, arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1D66_, __FUNC_1DF3_, true)
	registerVal2:addElement(registerVal8)
	registerVal2.options = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 2.000000)
	local function __FUNC_1F22_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "image", true, __FUNC_1F22_)
	registerVal2:addElement(registerVal9)
	registerVal2.largeImage = registerVal9
	registerVal10 = {}
	registerVal11 = {}
	local function __FUNC_1FD4_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.RewardImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.largeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1FD4_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_2134_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.RewardImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal9:completeAnimation()
		registerVal2.largeImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_2134_
	registerVal10.SpecialContractReplaceConfirm = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "SpecialContractReplaceConfirm"
	local function __FUNC_2294_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "image", "t7_icon_error_overlays_bkg")
	end

	registerVal13.condition = __FUNC_2294_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_2330_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "image"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "image", true, __FUNC_2330_)
	registerVal8.id = "options"
	local function __FUNC_244B_(arg0, arg1)
		local registerVal2 = arg0.options:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_244B_)
	local function __FUNC_254B_(arg0)
		arg0.RewardImage:close()
		arg0.text:close()
		arg0.options:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
		arg0.largeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_254B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

