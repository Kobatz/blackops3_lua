-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.EndGameFlow.Top3PlayerScoreBlurBox")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Demo.DemoControlsSpectatingBar")
require("ui.uieditor.widgets.FooterButtonPrompt")
local function __FUNC_343_(arg0, arg1)
	local registerVal3 = IsDemoClipPreviewRunning()
	if registerVal3 then
	else
		registerVal3 = IsDemoCreatingHighlightReel()
		if registerVal3 then
		else
			registerVal3 = IsDemoContextPlaybackMode()
			if registerVal3 then
			else
				registerVal3 = IsDemoContextBasicMode()
				if registerVal3 then
				else
					registerVal3 = IsDemoContextDirectorMode()
					if registerVal3 then
					else
						registerVal3 = IsDemoContextObjectLinkMode()
						if registerVal3 then
						else
							registerVal3 = IsDemoContextLighterMode()
							if registerVal3 then
							else
								registerVal3 = IsDemoContextHighlightReelMode()
								if registerVal3 then
								end
							end
						end
					end
				end
			end
		end
	end
	arg0.ModeName:setText(Engine.Localize("DEMO_HIGHLIGHT_REEL_MODE"))
end

local function __FUNC_6CB_(arg0, arg1, arg2)
	local function __FUNC_80D_(arg2)
		__FUNC_343_(arg0, arg1)
	end

	arg0.ModeName:subscribeToGlobalModel(arg1, "Demo", "contextMode", __FUNC_80D_)
	local function __FUNC_848_(arg2)
		__FUNC_343_(arg0, arg1)
	end

	arg0.ModeName:subscribeToGlobalModel(arg1, "Demo", "clipState", __FUNC_848_)
	local function __FUNC_884_(arg2)
		__FUNC_343_(arg0, arg1)
	end

	arg0.ModeName:subscribeToGlobalModel(arg1, "Demo", "isCreatingHighlightReel", __FUNC_884_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.DemoContextPanel = registerVal3
local function __FUNC_8C0_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoContextPanel)
	registerVal2.id = "DemoContextPanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 4.000000, -3.500000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.LeftPanel = registerVal3
	local registerVal4 = CoD.Top3PlayerScoreBlurBox.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 31.000000, -3.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2_highquality"))
	registerVal4:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Top3PlayerScoreBlurBox0 = registerVal4
	local registerVal5 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 31.000000, -3.500000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.VSpanel0 = registerVal5
	local registerVal6 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 4.000000, -30.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal6:setShaderVector(0.000000, 0.020000, 0.030000, 0.020000, 0.030000)
	registerVal2:addElement(registerVal6)
	registerVal2.VSpanel = registerVal6
	local registerVal7 = CoD.DemoControlsSpectatingBar.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal7:setTopBottom(true, false, 30.500000, 55.500000)
	registerVal7.PlayerName:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.DemoControlsSpectatingBar = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal8:setTopBottom(true, false, 6.000000, 28.000000)
	registerVal8:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal8:setText(Engine.Localize("DEMO_BASIC_MODE"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setLetterSpacing(1.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.ModeName = registerVal8
	local registerVal9 = CoD.FooterButtonPrompt.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -67.000000, 67.000000)
	registerVal9:setTopBottom(true, false, 28.000000, 60.000000)
	registerVal9.label:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9.label:setScale(1.100000)
	registerVal9.label:setText(Engine.Localize("DEMO_CANCEL_PREVIEW"))
	registerVal9.keyPrompt.keybind:setText(Engine.Localize("KEY_ESCAPE"))
	local function __FUNC_1B9B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Controller", "secondary_button_image", __FUNC_1B9B_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Enabled"
	local function __FUNC_1C73_(arg0, arg2, arg3)
		return IsGamepad(arg1)
	end

	registerVal13.condition = __FUNC_1C73_
	local registerVal14 = {}
	registerVal14.stateName = "EnabledPC"
	local function __FUNC_1CBF_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		if not registerVal3 then
			registerVal3 = ShouldHideButtonPromptForPC(arg2, arg1)
		else
		end
		return true
	end

	registerVal14.condition = __FUNC_1CBF_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_1D58_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, nil, true, __FUNC_1D58_)
	if registerVal9.m_eventHandlers.input_source_changed then
		local function __FUNC_1E65_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal9.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal9:registerEventHandler("input_source_changed", __FUNC_1E65_)
	else
		registerVal9:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "LastInput")
	local function __FUNC_1EEF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_1EEF_)
	registerVal2:addElement(registerVal9)
	registerVal2.CancelPreviewBtn = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal10:setTopBottom(true, true, 3.000000, -2.000000)
	registerVal10:setAlpha(0.500000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal10:setShaderVector(0.000000, 0.013245, 0.072727, 0.000000, 0.000000)
	registerVal10:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.Image = registerVal10
	local registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_200B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.DemoControlsSpectatingBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ModeName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CancelPreviewBtn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_200B_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_21D2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.DemoControlsSpectatingBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ModeName:setAlpha(1.000000)
		registerVal2.ModeName:setText(Engine.Localize("MENU_DEMO_MODE_PREVIEWING_SEGMENT"))
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.CancelPreviewBtn:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_21D2_
	registerVal11.ClipPreview = registerVal12
	registerVal12 = {}
	local function __FUNC_2428_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.DemoControlsSpectatingBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ModeName:setAlpha(1.000000)
		registerVal2.ModeName:setText(Engine.Localize("MPUI_CREATING_HIGHLIGHT_REEL"))
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal9.label:completeAnimation()
		registerVal2.CancelPreviewBtn:setAlpha(1.000000)
		registerVal2.CancelPreviewBtn.label:setText(Engine.Localize("MPUI_CANCEL"))
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_2428_
	registerVal11.CreatingHighlightReel = registerVal12
	registerVal2.clipsPerState = registerVal11
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "ClipPreview"
	local function __FUNC_26F3_(arg0, arg1, arg2)
		return IsDemoClipPreviewRunning()
	end

	registerVal14.condition = __FUNC_26F3_
	local registerVal15 = {}
	registerVal15.stateName = "CreatingHighlightReel"
	local function __FUNC_274A_(arg0, arg1, arg2)
		return IsDemoCreatingHighlightReel()
	end

	registerVal15.condition = __FUNC_274A_
	registerVal13 = {registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "demo.clipState")
	local function __FUNC_27A5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.clipState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_27A5_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "demo.isCreatingHighlightReel")
	local function __FUNC_28C8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "demo.isCreatingHighlightReel"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_28C8_)
	local function __FUNC_29FA_(arg0)
		arg0.LeftPanel:close()
		arg0.Top3PlayerScoreBlurBox0:close()
		arg0.VSpanel0:close()
		arg0.VSpanel:close()
		arg0.DemoControlsSpectatingBar:close()
		arg0.CancelPreviewBtn:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_29FA_)
	if __FUNC_6CB_ then
		__FUNC_6CB_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.DemoContextPanel.new = __FUNC_8C0_
