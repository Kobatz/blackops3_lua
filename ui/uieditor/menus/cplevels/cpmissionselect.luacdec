-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.CPLevels.CPResetPopup")
require("ui.uieditor.widgets.MenuSpecificWidgets.MissionProgression.CPMissionSelect_ListProgressionButton")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CPLevels.CPMissionInfo")
require("ui.uieditor.widgets.CPLevels.CP_FrameBox")
function LUI.createMenu.CPMissionSelect(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CPMissionSelect")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "MultiplayerMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CPMissionSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.850000)
	registerVal1:addElement(registerVal3)
	registerVal1.black = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.Smoke = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 79.000000, 313.000000)
	registerVal5:setTopBottom(true, false, 144.000000, 618.000000)
	registerVal5:setDataSource("CPMapsList")
	registerVal5:setWidgetType(CoD.CPMissionSelect_ListProgressionButton)
	registerVal5:setVerticalCount(14.000000)
	local function __FUNC_1345_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_1345_)
	local function __FUNC_14D7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_14D7_)
	local function __FUNC_15A6_(arg0, arg1, arg2, arg3)
		LaunchSelectedCPMission(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_160D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_15A6_, __FUNC_160D_, false)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Disabled"
	local function __FUNC_170A_(arg1, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg0, "classified")
	end

	registerVal9.condition = __FUNC_170A_
	local registerVal10 = {}
	registerVal10.stateName = "MissionOutOfOrder"
	local function __FUNC_177E_(arg1, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg0, "completedOutOfOrder")
	end

	registerVal10.condition = __FUNC_177E_
	local registerVal11 = {}
	registerVal11.stateName = "MissionCompleted"
	local function __FUNC_17FB_(arg1, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg0, "completed")
	end

	registerVal11.condition = __FUNC_17FB_
	local registerVal12 = {}
	registerVal12.stateName = "MissionCurrent"
	local function __FUNC_186D_(arg1, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg0, "isCurrentMap")
	end

	registerVal12.condition = __FUNC_186D_
	local registerVal13 = {}
	registerVal13.stateName = "MissionNotComplete"
	local function __FUNC_18E4_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "complete")
		if not registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg0, "classified")
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_18E4_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_1998_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "classified"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "classified", true, __FUNC_1998_)
	local function __FUNC_1AB8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "completedOutOfOrder"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "completedOutOfOrder", true, __FUNC_1AB8_)
	local function __FUNC_1BE1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "completed"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "completed", true, __FUNC_1BE1_)
	local function __FUNC_1CFF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isCurrentMap"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isCurrentMap", true, __FUNC_1CFF_)
	local function __FUNC_1E1E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "complete"
		registerVal1:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "complete", true, __FUNC_1E1E_)
	registerVal1:addElement(registerVal5)
	registerVal1.MapList = registerVal5
	local registerVal6 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_SELECT_MISSION_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_SELECT_MISSION_CAPS"))
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	local registerVal7 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal7:setTopBottom(true, false, 84.000000, 701.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.FEMenuLeftGraphics = registerVal7
	registerVal8 = CoD.CPMissionInfo.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 322.000000, 1191.000000)
	registerVal8:setTopBottom(true, false, 136.000000, 553.280000)
	registerVal1:addElement(registerVal8)
	registerVal1.CPMissionInfo = registerVal8
	registerVal9 = CoD.CP_FrameBox.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 322.000000, 909.000000)
	registerVal9:setTopBottom(true, false, 136.000000, 417.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.CPFrameBox = registerVal9
	local function __FUNC_1F3A_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal5, nil, false, __FUNC_1F3A_)
	local function __FUNC_1F8A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1FDC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1F8A_, __FUNC_1FDC_, false)
	local function __FUNC_20D9_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_210C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_20D9_, __FUNC_210C_, false)
	local function __FUNC_21FF_(arg0, arg1, arg2, arg3)
		local registerVal4 = ShouldShowCampaignResetOption(arg2)
		if registerVal4 then
			OpenPopup(registerVal1, "CPResetPopup", arg2)
			return true
		end
	end

	local function __FUNC_22A8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		local registerVal3 = ShouldShowCampaignResetOption(arg2)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_21FF_, __FUNC_22A8_, false)
	registerVal5.id = "MapList"
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.MapList:processEvent(registerVal12)
	end
	local function __FUNC_23E4_(arg1)
		arg1.MapList:close()
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.CPMissionInfo:close()
		arg1.CPFrameBox:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CPMissionSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_23E4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

