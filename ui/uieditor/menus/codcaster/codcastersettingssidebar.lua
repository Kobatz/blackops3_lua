-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.TabbedWidgets.basicTabList")
require("ui.uieditor.widgets.CodCaster.CodCasterTabWidget")
local function __FUNC_24C_(arg0, arg1)
	arg0.disableBlur = true
	arg0.disableDarkenElement = true
	arg0.animateInFromOffset = 396.000000
end

LUI.hudMenuType.CodCasterSettingsSideBar = "hud"
local function __FUNC_2DB_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CodCasterSettingsSideBar")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CodCasterSettingsSideBar.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -493.000000, 22.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.950000)
	registerVal1:addElement(registerVal3)
	registerVal1.black = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -493.000000, 22.000000)
	registerVal4:setTopBottom(true, false, 50.000000, 721.050000)
	registerVal4:setAlpha(0.750000)
	registerVal4:setImage(RegisterImage("uie_t7_codcaster_texturebacking"))
	registerVal1:addElement(registerVal4)
	registerVal1.texture = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -493.000000, 22.000000)
	registerVal5:setTopBottom(true, false, -8.000000, 64.050000)
	registerVal5:setImage(RegisterImage("uie_t7_codcaster_quicksetting"))
	registerVal1:addElement(registerVal5)
	registerVal1.titlebacking = registerVal5
	local registerVal6 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal6:setLeftRight(false, true, -488.000000, -50.000000)
	registerVal6:setTopBottom(true, false, 70.050000, 711.050000)
	registerVal1:addElement(registerVal6)
	registerVal1.TabFrame = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -493.000000, 22.000000)
	registerVal7:setTopBottom(true, false, 30.000000, 65.050000)
	registerVal7:setAlpha(0.250000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal7:setShaderVector(0.000000, 0.015534, 0.228275, 0.000000, 0.000000)
	registerVal7:setupNineSliceShader(8.000000, 8.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.FETabIdle = registerVal7
	local registerVal8 = CoD.basicTabList.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, true, -691.500000, -30.500000)
	registerVal8:setTopBottom(true, false, 29.020000, 65.050000)
	registerVal8:setScale(0.900000)
	registerVal8.grid:setWidgetType(CoD.CodCasterTabWidget)
	registerVal8.grid:setHorizontalCount(4.000000)
	registerVal8.grid:setSpacing(1.000000)
	registerVal8.grid:setDataSource("CodCasterSideBarTabs")
	registerVal1:addElement(registerVal8)
	registerVal1.SideBarTabs = registerVal8
	local function __FUNC_FF6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:changeFrameWidget(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal8.grid, "tabWidget", true, __FUNC_FF6_)
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_1092_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_1092_
	registerVal9.DefaultState = registerVal10
	registerVal1.clipsPerState = registerVal9
	local function __FUNC_10F2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRepeatButtonPress(arg3)
		if not registerVal4 then
			ToggleControllerModelValueNumber(arg2, "CodCaster.showSettingsSideBar")
			SaveShoutcasterSettings(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			SetLuiKeyCatcher(false)
			return true
		end
	end

	local function __FUNC_1231_(arg0, arg1, arg2)
		local registerVal4 = IsRepeatButtonPress(nil)
		if not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RTRIG, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RTRIG, "S", __FUNC_10F2_, __FUNC_1231_, false)
	local function __FUNC_135A_(arg0, arg1, arg2, arg3)
		ToggleControllerModelValueNumber(arg2, "CodCaster.showSettingsSideBar")
		SaveShoutcasterSettings(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		SetLuiKeyCatcher(false)
		return true
	end

	local function __FUNC_1468_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_NONE, "W", __FUNC_135A_, __FUNC_1468_, false, true)
	local function __FUNC_1554_(arg0, arg1, arg2, arg3)
		ToggleControllerModelValueNumber(arg2, "CodCaster.showSettingsSideBar")
		SaveShoutcasterSettings(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		SetLuiKeyCatcher(false)
		return true
	end

	local function __FUNC_1664_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_NONE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_NONE, "E", __FUNC_1554_, __FUNC_1664_, false, true)
	registerVal6.id = "TabFrame"
	local registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.TabFrame:processEvent(registerVal11)
	end
	local function __FUNC_1750_(arg1)
		arg1.SideBarTabs:close()
		arg1.TabFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CodCasterSettingsSideBar.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1750_)
	if __FUNC_24C_ then
		__FUNC_24C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CodCasterSettingsSideBar = __FUNC_2DB_
