-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1BF_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "FreeRun.freeRunInfo.bestTime")
	local function __FUNC_312_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		local registerVal3 = Engine.GetModelForController(arg1)
		local registerVal2 = Engine.CreateModel(registerVal3, "FreeRun.runState")
		registerVal3 = Engine.GetModelValue(registerVal2)
		if arg2 and 0.000000 < registerVal1 and registerVal3 ~= CoD.FreerunUtility.FR_STATE_PRESTART then
			SetState(arg0, "Visible")
		end
	end

	arg0:subscribeToModel(registerVal3, __FUNC_312_)
	local registerVal5 = Engine.GetModelForController(arg1)
	registerVal4 = Engine.CreateModel(registerVal5, "FreeRun.runState")
	local function __FUNC_4BD_(arg1)
		if arg1 then
			local registerVal1 = Engine.GetModelValue(arg1)
			if registerVal1 == CoD.FreerunUtility.FR_STATE_PRESTART or registerVal1 == CoD.FreerunUtility.FR_STATE_RUNNING then
				SetState(arg0, "DefaultState")
			end
		end
	end

	arg0:subscribeToModel(registerVal4, __FUNC_4BD_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FR_NewBestTime = registerVal2
local function __FUNC_609_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FR_NewBestTime)
	registerVal2.id = "FR_NewBestTime"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 205.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -51.000000, -21.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.250000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -51.000000, -21.000000)
	registerVal4:setRGB(1.000000, 0.720000, 0.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.NewBestTime = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -102.500000, 102.500000)
	registerVal5:setTopBottom(true, false, 26.000000, 46.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_COURSE_BEST_TIME_SET_CAPS"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_10BA_(arg0, arg1)
		ScaleWidgetToLabelCentered(registerVal2, arg0, 5.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_10BA_)
	registerVal2:addElement(registerVal5)
	registerVal2.NewBestTimeText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -7.000000, 29.000000)
	registerVal6:setTopBottom(false, false, -15.750000, -12.250000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -7.000000, 29.000000)
	registerVal7:setTopBottom(false, false, 13.250000, 16.750000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image1 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -29.000000, 7.000000)
	registerVal8:setTopBottom(false, false, -15.750000, -12.250000)
	registerVal8:setZRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image2 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -29.000000, 7.000000)
	registerVal9:setTopBottom(false, false, 12.250000, 15.750000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image3 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1121_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NewBestTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.NewBestTimeText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1121_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1426_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_16F8_(arg0, arg1)
			local function __FUNC_1850_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.250000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1850_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1850_)
		end

		registerVal3:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.000000)
		__FUNC_16F8_(registerVal3, {})
		local function __FUNC_1A05_(arg0, arg1)
			local function __FUNC_1B5C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1B5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B5C_)
		end

		registerVal4:completeAnimation()
		registerVal2.NewBestTime:setAlpha(0.000000)
		__FUNC_1A05_(registerVal4, {})
		local function __FUNC_1D11_(arg0, arg1)
			local function __FUNC_1E68_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1E68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E68_)
		end

		registerVal5:completeAnimation()
		registerVal2.NewBestTimeText:setAlpha(0.000000)
		__FUNC_1D11_(registerVal5, {})
		local function __FUNC_201D_(arg0, arg1)
			local function __FUNC_2174_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2174_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2174_)
		end

		registerVal6:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		__FUNC_201D_(registerVal6, {})
		local function __FUNC_2329_(arg0, arg1)
			local function __FUNC_2480_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2480_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2480_)
		end

		registerVal7:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_2329_(registerVal7, {})
		local function __FUNC_2635_(arg0, arg1)
			local function __FUNC_278C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_278C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_278C_)
		end

		registerVal8:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		__FUNC_2635_(registerVal8, {})
		local function __FUNC_2941_(arg0, arg1)
			local function __FUNC_2A98_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2A98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A98_)
		end

		registerVal9:completeAnimation()
		registerVal2.Image3:setAlpha(0.000000)
		__FUNC_2941_(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1426_
	local function __FUNC_2C4D_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2F25_(arg0, arg1)
			local function __FUNC_309F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_309F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_309F_)
		end

		registerVal3:completeAnimation()
		registerVal2.BlackBox:setAlpha(0.250000)
		__FUNC_2F25_(registerVal3, {})
		local function __FUNC_3251_(arg0, arg1)
			local function __FUNC_33CB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_33CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33CB_)
		end

		registerVal4:completeAnimation()
		registerVal2.NewBestTime:setAlpha(1.000000)
		__FUNC_3251_(registerVal4, {})
		local function __FUNC_357D_(arg0, arg1)
			local function __FUNC_36F7_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_36F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36F7_)
		end

		registerVal5:completeAnimation()
		registerVal2.NewBestTimeText:setAlpha(1.000000)
		__FUNC_357D_(registerVal5, {})
		local function __FUNC_38A9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		__FUNC_38A9_(registerVal6, {})
		local function __FUNC_3A5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		__FUNC_3A5D_(registerVal7, {})
		local function __FUNC_3C11_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Image2:setAlpha(1.000000)
		__FUNC_3C11_(registerVal8, {})
		local function __FUNC_3DC5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.Image3:setAlpha(1.000000)
		__FUNC_3DC5_(registerVal9, {})
	end

	registerVal11.DefaultState = __FUNC_2C4D_
	registerVal10.Visible = registerVal11
	registerVal2.clipsPerState = registerVal10
	if __FUNC_1BF_ then
		__FUNC_1BF_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FR_NewBestTime.new = __FUNC_609_
