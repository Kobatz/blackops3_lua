-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Raids.RaidsPurchaseItem")
require("ui.uieditor.widgets.buttonprompt")
require("ui.uieditor.widgets.TextWithDisableState")
local function __FUNC_285_(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "open_raids_purchase"
	arg0:dispatchEventToChildren(registerVal4)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.RaidsPurchases = registerVal2
local function __FUNC_30C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.RaidsPurchases)
	registerVal2.id = "RaidsPurchases"
	registerVal2.soundSet = "RaidsPurchases"
	registerVal2:setLeftRight(true, false, 0.000000, 357.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 43.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.800000)
	registerVal2:addElement(registerVal3)
	registerVal2.Border = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal4:setTopBottom(true, true, 47.000000, -46.000000)
	registerVal4:setAlpha(0.480000)
	registerVal2:addElement(registerVal4)
	registerVal2.Background = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -77.000000, 80.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 43.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.800000)
	registerVal2:addElement(registerVal5)
	registerVal2.BankBorder = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -73.000000, 76.000000)
	registerVal6:setTopBottom(true, false, 3.000000, 43.000000)
	registerVal6:setAlpha(0.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.BankBackground = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(false, false, -26.500000, 26.500000)
	registerVal7:setTopBottom(true, false, 3.000000, 43.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.Bank = registerVal7
	local registerVal8 = LUI.UIList.new(arg0, arg1, 12.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 22.500000, 334.500000)
	registerVal8:setTopBottom(true, false, 57.000000, 369.000000)
	registerVal8:setDataSource("RaidsPurchases")
	registerVal8:setWidgetType(CoD.RaidsPurchaseItem)
	registerVal8:setHorizontalCount(3.000000)
	registerVal8:setVerticalCount(3.000000)
	registerVal8:setSpacing(12.000000)
	local function __FUNC_10FE_(arg2, arg3)
		local registerVal3 = RaidPurchaseAllowed(arg0, arg2, arg1)
		if registerVal3 then
			local registerVal5 = {}
			registerVal5.elementName = "Buy"
			registerVal5.clipName = "DefaultClip"
			PlayClipOnElement(registerVal2, registerVal5, arg1)
			UpdateEnabledText(registerVal2, arg2, arg1)
		else
			registerVal3 = RaidPurchaseAllowed(arg0, arg2, arg1)
			if not registerVal3 then
				registerVal5 = {}
				registerVal5.elementName = "Buy"
				registerVal5.clipName = "Hide"
				PlayClipOnElement(registerVal2, registerVal5, arg1)
				UpdateDisableReason(registerVal2, arg2, arg1)
			else
				registerVal3 = RaidPurchaseItemDisabled(arg0, arg2, arg1)
				if registerVal3 then
					registerVal5 = {}
					registerVal5.elementName = "Description"
					registerVal5.clipName = "Disabled"
					PlayClipOnElement(registerVal2, registerVal5, arg1)
				else
					registerVal3 = RaidPurchaseItemDisabled(arg0, arg2, arg1)
					if not registerVal3 then
						registerVal5 = {}
						registerVal5.elementName = "Description"
						registerVal5.clipName = "DefaultClip"
						PlayClipOnElement(registerVal2, registerVal5, arg1)
					end
				end
			end
		end
		return nil
	end

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_10FE_)
	local function __FUNC_1354_(arg2, arg3)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_1354_)
	local function __FUNC_14E7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_14E7_)
	local function __FUNC_15B6_(arg0, arg1, arg2, arg3)
		local registerVal4 = RaidPurchaseAllowed(arg1, arg0, arg2)
		if registerVal4 then
			MakeRaidPurchase(registerVal2, arg0, arg2)
			GoBack(registerVal2, arg2)
			PlaySoundSetSound(registerVal2, "purchase")
			LockInput(registerVal2, arg2, false)
			return true
		else
			registerVal4 = RaidPurchaseAllowed(arg1, arg0, arg2)
			if not registerVal4 then
				PlaySoundSetSound(registerVal2, "cant_afford")
				LockInput(registerVal2, arg2, false)
				return true
			end
		end
	end

	local function __FUNC_1734_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = RaidPurchaseAllowed(arg1, arg0, arg2)
		if registerVal3 then
			return true
		else
			registerVal3 = RaidPurchaseAllowed(arg1, arg0, arg2)
			if not registerVal3 then
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_15B6_, __FUNC_1734_, false)
	registerVal2:addElement(registerVal8)
	registerVal2.PurchasesList = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 22.500000, 98.500000)
	registerVal9:setTopBottom(false, true, -121.750000, -91.750000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.Name = registerVal9
	local registerVal10 = CoD.buttonprompt.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 5.000000, 180.000000)
	registerVal10:setTopBottom(true, false, 465.000000, 496.000000)
	registerVal10.label:setText(Engine.Localize("MENU_STORE_BUY"))
	local function __FUNC_189B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_189B_)
	registerVal2:addElement(registerVal10)
	registerVal2.Buy = registerVal10
	local registerVal11 = CoD.buttonprompt.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 178.500000, 352.000000)
	registerVal11:setTopBottom(true, false, 465.000000, 496.000000)
	registerVal11.label:setText(Engine.Localize("MPUI_DONE"))
	local function __FUNC_1973_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "Controller", "secondary_button_image", __FUNC_1973_)
	registerVal2:addElement(registerVal11)
	registerVal2.Done = registerVal11
	local registerVal12 = CoD.TextWithDisableState.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 22.500000, 334.500000)
	registerVal12:setTopBottom(true, false, 408.250000, 448.250000)
	registerVal2:addElement(registerVal12)
	registerVal2.Description = registerVal12
	local function __FUNC_1A4B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Bank:linkToElementModel(registerVal2, "bank", true, __FUNC_1A4B_)
	local function __FUNC_1B02_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal8, "displayName", true, __FUNC_1B02_)
	local function __FUNC_1BBA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.Description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal8, "description", true, __FUNC_1BBA_)
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1C93_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal10:completeAnimation()
		registerVal2.Buy:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal14.DefaultClip = __FUNC_1C93_
	registerVal13.DefaultState = registerVal14
	registerVal2.clipsPerState = registerVal13
	registerVal8.id = "PurchasesList"
	local function __FUNC_1D86_(arg0, arg1)
		local registerVal2 = arg0.PurchasesList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1D86_)
	local function __FUNC_1E8D_(arg0)
		arg0.PurchasesList:close()
		arg0.Buy:close()
		arg0.Done:close()
		arg0.Description:close()
		arg0.Bank:close()
		arg0.Name:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1E8D_)
	if __FUNC_285_ then
		__FUNC_285_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.RaidsPurchases.new = __FUNC_30C_
