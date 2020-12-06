-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Theater.Theater_FocusBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DemoControlsButtonDollyCameraTimeScale = registerVal1
function CoD.DemoControlsButtonDollyCameraTimeScale.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoControlsButtonDollyCameraTimeScale)
	registerVal2.id = "DemoControlsButtonDollyCameraTimeScale"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 3.000000, 37.000000)
	registerVal3:setTopBottom(true, false, 11.500000, 35.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.whitebox = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -19.000000, -1.000000)
	registerVal4:setTopBottom(false, false, -12.000000, 10.000000)
	registerVal4:setText(Engine.Localize("x"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.x = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -9.000000, 18.000000)
	registerVal5:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal5:setScale(0.900000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_11DF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(DemoGetTimeScaleString(registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Demo", "currentDollyCamMarkerTimeScaleValue", __FUNC_11DF_)
	registerVal2:addElement(registerVal5)
	registerVal2.timescale = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal6:setTopBottom(false, false, -23.000000, -11.000000)
	registerVal6:setZRot(180.000000)
	registerVal6:setScale(0.800000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.uparrow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal7:setTopBottom(false, false, 13.000000, 23.000000)
	registerVal7:setScale(0.800000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.downarrow = registerVal7
	local registerVal8 = CoD.Theater_FocusBar.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -20.000000, 20.000000)
	registerVal8:setTopBottom(false, false, -15.500000, -7.500000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setScale(0.900000)
	registerVal2:addElement(registerVal8)
	registerVal2.TheaterFocusBarT = registerVal8
	local registerVal9 = CoD.Theater_FocusBar.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -20.000000, 20.000000)
	registerVal9:setTopBottom(false, false, 8.500000, 16.500000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setXRot(180.000000)
	registerVal9:setScale(0.900000)
	registerVal2:addElement(registerVal9)
	registerVal2.TheaterFocusBarB = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_12BE_()
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

	registerVal11.DefaultClip = __FUNC_12BE_
	local function __FUNC_1603_()
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

	registerVal11.Focus = __FUNC_1603_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1A61_()
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

	registerVal11.DefaultClip = __FUNC_1A61_
	registerVal10.Disabled = registerVal11
	registerVal11 = {}
	local function __FUNC_1C81_()
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

	registerVal11.DefaultClip = __FUNC_1C81_
	local function __FUNC_1F0B_()
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

	registerVal11.Focus = __FUNC_1F0B_
	registerVal10.ShowOnlyUpArrow = registerVal11
	registerVal11 = {}
	local function __FUNC_22B0_()
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

	registerVal11.DefaultClip = __FUNC_22B0_
	local function __FUNC_253B_()
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

	registerVal11.Focus = __FUNC_253B_
	registerVal10.ShowOnlyDownArrow = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_28E0_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal13.condition = __FUNC_28E0_
	local registerVal14 = {}
	registerVal14.stateName = "ShowOnlyUpArrow"
	local function __FUNC_2934_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueGreaterThan(arg1, "demo.currentDollyCamMarkerTimeScaleValue", 0.190000)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_2934_
	local registerVal15 = {}
	registerVal15.stateName = "ShowOnlyDownArrow"
	local function __FUNC_29DA_(arg0, arg2, arg3)
		return IsGlobalModelValueGreaterThan(arg1, "demo.currentDollyCamMarkerTimeScaleValue", 5.910000)
	end

	registerVal15.condition = __FUNC_29DA_
	registerVal12 = {registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_2A7A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_2A7A_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "demo.currentDollyCamMarkerTimeScaleValue")
	local function __FUNC_2B96_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.currentDollyCamMarkerTimeScaleValue"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_2B96_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "demo.contextMode")
	local function __FUNC_2CD2_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.contextMode"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_UP)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_DOWN)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_2CD2_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "demo.editingDollyCameraMarker")
	local function __FUNC_2EEA_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.editingDollyCameraMarker"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_UP)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_DOWN)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_2EEA_)
	local function __FUNC_310F_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoContextDirectorMode()
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
		if registerVal4 and registerVal4 then
			UpdateDollyCameraTimeScale(arg2, "0.1")
			return true
		end
	end

	local function __FUNC_3217_(arg0, arg1, arg2)
		local registerVal3 = IsDemoContextDirectorMode()
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_UP, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_310F_, __FUNC_3217_, false)
	local function __FUNC_339C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoContextDirectorMode()
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
		if registerVal4 and registerVal4 then
			UpdateDollyCameraTimeScale(arg2, "-0.1")
			return true
		end
	end

	local function __FUNC_34A8_(arg0, arg1, arg2)
		local registerVal3 = IsDemoContextDirectorMode()
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.editingDollyCameraMarker")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_DOWN, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_339C_, __FUNC_34A8_, false)
	local function __FUNC_3632_(arg0)
		arg0.TheaterFocusBarT:close()
		arg0.TheaterFocusBarB:close()
		arg0.timescale:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3632_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

