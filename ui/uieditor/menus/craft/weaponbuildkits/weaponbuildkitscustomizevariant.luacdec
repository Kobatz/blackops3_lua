-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.TitleDotsWidget")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.ZMInventory.WeaponBuildkits.WeaponBuildKitsVariantDescription")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
require("ui.uieditor.widgets.Craft.WeaponBuildKits.WeaponBuildKitsVariantAttachmentList")
local function __FUNC_3D2_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].gunsmithVariantModel)
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg1, CoD.perController[arg1].gunsmithVariantModel, true)
end

local function __FUNC_506_(arg0, arg1)
	local registerVal2 = CoD.GetCustomization(arg1, "weapon_index")
	local registerVal3 = Engine.Localize(Engine.GetItemName(registerVal2))
	local registerVal4 = arg0:getModel(arg1, "variantName")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	arg0.InfoPaneItemName.weaponNameWithVariant:setState("ShowVariant")
end

local function __FUNC_6D6_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("WeaponBuildKitsCustomizeVariant")
	if __FUNC_3D2_ then
		__FUNC_3D2_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "WeaponBuildKitsCustomizeVariant.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -649.000000, 645.000000)
	registerVal3:setTopBottom(false, false, -361.000000, -275.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.TitleBacking0 = registerVal3
	local registerVal4 = CoD.TitleDotsWidget.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, -221.000000, 304.340000)
	registerVal4:setTopBottom(true, false, -286.330000, -128.330000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.TitleDotsWidget0 = registerVal4
	local registerVal5 = CoD.cac_3dTitleIntermediary.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, -72.000000, 927.000000)
	registerVal5:setTopBottom(true, false, -4.000000, 142.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_WEAPON_BUILD_KITS_CAPS"))
	registerVal1:addElement(registerVal5)
	registerVal1.cac3dTitleIntermediary0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal6:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal6:setRGB(0.900000, 0.900000, 0.900000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal6)
	registerVal1.CategoryListLine0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -750.000000, 750.000000)
	registerVal7:setTopBottom(false, false, 297.000000, 360.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.FooterBacking = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 31.870000, 67.870000)
	registerVal8:setTopBottom(true, false, 623.000000, 627.000000)
	registerVal8:setYRot(-180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.Pixel20 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 31.870000, 67.870000)
	registerVal9:setTopBottom(true, false, 560.000000, 564.000000)
	registerVal9:setYRot(-180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal9)
	registerVal1.Pixel200 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 754.870000, 790.870000)
	registerVal10:setTopBottom(true, false, 623.000000, 627.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal10)
	registerVal1.Pixel201 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 754.870000, 790.870000)
	registerVal11:setTopBottom(true, false, 560.000000, 564.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Pixel2000 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 140.870000, 156.870000)
	registerVal12:setTopBottom(true, false, 558.000000, 566.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Image000000 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 140.870000, 156.870000)
	registerVal13:setTopBottom(true, false, 621.000000, 629.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.Image0000000 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 531.870000, 547.870000)
	registerVal14:setTopBottom(true, false, 558.000000, 566.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.Image0000001 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 531.870000, 547.870000)
	registerVal15:setTopBottom(true, false, 621.000000, 629.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal15)
	registerVal1.Image00000000 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 663.870000, 679.870000)
	registerVal16:setTopBottom(true, false, 558.000000, 566.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal16)
	registerVal1.Image00000010 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 663.870000, 679.870000)
	registerVal17:setTopBottom(true, false, 621.000000, 629.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal17)
	registerVal1.Image000000000 = registerVal17
	local registerVal18 = CoD.InfoPaneItemName.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 71.000000, 699.000000)
	registerVal18:setTopBottom(true, false, 136.000000, 170.000000)
	local function __FUNC_21B7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(GetItemNameFromIndex(registerVal1)))
		end
	end

	registerVal18:linkToElementModel(registerVal1, "weaponIndex", true, __FUNC_21B7_)
	local function __FUNC_22E9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:linkToElementModel(registerVal1, "variantName", true, __FUNC_22E9_)
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Equipped"
	local function __FUNC_240C_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal22.condition = __FUNC_240C_
	local registerVal23 = {}
	registerVal23.stateName = "Available"
	local function __FUNC_2458_(arg0, arg1, arg2)
		return true
	end

	registerVal23.condition = __FUNC_2458_
	local registerVal24 = {}
	registerVal24.stateName = "NotEquippable"
	local function __FUNC_248C_(arg0, arg1, arg2)
		return true
	end

	registerVal24.condition = __FUNC_248C_
	local registerVal25 = {}
	registerVal25.stateName = "NotAvailable"
	local function __FUNC_24C0_(arg0, arg1, arg2)
		return true
	end

	registerVal25.condition = __FUNC_24C0_
	registerVal21 = {registerVal22, registerVal23, registerVal24, registerVal25}
	registerVal18:mergeStateConditions(registerVal21)
	registerVal1:addElement(registerVal18)
	registerVal1.InfoPaneItemName = registerVal18
	local registerVal19 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal19:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal19:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal19.titleLabel:setText(Engine.Localize("MENU_WEAPON_BUILD_KITS_CAPS"))
	registerVal19.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_WEAPON_BUILD_KITS_CAPS"))
	registerVal19.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_gunsmith"))
	registerVal1:addElement(registerVal19)
	registerVal1.MenuFrame = registerVal19
	local registerVal20 = CoD.WeaponBuildKitsVariantDescription.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 71.000000, 413.670000)
	registerVal20:setTopBottom(true, false, 176.000000, 198.000000)
	registerVal1:addElement(registerVal20)
	registerVal1.WeaponBuildKitsVariantDescription = registerVal20
	registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 53.000000, 55.000000)
	registerVal21:setTopBottom(true, false, 87.000000, 638.000000)
	registerVal21:setZRot(180.000000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal21)
	registerVal1.LineSide = registerVal21
	registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 31.870000, 67.870000)
	registerVal22:setTopBottom(true, false, 136.000000, 140.000000)
	registerVal22:setYRot(-180.000000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal22)
	registerVal1.Pixel2001 = registerVal22
	registerVal23 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal23:setLeftRight(false, true, -833.000000, -152.000000)
	registerVal23:setTopBottom(true, true, 176.000000, -199.110000)
	registerVal1:addElement(registerVal23)
	registerVal1.XCamMouseControl = registerVal23
	registerVal24 = CoD.WeaponBuildKitsVariantAttachmentList.new(registerVal1, arg0)
	registerVal24:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal24:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_24F4_(arg1)
		registerVal24:setModel(arg1, arg0)
	end

	registerVal24:linkToElementModel(registerVal1, nil, false, __FUNC_24F4_)
	local function __FUNC_2546_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal24:registerEventHandler("menu_loaded", __FUNC_2546_)
	registerVal1:addElement(registerVal24)
	registerVal1.attachmentListFrame = registerVal24
	local function __FUNC_25D9_(arg0, arg1)
		ShowHeaderKickerAndIcon(registerVal1)
		SetHeadingKickerTextToGameMode("MENU_ZOMBIES_CAPS")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_25D9_)
	local function __FUNC_26C1_(arg0, arg1)
		local registerVal3 = IsLAN()
		if not registerVal3 then
			SetHeadingKickerTextToGameMode("MENU_ZOMBIES_CAPS")
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_26C1_)
	local function __FUNC_279B_(arg0, arg1, arg2, arg3)
		SaveWeaponBuildKit(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_27FC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_279B_, __FUNC_27FC_, false)
	local function __FUNC_28F7_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_2928_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_28F7_, __FUNC_2928_, false)
	local function __FUNC_2A26_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_2A58_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_2A26_, __FUNC_2A58_, false)
	registerVal19:setModel(registerVal1.buttonModel, arg0)
	registerVal24.id = "attachmentListFrame"
	local registerVal27 = {}
	registerVal27.name = "menu_loaded"
	registerVal27.controller = arg0
	registerVal1:processEvent(registerVal27)
	registerVal27 = {}
	registerVal27.name = "update_state"
	registerVal27.menu = registerVal1
	registerVal1:processEvent(registerVal27)
	registerVal25 = registerVal1:restoreState()
	if not registerVal25 then
		registerVal27 = {}
		registerVal27.name = "gain_focus"
		registerVal27.controller = arg0
		registerVal1.attachmentListFrame:processEvent(registerVal27)
	end
	local function __FUNC_2B6A_(arg1)
		arg1.TitleDotsWidget0:close()
		arg1.cac3dTitleIntermediary0:close()
		arg1.InfoPaneItemName:close()
		arg1.MenuFrame:close()
		arg1.WeaponBuildKitsVariantDescription:close()
		arg1.XCamMouseControl:close()
		arg1.attachmentListFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "WeaponBuildKitsCustomizeVariant.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2B6A_)
	if __FUNC_506_ then
		__FUNC_506_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.WeaponBuildKitsCustomizeVariant = __FUNC_6D6_
