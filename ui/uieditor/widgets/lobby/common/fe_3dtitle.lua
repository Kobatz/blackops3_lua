-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleLine")
require("ui.uieditor.widgets.Lobby.Common.FE_3dTitleNumber")
require("ui.uieditor.widgets.Lobby.Common.FE_3dTitleInternal")
require("ui.uieditor.widgets.Lobby.Common.FE_3dTitleHardcoreKicker")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_3dTitle = registerVal1
function CoD.FE_3dTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_3dTitle)
	registerVal2.id = "FE_3dTitle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 449.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 51.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 1.000000, 0.000000)
	registerVal3:setTopBottom(false, false, 23.000000, 27.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETitleLineL = registerVal3
	local registerVal4 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 1.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -25.000000, -21.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETitleLineU = registerVal4
	local registerVal5 = CoD.FE_3dTitleNumber.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 376.000000)
	registerVal5:setTopBottom(true, false, 51.000000, 80.000000)
	registerVal5.FELabelSubHeadingA0.Label0:setRGB(0.580000, 0.640000, 0.650000)
	registerVal5.FELabelSubHeadingA0.Label0:setTTF("fonts/default.ttf")
	local function __FUNC_B99_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setAlpha(HideIfEmptyString(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "LobbyRoot", "onlinePlayerCount", __FUNC_B99_)
	local function __FUNC_C50_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.FELabelSubHeadingA0.Label0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "LobbyRoot", "onlinePlayerCount", __FUNC_C50_)
	registerVal2:addElement(registerVal5)
	registerVal2.MPMainSubHeadingContainer0 = registerVal5
	local registerVal6 = CoD.FE_3dTitleInternal.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -7.380000, 603.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 51.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal6.Label0:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal2:addElement(registerVal6)
	registerVal2.TextBox1 = registerVal6
	local registerVal7 = CoD.FE_3dTitleHardcoreKicker.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 9.200000, 125.700000)
	registerVal7:setTopBottom(true, false, -13.000000, 3.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FE3dTitleHardcoreKicker0 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_D4F_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.FETitleLineL:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETitleLineU:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MPMainSubHeadingContainer0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TextBox1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TextBox1:setAlpha(0.950000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_D4F_
	local function __FUNC_FB9_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_11FF_(arg0, arg1)
			local function __FUNC_1354_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1354_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 959.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1354_)
		end

		registerVal3:completeAnimation()
		registerVal2.FETitleLineL:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_11FF_(registerVal3, {})
		local function __FUNC_150F_(arg0, arg1)
			local function __FUNC_1664_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1664_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1664_)
		end

		registerVal4:completeAnimation()
		registerVal2.FETitleLineU:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_150F_(registerVal4, {})
		local function __FUNC_181F_(arg0, arg1)
			local function __FUNC_1974_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1974_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1974_)
		end

		registerVal5:completeAnimation()
		registerVal2.MPMainSubHeadingContainer0:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_181F_(registerVal5, {})
		local function __FUNC_1B2F_(arg0, arg1)
			local function __FUNC_1C84_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setAlpha(0.950000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1C84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C84_)
		end

		registerVal6:completeAnimation()
		registerVal2.TextBox1:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.TextBox1:setAlpha(0.950000)
		__FUNC_1B2F_(registerVal6, {})
	end

	registerVal9.Intro = __FUNC_FB9_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_1E62_(arg0)
		arg0.FETitleLineL:close()
		arg0.FETitleLineU:close()
		arg0.MPMainSubHeadingContainer0:close()
		arg0.TextBox1:close()
		arg0.FE3dTitleHardcoreKicker0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1E62_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

