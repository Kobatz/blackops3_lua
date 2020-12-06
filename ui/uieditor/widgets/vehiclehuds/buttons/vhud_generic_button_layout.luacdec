-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_ButtonWidget")
require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_generic_key_mouse_layout")
local function __FUNC_294_(arg0, arg1, arg2)
	local registerVal3 = IsGamepad(arg1)
	if registerVal3 then
		arg0.vhudgenerickeymouselayout:close()
		return 
	end
	arg0.RightStick:close()
	arg0.RightTrigger:close()
	arg0.RightBumper:close()
	arg0.LeftStick:close()
	arg0.LeftTrigger:close()
	arg0.LeftBumper:close()
	arg0.L3Button:close()
	arg0.R3Button:close()
end

local function __FUNC_470_(arg0, arg1, arg2)
	__FUNC_294_(arg0, arg1, arg2)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.vhud_generic_button_layout = registerVal3
local function __FUNC_4B0_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_generic_button_layout)
	registerVal2.id = "vhud_generic_button_layout"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -342.000000, -256.000000)
	registerVal3:setTopBottom(false, true, -117.000000, -8.000000)
	registerVal3:setYRot(-30.000000)
	registerVal3:setZRot(-4.000000)
	local function __FUNC_1711_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.button0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "VehicleController", "right_stick_move_image", __FUNC_1711_)
	local function __FUNC_17E1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.button1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "VehicleController", "right_stick_move_image", __FUNC_17E1_)
	local function __FUNC_18B1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "VehicleController", "right_stick_move_image", __FUNC_18B1_)
	local function __FUNC_1980_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, "R_STICK", false, __FUNC_1980_)
	registerVal2:addElement(registerVal3)
	registerVal2.RightStick = registerVal3
	local registerVal4 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -175.000000, -89.000000)
	registerVal4:setTopBottom(false, true, -128.000000, -19.000000)
	registerVal4:setYRot(-30.000000)
	registerVal4:setZRot(-4.000000)
	local function __FUNC_19D2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.button0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "VehicleController", "right_trigger_button_image", __FUNC_19D2_)
	local function __FUNC_1AA1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.button1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "VehicleController", "right_trigger_button_image", __FUNC_1AA1_)
	local function __FUNC_1B71_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "VehicleController", "right_trigger_button_image", __FUNC_1B71_)
	local function __FUNC_1C40_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, "BUTTON_RTRIG", false, __FUNC_1C40_)
	registerVal2:addElement(registerVal4)
	registerVal2.RightTrigger = registerVal4
	local registerVal5 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -121.000000, -35.000000)
	registerVal5:setTopBottom(false, true, -198.000000, -89.000000)
	registerVal5:setYRot(-30.000000)
	registerVal5:setZRot(-4.000000)
	local function __FUNC_1C92_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.button0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "VehicleController", "right_shoulder_button_image", __FUNC_1C92_)
	local function __FUNC_1D61_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.button1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "VehicleController", "right_shoulder_button_image", __FUNC_1D61_)
	local function __FUNC_1E31_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "VehicleController", "right_shoulder_button_image", __FUNC_1E31_)
	local function __FUNC_1F00_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "BUTTON_RSHLDR", false, __FUNC_1F00_)
	registerVal2:addElement(registerVal5)
	registerVal2.RightBumper = registerVal5
	local registerVal6 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 252.000000, 338.000000)
	registerVal6:setTopBottom(false, true, -117.000000, -8.000000)
	registerVal6:setYRot(30.000000)
	registerVal6:setZRot(4.000000)
	local function __FUNC_1F52_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.button0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "VehicleController", "left_stick_move_image", __FUNC_1F52_)
	local function __FUNC_2021_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.button1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "VehicleController", "left_stick_move_image", __FUNC_2021_)
	local function __FUNC_20F1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "VehicleController", "left_stick_move_image", __FUNC_20F1_)
	local function __FUNC_21C0_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "L_STICK", false, __FUNC_21C0_)
	registerVal2:addElement(registerVal6)
	registerVal2.LeftStick = registerVal6
	local registerVal7 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 91.000000, 177.000000)
	registerVal7:setTopBottom(false, true, -130.000000, -21.000000)
	registerVal7:setYRot(30.000000)
	registerVal7:setZRot(4.000000)
	local function __FUNC_2212_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.button0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "VehicleController", "left_trigger_button_image", __FUNC_2212_)
	local function __FUNC_22E1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.button1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "VehicleController", "left_trigger_button_image", __FUNC_22E1_)
	local function __FUNC_23B1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "VehicleController", "left_trigger_button_image", __FUNC_23B1_)
	local function __FUNC_2480_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "BUTTON_LTRIG", false, __FUNC_2480_)
	registerVal2:addElement(registerVal7)
	registerVal2.LeftTrigger = registerVal7
	local registerVal8 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 35.000000, 121.000000)
	registerVal8:setTopBottom(false, true, -197.000000, -88.000000)
	registerVal8:setYRot(30.000000)
	registerVal8:setZRot(4.000000)
	local function __FUNC_24D2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.button0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "VehicleController", "left_shoulder_button_image", __FUNC_24D2_)
	local function __FUNC_25A1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.button1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "VehicleController", "left_shoulder_button_image", __FUNC_25A1_)
	local function __FUNC_2671_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "VehicleController", "left_shoulder_button_image", __FUNC_2671_)
	local function __FUNC_2740_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "BUTTON_LSHLDR", false, __FUNC_2740_)
	registerVal2:addElement(registerVal8)
	registerVal2.LeftBumper = registerVal8
	local registerVal9 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 329.000000, 415.000000)
	registerVal9:setTopBottom(false, true, -125.500000, -16.500000)
	registerVal9:setYRot(30.000000)
	registerVal9:setZRot(4.000000)
	local function __FUNC_2792_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.button0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "VehicleController", "left_stick_button_image", __FUNC_2792_)
	local function __FUNC_2861_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.button1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "VehicleController", "left_stick_button_image", __FUNC_2861_)
	local function __FUNC_2931_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "VehicleController", "left_stick_button_image", __FUNC_2931_)
	local function __FUNC_2A00_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "BUTTON_LSTICK", false, __FUNC_2A00_)
	registerVal2:addElement(registerVal9)
	registerVal2.L3Button = registerVal9
	local registerVal10 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -425.000000, -339.000000)
	registerVal10:setTopBottom(false, true, -127.500000, -18.500000)
	registerVal10:setYRot(-30.000000)
	registerVal10:setZRot(-4.000000)
	local function __FUNC_2A52_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.button0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "VehicleController", "right_stick_button_image", __FUNC_2A52_)
	local function __FUNC_2B21_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.button1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "VehicleController", "right_stick_button_image", __FUNC_2B21_)
	local function __FUNC_2BF1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "VehicleController", "right_stick_button_image", __FUNC_2BF1_)
	local function __FUNC_2CC0_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "BUTTON_RSTICK", false, __FUNC_2CC0_)
	registerVal2:addElement(registerVal10)
	registerVal2.R3Button = registerVal10
	local registerVal11 = CoD.vhud_generic_key_mouse_layout.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_2D12_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_2D12_)
	registerVal2:addElement(registerVal11)
	registerVal2.vhudgenerickeymouselayout = registerVal11
	local registerVal12 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal12:setLeftRight(false, true, -259.000000, -173.000000)
	registerVal12:setTopBottom(false, true, -123.000000, -14.000000)
	registerVal12:setYRot(-30.000000)
	registerVal12:setZRot(-4.000000)
	local function __FUNC_2D62_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.button0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "VehicleController", "primary_button_image", __FUNC_2D62_)
	local function __FUNC_2E31_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.button1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "VehicleController", "primary_button_image", __FUNC_2E31_)
	local function __FUNC_2F01_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "VehicleController", "primary_button_image", __FUNC_2F01_)
	local function __FUNC_2FD0_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "BUTTON_A", false, __FUNC_2FD0_)
	registerVal2:addElement(registerVal12)
	registerVal2.AXButton = registerVal12
	local registerVal13 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal13:setLeftRight(false, true, -258.000000, -172.000000)
	registerVal13:setTopBottom(false, true, -123.000000, -14.000000)
	registerVal13:setYRot(-30.000000)
	registerVal13:setZRot(-4.000000)
	local function __FUNC_3022_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.button0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "VehicleController", "secondary_button_image", __FUNC_3022_)
	local function __FUNC_30F1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.button1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "VehicleController", "secondary_button_image", __FUNC_30F1_)
	local function __FUNC_31C1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "VehicleController", "secondary_button_image", __FUNC_31C1_)
	local function __FUNC_3290_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, "BUTTON_B", false, __FUNC_3290_)
	registerVal2:addElement(registerVal13)
	registerVal2.BCircleButton = registerVal13
	local registerVal14 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 172.000000, 258.000000)
	registerVal14:setTopBottom(false, true, -123.000000, -14.000000)
	registerVal14:setYRot(30.000000)
	registerVal14:setZRot(4.000000)
	local function __FUNC_32E2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.button0:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "VehicleController", "alt1_button_image", __FUNC_32E2_)
	local function __FUNC_33B1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.button1:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "VehicleController", "alt1_button_image", __FUNC_33B1_)
	local function __FUNC_3481_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.button:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "VehicleController", "alt1_button_image", __FUNC_3481_)
	local function __FUNC_3550_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, "BUTTON_X", false, __FUNC_3550_)
	registerVal2:addElement(registerVal14)
	registerVal2.XSquareButton = registerVal14
	local function __FUNC_35A2_(arg0)
		arg0.RightStick:close()
		arg0.RightTrigger:close()
		arg0.RightBumper:close()
		arg0.LeftStick:close()
		arg0.LeftTrigger:close()
		arg0.LeftBumper:close()
		arg0.L3Button:close()
		arg0.R3Button:close()
		arg0.vhudgenerickeymouselayout:close()
		arg0.AXButton:close()
		arg0.BCircleButton:close()
		arg0.XSquareButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_35A2_)
	if __FUNC_470_ then
		__FUNC_470_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.vhud_generic_button_layout.new = __FUNC_4B0_
