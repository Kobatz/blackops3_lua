-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BumperButtonWithKeyMouse")
require("ui.uieditor.widgets.Barracks.CombatRecordAccoladeMissionSelectPip")
local function __FUNC_286_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "CombatRecordAccolades")
	registerVal3 = Engine.GetModel(registerVal2, "mapName")
	local registerVal4 = Engine.GetModel(registerVal2, "unique_id")
	Engine.SetModelValue(registerVal3, "CPUI_CP_MI_ETH_PROLOGUE")
	Engine.SetModelValue(registerVal4, 200.000000)
end

local function __FUNC_411_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "CombatRecordAccolades")
	registerVal3 = Engine.GetModel(registerVal2, "unique_id")
	local function __FUNC_54A_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			local registerVal2 = CoD.GetMapDataFromMapID(registerVal1)
			arg0.missionName:setText(Engine.Localize(registerVal2.mapNameCaps))
			local registerVal4 = Engine.GetGlobalModel()
			local registerVal3 = Engine.GetModel(registerVal4, "nextMap")
			Engine.SetModelValue(registerVal3, registerVal2.rootMapName)
		end
	end

	arg0.missionName:subscribeToModel(registerVal3, __FUNC_54A_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.CombatRecordAccoladeMissionSelector = registerVal3
local function __FUNC_739_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_286_ then
		__FUNC_286_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordAccoladeMissionSelector)
	registerVal2.id = "CombatRecordAccoladeMissionSelector"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 45.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 34.000000)
	local function __FUNC_108C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_108C_)
	local function __FUNC_1165_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("button_action", __FUNC_1165_)
	registerVal2:addElement(registerVal3)
	registerVal2.LBBumperButtonWithKeyMouse = registerVal3
	local registerVal4 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -45.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 34.000000)
	registerVal4.KeyMouseImage:setImage(RegisterImage("uie_bumperright"))
	local function __FUNC_1253_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_1253_)
	local function __FUNC_1329_(arg2, arg3)
		SendButtonPressToMenuEx(arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("button_action", __FUNC_1329_)
	registerVal2:addElement(registerVal4)
	registerVal2.RBBumperButtonWithKeyMouse = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 45.000000, 235.000000)
	registerVal5:setTopBottom(true, false, 5.000000, 30.000000)
	registerVal5:setText(Engine.Localize("CPUI_CP_MI_ETH_PROLOGUE"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.missionName = registerVal5
	local registerVal6 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:setLeftRight(false, false, -69.000000, 69.000000)
	registerVal6:setTopBottom(true, false, 36.000000, 44.000000)
	registerVal6:setDataSource("CPMapsList")
	registerVal6:setWidgetType(CoD.CombatRecordAccoladeMissionSelectPip)
	registerVal6:setHorizontalCount(14.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.pipList = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_1417_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.LBBumperButtonWithKeyMouse:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.RBBumperButtonWithKeyMouse:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.missionName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.pipList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1417_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_163C_(arg0)
		arg0.LBBumperButtonWithKeyMouse:close()
		arg0.RBBumperButtonWithKeyMouse:close()
		arg0.pipList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_163C_)
	if __FUNC_411_ then
		__FUNC_411_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CombatRecordAccoladeMissionSelector.new = __FUNC_739_
