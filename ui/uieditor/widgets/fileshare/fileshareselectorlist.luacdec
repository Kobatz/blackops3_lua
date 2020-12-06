-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.FileShare.FileshareSelectorListItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.FileShare.FileshareSelectedItemInfo")
require("ui.uieditor.widgets.FileShare.FileshareItemLarge")
require("ui.uieditor.widgets.FileShare.Fileshare_BuyExtraSlots")
require("ui.uieditor.widgets.FileShare.FileshareNoContent")
local function __FUNC_3E0_(arg0, arg1)
	local registerVal2 = arg0.itemList:getDataSource()
	registerVal2 = registerVal2:getCount()
	if registerVal2 == 0.000000 then
		arg0.FileshareBuyExtraSlots:setAlpha(0.000000)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FileshareSelectorList = registerVal2
local function __FUNC_4BA_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareSelectorList)
	registerVal2.id = "FileshareSelectorList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 920.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 528.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 20.000000, 330.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 528.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.LeftPanel = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 31.000000, 311.000000)
	registerVal4:setTopBottom(true, false, 1.350000, 468.350000)
	registerVal4:setWidgetType(CoD.FileshareSelectorListItem)
	registerVal4:setVerticalCount(7.000000)
	registerVal4:setVerticalCounter(CoD.verticalCounter)
	registerVal4:setDataSource("FilesharePublishedList")
	local function __FUNC_144C_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isPublishNew"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:linkToElementModel(registerVal4, "isPublishNew", true, __FUNC_144C_)
	local function __FUNC_160D_(arg0, arg2)
		FileshareSetSelectedItem(registerVal2, arg0, arg1, "")
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_160D_)
	local function __FUNC_1684_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_1684_)
	local function __FUNC_1876_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1876_)
	local function __FUNC_1946_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "isPublishNew", false)
		if registerVal4 then
			FileshareDeleteCurrentItem(registerVal2, arg0, arg2, "", arg1)
			return true
		else
			registerVal4 = FileshareCanBuyMoreSlots(arg2)
			if registerVal4 then
				OpenPurchaseExtraSlotsOverlay(registerVal2, arg2, arg1)
				return true
			end
		end
	end

	local function __FUNC_1A96_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "isPublishNew", false)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_DELETE")
			return true
		else
			registerVal3 = FileshareCanBuyMoreSlots(arg2)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_STORE_CAPS")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1946_, __FUNC_1A96_, false)
	local function __FUNC_1C90_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_1CC4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_1C90_, __FUNC_1CC4_, false)
	local function __FUNC_1DB1_(arg0)
		local registerVal2 = FileshareCanBuyMoreSlots(arg1)
		if registerVal2 then
			FileshareSetShowCreateButton(arg1, true)
			UpdateDataSource(registerVal2, registerVal4, arg1)
		else
			FileshareSetShowCreateButton(arg1, false)
			UpdateDataSource(registerVal2, registerVal4, arg1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "FileshareRoot", "ready", __FUNC_1DB1_)
	local function __FUNC_1EA2_(arg0)
		local registerVal2 = FileshareCanBuyMoreSlots(arg1)
		if registerVal2 then
			FileshareSetShowCreateButton(arg1, true)
			UpdateDataSource(registerVal2, registerVal4, arg1)
		else
			FileshareSetShowCreateButton(arg1, false)
			UpdateDataSource(registerVal2, registerVal4, arg1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "FileshareRoot", "dirty", __FUNC_1EA2_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemList = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 1.350000, 3.350000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.upperline = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 525.280000, 527.280000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.bottomline = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 37.000000, 443.000000)
	registerVal7:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1F92_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(LocalizeWeaponNameIntoString("MENU_PAINTSHOP_WEAPON_PAINTJOBS", "mp", arg1, registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Customization", "weapon_index", __FUNC_1F92_)
	registerVal2:addElement(registerVal7)
	registerVal2.header = registerVal7
	local registerVal8 = CoD.FileshareSelectedItemInfo.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 353.000000, 771.000000)
	registerVal8:setTopBottom(true, false, 426.350000, 510.350000)
	local function __FUNC_2093_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setAlpha(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "FileshareRoot", "showFileDetails", __FUNC_2093_)
	registerVal2:addElement(registerVal8)
	registerVal2.FileshareSelectedItemInfo0 = registerVal8
	local registerVal9 = CoD.FileshareItemLarge.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 353.000000, 703.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 350.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FileshareItemLarge = registerVal9
	local registerVal10 = CoD.Fileshare_BuyExtraSlots.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 353.000000, 703.000000)
	registerVal10:setTopBottom(true, false, 33.000000, 213.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FileshareBuyExtraSlots = registerVal10
	local registerVal11 = CoD.FileshareNoContent.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 46.000000, 296.000000)
	registerVal11:setTopBottom(true, false, 204.000000, 264.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FileshareNoContent = registerVal11
	local function __FUNC_2125_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal4, nil, false, __FUNC_2125_)
	local function __FUNC_2176_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setAlpha(Negate(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal4, "showPlusImage", true, __FUNC_2176_)
	local function __FUNC_2221_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal4, nil, false, __FUNC_2221_)
	local function __FUNC_2272_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setAlpha(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal4, "showPlusImage", true, __FUNC_2272_)
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_2305_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.upperline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.bottomline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal13.DefaultClip = __FUNC_2305_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_245D_(arg0)
		local registerVal2 = IsGlobalModelValueEqualTo(registerVal2, arg1, "FileshareRoot.itemsCount", 0.000000)
		if registerVal2 then
			HideElement(registerVal2, "FileshareItemLarge")
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "FileshareRoot", "itemsCount", __FUNC_245D_)
	registerVal4.id = "itemList"
	local function __FUNC_2537_(arg0, arg1)
		local registerVal2 = arg0.itemList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_2537_)
	local function __FUNC_2638_(arg0)
		arg0.LeftPanel:close()
		arg0.itemList:close()
		arg0.FileshareSelectedItemInfo0:close()
		arg0.FileshareItemLarge:close()
		arg0.FileshareBuyExtraSlots:close()
		arg0.FileshareNoContent:close()
		arg0.header:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2638_)
	if __FUNC_3E0_ then
		__FUNC_3E0_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FileshareSelectorList.new = __FUNC_4BA_
