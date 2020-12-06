-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Demo.ChooseModeSidebar")
require("ui.uieditor.widgets.Demo.DemoPlaybackControls")
require("ui.uieditor.widgets.Demo.DemoContextPanel")
require("ui.uieditor.widgets.Demo.DemoPlaybackControlsButtonBar")
local function __FUNC_2D2_(arg0, arg1, arg2)
	if CoD.isPC then
		local registerVal5 = {}
		registerVal5.name = "input_source_changed"
		arg0:processEvent(registerVal5)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Demo = registerVal2
local function __FUNC_381_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Demo)
	registerVal2.id = "Demo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.DemoPlaybackControls.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -247.000000, 247.000000)
	registerVal3:setTopBottom(false, true, -139.000000, -48.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.DemoPlaybackControls = registerVal3
	local registerVal4 = CoD.DemoContextPanel.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -329.000000, -29.000000)
	registerVal4:setTopBottom(true, false, 18.000000, 78.000000)
	registerVal4:setYRot(-20.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.DemoContextPanel = registerVal4
	local registerVal5 = CoD.DemoPlaybackControlsButtonBar.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -700.000000, 658.000000)
	registerVal5:setTopBottom(false, true, -32.000000, 0.000000)
	local function __FUNC_1859_(arg0, arg2)
		SizeToSafeArea(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_1859_)
	registerVal2:addElement(registerVal5)
	registerVal2.DemoPlaybackControlsButtonBar = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_18ED_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.DemoPlaybackControls:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DemoContextPanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DemoPlaybackControlsButtonBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_18ED_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1AC1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.DemoPlaybackControls:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DemoContextPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DemoPlaybackControlsButtonBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1AC1_
	registerVal6.HideControls = registerVal7
	registerVal7 = {}
	local function __FUNC_1C95_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.DemoPlaybackControls:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DemoContextPanel:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DemoPlaybackControlsButtonBar:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1C95_
	registerVal6.InactiveControls = registerVal7
	registerVal7 = {}
	local function __FUNC_1E6E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.DemoPlaybackControls:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DemoContextPanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DemoPlaybackControlsButtonBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1E6E_
	registerVal6.ClipPreview = registerVal7
	registerVal7 = {}
	local function __FUNC_2046_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.DemoPlaybackControls:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DemoContextPanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DemoPlaybackControlsButtonBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_2046_
	registerVal6.LightmanColorPicker = registerVal7
	registerVal7 = {}
	local function __FUNC_221E_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.DemoPlaybackControls:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DemoContextPanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DemoPlaybackControlsButtonBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_221E_
	registerVal6.CreatingHighlightReel = registerVal7
	registerVal7 = {}
	local function __FUNC_23F6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.DemoPlaybackControls:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DemoContextPanel:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DemoPlaybackControlsButtonBar:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_23F6_
	registerVal6.InactiveControlsCopy = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "HideControls"
	local function __FUNC_25CE_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "demo.drawDemoControls")
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_25CE_
	local registerVal10 = {}
	registerVal10.stateName = "InactiveControls"
	local function __FUNC_2653_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "demo.drawDemoControls")
		if registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "demo.showChooseModeSidebar")
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_2653_
	local registerVal11 = {}
	registerVal11.stateName = "ClipPreview"
	local function __FUNC_2713_(arg0, arg1, arg2)
		return IsDemoClipPreviewRunning()
	end

	registerVal11.condition = __FUNC_2713_
	local registerVal12 = {}
	registerVal12.stateName = "LightmanColorPicker"
	local function __FUNC_276A_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "demo.drawDemoControls")
		if registerVal3 then
			registerVal3 = IsInLightmanColorPicker(arg1)
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_276A_
	local registerVal13 = {}
	registerVal13.stateName = "CreatingHighlightReel"
	local function __FUNC_2820_(arg0, arg1, arg2)
		return IsDemoCreatingHighlightReel()
	end

	registerVal13.condition = __FUNC_2820_
	local registerVal14 = {}
	registerVal14.stateName = "InactiveControlsCopy"
	local function __FUNC_287D_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "demo.drawDemoControls")
		if registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "demo.showOptionsSidebar")
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_287D_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.drawDemoControls")
	local function __FUNC_293C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.drawDemoControls"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_293C_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.showChooseModeSidebar")
	local function __FUNC_2A67_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.showChooseModeSidebar"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2A67_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.clipState")
	local function __FUNC_2B94_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.clipState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2B94_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.showLightmanColorPicker")
	local function __FUNC_2CB8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.showLightmanColorPicker"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2CB8_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.editingLightmanMarker")
	local function __FUNC_2DEA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.editingLightmanMarker"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2DEA_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.isCreatingHighlightReel")
	local function __FUNC_2F18_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.isCreatingHighlightReel"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2F18_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.showOptionsSidebar")
	local function __FUNC_304A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.showOptionsSidebar"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_304A_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.contextMode")
	local function __FUNC_3175_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.contextMode"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_3175_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.clipState")
	local function __FUNC_3528_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.clipState"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_LTRIG)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RTRIG)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_3528_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.isCreatingHighlightReel")
	local function __FUNC_3948_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.isCreatingHighlightReel"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_LTRIG)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RTRIG)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_3948_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.isCapturingScreenshot")
	local function __FUNC_3DC6_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.isCapturingScreenshot"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_LTRIG)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RTRIG)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_3DC6_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.highlightedDollyCamMarker")
	local function __FUNC_42A8_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.highlightedDollyCamMarker"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_42A8_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.editingDollyCameraMarker")
	local function __FUNC_454A_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.editingDollyCameraMarker"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_454A_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.uploadPopupOpen")
	local function __FUNC_47E9_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.uploadPopupOpen"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_47E9_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.highlightedLightmanMarker")
	local function __FUNC_49B2_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.highlightedLightmanMarker"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_49B2_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.editingLightmanMarker")
	local function __FUNC_4BEC_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.editingLightmanMarker"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_4BEC_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.isRecordingDollyCameraPath")
	local function __FUNC_4E24_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.isRecordingDollyCameraPath"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_4E24_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.isRepositioningDollyCamMarker")
	local function __FUNC_4FFB_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.isRepositioningDollyCamMarker"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_4FFB_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.isFreeCameraLockedOnEntity")
	local function __FUNC_5238_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.isFreeCameraLockedOnEntity"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_5238_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.highlightedFreeCameraLockOnEntity")
	local function __FUNC_540F_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.highlightedFreeCameraLockOnEntity"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_540F_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.isFreeCameraLockedOnEntityActive")
	local function __FUNC_55EA_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.isFreeCameraLockedOnEntityActive"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_55EA_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.isRepositioningLightmanMarker")
	local function __FUNC_57C5_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.isRepositioningLightmanMarker"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_57C5_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.showLightmanColorPicker")
	local function __FUNC_5A04_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.showLightmanColorPicker"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_5A04_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "demo.cameraMode")
	local function __FUNC_5BD8_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "demo.cameraMode"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_5BD8_)
	local function __FUNC_5DEF_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoContextBasicOrHighlightReelMode()
		registerVal4 = IsDemoClipPreviewRunning()
		registerVal4 = IsDemoCreatingHighlightReel()
		registerVal4 = IsDemoCapturingScreenshot()
		if registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			UpdateDemoCameraMode(arg2, "cycle")
			return true
		end
	end

	local function __FUNC_5F36_(arg0, arg1, arg2)
		local registerVal3 = IsDemoContextBasicOrHighlightReelMode()
		registerVal3 = IsDemoClipPreviewRunning()
		registerVal3 = IsDemoCreatingHighlightReel()
		registerVal3 = IsDemoCapturingScreenshot()
		if registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "X", __FUNC_5DEF_, __FUNC_5F36_, false)
	local function __FUNC_610B_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoContextPlaybackMode()
		registerVal4 = IsEditingDollyCameraMarker(arg2)
		registerVal4 = IsDemoClipPreviewRunning()
		registerVal4 = IsDemoRestrictedBasicMode()
		registerVal4 = IsDemoCreatingHighlightReel()
		registerVal4 = IsDemoCapturingScreenshot()
		registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "demo.uploadPopupOpen")
		registerVal4 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			SetGlobalModelValueTrue("demo.showChooseModeSidebar")
			OpenPopupWithPriority(registerVal2, "ChooseModeSidebar", arg2, 100.000000)
			return true
		end
	end

	local function __FUNC_6400_(arg0, arg1, arg2)
		local registerVal3 = IsDemoContextPlaybackMode()
		registerVal3 = IsEditingDollyCameraMarker(arg2)
		registerVal3 = IsDemoClipPreviewRunning()
		registerVal3 = IsDemoRestrictedBasicMode()
		registerVal3 = IsDemoCreatingHighlightReel()
		registerVal3 = IsDemoCapturingScreenshot()
		registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "demo.uploadPopupOpen")
		registerVal3 = IsVisibilityBitSet(arg2, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "M", __FUNC_610B_, __FUNC_6400_, false)
	local function __FUNC_670A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoClipPreviewRunning()
		registerVal4 = IsDemoCreatingHighlightReel()
		registerVal4 = IsDemoCapturingScreenshot()
		if not registerVal4 and not registerVal4 and not registerVal4 then
			DemoJumpBack(arg2)
			return true
		end
	end

	local function __FUNC_67F8_(arg0, arg1, arg2)
		local registerVal3 = IsDemoClipPreviewRunning()
		registerVal3 = IsDemoCreatingHighlightReel()
		registerVal3 = IsDemoCapturingScreenshot()
		if not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_LTRIG, "Q", __FUNC_670A_, __FUNC_67F8_, false)
	local function __FUNC_6987_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoClipPreviewRunning()
		registerVal4 = IsDemoCreatingHighlightReel()
		registerVal4 = IsDemoCapturingScreenshot()
		registerVal4 = IsRepeatButtonPress(arg3)
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			UpdateDemoFastForward(arg2)
			return true
		end
	end

	local function __FUNC_6AAE_(arg0, arg1, arg2)
		local registerVal4 = IsDemoClipPreviewRunning()
		registerVal4 = IsDemoCreatingHighlightReel()
		registerVal4 = IsDemoCapturingScreenshot()
		registerVal4 = IsRepeatButtonPress(nil)
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RTRIG, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_RTRIG, "E", __FUNC_6987_, __FUNC_6AAE_, false)
	local function __FUNC_6C70_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoClipPreviewRunning()
		registerVal4 = IsDemoCreatingHighlightReel()
		registerVal4 = IsDemoCapturingScreenshot()
		if not registerVal4 and not registerVal4 and not registerVal4 then
			DemoToggleDemoHud(arg2)
			return true
		end
	end

	local function __FUNC_6D65_(arg0, arg1, arg2)
		local registerVal3 = IsDemoClipPreviewRunning()
		registerVal3 = IsDemoCreatingHighlightReel()
		registerVal3 = IsDemoCapturingScreenshot()
		if not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "T", __FUNC_6C70_, __FUNC_6D65_, false)
	local function __FUNC_6EFC_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoContextPlaybackMode()
		registerVal4 = IsEditingDollyCameraMarker(arg2)
		registerVal4 = IsEditingLightmanMarker(arg2)
		registerVal4 = IsDemoClipPreviewRunning()
		registerVal4 = IsDemoCreatingHighlightReel()
		registerVal4 = IsDemoCapturingScreenshot()
		if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
			DemoUpdatePlayPause(arg2)
			return true
		else
			registerVal4 = IsDemoContextDirectorMode()
			registerVal4 = IsEditingDollyCameraMarker(arg2)
			registerVal4 = IsRepositioningDollyCameraMarker(arg2)
			registerVal4 = IsDemoClipPreviewRunning()
			registerVal4 = IsDemoCapturingScreenshot()
			if registerVal4 and registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
				DemoCancelPlaceDollyCameraMarker(arg2)
				return true
			else
				registerVal4 = IsDemoContextLighterMode()
				registerVal4 = IsEditingLightmanMarker(arg2)
				registerVal4 = IsRepositioningLightmanMarker(arg2)
				registerVal4 = IsDemoClipPreviewRunning()
				registerVal4 = IsDemoCapturingScreenshot()
				if registerVal4 and registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
					DemoCancelPlaceLightmanMarker(arg2)
					return true
				else
					registerVal4 = IsDemoClipPreviewRunning()
					if registerVal4 then
						DemoCancelPreview(arg2)
						return true
					else
						registerVal4 = IsDemoCreatingHighlightReel()
						if registerVal4 then
							DemoCancelHighlightReelCreation(arg2)
							return true
						end
					end
				end
			end
		end
	end

	local function __FUNC_72EE_(arg0, arg1, arg2)
		local registerVal3 = IsDemoContextPlaybackMode()
		registerVal3 = IsEditingDollyCameraMarker(arg2)
		registerVal3 = IsEditingLightmanMarker(arg2)
		registerVal3 = IsDemoClipPreviewRunning()
		registerVal3 = IsDemoCreatingHighlightReel()
		registerVal3 = IsDemoCapturingScreenshot()
		if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
			return false
		else
			registerVal3 = IsDemoContextDirectorMode()
			registerVal3 = IsEditingDollyCameraMarker(arg2)
			registerVal3 = IsRepositioningDollyCameraMarker(arg2)
			registerVal3 = IsDemoClipPreviewRunning()
			registerVal3 = IsDemoCapturingScreenshot()
			if registerVal3 and registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
				return false
			else
				registerVal3 = IsDemoContextLighterMode()
				registerVal3 = IsEditingLightmanMarker(arg2)
				registerVal3 = IsRepositioningLightmanMarker(arg2)
				registerVal3 = IsDemoClipPreviewRunning()
				registerVal3 = IsDemoCapturingScreenshot()
				if registerVal3 and registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
					return false
				else
					registerVal3 = IsDemoClipPreviewRunning()
					if registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
						return false
					else
						registerVal3 = IsDemoCreatingHighlightReel()
						if registerVal3 then
							CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
							return false
						end
					end
				end
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "H", __FUNC_6EFC_, __FUNC_72EE_, false)
	local function __FUNC_77C8_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoContextDirectorMode()
		registerVal4 = ShouldStartAutoDollyCamera(arg2)
		registerVal4 = IsDemoClipPreviewRunning()
		registerVal4 = IsDemoCapturingScreenshot()
		if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
			DemoStartAutoDollyCamera(arg2)
			return true
		else
			registerVal4 = IsDemoContextDirectorMode()
			registerVal4 = ShouldStopAutoDollyCamera(arg2)
			registerVal4 = IsDemoClipPreviewRunning()
			registerVal4 = IsDemoCapturingScreenshot()
			if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
				DemoStopAutoDollyCamera(arg2)
				return true
			else
				registerVal4 = IsDemoContextDirectorMode()
				registerVal4 = ShouldAddDollyCameraMarker(arg2)
				registerVal4 = IsDemoClipPreviewRunning()
				registerVal4 = IsDemoCapturingScreenshot()
				if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
					DemoAddDollyCameraMarker(arg2)
					return true
				else
					registerVal4 = IsDemoContextDirectorMode()
					registerVal4 = ShouldEditDollyCameraMarker(arg2)
					registerVal4 = IsDemoClipPreviewRunning()
					registerVal4 = IsDemoCapturingScreenshot()
					if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
						DemoEditDollyCameraMarker(arg2)
						return true
					else
						registerVal4 = IsDemoContextDirectorMode()
						registerVal4 = IsEditingDollyCameraMarker(arg2)
						registerVal4 = IsRepositioningDollyCameraMarker(arg2)
						registerVal4 = IsDemoClipPreviewRunning()
						registerVal4 = IsDemoCapturingScreenshot()
						if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
							DemoExitEditDollyCameraMarker(arg2)
							return true
						else
							registerVal4 = IsDemoContextDirectorMode()
							registerVal4 = IsEditingDollyCameraMarker(arg2)
							registerVal4 = IsRepositioningDollyCameraMarker(arg2)
							registerVal4 = IsDemoClipPreviewRunning()
							registerVal4 = IsDemoCapturingScreenshot()
							if registerVal4 and registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
								DemoPlaceDollyCameraMarker(arg2)
								return true
							else
								registerVal4 = IsDemoContextObjectLinkMode()
								registerVal4 = CanFreeCameraLockOnEntity(arg2)
								registerVal4 = IsFreeCameraLockedOnEntity(arg2)
								registerVal4 = IsDemoClipPreviewRunning()
								registerVal4 = IsDemoCapturingScreenshot()
								if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
									DemoFreeCameraLockOnObject(arg2)
									return true
								else
									registerVal4 = IsDemoContextObjectLinkMode()
									registerVal4 = IsFreeCameraLockedOnEntity(arg2)
									registerVal4 = IsDemoClipPreviewRunning()
									registerVal4 = IsDemoCapturingScreenshot()
									if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
										DemoFreeCameraUnlockObject(arg2)
										return true
									else
										registerVal4 = IsDemoContextLighterMode()
										registerVal4 = ShouldAddLightmanMarker(arg2)
										registerVal4 = IsDemoClipPreviewRunning()
										registerVal4 = IsDemoCapturingScreenshot()
										if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
											DemoAddLightmanMarker(arg2)
											return true
										else
											registerVal4 = IsDemoContextLighterMode()
											registerVal4 = ShouldEditLightmanMarker(arg2)
											registerVal4 = IsDemoClipPreviewRunning()
											registerVal4 = IsDemoCapturingScreenshot()
											if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
												DemoEditLightmanMarker(arg2)
												return true
											else
												registerVal4 = IsDemoContextLighterMode()
												registerVal4 = IsEditingLightmanMarker(arg2)
												registerVal4 = IsRepositioningLightmanMarker(arg2)
												registerVal4 = IsDemoClipPreviewRunning()
												registerVal4 = IsInLightmanColorPicker(arg2)
												registerVal4 = IsDemoCapturingScreenshot()
												if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
													DemoExitEditLightmanMarker(arg2)
													return true
												else
													registerVal4 = IsDemoContextLighterMode()
													registerVal4 = IsEditingLightmanMarker(arg2)
													registerVal4 = IsRepositioningLightmanMarker(arg2)
													registerVal4 = IsDemoClipPreviewRunning()
													registerVal4 = IsDemoCapturingScreenshot()
													if registerVal4 and registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
														DemoPlaceLightmanMarker(arg2)
														return true
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end

	local function __FUNC_80D7_(arg0, arg1, arg2)
		local registerVal3 = IsDemoContextDirectorMode()
		registerVal3 = ShouldStartAutoDollyCamera(arg2)
		registerVal3 = IsDemoClipPreviewRunning()
		registerVal3 = IsDemoCapturingScreenshot()
		if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
			return false
		else
			registerVal3 = IsDemoContextDirectorMode()
			registerVal3 = ShouldStopAutoDollyCamera(arg2)
			registerVal3 = IsDemoClipPreviewRunning()
			registerVal3 = IsDemoCapturingScreenshot()
			if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
				return false
			else
				registerVal3 = IsDemoContextDirectorMode()
				registerVal3 = ShouldAddDollyCameraMarker(arg2)
				registerVal3 = IsDemoClipPreviewRunning()
				registerVal3 = IsDemoCapturingScreenshot()
				if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
					return false
				else
					registerVal3 = IsDemoContextDirectorMode()
					registerVal3 = ShouldEditDollyCameraMarker(arg2)
					registerVal3 = IsDemoClipPreviewRunning()
					registerVal3 = IsDemoCapturingScreenshot()
					if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
						return false
					else
						registerVal3 = IsDemoContextDirectorMode()
						registerVal3 = IsEditingDollyCameraMarker(arg2)
						registerVal3 = IsRepositioningDollyCameraMarker(arg2)
						registerVal3 = IsDemoClipPreviewRunning()
						registerVal3 = IsDemoCapturingScreenshot()
						if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
							CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
							return false
						else
							registerVal3 = IsDemoContextDirectorMode()
							registerVal3 = IsEditingDollyCameraMarker(arg2)
							registerVal3 = IsRepositioningDollyCameraMarker(arg2)
							registerVal3 = IsDemoClipPreviewRunning()
							registerVal3 = IsDemoCapturingScreenshot()
							if registerVal3 and registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
								CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
								return false
							else
								registerVal3 = IsDemoContextObjectLinkMode()
								registerVal3 = CanFreeCameraLockOnEntity(arg2)
								registerVal3 = IsFreeCameraLockedOnEntity(arg2)
								registerVal3 = IsDemoClipPreviewRunning()
								registerVal3 = IsDemoCapturingScreenshot()
								if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
									CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
									return false
								else
									registerVal3 = IsDemoContextObjectLinkMode()
									registerVal3 = IsFreeCameraLockedOnEntity(arg2)
									registerVal3 = IsDemoClipPreviewRunning()
									registerVal3 = IsDemoCapturingScreenshot()
									if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
										CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
										return false
									else
										registerVal3 = IsDemoContextLighterMode()
										registerVal3 = ShouldAddLightmanMarker(arg2)
										registerVal3 = IsDemoClipPreviewRunning()
										registerVal3 = IsDemoCapturingScreenshot()
										if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
											CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
											return false
										else
											registerVal3 = IsDemoContextLighterMode()
											registerVal3 = ShouldEditLightmanMarker(arg2)
											registerVal3 = IsDemoClipPreviewRunning()
											registerVal3 = IsDemoCapturingScreenshot()
											if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
												CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
												return false
											else
												registerVal3 = IsDemoContextLighterMode()
												registerVal3 = IsEditingLightmanMarker(arg2)
												registerVal3 = IsRepositioningLightmanMarker(arg2)
												registerVal3 = IsDemoClipPreviewRunning()
												registerVal3 = IsInLightmanColorPicker(arg2)
												registerVal3 = IsDemoCapturingScreenshot()
												if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
													CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
													return false
												else
													registerVal3 = IsDemoContextLighterMode()
													registerVal3 = IsEditingLightmanMarker(arg2)
													registerVal3 = IsRepositioningLightmanMarker(arg2)
													registerVal3 = IsDemoClipPreviewRunning()
													registerVal3 = IsDemoCapturingScreenshot()
													if registerVal3 and registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
														CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
														return false
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "F", __FUNC_77C8_, __FUNC_80D7_, false)
	local function __FUNC_8B6A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoClipPlaying()
		registerVal4 = IsGlobalModelValueEqualToEnum(arg0, arg2, "demo.cameraMode", Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM)
		registerVal4 = IsDemoContextBasicOrHighlightReelMode()
		registerVal4 = IsDemoCreatingHighlightReel()
		registerVal4 = IsDemoCapturingScreenshot()
		if not registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
			DemoSwitchPlayer(arg2, "prev")
			return true
		end
	end

	local function __FUNC_8D66_(arg0, arg1, arg2)
		local registerVal3 = IsDemoClipPlaying()
		registerVal3 = IsGlobalModelValueEqualToEnum(arg0, arg2, "demo.cameraMode", Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM)
		registerVal3 = IsDemoContextBasicOrHighlightReelMode()
		registerVal3 = IsDemoCreatingHighlightReel()
		registerVal3 = IsDemoCapturingScreenshot()
		if not registerVal3 and not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_LB, "MOUSE1", __FUNC_8B6A_, __FUNC_8D66_, false)
	local function __FUNC_8FDA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsDemoClipPlaying()
		registerVal4 = IsGlobalModelValueEqualToEnum(arg0, arg2, "demo.cameraMode", Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM)
		registerVal4 = IsDemoContextBasicOrHighlightReelMode()
		registerVal4 = IsDemoCreatingHighlightReel()
		registerVal4 = IsDemoCapturingScreenshot()
		if not registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
			DemoSwitchPlayer(arg2, "next")
			return true
		end
	end

	local function __FUNC_91D6_(arg0, arg1, arg2)
		local registerVal3 = IsDemoClipPlaying()
		registerVal3 = IsGlobalModelValueEqualToEnum(arg0, arg2, "demo.cameraMode", Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM)
		registerVal3 = IsDemoContextBasicOrHighlightReelMode()
		registerVal3 = IsDemoCreatingHighlightReel()
		registerVal3 = IsDemoCapturingScreenshot()
		if not registerVal3 and not registerVal3 and registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_RB, "MOUSE2", __FUNC_8FDA_, __FUNC_91D6_, false)
	registerVal3.id = "DemoPlaybackControls"
	local function __FUNC_944A_(arg0, arg1)
		local registerVal2 = arg0.DemoPlaybackControls:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_944A_)
	local function __FUNC_9558_(arg0)
		arg0.DemoPlaybackControls:close()
		arg0.DemoContextPanel:close()
		arg0.DemoPlaybackControlsButtonBar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9558_)
	if __FUNC_2D2_ then
		__FUNC_2D2_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Demo.new = __FUNC_381_
