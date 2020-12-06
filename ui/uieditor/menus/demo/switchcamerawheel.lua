-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Panel")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Multiply")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Vignette")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Texture")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_CenterHex")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_ElementsSide")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_DNIContainer")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_CenterElements")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_BracketBlur")
require("ui.uieditor.widgets.AbilityWheel.AbilityButtonNew")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_TabC")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Description")
CoD.SwitchCameraWheel = {}
CoD.SwitchCameraWheel.LastSelectedWidget = nil
local function __FUNC_56F_(arg0)
	local function __FUNC_5B6_(arg0)
		return true
	end

	arg0.restoreState = __FUNC_5B6_
end

local function __FUNC_5E8_(arg0, arg1)
	for index2=1.000000, 7.000000, 1.000000 do
		arg0[("CameraButton" .. index2)].modelName = ("Camera" .. index2)
		local function __FUNC_7E5_(arg0, arg2)
			local registerVal3 = Engine.GetModelForController(arg1)
			local registerVal2 = Engine.GetModel(registerVal3, "SwitchCameraWheel")
			registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal2, (arg0.modelName .. ".displayName")))
			local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal2, (arg0.modelName .. ".description")))
			local registerVal6 = Engine.GetModel(registerVal2, "selectedCameraDisplayName")
			Engine.SetModelValue(registerVal6, registerVal3)
			registerVal6 = Engine.GetModel(registerVal2, "selectedCameraDisplayDesc")
			Engine.SetModelValue(registerVal6, registerVal4)
			CoD.SwitchCameraWheel.LastSelectedWidget = arg0
			return LUI.UIElement.gainFocus(arg0, arg2)
		end

		arg0[("CameraButton" .. index2)]:registerEventHandler("gain_focus", __FUNC_7E5_)
	end
	local function __FUNC_AD3_(arg0, arg2)
		if arg0.menuName == arg2.popupName then
			local registerVal4 = Engine.GetModelForController(arg1)
			local registerVal3 = Engine.GetModel(registerVal4, "SwitchCameraWheel")
			registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, (CoD.SwitchCameraWheel.LastSelectedWidget.modelName .. ".disabled")))
			local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, (CoD.SwitchCameraWheel.LastSelectedWidget.modelName .. ".cameraMode")))
			Engine.SwitchDemoCameraMode(registerVal5)
			local registerVal6 = Engine.GetModel(registerVal3, (CoD.SwitchCameraWheel.LastSelectedWidget.modelName .. ".freeCameraMode"))
			if registerVal4 == false and registerVal6 ~= nil then
				local registerVal7 = Engine.GetModelValue(registerVal6)
				Engine.SwitchDemoFreeCameraMode(registerVal7)
			end
			arg0:goBack()
			return true
		end
	end

	arg0:registerEventHandler("close_popup", __FUNC_AD3_)
	CoD.SwitchCameraWheel.LastSelectedWidget = arg0.CameraButton1
	local registerVal4 = {}
	registerVal4.name = "gain_focus"
	registerVal4.controller = arg1
	CoD.SwitchCameraWheel.LastSelectedWidget:processEvent(registerVal4)
end

local function __FUNC_DE4_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("SwitchCameraWheel")
	if __FUNC_56F_ then
		__FUNC_56F_(registerVal1, arg0)
	end
	registerVal1.soundSet = "AbilityWheel"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "SwitchCameraWheel.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.AbilityWheel_Panel.new(registerVal1, arg0)
	registerVal3:setLeftRight(false, false, -272.000000, 272.000000)
	registerVal3:setTopBottom(false, false, -224.000000, 320.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.Panel = registerVal3
	local registerVal4 = CoD.AbilityWheel_Multiply.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, false, -336.000000, 336.000000)
	registerVal4:setTopBottom(false, false, -314.000000, 358.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.Multiply0 = registerVal4
	local registerVal5 = CoD.AbilityWheel_Vignette.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal5:setRGB(0.470000, 0.470000, 0.470000)
	registerVal1:addElement(registerVal5)
	registerVal1.Vignette = registerVal5
	local registerVal6 = CoD.AbilityWheel_Texture.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 240.000000, 1040.000000)
	registerVal6:setTopBottom(true, false, 81.000000, 617.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.Texture = registerVal6
	local registerVal7 = CoD.AbilityWheel_CenterHex.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -144.000000, 144.000000)
	registerVal7:setTopBottom(false, false, -119.000000, 209.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.HexCenter = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -68.000000, 68.000000)
	registerVal8:setTopBottom(false, false, 296.000000, 312.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_outtergrid"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.OutterGrid = registerVal8
	local registerVal9 = CoD.AbilityWheel_ElementsSide.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, -624.000000, -155.000000)
	registerVal9:setTopBottom(false, false, -313.000000, 303.000000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.ElementsSideL = registerVal9
	local registerVal10 = CoD.AbilityWheel_ElementsSide.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, 155.000000, 624.000000)
	registerVal10:setTopBottom(false, false, -313.000000, 303.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setYRot(-180.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.ElementsSideR = registerVal10
	local registerVal11 = CoD.AbilityWheel_DNIContainer.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 548.000000, 732.000000)
	registerVal11:setTopBottom(true, false, 5.000000, 69.000000)
	registerVal11:setAlpha(0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.DNIContainer = registerVal11
	local registerVal12 = CoD.AbilityWheel_CenterElements.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 532.000000, 748.000000)
	registerVal12:setTopBottom(true, false, 300.000000, 516.000000)
	registerVal12:setAlpha(0.000000)
	local function __FUNC_3027_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "SwitchCameraWheel", nil, __FUNC_3027_)
	registerVal1:addElement(registerVal12)
	registerVal1.CenterElements = registerVal12
	local registerVal13 = CoD.AbilityWheel_BracketBlur.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 236.000000, 1055.300000)
	registerVal13:setTopBottom(true, false, 185.670000, 798.330000)
	registerVal13:setAlpha(0.110000)
	registerVal13:setZoom(-4000.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.BracketBlurBack = registerVal13
	local registerVal14 = CoD.AbilityButtonNew.new(registerVal1, arg0)
	registerVal14:setLeftRight(false, false, 87.000000, 237.000000)
	registerVal14:setTopBottom(false, false, -173.000000, -23.000000)
	registerVal14:setZRot(-51.430000)
	registerVal14.GrabBrakcetL:setAlpha(0.000000)
	registerVal14.AbilitylIcon:setZRot(60.000000)
	local function __FUNC_3076_(arg1)
		registerVal14:setModel(arg1, arg0)
	end

	registerVal14:subscribeToGlobalModel(arg0, "SwitchCameraWheel", "Camera7", __FUNC_3076_)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Inactive"
	local function __FUNC_30C6_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "enabled")
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal18.condition = __FUNC_30C6_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_316F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "enabled"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "enabled", true, __FUNC_316F_)
	local function __FUNC_3289_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "disabled", true, __FUNC_3289_)
	registerVal18 = Engine.GetModelForController(arg0)
	registerVal17 = Engine.GetModel(registerVal18, "hudItems.cybercomActiveType")
	local function __FUNC_33A6_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cybercomActiveType"
		registerVal1:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:subscribeToModel(registerVal17, __FUNC_33A6_)
	registerVal1:addElement(registerVal14)
	registerVal1.CameraButton7 = registerVal14
	local registerVal15 = CoD.AbilityButtonNew.new(registerVal1, arg0)
	registerVal15:setLeftRight(false, false, 127.000000, 277.000000)
	registerVal15:setTopBottom(false, false, 0.000000, 150.000000)
	registerVal15:setZRot(-102.840000)
	registerVal15.GrabBrakcetL:setAlpha(0.000000)
	registerVal15.AbilitylIcon:setZRot(60.000000)
	local function __FUNC_34D5_(arg1)
		registerVal15:setModel(arg1, arg0)
	end

	registerVal15:subscribeToGlobalModel(arg0, "SwitchCameraWheel", "Camera6", __FUNC_34D5_)
	registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Inactive"
	local function __FUNC_3526_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "enabled")
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal19.condition = __FUNC_3526_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	local function __FUNC_35CF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "enabled"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "enabled", true, __FUNC_35CF_)
	local function __FUNC_36E9_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "disabled", true, __FUNC_36E9_)
	registerVal19 = Engine.GetModelForController(arg0)
	registerVal18 = Engine.GetModel(registerVal19, "hudItems.cybercomActiveType")
	local function __FUNC_3806_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cybercomActiveType"
		registerVal1:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:subscribeToModel(registerVal18, __FUNC_3806_)
	registerVal1:addElement(registerVal15)
	registerVal1.CameraButton6 = registerVal15
	local registerVal16 = CoD.AbilityButtonNew.new(registerVal1, arg0)
	registerVal16:setLeftRight(false, false, 17.000000, 167.000000)
	registerVal16:setTopBottom(false, false, 142.000000, 292.000000)
	registerVal16:setZRot(-154.260000)
	registerVal16.GradBracketR:setAlpha(0.000000)
	registerVal16.AbilitylIcon:setZRot(120.000000)
	local function __FUNC_3935_(arg1)
		registerVal16:setModel(arg1, arg0)
	end

	registerVal16:subscribeToGlobalModel(arg0, "SwitchCameraWheel", "Camera5", __FUNC_3935_)
	registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Inactive"
	local function __FUNC_3986_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "enabled")
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal20.condition = __FUNC_3986_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_3A2F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "enabled"
		registerVal1:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "enabled", true, __FUNC_3A2F_)
	local function __FUNC_3B49_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "disabled", true, __FUNC_3B49_)
	registerVal20 = Engine.GetModelForController(arg0)
	registerVal19 = Engine.GetModel(registerVal20, "hudItems.cybercomActiveType")
	local function __FUNC_3C66_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cybercomActiveType"
		registerVal1:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:subscribeToModel(registerVal19, __FUNC_3C66_)
	registerVal1:addElement(registerVal16)
	registerVal1.CameraButton5 = registerVal16
	registerVal17 = CoD.AbilityButtonNew.new(registerVal1, arg0)
	registerVal17:setLeftRight(false, false, -167.000000, -17.000000)
	registerVal17:setTopBottom(false, false, 142.000000, 292.000000)
	registerVal17:setZRot(154.260000)
	registerVal17.GradBracketR:setAlpha(0.000000)
	registerVal17.GrabBrakcetL:setAlpha(0.000000)
	registerVal17.AbilitylIcon:setZRot(180.000000)
	local function __FUNC_3D95_(arg1)
		registerVal17:setModel(arg1, arg0)
	end

	registerVal17:subscribeToGlobalModel(arg0, "SwitchCameraWheel", "Camera4", __FUNC_3D95_)
	registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Inactive"
	local function __FUNC_3DE6_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "enabled")
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal21.condition = __FUNC_3DE6_
	registerVal20 = {registerVal21}
	registerVal17:mergeStateConditions(registerVal20)
	local function __FUNC_3E8F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "enabled"
		registerVal1:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:linkToElementModel(registerVal17, "enabled", true, __FUNC_3E8F_)
	local function __FUNC_3FA9_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:linkToElementModel(registerVal17, "disabled", true, __FUNC_3FA9_)
	registerVal21 = Engine.GetModelForController(arg0)
	registerVal20 = Engine.GetModel(registerVal21, "hudItems.cybercomActiveType")
	local function __FUNC_40C6_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cybercomActiveType"
		registerVal1:updateElementState(registerVal17, registerVal4)
	end

	registerVal17:subscribeToModel(registerVal20, __FUNC_40C6_)
	registerVal1:addElement(registerVal17)
	registerVal1.CameraButton4 = registerVal17
	registerVal18 = CoD.AbilityButtonNew.new(registerVal1, arg0)
	registerVal18:setLeftRight(false, false, -276.000000, -126.000000)
	registerVal18:setTopBottom(false, false, 0.000000, 150.000000)
	registerVal18:setZRot(102.840000)
	registerVal18.GrabBrakcetL:setAlpha(0.000000)
	registerVal18.AbilitylIcon:setZRot(240.000000)
	local function __FUNC_41F5_(arg1)
		registerVal18:setModel(arg1, arg0)
	end

	registerVal18:subscribeToGlobalModel(arg0, "SwitchCameraWheel", "Camera3", __FUNC_41F5_)
	registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Inactive"
	local function __FUNC_4246_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "enabled")
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal22.condition = __FUNC_4246_
	registerVal21 = {registerVal22}
	registerVal18:mergeStateConditions(registerVal21)
	local function __FUNC_42EF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "enabled"
		registerVal1:updateElementState(registerVal18, registerVal4)
	end

	registerVal18:linkToElementModel(registerVal18, "enabled", true, __FUNC_42EF_)
	local function __FUNC_4409_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal18, registerVal4)
	end

	registerVal18:linkToElementModel(registerVal18, "disabled", true, __FUNC_4409_)
	registerVal22 = Engine.GetModelForController(arg0)
	registerVal21 = Engine.GetModel(registerVal22, "hudItems.cybercomActiveType")
	local function __FUNC_4526_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cybercomActiveType"
		registerVal1:updateElementState(registerVal18, registerVal4)
	end

	registerVal18:subscribeToModel(registerVal21, __FUNC_4526_)
	registerVal1:addElement(registerVal18)
	registerVal1.CameraButton3 = registerVal18
	registerVal19 = CoD.AbilityButtonNew.new(registerVal1, arg0)
	registerVal19:setLeftRight(false, false, -242.000000, -92.000000)
	registerVal19:setTopBottom(false, false, -165.000000, -15.000000)
	registerVal19:setZRot(51.430000)
	registerVal19.GradBracketR:setAlpha(0.000000)
	registerVal19.AbilitylIcon:setZRot(-60.000000)
	local function __FUNC_4655_(arg1)
		registerVal19:setModel(arg1, arg0)
	end

	registerVal19:subscribeToGlobalModel(arg0, "SwitchCameraWheel", "Camera2", __FUNC_4655_)
	registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Inactive"
	local function __FUNC_46A6_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "enabled")
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal23.condition = __FUNC_46A6_
	registerVal22 = {registerVal23}
	registerVal19:mergeStateConditions(registerVal22)
	local function __FUNC_474F_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "enabled"
		registerVal1:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:linkToElementModel(registerVal19, "enabled", true, __FUNC_474F_)
	local function __FUNC_4869_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:linkToElementModel(registerVal19, "disabled", true, __FUNC_4869_)
	registerVal23 = Engine.GetModelForController(arg0)
	registerVal22 = Engine.GetModel(registerVal23, "hudItems.cybercomActiveType")
	local function __FUNC_4986_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cybercomActiveType"
		registerVal1:updateElementState(registerVal19, registerVal4)
	end

	registerVal19:subscribeToModel(registerVal22, __FUNC_4986_)
	registerVal1:addElement(registerVal19)
	registerVal1.CameraButton2 = registerVal19
	registerVal20 = CoD.AbilityButtonNew.new(registerVal1, arg0)
	registerVal20:setLeftRight(false, false, -75.000000, 75.000000)
	registerVal20:setTopBottom(false, false, -248.000000, -98.000000)
	registerVal20:setAlpha(RandomAddPercent(20.000000, 0.700000))
	registerVal20.GradBracketR:setAlpha(0.300000)
	registerVal20.GrabBrakcetL:setAlpha(0.300000)
	local function __FUNC_4AB5_(arg1)
		registerVal20:setModel(arg1, arg0)
	end

	registerVal20:subscribeToGlobalModel(arg0, "SwitchCameraWheel", "Camera1", __FUNC_4AB5_)
	registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "Inactive"
	local function __FUNC_4B06_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "enabled")
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal24.condition = __FUNC_4B06_
	registerVal23 = {registerVal24}
	registerVal20:mergeStateConditions(registerVal23)
	local function __FUNC_4BAF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "enabled"
		registerVal1:updateElementState(registerVal20, registerVal4)
	end

	registerVal20:linkToElementModel(registerVal20, "enabled", true, __FUNC_4BAF_)
	local function __FUNC_4CC9_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal20, registerVal4)
	end

	registerVal20:linkToElementModel(registerVal20, "disabled", true, __FUNC_4CC9_)
	registerVal24 = Engine.GetModelForController(arg0)
	registerVal23 = Engine.GetModel(registerVal24, "hudItems.cybercomActiveType")
	local function __FUNC_4DE6_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cybercomActiveType"
		registerVal1:updateElementState(registerVal20, registerVal4)
	end

	registerVal20:subscribeToModel(registerVal23, __FUNC_4DE6_)
	registerVal1:addElement(registerVal20)
	registerVal1.CameraButton1 = registerVal20
	registerVal21 = CoD.AbilityWheel_BracketBlur.new(registerVal1, arg0)
	registerVal21:setLeftRight(true, false, 236.000000, 1055.300000)
	registerVal21:setTopBottom(true, false, 90.670000, 703.330000)
	registerVal21:setAlpha(0.200000)
	registerVal21:setZoom(200.000000)
	registerVal1:addElement(registerVal21)
	registerVal1.BracketBlur = registerVal21
	registerVal22 = CoD.AbilityWheel_TabC.new(registerVal1, arg0)
	registerVal22:setLeftRight(true, false, 522.000000, 755.000000)
	registerVal22:setTopBottom(true, false, 71.000000, 125.000000)
	registerVal22:setAlpha(0.000000)
	local function __FUNC_4F15_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal22.TextTab:setText(Engine.Localize(LocalizeToUpperString(registerVal1)))
		end
	end

	registerVal22:subscribeToGlobalModel(arg0, "SwitchCameraWheel", "name", __FUNC_4F15_)
	registerVal1:addElement(registerVal22)
	registerVal1.TabC = registerVal22
	registerVal23 = CoD.AbilityWheel_Description.new(registerVal1, arg0)
	registerVal23:setLeftRight(false, false, -116.500000, 116.500000)
	registerVal23:setTopBottom(false, false, -35.000000, 134.000000)
	registerVal23:setAlpha(0.000000)
	local function __FUNC_5012_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23.AbilityWheelDescriptionBottom.TextDesc:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal23:subscribeToGlobalModel(arg0, "SwitchCameraWheel", "selectedCameraDisplayDesc", __FUNC_5012_)
	local function __FUNC_511B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal23.AbilityWheelDescriptionText.TextName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal23:subscribeToGlobalModel(arg0, "SwitchCameraWheel", "selectedCameraDisplayName", __FUNC_511B_)
	registerVal1:addElement(registerVal23)
	registerVal1.Description = registerVal23
	registerVal24 = {}
	registerVal24.left = registerVal20
	registerVal24.down = registerVal15
	registerVal14.navigation = registerVal24
	registerVal24 = {}
	registerVal24.left = registerVal16
	registerVal24.up = registerVal14
	registerVal24.down = registerVal16
	registerVal15.navigation = registerVal24
	registerVal24 = {}
	registerVal24.left = registerVal17
	registerVal24.up = registerVal15
	registerVal24.right = registerVal15
	registerVal16.navigation = registerVal24
	registerVal24 = {}
	registerVal24.left = registerVal18
	registerVal24.up = registerVal18
	registerVal24.right = registerVal16
	registerVal17.navigation = registerVal24
	registerVal24 = {}
	registerVal24.up = registerVal19
	registerVal24.right = registerVal17
	registerVal24.down = registerVal17
	registerVal18.navigation = registerVal24
	registerVal24 = {}
	registerVal24.right = registerVal20
	registerVal24.down = registerVal18
	registerVal19.navigation = registerVal24
	registerVal24 = {}
	registerVal24.left = registerVal19
	registerVal24.right = registerVal14
	local registerVal25 = {}
	registerVal25 = {registerVal17, registerVal16}
	registerVal24.down = registerVal25
	registerVal20.navigation = registerVal24
	registerVal24 = {}
	registerVal25 = {}
	local function __FUNC_5221_()
		registerVal1:setupElementClipCounter(20.000000)
		local function __FUNC_5BEE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.Panel:setAlpha(0.000000)
		registerVal1.Panel:setZoom(0.000000)
		__FUNC_5BEE_(registerVal3, {})
		local function __FUNC_5DC3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.Multiply0:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_5DC3_(registerVal4, {})
		local function __FUNC_5F7B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.470000, 0.470000, 0.470000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal1.Vignette:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_5F7B_(registerVal5, {})
		local function __FUNC_6133_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.Texture:setAlpha(0.000000)
		__FUNC_6133_(registerVal6, {})
		local function __FUNC_62E5_(arg0, arg1)
			local function __FUNC_643C_(arg0, arg1)
				local function __FUNC_65D9_(arg0, arg1)
					local function __FUNC_6752_(arg0, arg1)
						local function __FUNC_68ED_(arg0, arg1)
							local function __FUNC_6A44_(arg0, arg1)
								local function __FUNC_6BBF_(arg0, arg1)
									local function __FUNC_6D14_(arg0, arg1)
										local function __FUNC_6E8F_(arg0, arg1)
											local function __FUNC_6FE4_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												arg0:setZoom(0.000000)
												if arg1.interrupted then
													registerVal1.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_6FE4_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FE4_)
										end

										if arg1.interrupted then
											__FUNC_6E8F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.800000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E8F_)
									end

									if arg1.interrupted then
										__FUNC_6D14_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D14_)
								end

								if arg1.interrupted then
									__FUNC_6BBF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BBF_)
							end

							if arg1.interrupted then
								__FUNC_6A44_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A44_)
						end

						if arg1.interrupted then
							__FUNC_68ED_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.700000)
						arg0:setZoom(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68ED_)
					end

					if arg1.interrupted then
						__FUNC_6752_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(78.750000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6752_)
				end

				if arg1.interrupted then
					__FUNC_65D9_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZoom(236.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65D9_)
			end

			if arg1.interrupted then
				__FUNC_643C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_643C_)
		end

		registerVal7:completeAnimation()
		registerVal1.HexCenter:setAlpha(0.000000)
		registerVal1.HexCenter:setZoom(315.000000)
		__FUNC_62E5_(registerVal7, {})
		local function __FUNC_71BB_(arg0, arg1)
			local function __FUNC_7310_(arg0, arg1)
				local function __FUNC_748B_(arg0, arg1)
					local function __FUNC_75E0_(arg0, arg1)
						local function __FUNC_775B_(arg0, arg1)
							local function __FUNC_78B0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal1.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_78B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78B0_)
						end

						if arg1.interrupted then
							__FUNC_775B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_775B_)
					end

					if arg1.interrupted then
						__FUNC_75E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75E0_)
				end

				if arg1.interrupted then
					__FUNC_748B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_748B_)
			end

			if arg1.interrupted then
				__FUNC_7310_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7310_)
		end

		registerVal8:completeAnimation()
		registerVal1.OutterGrid:setAlpha(0.000000)
		__FUNC_71BB_(registerVal8, {})
		local function __FUNC_7A65_(arg0, arg1)
			local function __FUNC_7BBC_(arg0, arg1)
				local function __FUNC_7D37_(arg0, arg1)
					local function __FUNC_7EAF_(arg0, arg1)
						local function __FUNC_8027_(arg0, arg1)
							local function __FUNC_817C_(arg0, arg1)
								local function __FUNC_82F7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(1.000000)
									if arg1.interrupted then
										registerVal1.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_82F7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.200000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82F7_)
							end

							if arg1.interrupted then
								__FUNC_817C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_817C_)
						end

						if arg1.interrupted then
							__FUNC_8027_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.600000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8027_)
					end

					if arg1.interrupted then
						__FUNC_7EAF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EAF_)
				end

				if arg1.interrupted then
					__FUNC_7D37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D37_)
			end

			if arg1.interrupted then
				__FUNC_7BBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BBC_)
		end

		registerVal9:completeAnimation()
		registerVal1.ElementsSideL:setAlpha(0.000000)
		__FUNC_7A65_(registerVal9, {})
		local function __FUNC_84A9_(arg0, arg1)
			local function __FUNC_8600_(arg0, arg1)
				local function __FUNC_877B_(arg0, arg1)
					local function __FUNC_88F3_(arg0, arg1)
						local function __FUNC_8A6B_(arg0, arg1)
							local function __FUNC_8BC0_(arg0, arg1)
								local function __FUNC_8D3B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(1.000000)
									if arg1.interrupted then
										registerVal1.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_8D3B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.200000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D3B_)
							end

							if arg1.interrupted then
								__FUNC_8BC0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BC0_)
						end

						if arg1.interrupted then
							__FUNC_8A6B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.600000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A6B_)
					end

					if arg1.interrupted then
						__FUNC_88F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88F3_)
				end

				if arg1.interrupted then
					__FUNC_877B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_877B_)
			end

			if arg1.interrupted then
				__FUNC_8600_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 460.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8600_)
		end

		registerVal10:completeAnimation()
		registerVal1.ElementsSideR:setAlpha(0.000000)
		__FUNC_84A9_(registerVal10, {})
		local function __FUNC_8EED_(arg0, arg1)
			local function __FUNC_9044_(arg0, arg1)
				local function __FUNC_91E1_(arg0, arg1)
					local function __FUNC_935A_(arg0, arg1)
						local function __FUNC_94F5_(arg0, arg1)
							local function __FUNC_964C_(arg0, arg1)
								local function __FUNC_97C7_(arg0, arg1)
									local function __FUNC_991C_(arg0, arg1)
										local function __FUNC_9A97_(arg0, arg1)
											local function __FUNC_9BEC_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												arg0:setZoom(0.000000)
												if arg1.interrupted then
													registerVal1.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_9BEC_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BEC_)
										end

										if arg1.interrupted then
											__FUNC_9A97_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.800000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A97_)
									end

									if arg1.interrupted then
										__FUNC_991C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_991C_)
								end

								if arg1.interrupted then
									__FUNC_97C7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_97C7_)
							end

							if arg1.interrupted then
								__FUNC_964C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_964C_)
						end

						if arg1.interrupted then
							__FUNC_94F5_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.600000)
						arg0:setZoom(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_94F5_)
					end

					if arg1.interrupted then
						__FUNC_935A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(12.750000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_935A_)
				end

				if arg1.interrupted then
					__FUNC_91E1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZoom(38.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91E1_)
			end

			if arg1.interrupted then
				__FUNC_9044_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9044_)
		end

		registerVal11:completeAnimation()
		registerVal1.DNIContainer:setAlpha(0.000000)
		registerVal1.DNIContainer:setZoom(51.000000)
		__FUNC_8EED_(registerVal11, {})
		local function __FUNC_9DC3_(arg0, arg1)
			local function __FUNC_9F18_(arg0, arg1)
				local function __FUNC_A0B5_(arg0, arg1)
					local function __FUNC_A22E_(arg0, arg1)
						local function __FUNC_A3C9_(arg0, arg1)
							local function __FUNC_A542_(arg0, arg1)
								local function __FUNC_A6BB_(arg0, arg1)
									local function __FUNC_A810_(arg0, arg1)
										local function __FUNC_A98B_(arg0, arg1)
											local function __FUNC_AAE0_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												arg0:setZoom(-40.000000)
												if arg1.interrupted then
													registerVal1.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_AAE0_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAE0_)
										end

										if arg1.interrupted then
											__FUNC_A98B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.800000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A98B_)
									end

									if arg1.interrupted then
										__FUNC_A810_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A810_)
								end

								if arg1.interrupted then
									__FUNC_A6BB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6BB_)
							end

							if arg1.interrupted then
								__FUNC_A542_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setZoom(-40.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A542_)
						end

						if arg1.interrupted then
							__FUNC_A3C9_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.700000)
						arg0:setZoom(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3C9_)
					end

					if arg1.interrupted then
						__FUNC_A22E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(-10.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A22E_)
				end

				if arg1.interrupted then
					__FUNC_A0B5_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZoom(-30.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0B5_)
			end

			if arg1.interrupted then
				__FUNC_9F18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F18_)
		end

		registerVal12:completeAnimation()
		registerVal1.CenterElements:setAlpha(0.000000)
		registerVal1.CenterElements:setZoom(-40.000000)
		__FUNC_9DC3_(registerVal12, {})
		local function __FUNC_ACB7_(arg0, arg1)
			local function __FUNC_AE2F_(arg0, arg1)
				local function __FUNC_AFA7_(arg0, arg1)
					local function __FUNC_B141_(arg0, arg1)
						local function __FUNC_B2BB_(arg0, arg1)
							local function __FUNC_B410_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.110000)
								arg0:setZoom(-4000.000000)
								if arg1.interrupted then
									registerVal1.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_B410_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B410_)
						end

						if arg1.interrupted then
							__FUNC_B2BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2BB_)
					end

					if arg1.interrupted then
						__FUNC_B141_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.110000)
					arg0:setZoom(-4000.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B141_)
				end

				if arg1.interrupted then
					__FUNC_AFA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFA7_)
			end

			if arg1.interrupted then
				__FUNC_AE2F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.110000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE2F_)
		end

		registerVal13:completeAnimation()
		registerVal1.BracketBlurBack:setAlpha(0.000000)
		registerVal1.BracketBlurBack:setZoom(-8000.000000)
		__FUNC_ACB7_(registerVal13, {})
		local function __FUNC_B5E7_(arg0, arg1)
			local function __FUNC_B73C_(arg0, arg1)
				local function __FUNC_B8D9_(arg0, arg1)
					local function __FUNC_BA53_(arg0, arg1)
						local function __FUNC_BBA8_(arg0, arg1)
							local function __FUNC_BD23_(arg0, arg1)
								local function __FUNC_BE78_(arg0, arg1)
									local function __FUNC_BFF3_(arg0, arg1)
										local function __FUNC_C148_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											arg0:setZoom(0.000000)
											if arg1.interrupted then
												registerVal1.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_C148_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C148_)
									end

									if arg1.interrupted then
										__FUNC_BFF3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFF3_)
								end

								if arg1.interrupted then
									__FUNC_BE78_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE78_)
							end

							if arg1.interrupted then
								__FUNC_BD23_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD23_)
						end

						if arg1.interrupted then
							__FUNC_BBA8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBA8_)
					end

					if arg1.interrupted then
						__FUNC_BA53_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA53_)
				end

				if arg1.interrupted then
					__FUNC_B8D9_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B8D9_)
			end

			if arg1.interrupted then
				__FUNC_B73C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B73C_)
		end

		registerVal15:completeAnimation()
		registerVal1.CameraButton6:setAlpha(0.000000)
		registerVal1.CameraButton6:setZoom(-6000.000000)
		__FUNC_B5E7_(registerVal15, {})
		local function __FUNC_C31F_(arg0, arg1)
			local function __FUNC_C474_(arg0, arg1)
				local function __FUNC_C611_(arg0, arg1)
					local function __FUNC_C78B_(arg0, arg1)
						local function __FUNC_C8E0_(arg0, arg1)
							local function __FUNC_CA5B_(arg0, arg1)
								local function __FUNC_CBB0_(arg0, arg1)
									local function __FUNC_CD2B_(arg0, arg1)
										local function __FUNC_CE80_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											arg0:setZoom(0.000000)
											if arg1.interrupted then
												registerVal1.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_CE80_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE80_)
									end

									if arg1.interrupted then
										__FUNC_CD2B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD2B_)
								end

								if arg1.interrupted then
									__FUNC_CBB0_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBB0_)
							end

							if arg1.interrupted then
								__FUNC_CA5B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA5B_)
						end

						if arg1.interrupted then
							__FUNC_C8E0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8E0_)
					end

					if arg1.interrupted then
						__FUNC_C78B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C78B_)
				end

				if arg1.interrupted then
					__FUNC_C611_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C611_)
			end

			if arg1.interrupted then
				__FUNC_C474_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C474_)
		end

		registerVal16:completeAnimation()
		registerVal1.CameraButton5:setAlpha(0.000000)
		registerVal1.CameraButton5:setZoom(-6000.000000)
		__FUNC_C31F_(registerVal16, {})
		local function __FUNC_D057_(arg0, arg1)
			local function __FUNC_D1AC_(arg0, arg1)
				local function __FUNC_D349_(arg0, arg1)
					local function __FUNC_D4C3_(arg0, arg1)
						local function __FUNC_D618_(arg0, arg1)
							local function __FUNC_D793_(arg0, arg1)
								local function __FUNC_D8E8_(arg0, arg1)
									local function __FUNC_DA63_(arg0, arg1)
										local function __FUNC_DBB8_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											arg0:setZoom(0.000000)
											if arg1.interrupted then
												registerVal1.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_DBB8_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBB8_)
									end

									if arg1.interrupted then
										__FUNC_DA63_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA63_)
								end

								if arg1.interrupted then
									__FUNC_D8E8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8E8_)
							end

							if arg1.interrupted then
								__FUNC_D793_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D793_)
						end

						if arg1.interrupted then
							__FUNC_D618_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D618_)
					end

					if arg1.interrupted then
						__FUNC_D4C3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D4C3_)
				end

				if arg1.interrupted then
					__FUNC_D349_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D349_)
			end

			if arg1.interrupted then
				__FUNC_D1AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1AC_)
		end

		registerVal17:completeAnimation()
		registerVal1.CameraButton4:setAlpha(0.000000)
		registerVal1.CameraButton4:setZoom(-6000.000000)
		__FUNC_D057_(registerVal17, {})
		local function __FUNC_DD8F_(arg0, arg1)
			local function __FUNC_DEE4_(arg0, arg1)
				local function __FUNC_E081_(arg0, arg1)
					local function __FUNC_E1FB_(arg0, arg1)
						local function __FUNC_E350_(arg0, arg1)
							local function __FUNC_E4CB_(arg0, arg1)
								local function __FUNC_E620_(arg0, arg1)
									local function __FUNC_E79B_(arg0, arg1)
										local function __FUNC_E8F0_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											arg0:setZoom(0.000000)
											if arg1.interrupted then
												registerVal1.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_E8F0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8F0_)
									end

									if arg1.interrupted then
										__FUNC_E79B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E79B_)
								end

								if arg1.interrupted then
									__FUNC_E620_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E620_)
							end

							if arg1.interrupted then
								__FUNC_E4CB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E4CB_)
						end

						if arg1.interrupted then
							__FUNC_E350_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E350_)
					end

					if arg1.interrupted then
						__FUNC_E1FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1FB_)
				end

				if arg1.interrupted then
					__FUNC_E081_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E081_)
			end

			if arg1.interrupted then
				__FUNC_DEE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEE4_)
		end

		registerVal18:completeAnimation()
		registerVal1.CameraButton3:setAlpha(0.000000)
		registerVal1.CameraButton3:setZoom(-6000.000000)
		__FUNC_DD8F_(registerVal18, {})
		local function __FUNC_EAC7_(arg0, arg1)
			local function __FUNC_EC1C_(arg0, arg1)
				local function __FUNC_EDB9_(arg0, arg1)
					local function __FUNC_EF33_(arg0, arg1)
						local function __FUNC_F088_(arg0, arg1)
							local function __FUNC_F203_(arg0, arg1)
								local function __FUNC_F358_(arg0, arg1)
									local function __FUNC_F4D3_(arg0, arg1)
										local function __FUNC_F628_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											arg0:setZoom(0.000000)
											if arg1.interrupted then
												registerVal1.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_F628_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F628_)
									end

									if arg1.interrupted then
										__FUNC_F4D3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F4D3_)
								end

								if arg1.interrupted then
									__FUNC_F358_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F358_)
							end

							if arg1.interrupted then
								__FUNC_F203_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F203_)
						end

						if arg1.interrupted then
							__FUNC_F088_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F088_)
					end

					if arg1.interrupted then
						__FUNC_EF33_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF33_)
				end

				if arg1.interrupted then
					__FUNC_EDB9_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDB9_)
			end

			if arg1.interrupted then
				__FUNC_EC1C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC1C_)
		end

		registerVal19:completeAnimation()
		registerVal1.CameraButton2:setAlpha(0.000000)
		registerVal1.CameraButton2:setZoom(-6000.000000)
		__FUNC_EAC7_(registerVal19, {})
		local function __FUNC_F7FF_(arg0, arg1)
			local function __FUNC_F954_(arg0, arg1)
				local function __FUNC_FB1C_(arg0, arg1)
					local function __FUNC_FCC2_(arg0, arg1)
						local function __FUNC_FE18_(arg0, arg1)
							local function __FUNC_FFBE_(arg0, arg1)
								local function __FUNC_10114_(arg0, arg1)
									local function __FUNC_1026C_(arg0, arg1)
										local function __FUNC_10412_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(RandomAddPercent(20.000000, 1.000000))
											arg0:setZoom(0.000000)
											if arg1.interrupted then
												registerVal1.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_10412_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(RandomAddPercent(20.000000, 0.700000))
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10412_)
									end

									if arg1.interrupted then
										__FUNC_1026C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1026C_)
								end

								if arg1.interrupted then
									__FUNC_10114_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10114_)
							end

							if arg1.interrupted then
								__FUNC_FFBE_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(RandomAddPercent(20.000000, 1.000000))
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FFBE_)
						end

						if arg1.interrupted then
							__FUNC_FE18_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE18_)
					end

					if arg1.interrupted then
						__FUNC_FCC2_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(RandomAddPercent(20.000000, 0.500000))
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FCC2_)
				end

				if arg1.interrupted then
					__FUNC_FB1C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(RandomAddPercent(20.000000, 1.000000))
				arg0:setZoom(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FB1C_)
			end

			if arg1.interrupted then
				__FUNC_F954_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F954_)
		end

		registerVal20:completeAnimation()
		registerVal1.CameraButton1:setAlpha(RandomAddPercent(20.000000, 0.000000))
		registerVal1.CameraButton1:setZoom(-6000.000000)
		__FUNC_F7FF_(registerVal20, {})
		local function __FUNC_10612_(arg0, arg1)
			local function __FUNC_107AD_(arg0, arg1)
				local function __FUNC_10926_(arg0, arg1)
					local function __FUNC_10A9F_(arg0, arg1)
						local function __FUNC_10BF4_(arg0, arg1)
							local function __FUNC_10D6F_(arg0, arg1)
								local function __FUNC_10EC4_(arg0, arg1)
									local function __FUNC_1103F_(arg0, arg1)
										local function __FUNC_11194_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.200000)
											arg0:setZoom(200.000000)
											if arg1.interrupted then
												registerVal1.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_11194_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11194_)
									end

									if arg1.interrupted then
										__FUNC_1103F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.100000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1103F_)
								end

								if arg1.interrupted then
									__FUNC_10EC4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10EC4_)
							end

							if arg1.interrupted then
								__FUNC_10D6F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.200000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D6F_)
						end

						if arg1.interrupted then
							__FUNC_10BF4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BF4_)
					end

					if arg1.interrupted then
						__FUNC_10A9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A9F_)
				end

				if arg1.interrupted then
					__FUNC_10926_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0:setZoom(200.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10926_)
			end

			if arg1.interrupted then
				__FUNC_107AD_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:setZoom(-3192.310000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107AD_)
		end

		registerVal21:completeAnimation()
		registerVal1.BracketBlur:setAlpha(0.000000)
		registerVal1.BracketBlur:setZoom(-4000.000000)
		__FUNC_10612_(registerVal21, {})
		local function __FUNC_1136B_(arg0, arg1)
			local function __FUNC_114C0_(arg0, arg1)
				local function __FUNC_1165D_(arg0, arg1)
					local function __FUNC_117D6_(arg0, arg1)
						local function __FUNC_11971_(arg0, arg1)
							local function __FUNC_11AC8_(arg0, arg1)
								local function __FUNC_11C43_(arg0, arg1)
									local function __FUNC_11D98_(arg0, arg1)
										local function __FUNC_11F13_(arg0, arg1)
											local function __FUNC_12068_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 522.000000, 755.000000)
												arg0:setTopBottom(true, false, 71.000000, 125.000000)
												arg0:setAlpha(1.000000)
												arg0:setZoom(0.000000)
												if arg1.interrupted then
													registerVal1.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_12068_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12068_)
										end

										if arg1.interrupted then
											__FUNC_11F13_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.700000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F13_)
									end

									if arg1.interrupted then
										__FUNC_11D98_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D98_)
								end

								if arg1.interrupted then
									__FUNC_11C43_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C43_)
							end

							if arg1.interrupted then
								__FUNC_11AC8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11AC8_)
						end

						if arg1.interrupted then
							__FUNC_11971_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.600000)
						arg0:setZoom(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11971_)
					end

					if arg1.interrupted then
						__FUNC_117D6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(-28.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_117D6_)
				end

				if arg1.interrupted then
					__FUNC_1165D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZoom(-85.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1165D_)
			end

			if arg1.interrupted then
				__FUNC_114C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_114C0_)
		end

		registerVal22:completeAnimation()
		registerVal1.TabC:setLeftRight(true, false, 522.000000, 755.000000)
		registerVal1.TabC:setTopBottom(true, false, 71.000000, 125.000000)
		registerVal1.TabC:setAlpha(0.000000)
		registerVal1.TabC:setZoom(-114.000000)
		__FUNC_1136B_(registerVal22, {})
		local function __FUNC_122AF_(arg0, arg1)
			local function __FUNC_12426_(arg0, arg1)
				local function __FUNC_125C1_(arg0, arg1)
					local function __FUNC_1273A_(arg0, arg1)
						local function __FUNC_128D5_(arg0, arg1)
							local function __FUNC_12A2C_(arg0, arg1)
								local function __FUNC_12BA7_(arg0, arg1)
									local function __FUNC_12CFC_(arg0, arg1)
										local function __FUNC_12E77_(arg0, arg1)
											local function __FUNC_12FCC_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												arg0:setZoom(0.000000)
												if arg1.interrupted then
													registerVal1.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_12FCC_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12FCC_)
										end

										if arg1.interrupted then
											__FUNC_12E77_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.800000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12E77_)
									end

									if arg1.interrupted then
										__FUNC_12CFC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12CFC_)
								end

								if arg1.interrupted then
									__FUNC_12BA7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12BA7_)
							end

							if arg1.interrupted then
								__FUNC_12A2C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A2C_)
						end

						if arg1.interrupted then
							__FUNC_128D5_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.700000)
						arg0:setZoom(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_128D5_)
					end

					if arg1.interrupted then
						__FUNC_1273A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setZoom(2.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1273A_)
				end

				if arg1.interrupted then
					__FUNC_125C1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setZoom(7.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125C1_)
			end

			if arg1.interrupted then
				__FUNC_12426_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:setZoom(10.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12426_)
		end

		registerVal23:completeAnimation()
		registerVal1.Description:setAlpha(0.000000)
		registerVal1.Description:setZoom(5.000000)
		__FUNC_122AF_(registerVal23, {})
	end

	registerVal25.DefaultClip = __FUNC_5221_
	local function __FUNC_131A3_()
		registerVal1:setupElementClipCounter(20.000000)
		local function __FUNC_13B69_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(-455.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal1.Panel:setAlpha(1.000000)
		registerVal1.Panel:setZoom(0.000000)
		__FUNC_13B69_(registerVal3, {})
		local function __FUNC_13D3F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.Multiply0:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_13D3F_(registerVal4, {})
		local function __FUNC_13EF7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal1.Vignette:setRGB(0.470000, 0.470000, 0.470000)
		__FUNC_13EF7_(registerVal5, {})
		local function __FUNC_140AF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal1.Texture:setAlpha(1.000000)
		__FUNC_140AF_(registerVal6, {})
		local function __FUNC_14261_(arg0, arg1)
			local function __FUNC_143B8_(arg0, arg1)
				local function __FUNC_14533_(arg0, arg1)
					local function __FUNC_14688_(arg0, arg1)
						local function __FUNC_14803_(arg0, arg1)
							local function __FUNC_14958_(arg0, arg1)
								local function __FUNC_14AD3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									arg0:setZoom(0.000000)
									if arg1.interrupted then
										registerVal1.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_14AD3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.600000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14AD3_)
							end

							if arg1.interrupted then
								__FUNC_14958_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14958_)
						end

						if arg1.interrupted then
							__FUNC_14803_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14803_)
					end

					if arg1.interrupted then
						__FUNC_14688_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14688_)
				end

				if arg1.interrupted then
					__FUNC_14533_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14533_)
			end

			if arg1.interrupted then
				__FUNC_143B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_143B8_)
		end

		registerVal7:completeAnimation()
		registerVal1.HexCenter:setAlpha(0.000000)
		registerVal1.HexCenter:setZoom(0.000000)
		__FUNC_14261_(registerVal7, {})
		local function __FUNC_14CA2_(arg0, arg1)
			local function __FUNC_14DF8_(arg0, arg1)
				local function __FUNC_14F73_(arg0, arg1)
					local function __FUNC_150C8_(arg0, arg1)
						local function __FUNC_15243_(arg0, arg1)
							local function __FUNC_15398_(arg0, arg1)
								local function __FUNC_15513_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal1.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_15513_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.600000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15513_)
							end

							if arg1.interrupted then
								__FUNC_15398_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15398_)
						end

						if arg1.interrupted then
							__FUNC_15243_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15243_)
					end

					if arg1.interrupted then
						__FUNC_150C8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_150C8_)
				end

				if arg1.interrupted then
					__FUNC_14F73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F73_)
			end

			if arg1.interrupted then
				__FUNC_14DF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14DF8_)
		end

		registerVal8:completeAnimation()
		registerVal1.OutterGrid:setAlpha(0.000000)
		__FUNC_14CA2_(registerVal8, {})
		local function __FUNC_156C5_(arg0, arg1)
			local function __FUNC_1581C_(arg0, arg1)
				local function __FUNC_15974_(arg0, arg1)
					local function __FUNC_15AEF_(arg0, arg1)
						local function __FUNC_15C44_(arg0, arg1)
							local function __FUNC_15DBF_(arg0, arg1)
								local function __FUNC_15F14_(arg0, arg1)
									local function __FUNC_1608F_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal1.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_1608F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.600000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1608F_)
								end

								if arg1.interrupted then
									__FUNC_15F14_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F14_)
							end

							if arg1.interrupted then
								__FUNC_15DBF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DBF_)
						end

						if arg1.interrupted then
							__FUNC_15C44_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15C44_)
					end

					if arg1.interrupted then
						__FUNC_15AEF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15AEF_)
				end

				if arg1.interrupted then
					__FUNC_15974_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15974_)
			end

			if arg1.interrupted then
				__FUNC_1581C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1581C_)
		end

		registerVal9:completeAnimation()
		registerVal1.ElementsSideL:setAlpha(0.000000)
		__FUNC_156C5_(registerVal9, {})
		local function __FUNC_16241_(arg0, arg1)
			local function __FUNC_16398_(arg0, arg1)
				local function __FUNC_16513_(arg0, arg1)
					local function __FUNC_16668_(arg0, arg1)
						local function __FUNC_167E3_(arg0, arg1)
							local function __FUNC_16938_(arg0, arg1)
								local function __FUNC_16AB3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal1.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_16AB3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.600000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16AB3_)
							end

							if arg1.interrupted then
								__FUNC_16938_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16938_)
						end

						if arg1.interrupted then
							__FUNC_167E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_167E3_)
					end

					if arg1.interrupted then
						__FUNC_16668_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16668_)
				end

				if arg1.interrupted then
					__FUNC_16513_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16513_)
			end

			if arg1.interrupted then
				__FUNC_16398_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16398_)
		end

		registerVal10:completeAnimation()
		registerVal1.ElementsSideR:setAlpha(0.000000)
		__FUNC_16241_(registerVal10, {})
		local function __FUNC_16C65_(arg0, arg1)
			local function __FUNC_16DBC_(arg0, arg1)
				local function __FUNC_16F14_(arg0, arg1)
					local function __FUNC_1708F_(arg0, arg1)
						local function __FUNC_171E4_(arg0, arg1)
							local function __FUNC_1735F_(arg0, arg1)
								local function __FUNC_174B4_(arg0, arg1)
									local function __FUNC_1762F_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										arg0:setZoom(0.000000)
										if arg1.interrupted then
											registerVal1.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_1762F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.600000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1762F_)
								end

								if arg1.interrupted then
									__FUNC_174B4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_174B4_)
							end

							if arg1.interrupted then
								__FUNC_1735F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1735F_)
						end

						if arg1.interrupted then
							__FUNC_171E4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_171E4_)
					end

					if arg1.interrupted then
						__FUNC_1708F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1708F_)
				end

				if arg1.interrupted then
					__FUNC_16F14_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F14_)
			end

			if arg1.interrupted then
				__FUNC_16DBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16DBC_)
		end

		registerVal11:completeAnimation()
		registerVal1.DNIContainer:setAlpha(0.000000)
		registerVal1.DNIContainer:setZoom(0.000000)
		__FUNC_16C65_(registerVal11, {})
		local function __FUNC_177FE_(arg0, arg1)
			local function __FUNC_17954_(arg0, arg1)
				local function __FUNC_17ACF_(arg0, arg1)
					local function __FUNC_17C24_(arg0, arg1)
						local function __FUNC_17D9F_(arg0, arg1)
							local function __FUNC_17EF4_(arg0, arg1)
								local function __FUNC_1806F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									arg0:setZoom(0.000000)
									if arg1.interrupted then
										registerVal1.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1806F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1806F_)
							end

							if arg1.interrupted then
								__FUNC_17EF4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17EF4_)
						end

						if arg1.interrupted then
							__FUNC_17D9F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D9F_)
					end

					if arg1.interrupted then
						__FUNC_17C24_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C24_)
				end

				if arg1.interrupted then
					__FUNC_17ACF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17ACF_)
			end

			if arg1.interrupted then
				__FUNC_17954_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17954_)
		end

		registerVal12:completeAnimation()
		registerVal1.CenterElements:setAlpha(0.000000)
		registerVal1.CenterElements:setZoom(0.000000)
		__FUNC_177FE_(registerVal12, {})
		local function __FUNC_1823E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(100.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.BracketBlurBack:setAlpha(0.110000)
		registerVal1.BracketBlurBack:setZoom(-4000.000000)
		__FUNC_1823E_(registerVal13, {})
		local function __FUNC_18413_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(750.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.CameraButton6:setAlpha(1.000000)
		registerVal1.CameraButton6:setZoom(0.000000)
		__FUNC_18413_(registerVal15, {})
		local function __FUNC_185E7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(750.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal1.CameraButton5:setAlpha(1.000000)
		registerVal1.CameraButton5:setZoom(0.000000)
		__FUNC_185E7_(registerVal16, {})
		local function __FUNC_187BB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(750.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal1.CameraButton4:setAlpha(1.000000)
		registerVal1.CameraButton4:setZoom(0.000000)
		__FUNC_187BB_(registerVal17, {})
		local function __FUNC_1898F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(750.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal1.CameraButton3:setAlpha(1.000000)
		registerVal1.CameraButton3:setZoom(0.000000)
		__FUNC_1898F_(registerVal18, {})
		local function __FUNC_18B63_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(750.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal1.CameraButton2:setAlpha(1.000000)
		registerVal1.CameraButton2:setZoom(0.000000)
		__FUNC_18B63_(registerVal19, {})
		local function __FUNC_18D37_(arg0, arg1)
			local function __FUNC_18EFC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(RandomAddPercent(20.000000, 0.000000))
				arg0:setZoom(750.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_18EFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(RandomAddPercent(20.000000, 0.000000))
			arg0:setZoom(750.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18EFC_)
		end

		registerVal20:completeAnimation()
		registerVal1.CameraButton1:setAlpha(RandomAddPercent(20.000000, 0.700000))
		registerVal1.CameraButton1:setZoom(0.000000)
		__FUNC_18D37_(registerVal20, {})
		local function __FUNC_190FE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(750.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal21:completeAnimation()
		registerVal1.BracketBlur:setAlpha(0.200000)
		registerVal1.BracketBlur:setZoom(200.000000)
		__FUNC_190FE_(registerVal21, {})
		local function __FUNC_192D3_(arg0, arg1)
			local function __FUNC_19428_(arg0, arg1)
				local function __FUNC_19580_(arg0, arg1)
					local function __FUNC_196FB_(arg0, arg1)
						local function __FUNC_19850_(arg0, arg1)
							local function __FUNC_199CB_(arg0, arg1)
								local function __FUNC_19B20_(arg0, arg1)
									local function __FUNC_19C9B_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 522.000000, 755.000000)
										arg0:setTopBottom(true, false, 71.000000, 125.000000)
										arg0:setAlpha(0.000000)
										arg0:setZoom(0.000000)
										if arg1.interrupted then
											registerVal1.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_19C9B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19C9B_)
								end

								if arg1.interrupted then
									__FUNC_19B20_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19B20_)
							end

							if arg1.interrupted then
								__FUNC_199CB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_199CB_)
						end

						if arg1.interrupted then
							__FUNC_19850_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19850_)
					end

					if arg1.interrupted then
						__FUNC_196FB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_196FB_)
				end

				if arg1.interrupted then
					__FUNC_19580_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19580_)
			end

			if arg1.interrupted then
				__FUNC_19428_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19428_)
		end

		registerVal22:completeAnimation()
		registerVal1.TabC:setLeftRight(true, false, 522.000000, 755.000000)
		registerVal1.TabC:setTopBottom(true, false, 71.000000, 125.000000)
		registerVal1.TabC:setAlpha(0.000000)
		registerVal1.TabC:setZoom(0.000000)
		__FUNC_192D3_(registerVal22, {})
		local function __FUNC_19EDA_(arg0, arg1)
			local function __FUNC_1A030_(arg0, arg1)
				local function __FUNC_1A1AB_(arg0, arg1)
					local function __FUNC_1A300_(arg0, arg1)
						local function __FUNC_1A47B_(arg0, arg1)
							local function __FUNC_1A5D0_(arg0, arg1)
								local function __FUNC_1A74B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									arg0:setZoom(0.000000)
									if arg1.interrupted then
										registerVal1.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1A74B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A74B_)
							end

							if arg1.interrupted then
								__FUNC_1A5D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A5D0_)
						end

						if arg1.interrupted then
							__FUNC_1A47B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A47B_)
					end

					if arg1.interrupted then
						__FUNC_1A300_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A300_)
				end

				if arg1.interrupted then
					__FUNC_1A1AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A1AB_)
			end

			if arg1.interrupted then
				__FUNC_1A030_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A030_)
		end

		registerVal23:completeAnimation()
		registerVal1.Description:setAlpha(0.000000)
		registerVal1.Description:setZoom(0.000000)
		__FUNC_19EDA_(registerVal23, {})
	end

	registerVal25.Close = __FUNC_131A3_
	registerVal24.DefaultState = registerVal25
	registerVal1.clipsPerState = registerVal24
	local function __FUNC_1A91A_(arg1, arg2)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:registerEventHandler("input_source_changed", __FUNC_1A91A_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_1AA06_(arg1, arg2)
		LockInput(registerVal1, arg0, true)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1AA06_)
	local function __FUNC_1AA98_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMulticoreActivated(arg2)
		if registerVal4 then
			ChangeAbilityWheelItems(arg2, arg1, -1.000000)
			PlaySoundSetSound(registerVal1, "left_bumper")
			return true
		end
	end

	local function __FUNC_1AB78_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
		local registerVal3 = IsMulticoreActivated(arg2)
		if registerVal3 then
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB, "MWHEELUP", __FUNC_1AA98_, __FUNC_1AB78_, false)
	local function __FUNC_1AC9C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMulticoreActivated(arg2)
		if registerVal4 then
			ChangeAbilityWheelItems(arg2, arg1, 1.000000)
			PlaySoundSetSound(registerVal1, "right_bumper")
			return true
		end
	end

	local function __FUNC_1AD7D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
		local registerVal3 = IsMulticoreActivated(arg2)
		if registerVal3 then
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, "MWHEELDOWN", __FUNC_1AC9C_, __FUNC_1AD7D_, false)
	local function __FUNC_1AEA0_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGamepad(arg2)
		if not registerVal4 then
			Close(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_1AF1A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		local registerVal3 = IsGamepad(arg2)
		if not registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1AEA0_, __FUNC_1AF1A_, false)
	registerVal14.id = "CameraButton7"
	registerVal15.id = "CameraButton6"
	registerVal16.id = "CameraButton5"
	registerVal17.id = "CameraButton4"
	registerVal18.id = "CameraButton3"
	registerVal19.id = "CameraButton2"
	registerVal20.id = "CameraButton1"
	local registerVal26 = {}
	registerVal26.name = "menu_loaded"
	registerVal26.controller = arg0
	registerVal1:processEvent(registerVal26)
	registerVal26 = {}
	registerVal26.name = "update_state"
	registerVal26.menu = registerVal1
	registerVal1:processEvent(registerVal26)
	registerVal24 = registerVal1:restoreState()
	if not registerVal24 then
		registerVal26 = {}
		registerVal26.name = "gain_focus"
		registerVal26.controller = arg0
		registerVal1.CameraButton1:processEvent(registerVal26)
	end
	local function __FUNC_1B044_(arg1)
		arg1.Panel:close()
		arg1.Multiply0:close()
		arg1.Vignette:close()
		arg1.Texture:close()
		arg1.HexCenter:close()
		arg1.ElementsSideL:close()
		arg1.ElementsSideR:close()
		arg1.DNIContainer:close()
		arg1.CenterElements:close()
		arg1.BracketBlurBack:close()
		arg1.CameraButton7:close()
		arg1.CameraButton6:close()
		arg1.CameraButton5:close()
		arg1.CameraButton4:close()
		arg1.CameraButton3:close()
		arg1.CameraButton2:close()
		arg1.CameraButton1:close()
		arg1.BracketBlur:close()
		arg1.TabC:close()
		arg1.Description:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "SwitchCameraWheel.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1B044_)
	if __FUNC_5E8_ then
		__FUNC_5E8_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.SwitchCameraWheel = __FUNC_DE4_
