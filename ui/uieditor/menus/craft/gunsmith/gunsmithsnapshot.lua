-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Gunsmith.FEMenuLargeGraphics")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithSnapshotControls")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithBO3Logo")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithSelfIdentity")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithAttachmentListContainer")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithVariantNameHeader")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithStatsAndWeaponLevel")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_3F3_(arg0, arg1)
	arg0:setModel(CoD.perController[arg1].gunsmithVariantModel)
	arg0.disableLeaderChangePopupShutdown = true
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "GunsmithSnapshot.ShowControls")
	if registerVal3 then
		Engine.SetModelValue(registerVal3, 1.000000)
	end
end

local function __FUNC_5A1_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GunsmithSnapshot")
	if __FUNC_3F3_ then
		__FUNC_3F3_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GunsmithSnapshot.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FEMenuLargeGraphics.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 1225.000000, 1261.000000)
	registerVal3:setTopBottom(true, false, 32.660000, 651.000000)
	registerVal3:setYRot(180.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.FEMenuLargeGraphics = registerVal3
	local registerVal4 = CoD.FEMenuLargeGraphics.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 28.000000, 64.000000)
	registerVal4:setTopBottom(true, false, 32.660000, 651.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.FEMenuLargeGraphics0 = registerVal4
	local registerVal5 = CoD.GunsmithSnapshotControls.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, true, -720.000000, 0.000000)
	local function __FUNC_1B65_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_1B65_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Hide"
	local function __FUNC_1BF9_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "GunsmithSnapshot.ShowControls", 0.000000)
	end

	registerVal9.condition = __FUNC_1BF9_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "GunsmithSnapshot.ShowControls")
	local function __FUNC_1C8F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GunsmithSnapshot.ShowControls"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1C8F_)
	registerVal1:addElement(registerVal5)
	registerVal1.snapshotControls = registerVal5
	local registerVal6 = CoD.GunsmithBO3Logo.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 1006.000000, 1253.000000)
	registerVal6:setTopBottom(true, false, 554.600000, 661.000000)
	registerVal6:setScale(0.800000)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Hide"
	local function __FUNC_1DBF_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "GunsmithSnapshot.BO3Logo", 0.000000)
	end

	registerVal10.condition = __FUNC_1DBF_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "GunsmithSnapshot.BO3Logo")
	local function __FUNC_1E4E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GunsmithSnapshot.BO3Logo"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_1E4E_)
	registerVal1:addElement(registerVal6)
	registerVal1.bo3logo = registerVal6
	local registerVal7 = CoD.GunsmithSelfIdentity.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 64.000000, 412.000000)
	registerVal7:setTopBottom(true, false, 569.000000, 636.000000)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Hide"
	local function __FUNC_1F7A_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "GunsmithSnapshot.PlayerID", 0.000000)
	end

	registerVal11.condition = __FUNC_1F7A_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "GunsmithSnapshot.PlayerID")
	local function __FUNC_200B_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GunsmithSnapshot.PlayerID"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_200B_)
	registerVal1:addElement(registerVal7)
	registerVal1.selfIdentity = registerVal7
	registerVal8 = CoD.GunsmithAttachmentListContainer.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 58.000000, 377.000000)
	registerVal8:setTopBottom(true, false, 77.660000, 115.660000)
	local function __FUNC_2137_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "GunsmithSelectedVariantAttachmentIconList", nil, __FUNC_2137_)
	local function __FUNC_2186_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.attachmentList:setDataSource(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "GunsmithSelectedVariantAttachmentIconList", "listDataSource", __FUNC_2186_)
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Hide"
	local function __FUNC_2242_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "GunsmithSnapshot.AttachmentIcons", 0.000000)
	end

	registerVal12.condition = __FUNC_2242_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "GunsmithSnapshot.AttachmentIcons")
	local function __FUNC_22DA_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GunsmithSnapshot.AttachmentIcons"
		registerVal1:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_22DA_)
	registerVal1:addElement(registerVal8)
	registerVal1.attachmentList = registerVal8
	registerVal9 = CoD.GunsmithVariantNameHeader.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 64.000000, 481.000000)
	registerVal9:setTopBottom(true, false, 35.660000, 84.660000)
	local function __FUNC_240E_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal1, nil, false, __FUNC_240E_)
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Hide"
	local function __FUNC_245E_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "GunsmithSnapshot.WeaponName", 0.000000)
	end

	registerVal13.condition = __FUNC_245E_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "GunsmithSnapshot.WeaponName")
	local function __FUNC_24F1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GunsmithSnapshot.WeaponName"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_24F1_)
	registerVal1:addElement(registerVal9)
	registerVal1.variantNameHeader = registerVal9
	registerVal10 = CoD.GunsmithStatsAndWeaponLevel.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -630.000000, -64.000000)
	registerVal10:setTopBottom(true, false, 36.000000, 179.000000)
	local function __FUNC_2621_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:linkToElementModel(registerVal1, nil, false, __FUNC_2621_)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "StatsAndWeaponLevelHide"
	local function __FUNC_2672_(arg1, arg2, arg3)
		local registerVal3 = IsGlobalModelValueEqualTo(arg2, arg0, "GunsmithSnapshot.Stats", 0.000000)
		if registerVal3 then
			registerVal3 = IsGlobalModelValueEqualTo(arg2, arg0, "GunsmithSnapshot.WeaponLevel", 0.000000)
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_2672_
	local registerVal15 = {}
	registerVal15.stateName = "StatsHide"
	local function __FUNC_2746_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "GunsmithSnapshot.Stats", 0.000000)
	end

	registerVal15.condition = __FUNC_2746_
	local registerVal16 = {}
	registerVal16.stateName = "WeaponLevelHide"
	local function __FUNC_27D4_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "GunsmithSnapshot.WeaponLevel", 0.000000)
	end

	registerVal16.condition = __FUNC_27D4_
	registerVal13 = {registerVal14, registerVal15, registerVal16}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "GunsmithSnapshot.Stats")
	local function __FUNC_286A_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GunsmithSnapshot.Stats"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_286A_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "GunsmithSnapshot.WeaponLevel")
	local function __FUNC_2994_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GunsmithSnapshot.WeaponLevel"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_2994_)
	registerVal1:addElement(registerVal10)
	registerVal1.statsAndWeaponLevel = registerVal10
	registerVal11 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, 100.000000, -100.000000)
	registerVal11:setTopBottom(true, true, 223.000000, -198.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.XCamMouseControl = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 28.000000, 64.000000)
	registerVal12:setTopBottom(true, false, 36.000000, 40.000000)
	registerVal12:setYRot(-180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Pixel2001 = registerVal12
	registerVal13 = {}
	registerVal13.left = registerVal8
	registerVal13.up = registerVal8
	registerVal5.navigation = registerVal13
	registerVal13 = {}
	registerVal13.right = registerVal5
	registerVal13.down = registerVal5
	registerVal8.navigation = registerVal13
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "GunsmithSnapshot.ShowControls")
	local function __FUNC_2AC6_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "GunsmithSnapshot.ShowControls"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal1:subscribeToModel(registerVal15, __FUNC_2AC6_)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "GunsmithSnapshot.SessionMode")
	local function __FUNC_2C99_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "GunsmithSnapshot.SessionMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal1:subscribeToModel(registerVal15, __FUNC_2C99_)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "GunsmithSnapshot.Stats")
	local function __FUNC_2E6C_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "GunsmithSnapshot.Stats"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal1:subscribeToModel(registerVal15, __FUNC_2E6C_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_303A_(arg1, arg2)
		local registerVal3 = CanShowWeaponStatsForCampaign(registerVal1, arg0)
		if not registerVal3 then
			SetGlobalModelValueArg("GunsmithSnapshot.SessionMode", Enum.eModes.MODE_MULTIPLAYER)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_303A_)
	local function __FUNC_318A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_31DC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_318A_, __FUNC_31DC_, false)
	local function __FUNC_32D7_(arg0, arg1, arg2, arg3)
		Gunsmith_SnapshotToggleControlsUI(arg1, arg0, arg2)
		PlaySoundAlias("uin_paint_decal_nav")
		return true
	end

	local function __FUNC_3388_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_GUNSMITH_SNAPSHOT_TOGGLE_UI")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "T", __FUNC_32D7_, __FUNC_3388_, false)
	local function __FUNC_349C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "GunsmithSnapshot.ShowControls", 1.000000)
		registerVal4 = IsGlobalModelValueEqualToEnum(arg0, arg2, "GunsmithSnapshot.SessionMode", Enum.eModes.MODE_MULTIPLAYER)
		registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "GunsmithSnapshot.Stats", 1.000000)
		registerVal4 = CanShowWeaponStatsForCampaign(registerVal1, arg2)
		if registerVal4 and registerVal4 and registerVal4 and registerVal4 then
			Gunsmith_SnapshotToggleStatsFilter(arg1, arg0, arg2)
			return true
		else
			registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "GunsmithSnapshot.ShowControls", 1.000000)
			registerVal4 = IsGlobalModelValueEqualToEnum(arg0, arg2, "GunsmithSnapshot.SessionMode", Enum.eModes.MODE_CAMPAIGN)
			registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "GunsmithSnapshot.Stats", 1.000000)
			if registerVal4 and registerVal4 and registerVal4 then
				Gunsmith_SnapshotToggleStatsFilter(arg1, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_376A_(arg0, arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "GunsmithSnapshot.ShowControls", 1.000000)
		registerVal3 = IsGlobalModelValueEqualToEnum(arg0, arg2, "GunsmithSnapshot.SessionMode", Enum.eModes.MODE_MULTIPLAYER)
		registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "GunsmithSnapshot.Stats", 1.000000)
		registerVal3 = CanShowWeaponStatsForCampaign(registerVal1, arg2)
		if registerVal3 and registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_GUNSMITH_STATS_FILTER_MULTIPLAYER")
			return true
		else
			registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "GunsmithSnapshot.ShowControls", 1.000000)
			registerVal3 = IsGlobalModelValueEqualToEnum(arg0, arg2, "GunsmithSnapshot.SessionMode", Enum.eModes.MODE_CAMPAIGN)
			registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "GunsmithSnapshot.Stats", 1.000000)
			if registerVal3 and registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_GUNSMITH_STATS_FILTER_CAMPAIGN")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "F", __FUNC_349C_, __FUNC_376A_, false)
	local function __FUNC_3B35_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_3B68_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_3B35_, __FUNC_3B68_, false)
	local function __FUNC_3C66_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_3C98_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "PLATFORM_EMBLEM_ROTATE_LAYER")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_3C66_, __FUNC_3C98_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal5.id = "snapshotControls"
	registerVal8.id = "attachmentList"
	registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.snapshotControls:processEvent(registerVal15)
	end
	local function __FUNC_3DAA_(arg1)
		arg1.FEMenuLargeGraphics:close()
		arg1.FEMenuLargeGraphics0:close()
		arg1.snapshotControls:close()
		arg1.bo3logo:close()
		arg1.selfIdentity:close()
		arg1.attachmentList:close()
		arg1.variantNameHeader:close()
		arg1.statsAndWeaponLevel:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GunsmithSnapshot.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3DAA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.GunsmithSnapshot = __FUNC_5A1_
