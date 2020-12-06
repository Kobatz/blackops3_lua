-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Theater.Theater_FocusBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DemoControlsButtonTimeScale = registerVal1
function CoD.DemoControlsButtonTimeScale.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoControlsButtonTimeScale)
	registerVal2.id = "DemoControlsButtonTimeScale"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 59.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 22.000000, 56.000000)
	registerVal3:setTopBottom(true, false, 11.500000, 35.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.whitebox = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -9.500000, 8.500000)
	registerVal4:setTopBottom(false, false, -12.000000, 10.000000)
	registerVal4:setText(Engine.Localize("x"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.x = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, 0.500000, 27.500000)
	registerVal5:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal5:setScale(0.900000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1261_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(DemoGetTimeScaleString(registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Demo", "timeScale", __FUNC_1261_)
	registerVal2:addElement(registerVal5)
	registerVal2.timescale = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 1.500000, 17.500000)
	registerVal6:setTopBottom(false, false, -23.000000, -11.000000)
	registerVal6:setZRot(180.000000)
	registerVal6:setScale(0.800000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.uparrow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, 1.500000, 17.500000)
	registerVal7:setTopBottom(false, false, 13.000000, 23.000000)
	registerVal7:setScale(0.800000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.downarrow = registerVal7
	local registerVal8 = CoD.Theater_FocusBar.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -10.500000, 29.500000)
	registerVal8:setTopBottom(false, false, -15.500000, -7.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setScale(0.900000)
	registerVal2:addElement(registerVal8)
	registerVal2.TheaterFocusBarT = registerVal8
	local registerVal9 = CoD.Theater_FocusBar.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -10.500000, 29.500000)
	registerVal9:setTopBottom(false, false, 8.500000, 16.500000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setXRot(180.000000)
	registerVal9:setScale(0.900000)
	registerVal2:addElement(registerVal9)
	registerVal2.TheaterFocusBarB = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -38.000000, -11.000000)
	registerVal10:setTopBottom(false, false, -2.500000, 0.000000)
	registerVal10:setZRot(90.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_cp_datavault_bookmark_center"))
	registerVal2:addElement(registerVal10)
	registerVal2.dotend0 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1342_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.x:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.timescale:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.timescale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TheaterFocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TheaterFocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_1342_
	local function __FUNC_1687_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setLeftRight(true, false, 22.000000, 56.000000)
		registerVal2.whitebox:setTopBottom(true, false, 11.500000, 35.000000)
		registerVal2.whitebox:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.x:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.timescale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setLeftRight(false, false, 1.500000, 17.500000)
		registerVal2.uparrow:setTopBottom(false, false, -23.000000, -11.000000)
		registerVal2.uparrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setLeftRight(false, false, 1.500000, 17.500000)
		registerVal2.downarrow:setTopBottom(false, false, 13.000000, 23.000000)
		registerVal2.downarrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TheaterFocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TheaterFocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.Focus = __FUNC_1687_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1AE5_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.x:setRGB(0.700000, 0.700000, 0.700000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.timescale:setRGB(0.700000, 0.700000, 0.700000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_1AE5_
	registerVal11.Disabled = registerVal12
	registerVal12 = {}
	local function __FUNC_1D05_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.x:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.timescale:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.timescale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_1D05_
	local function __FUNC_1F8F_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.x:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.timescale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setLeftRight(false, false, 1.500000, 17.500000)
		registerVal2.uparrow:setTopBottom(false, false, -23.000000, -11.000000)
		registerVal2.uparrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TheaterFocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TheaterFocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.Focus = __FUNC_1F8F_
	registerVal11.ShowOnlyUpArrow = registerVal12
	registerVal12 = {}
	local function __FUNC_2334_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.x:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.timescale:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.timescale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_2334_
	local function __FUNC_25BF_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.whitebox:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.x:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.timescale:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setLeftRight(false, false, 1.500000, 17.500000)
		registerVal2.uparrow:setTopBottom(false, false, -23.000000, -11.000000)
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TheaterFocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TheaterFocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.Focus = __FUNC_25BF_
	registerVal11.ShowOnlyDownArrow = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Disabled"
	local function __FUNC_2964_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal14.condition = __FUNC_2964_
	local registerVal15 = {}
	registerVal15.stateName = "ShowOnlyUpArrow"
	local function __FUNC_29B8_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg1, "demo.timescale", 0.190000)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_29B8_
	local registerVal16 = {}
	registerVal16.stateName = "ShowOnlyDownArrow"
	local function __FUNC_2A44_(arg0, arg2, arg3)
		return IsGlobalModelValueGreaterThan(arg1, "demo.timescale", 5.910000)
	end

	registerVal16.condition = __FUNC_2A44_
	registerVal13 = {registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_2ACC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_2ACC_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "demo.timescale")
	local function __FUNC_2BEA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.timescale"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_2BEA_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "demo.contextMode")
	local function __FUNC_2D0C_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.contextMode"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_UP)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_DOWN)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_2D0C_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "demo.editingDollyCameraMarker")
	local function __FUNC_2F26_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.editingDollyCameraMarker"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_UP)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_DOWN)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_2F26_)
	local function __FUNC_314B_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoContextPlaybackMode()
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
		if not registerVal4 and not registerVal4 then
			UpdateDemoTimeScale(arg2, "0.1")
			return true
		else
			registerVal4 = IsDemoContextDirectorMode()
			registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
			if registerVal4 and registerVal4 then
				UpdateDollyCameraTimeScale(arg2, "0.1")
				return true
			end
		end
	end

	local function __FUNC_32DB_(arg0, arg1, arg2)
		local registerVal3 = IsDemoContextPlaybackMode()
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_UP, "")
			return false
		else
			registerVal3 = IsDemoContextDirectorMode()
			registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_UP, "")
				return false
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_314B_, __FUNC_32DB_, false)
	local function __FUNC_34FF_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoContextPlaybackMode()
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
		if not registerVal4 and not registerVal4 then
			UpdateDemoTimeScale(arg2, "-0.1")
			return true
		else
			registerVal4 = IsDemoContextDirectorMode()
			registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
			if registerVal4 and registerVal4 then
				UpdateDollyCameraTimeScale(arg2, "-0.1")
				return true
			end
		end
	end

	local function __FUNC_3690_(arg0, arg1, arg2)
		local registerVal3 = IsDemoContextPlaybackMode()
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_DOWN, "")
			return false
		else
			registerVal3 = IsDemoContextDirectorMode()
			registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_DOWN, "")
				return false
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_34FF_, __FUNC_3690_, false)
	local function __FUNC_38B9_(arg0)
		arg0.TheaterFocusBarT:close()
		arg0.TheaterFocusBarB:close()
		arg0.timescale:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_38B9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

