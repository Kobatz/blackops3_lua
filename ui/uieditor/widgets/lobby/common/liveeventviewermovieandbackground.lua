-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShader")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LiveEventViewerMovieAndBackground = registerVal1
function CoD.LiveEventViewerMovieAndBackground.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LiveEventViewerMovieAndBackground)
	registerVal2.id = "LiveEventViewerMovieAndBackground"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -128.000000, 128.000000)
	registerVal3:setTopBottom(true, true, -72.000000, 72.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = CoD.FE_ButtonPanelShader.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -128.000000, 128.000000)
	registerVal4:setTopBottom(true, true, -22.000000, 20.000000)
	registerVal4:setAlpha(0.250000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal4:setShaderVector(0.000000, 0.000000, 40.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEButtonPanel00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal5:setTopBottom(false, false, -64.000000, 64.000000)
	registerVal5:setupSpinner()
	registerVal2:addElement(registerVal5)
	registerVal2.Spinner = registerVal5
	local registerVal6 = CoD.scorestreakVignetteContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -128.000000, 128.000000)
	registerVal6:setTopBottom(true, true, -72.000000, 72.000000)
	registerVal6:setAlpha(0.250000)
	registerVal2:addElement(registerVal6)
	registerVal2.scorestreakVignetteContainer = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.OpaqueBackground = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_BF5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setupTwitchStreamPlayback(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "LiveEventViewer", "stream", __FUNC_BF5_)
	registerVal2:addElement(registerVal8)
	registerVal2.TwitchStream0 = registerVal8
	local registerVal9 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.StartMenuframenoBG00 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_C9A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.scorestreakVignetteContainer:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OpaqueBackground:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.OpaqueBackground:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TwitchStream0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.TwitchStream0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_C9A_
	local function __FUNC_F65_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1325_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -128.000000, 128.000000)
			arg0:setTopBottom(true, true, -72.000000, 72.000000)
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.scorestreakVignetteContainer:setLeftRight(true, true, -128.000000, 128.000000)
		registerVal2.scorestreakVignetteContainer:setTopBottom(true, true, -72.000000, 72.000000)
		registerVal2.scorestreakVignetteContainer:setAlpha(0.500000)
		__FUNC_1325_(registerVal6, {})
		local function __FUNC_1549_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 213.330000, -213.330000)
			arg0:setTopBottom(true, true, 120.000000, -120.000000)
			arg0:setScale(1.100000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.OpaqueBackground:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.OpaqueBackground:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.OpaqueBackground:setScale(1.000000)
		__FUNC_1549_(registerVal7, {})
		local function __FUNC_176D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 166.670000, -166.670000)
			arg0:setTopBottom(true, true, 94.000000, -94.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.TwitchStream0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.TwitchStream0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.TwitchStream0:setScale(1.000000)
		__FUNC_176D_(registerVal8, {})
		local function __FUNC_1991_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 166.670000, -166.670000)
			arg0:setTopBottom(true, true, 94.000000, -94.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.StartMenuframenoBG00:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.StartMenuframenoBG00:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.StartMenuframenoBG00:setScale(1.000000)
		__FUNC_1991_(registerVal9, {})
	end

	registerVal11.Windowed = __FUNC_F65_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1BD3_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.FEButtonPanel00:setLeftRight(true, true, -128.000000, 128.000000)
		registerVal2.FEButtonPanel00:setTopBottom(true, true, -22.000000, 20.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.scorestreakVignetteContainer:setLeftRight(true, true, -128.000000, 128.000000)
		registerVal2.scorestreakVignetteContainer:setTopBottom(true, true, -71.000000, 71.000000)
		registerVal2.scorestreakVignetteContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OpaqueBackground:setLeftRight(true, true, 213.330000, -213.330000)
		registerVal2.OpaqueBackground:setTopBottom(true, true, 120.000000, -120.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TwitchStream0:setLeftRight(true, true, 172.330000, -172.330000)
		registerVal2.TwitchStream0:setTopBottom(true, true, 97.000000, -97.000000)
		registerVal2.TwitchStream0:setScale(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.StartMenuframenoBG00:setLeftRight(true, true, 172.330000, -172.330000)
		registerVal2.StartMenuframenoBG00:setTopBottom(true, true, 97.000000, -97.000000)
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.StartMenuframenoBG00:setScale(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1BD3_
	local function __FUNC_2054_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_23AB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Spinner:setAlpha(1.000000)
		__FUNC_23AB_(registerVal5, {})
		local function __FUNC_255D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.OpaqueBackground:setLeftRight(true, true, 172.330000, -172.330000)
		registerVal2.OpaqueBackground:setTopBottom(true, true, 97.000000, -97.000000)
		registerVal2.OpaqueBackground:setScale(1.000000)
		__FUNC_255D_(registerVal7, {})
		local function __FUNC_2772_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.TwitchStream0:setLeftRight(true, true, 172.330000, -175.330000)
		registerVal2.TwitchStream0:setTopBottom(true, true, 97.000000, -97.000000)
		registerVal2.TwitchStream0:setScale(1.000000)
		__FUNC_2772_(registerVal8, {})
		local function __FUNC_2986_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.StartMenuframenoBG00:setLeftRight(true, true, 172.330000, -172.330000)
		registerVal2.StartMenuframenoBG00:setTopBottom(true, true, 97.000000, -97.000000)
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.StartMenuframenoBG00:setScale(1.000000)
		__FUNC_2986_(registerVal9, {})
	end

	registerVal11.DefaultState = __FUNC_2054_
	registerVal10.Windowed = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_2BB8_(arg0)
		arg0.FEButtonPanel00:close()
		arg0.scorestreakVignetteContainer:close()
		arg0.StartMenuframenoBG00:close()
		arg0.TwitchStream0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2BB8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

