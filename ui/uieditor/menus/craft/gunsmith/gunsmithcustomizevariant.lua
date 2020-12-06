-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithVariantAttachmentList")
local function __FUNC_2CC_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].gunsmithVariantModel)
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg1, CoD.perController[arg1].gunsmithVariantModel, true)
	arg0.disableLeaderChangePopupShutdown = true
	if CoD.perController[arg1].confirmVariantNameButtonPressed and CoD.perController[arg1].confirmVariantNameButtonPressed == true then
		local registerVal3 = DataSources.GunsmithSnapshot.getModel(arg1)
		CoD.perController[arg1].confirmVariantNameButtonPressed = false
	end
end

local function __FUNC_542_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GunsmithCustomizeVariant")
	if __FUNC_2CC_ then
		__FUNC_2CC_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GunsmithCustomizeVariant.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal3:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal3)
	registerVal1.CategoryListLine0 = registerVal3
	local registerVal4 = CoD.InfoPaneItemName.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 71.000000, 452.000000)
	registerVal4:setTopBottom(true, false, 136.000000, 170.000000)
	registerVal4.weaponNameWithVariant.variantName:setAlpha(1.000000)
	local function __FUNC_17EF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(GetItemNameFromIndexMP(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal1, "weaponIndex", true, __FUNC_17EF_)
	local function __FUNC_1923_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.weaponNameWithVariant.variantName.itemName:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal1, "variantNameBig", true, __FUNC_1923_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Equipped"
	local function __FUNC_1A1E_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal8.condition = __FUNC_1A1E_
	local registerVal9 = {}
	registerVal9.stateName = "Available"
	local function __FUNC_1A68_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_1A68_
	local registerVal10 = {}
	registerVal10.stateName = "NeedsWildcard"
	local function __FUNC_1AB5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_1AB5_
	local registerVal11 = {}
	registerVal11.stateName = "NotEquippable"
	local function __FUNC_1B01_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1B01_
	local registerVal12 = {}
	registerVal12.stateName = "NotAvailable"
	local function __FUNC_1B4D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_1B4D_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal1:addElement(registerVal4)
	registerVal1.InfoPaneItemName = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 71.000000, 271.000000)
	registerVal5:setTopBottom(true, false, 179.160000, 204.160000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1B99_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg0, "GunsmithSelectedItemProperties", "itemName", __FUNC_1B99_)
	registerVal1:addElement(registerVal5)
	registerVal1.GunsmithDescription = registerVal5
	local registerVal6 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_GUNSMITH_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_GUNSMITH_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_gunsmith"))
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 53.000000, 55.000000)
	registerVal7:setTopBottom(true, false, 87.000000, 638.000000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal7)
	registerVal1.LineSide = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 31.870000, 67.870000)
	registerVal8:setTopBottom(true, false, 136.000000, 140.000000)
	registerVal8:setYRot(-180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.Pixel2001 = registerVal8
	registerVal9 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 150.000000, -150.000000)
	registerVal9:setTopBottom(true, true, 198.000000, -211.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.XCamMouseControl = registerVal9
	registerVal10 = CoD.GunsmithVariantAttachmentList.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_1C52_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:linkToElementModel(registerVal1, nil, false, __FUNC_1C52_)
	local function __FUNC_1CA2_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("menu_loaded", __FUNC_1CA2_)
	registerVal1:addElement(registerVal10)
	registerVal1.attachmentListFrame = registerVal10
	registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_1D35_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal1.CategoryListLine0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.InfoPaneItemName:setLeftRight(true, false, 71.000000, 452.000000)
		registerVal1.InfoPaneItemName:setTopBottom(true, false, 136.000000, 170.000000)
		registerVal1.InfoPaneItemName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.GunsmithDescription:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.MenuFrame:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
	end

	registerVal12.DefaultClip = __FUNC_1D35_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1FE8_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal1.CategoryListLine0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.InfoPaneItemName:setLeftRight(true, false, 71.000000, 452.000000)
		registerVal1.InfoPaneItemName:setTopBottom(true, false, 136.000000, 170.000000)
		registerVal1.InfoPaneItemName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.GunsmithDescription:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.MenuFrame:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
	end

	registerVal12.DefaultClip = __FUNC_1FE8_
	registerVal11.ArabicFrontEnd = registerVal12
	registerVal1.clipsPerState = registerVal11
	local function __FUNC_229C_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_229C_)
	local function __FUNC_2331_(arg0, arg1, arg2, arg3)
		Gunsmith_OpenSaveVariantPopup(registerVal1, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_23A3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2331_, __FUNC_23A3_, false)
	local function __FUNC_249B_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_24CC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_249B_, __FUNC_24CC_, false)
	local function __FUNC_25CA_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_25FC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_25CA_, __FUNC_25FC_, false)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal10.id = "attachmentListFrame"
	local registerVal13 = {}
	registerVal13.name = "menu_loaded"
	registerVal13.controller = arg0
	registerVal1:processEvent(registerVal13)
	registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = registerVal1
	registerVal1:processEvent(registerVal13)
	registerVal11 = registerVal1:restoreState()
	if not registerVal11 then
		registerVal13 = {}
		registerVal13.name = "gain_focus"
		registerVal13.controller = arg0
		registerVal1.attachmentListFrame:processEvent(registerVal13)
	end
	local function __FUNC_270E_(arg1)
		arg1.InfoPaneItemName:close()
		arg1.MenuFrame:close()
		arg1.XCamMouseControl:close()
		arg1.attachmentListFrame:close()
		arg1.GunsmithDescription:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GunsmithCustomizeVariant.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_270E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GunsmithCustomizeVariant = __FUNC_542_
