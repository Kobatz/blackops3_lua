-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Theater.Theater_FocusBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DemoControlsButtonDollyCameraSpeedMode = registerVal1
function CoD.DemoControlsButtonDollyCameraSpeedMode.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoControlsButtonDollyCameraSpeedMode)
	registerVal2.id = "DemoControlsButtonDollyCameraSpeedMode"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal3:setTopBottom(true, false, 11.500000, 35.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.whitebox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -20.000000, 20.000000)
	registerVal4:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal4:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.border = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -18.000000, 18.000000)
	registerVal5:setTopBottom(false, false, -10.500000, 10.500000)
	registerVal5:setRGB(0.180000, 0.180000, 0.180000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.imagebg = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -10.000000, 10.000000)
	registerVal6:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.icon = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal7:setTopBottom(false, false, -22.500000, -12.500000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.uparrow = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal8:setTopBottom(false, false, 13.500000, 23.500000)
	registerVal8:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.downarrow = registerVal8
	local registerVal9 = CoD.Theater_FocusBar.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, -3.000000, 43.000000)
	registerVal9:setTopBottom(true, false, 7.000000, 15.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setScale(0.900000)
	registerVal2:addElement(registerVal9)
	registerVal2.TheaterFocusBarT0 = registerVal9
	local registerVal10 = CoD.Theater_FocusBar.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, -3.000000, 43.000000)
	registerVal10:setTopBottom(true, false, 31.000000, 39.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setXRot(180.000000)
	registerVal10:setScale(0.900000)
	registerVal2:addElement(registerVal10)
	registerVal2.TheaterFocusBarB0 = registerVal10
	local function __FUNC_1050_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.icon:linkToElementModel(registerVal2, "icon", true, __FUNC_1050_)
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1104_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.border:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.icon:setYRot(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1104_
	local function __FUNC_14CB_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.uparrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.downarrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Focus = __FUNC_14CB_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1737_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.icon:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1737_
	registerVal11.Disabled = registerVal12
	registerVal12 = {}
	local function __FUNC_19E9_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.icon:setYRot(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_19E9_
	local function __FUNC_1CB5_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.uparrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Focus = __FUNC_1CB5_
	registerVal11.ShowOnlyUpArrow = registerVal12
	registerVal12 = {}
	local function __FUNC_1F28_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.icon:setYRot(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.downarrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1F28_
	local function __FUNC_21FA_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.downarrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TheaterFocusBarT0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TheaterFocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Focus = __FUNC_21FA_
	registerVal11.ShowOnlyDownArrow = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Disabled"
	local function __FUNC_246C_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal14.condition = __FUNC_246C_
	local registerVal15 = {}
	registerVal15.stateName = "ShowOnlyUpArrow"
	local function __FUNC_24C0_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualToEnum(arg2, arg1, "demo.currentDollyCamMarkerTimeScaleMode", Enum.demoDollyCameraTimeScaleMode.DEMO_DOLLYCAM_TIMESCALE_MODE_FIXED)
	end

	registerVal15.condition = __FUNC_24C0_
	local registerVal16 = {}
	registerVal16.stateName = "ShowOnlyDownArrow"
	local function __FUNC_25D8_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualToEnum(arg2, arg1, "demo.currentDollyCamMarkerTimeScaleMode", Enum.demoDollyCameraTimeScaleMode.DEMO_DOLLYCAM_TIMESCALE_MODE_MANUAL)
	end

	registerVal16.condition = __FUNC_25D8_
	registerVal13 = {registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_26F1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_26F1_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "demo.currentDollyCamMarkerTimeScaleMode")
	local function __FUNC_280E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.currentDollyCamMarkerTimeScaleMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_280E_)
	local function __FUNC_2949_(arg0, arg1, arg2, arg3)
		UpdateDollyCameraTimeScaleMode(arg2, "prev")
		return true
	end

	local function __FUNC_29C2_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_UP, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_2949_, __FUNC_29C2_, false)
	local function __FUNC_2AAA_(arg0, arg1, arg2, arg3)
		UpdateDollyCameraTimeScaleMode(arg2, "next")
		return true
	end

	local function __FUNC_2B22_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_DOWN, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_2AAA_, __FUNC_2B22_, false)
	local function __FUNC_2C0C_(arg0)
		arg0.TheaterFocusBarT0:close()
		arg0.TheaterFocusBarB0:close()
		arg0.icon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2C0C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

