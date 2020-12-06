-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Theater.Theater_FocusBar")
local function __FUNC_220_(arg0, arg1, arg2)
	local function __FUNC_32D_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			if registerVal1 == Enum.demoCameraMode.DEMO_CAMERA_MODE_NONE then
			else
				if registerVal1 == Enum.demoCameraMode.DEMO_CAMERA_MODE_THIRDPERSON then
				else
					if registerVal1 == Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM then
					end
				end
			end
			arg0.mode:setText(Engine.Localize("DEMO_CAMERA_MODE_FREE"))
		end
	end

	arg0.mode:subscribeToGlobalModel(arg1, "Demo", "cameraMode", __FUNC_32D_)
	local function __FUNC_584_(arg0)
		arg0.mode:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_584_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.DemoControlsButtonCameraMode = registerVal2
local function __FUNC_5E1_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoControlsButtonCameraMode)
	registerVal2.id = "DemoControlsButtonCameraMode"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -28.000000, -8.000000)
	registerVal3:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.icon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -1.000000, 34.000000)
	registerVal4:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal4:setScale(0.900000)
	registerVal4:setText(Engine.Localize("DEMO_CAMERA_MODE_FREE"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.mode = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal5:setTopBottom(false, false, -23.000000, -11.000000)
	registerVal5:setZRot(180.000000)
	registerVal5:setScale(0.800000)
	registerVal5:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.uparrow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal6:setTopBottom(false, false, 13.000000, 23.000000)
	registerVal6:setScale(0.800000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.downarrow = registerVal6
	local registerVal7 = CoD.Theater_FocusBar.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal7:setTopBottom(true, false, 7.000000, 15.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setScale(0.900000)
	registerVal2:addElement(registerVal7)
	registerVal2.TheaterFocusBarT = registerVal7
	local registerVal8 = CoD.Theater_FocusBar.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal8:setTopBottom(true, false, 31.000000, 39.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setXRot(180.000000)
	registerVal8:setScale(0.900000)
	registerVal2:addElement(registerVal8)
	registerVal2.TheaterFocusBarB = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 5.000000, 75.000000)
	registerVal9:setTopBottom(true, false, 11.500000, 35.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.whitebox = registerVal9
	local function __FUNC_1410_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.icon:linkToElementModel(registerVal2, "icon", true, __FUNC_1410_)
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_14C4_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.icon:setYRot(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.mode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TheaterFocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TheaterFocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_14C4_
	local function __FUNC_1802_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.mode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.uparrow:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.uparrow:setTopBottom(false, false, -23.000000, -11.000000)
		registerVal2.uparrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.downarrow:setLeftRight(false, false, -8.000000, 8.000000)
		registerVal2.downarrow:setTopBottom(false, false, 13.000000, 23.000000)
		registerVal2.downarrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TheaterFocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TheaterFocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.whitebox:setLeftRight(true, false, 5.000000, 75.000000)
		registerVal2.whitebox:setTopBottom(true, false, 11.500000, 35.000000)
		registerVal2.whitebox:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_1802_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1C5F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.icon:setRGB(0.700000, 0.700000, 0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.mode:setRGB(0.700000, 0.700000, 0.700000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal11.DefaultClip = __FUNC_1C5F_
	registerVal10.Disabled = registerVal11
	registerVal11 = {}
	local function __FUNC_1DB8_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.icon:setYRot(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.mode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TheaterFocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TheaterFocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1DB8_
	local function __FUNC_20F6_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.mode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.uparrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TheaterFocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TheaterFocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.whitebox:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_20F6_
	registerVal10.ShowOnlyUpArrow = registerVal11
	registerVal11 = {}
	local function __FUNC_240A_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.icon:setYRot(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.mode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TheaterFocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TheaterFocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_240A_
	local function __FUNC_2746_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.mode:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.downarrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TheaterFocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TheaterFocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.whitebox:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_2746_
	registerVal10.ShowOnlyDownArrow = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_2A5A_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal13.condition = __FUNC_2A5A_
	local registerVal14 = {}
	registerVal14.stateName = "ShowOnlyUpArrow"
	local function __FUNC_2AAC_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualToEnum(arg2, arg1, "demo.cameraMode", Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM)
	end

	registerVal14.condition = __FUNC_2AAC_
	local registerVal15 = {}
	registerVal15.stateName = "ShowOnlyDownArrow"
	local function __FUNC_2B94_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualToEnum(arg2, arg1, "demo.cameraMode", Enum.demoCameraMode.DEMO_CAMERA_MODE_NONE)
	end

	registerVal15.condition = __FUNC_2B94_
	registerVal12 = {registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_2C79_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_2C79_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "demo.cameraMode")
	local function __FUNC_2D96_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.cameraMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_2D96_)
	local function __FUNC_2EB9_(arg0, arg1, arg2, arg3)
		UpdateDemoCameraMode(arg2, "prev")
		return true
	end

	local function __FUNC_2F28_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_UP, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_2EB9_, __FUNC_2F28_, false)
	local function __FUNC_3012_(arg0, arg1, arg2, arg3)
		UpdateDemoCameraMode(arg2, "next")
		return true
	end

	local function __FUNC_3080_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_DOWN, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_3012_, __FUNC_3080_, false)
	local function __FUNC_316C_(arg0)
		arg0.TheaterFocusBarT:close()
		arg0.TheaterFocusBarB:close()
		arg0.icon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_316C_)
	if __FUNC_220_ then
		__FUNC_220_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.DemoControlsButtonCameraMode.new = __FUNC_5E1_
