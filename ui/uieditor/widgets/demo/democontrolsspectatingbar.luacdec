-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BumperButtonWithKeyMouse")
local function __FUNC_225_(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "demo.cameraMode"))
	if registerVal2 ~= Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM then
		local registerVal6 = Engine.GetGlobalModel()
		registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal6, "demo.clientNum"))
		local registerVal5 = GetClientNameAndClanTag(arg1, registerVal4)
	else
		registerVal4 = IsDemoContextObjectLinkMode()
		registerVal4 = IsFreeCameraLockedOnEntity(arg1)
		if registerVal4 and registerVal4 then
		end
	end
	arg0.PlayerName:setText(Engine.Localize("DEMO_LINKED_TO_OBJECT"))
end

local function __FUNC_508_(arg0, arg1, arg2)
	local function __FUNC_653_(arg2)
		__FUNC_225_(arg0, arg1)
	end

	arg0.PlayerName:subscribeToGlobalModel(arg1, "Demo", "cameraMode", __FUNC_653_)
	local function __FUNC_68C_(arg2)
		__FUNC_225_(arg0, arg1)
	end

	arg0.PlayerName:subscribeToGlobalModel(arg1, "Demo", "contextMode", __FUNC_68C_)
	local function __FUNC_6C8_(arg2)
		__FUNC_225_(arg0, arg1)
	end

	arg0.PlayerName:subscribeToGlobalModel(arg1, "Demo", "isFreeCameraLockedOnEntity", __FUNC_6C8_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.DemoControlsSpectatingBar = registerVal3
local function __FUNC_704_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Center)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoControlsSpectatingBar)
	registerVal2.id = "DemoControlsSpectatingBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -159.500000, -114.500000)
	registerVal3:setTopBottom(false, false, -14.500000, 15.500000)
	local function __FUNC_1081_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.KeyMouseImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "mouse_left_button_image", __FUNC_1081_)
	local function __FUNC_1157_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_1157_)
	registerVal2:addElement(registerVal3)
	registerVal2.leftBumper = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 35.500000, 264.500000)
	registerVal4:setTopBottom(true, false, 3.000000, 23.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_122D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(GetClientNameAndClanTag(arg1, registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Demo", "clientNum", __FUNC_122D_)
	registerVal2:addElement(registerVal4)
	registerVal2.PlayerName = registerVal4
	local registerVal5 = CoD.BumperButtonWithKeyMouse.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 114.500000, 159.500000)
	registerVal5:setTopBottom(false, false, -14.500000, 15.500000)
	local function __FUNC_1313_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.KeyMouseImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "mouse_right_button_image", __FUNC_1313_)
	local function __FUNC_13E7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.ControllerImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_13E7_)
	registerVal2:addElement(registerVal5)
	registerVal2.rightBumper = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_14BD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.leftBumper:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.rightBumper:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_14BD_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1617_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.leftBumper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.rightBumper:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1617_
	registerVal6.WithButtonPrompts = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "WithButtonPrompts"
	local function __FUNC_176F_(arg0, arg2, arg3)
		local registerVal3 = IsDemoClipPlaying()
		registerVal3 = IsGlobalModelValueEqualToEnum(arg2, arg1, "demo.cameraMode", Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsGameTypeEqualToString("fr")
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_176F_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.cameraMode")
	local function __FUNC_18D0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.cameraMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_18D0_)
	local function __FUNC_19F5_(arg0)
		arg0.leftBumper:close()
		arg0.rightBumper:close()
		arg0.PlayerName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_19F5_)
	if __FUNC_508_ then
		__FUNC_508_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.DemoControlsSpectatingBar.new = __FUNC_704_
