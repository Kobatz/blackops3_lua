-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.TeamIconAndNameWidgetElemSide")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.LoadingAnimation.LoadingScreenHeaderFooter")
local function __FUNC_281_(arg0, arg1)
	local function __FUNC_3D7_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.LoadingScreenHeaderFooter.LoadingBar:setShaderVector(0.000000, registerVal1, 0.000000, 0.000000, 0.000000)
		end
	end

	arg0.LoadingScreenHeaderFooter.LoadingBar:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "loadedFraction", __FUNC_3D7_)
	local function __FUNC_4D4_(arg0)
		arg0.LoadingScreenHeaderFooter.LoadingBar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_4D4_)
end

local function __FUNC_566_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LoadingScreenOverlayForFreeRun")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "none"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LoadingScreenOverlayForFreeRun.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage(MapNameToMapLoadingImage(GetCurrentMapID("uie_img_t7_menu_mp_loadscreen_sector"))))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_expensive_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.backgroundImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -651.000000, 651.000000)
	registerVal4:setTopBottom(false, false, -376.000000, 372.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.Fade = registerVal4
	local registerVal5 = CoD.TeamIconAndNameWidgetElemSide.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -66.100000, -37.100000)
	registerVal5:setTopBottom(true, false, 674.000000, 700.000000)
	registerVal5:setYRot(-180.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.LoadingElem2 = registerVal5
	local registerVal6 = CoD.TeamIconAndNameWidgetElemSide.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, true, -1240.100000, -1211.100000)
	registerVal6:setTopBottom(true, false, 674.500000, 701.500000)
	registerVal1:addElement(registerVal6)
	registerVal1.LoadingElem1 = registerVal6
	local registerVal7 = CoD.FE_TitleNumBrdr.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 64.000000, 232.000000)
	registerVal7:setTopBottom(false, false, 308.000000, 332.000000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.LoadingStatusBox = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 64.000000, 231.000000)
	registerVal8:setTopBottom(false, false, 311.000000, 327.000000)
	registerVal8:setRGB(0.520000, 0.580000, 0.600000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setLetterSpacing(0.500000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_120E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "LoadingScreenTeamInfo", "statusText", __FUNC_120E_)
	registerVal1:addElement(registerVal8)
	registerVal1.LoadingStatus = registerVal8
	local registerVal9 = CoD.LoadingScreenHeaderFooter.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 720.000000)
	local function __FUNC_12C6_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		local registerVal5 = {}
		registerVal5.elementName = "LoadingScreenHeaderFooter"
		registerVal5.clipName = "StartLoading"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("menu_loaded", __FUNC_12C6_)
	registerVal1:addElement(registerVal9)
	registerVal1.LoadingScreenHeaderFooter = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_13F0_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_13F0_
	local function __FUNC_1452_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_1783_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal1.Fade:setAlpha(1.000000)
		__FUNC_1783_(registerVal4, {})
		local function __FUNC_1935_(arg0, arg1)
			local function __FUNC_1A8C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1A8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2210.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A8C_)
		end

		registerVal5:completeAnimation()
		registerVal1.LoadingElem2:setAlpha(0.000000)
		__FUNC_1935_(registerVal5, {})
		local function __FUNC_1C41_(arg0, arg1)
			local function __FUNC_1D98_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 130.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1D98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D98_)
		end

		registerVal6:completeAnimation()
		registerVal1.LoadingElem1:setAlpha(0.000000)
		__FUNC_1C41_(registerVal6, {})
		local function __FUNC_1F4D_(arg0, arg1)
			local function __FUNC_20A4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 64.000000, 232.000000)
				arg0:setTopBottom(false, false, 308.000000, 332.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_20A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1919.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20A4_)
		end

		registerVal7:completeAnimation()
		registerVal1.LoadingStatusBox:setLeftRight(true, false, 64.000000, 232.000000)
		registerVal1.LoadingStatusBox:setTopBottom(false, false, 347.000000, 371.000000)
		registerVal1.LoadingStatusBox:setAlpha(0.000000)
		__FUNC_1F4D_(registerVal7, {})
		local function __FUNC_22C9_(arg0, arg1)
			local function __FUNC_2420_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 220.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 64.000000, 232.000000)
				arg0:setTopBottom(false, false, 310.000000, 329.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2420_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2420_)
		end

		registerVal8:completeAnimation()
		registerVal1.LoadingStatus:setLeftRight(true, false, 64.000000, 231.000000)
		registerVal1.LoadingStatus:setTopBottom(false, false, 351.000000, 369.000000)
		registerVal1.LoadingStatus:setAlpha(0.000000)
		__FUNC_22C9_(registerVal8, {})
	end

	registerVal11.StartLoading = __FUNC_1452_
	registerVal10.DefaultState = registerVal11
	registerVal1.clipsPerState = registerVal10
	local registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	local function __FUNC_2645_(arg1)
		arg1.LoadingElem2:close()
		arg1.LoadingElem1:close()
		arg1.LoadingStatusBox:close()
		arg1.LoadingScreenHeaderFooter:close()
		arg1.LoadingStatus:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LoadingScreenOverlayForFreeRun.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2645_)
	if __FUNC_281_ then
		__FUNC_281_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LoadingScreenOverlayForFreeRun = __FUNC_566_
