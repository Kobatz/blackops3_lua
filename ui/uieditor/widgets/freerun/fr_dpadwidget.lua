-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.freerun_DpadBoxBlur")
require("ui.uieditor.widgets.buttonprompt_small")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_DpadWidget = registerVal1
function CoD.FR_DpadWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FR_DpadWidget)
	registerVal2.id = "FR_DpadWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 287.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 121.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.freerun_DpadBoxBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 287.000000)
	registerVal3:setTopBottom(true, false, 32.530000, 115.000000)
	registerVal3:setRGB(0.770000, 0.770000, 0.770000)
	registerVal2:addElement(registerVal3)
	registerVal2.freerunDpadBoxBlur = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 14.370000, 227.130000)
	registerVal4:setTopBottom(true, false, 81.240000, 111.910000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.200000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal4:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal4)
	registerVal2.Box1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 14.370000, 227.130000)
	registerVal5:setTopBottom(true, false, 49.240000, 79.910000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.200000)
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal5:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal5)
	registerVal2.Box2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 46.580000, -121.000000)
	registerVal6:setTopBottom(true, true, 41.740000, -43.670000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_besttimebottom"))
	registerVal2:addElement(registerVal6)
	registerVal2.ChangeCourseBox = registerVal6
	local registerVal7 = CoD.buttonprompt_small.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 28.000000, 242.000000)
	registerVal7:setTopBottom(true, false, 45.240000, 76.240000)
	registerVal7:setAlpha(0.000000)
	registerVal7.label:setText(Engine.Localize("CHANGE COURSE"))
	local function __FUNC_1927_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "dpad_lr_button_image", __FUNC_1927_)
	registerVal2:addElement(registerVal7)
	registerVal2.ChangeTrackButtonPrompt = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 10.500000, -56.000000)
	registerVal8:setTopBottom(true, true, 105.570000, -3.670000)
	registerVal8:setAlpha(0.300000)
	registerVal8:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_line"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.DpadBoxLineBottom = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 10.500000, -56.000000)
	registerVal9:setTopBottom(true, true, 42.650000, -66.590000)
	registerVal9:setAlpha(0.300000)
	registerVal9:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_line"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.DpadBoxLineTop = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -14.080000, 21.920000)
	registerVal10:setTopBottom(false, false, -13.720000, -10.000000)
	registerVal10:setZRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.SideElement2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -14.080000, 21.920000)
	registerVal11:setTopBottom(false, false, 49.090000, 52.810000)
	registerVal11:setZRot(180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.SideElement1 = registerVal11
	local registerVal12 = CoD.buttonprompt_small.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 28.000000, 242.000000)
	registerVal12:setTopBottom(true, false, 49.380000, 80.380000)
	registerVal12.label:setText(Engine.Localize("MENU_FR_RESTART_COURSE"))
	local function __FUNC_19FF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "Controller", "dpad_up_button_image", __FUNC_19FF_)
	registerVal2:addElement(registerVal12)
	registerVal2.RestartTrackButtonPrompt = registerVal12
	local registerVal13 = CoD.buttonprompt_small.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 28.000000, 271.000000)
	registerVal13:setTopBottom(true, false, 81.240000, 112.240000)
	registerVal13.label:setText(Engine.Localize("MENU_FR_RESPAWN_AT_CHECKPOINT"))
	local function __FUNC_1AD7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "Controller", "dpad_down_button_image", __FUNC_1AD7_)
	registerVal2:addElement(registerVal13)
	registerVal2.RespawnButtonPrompt = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 217.920000, 253.920000)
	registerVal14:setTopBottom(false, false, -13.720000, -10.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image1 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 217.920000, 253.920000)
	registerVal15:setTopBottom(false, false, 50.090000, 53.810000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image2 = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(true, false, 28.000000, 350.000000)
	registerVal16:setTopBottom(true, false, 88.570000, 104.570000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setText(Engine.Localize("PLATFORM_FR_RESPAWN_AT_CHECKPOINT"))
	registerVal16:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal16)
	registerVal2.RestartTrackButtonPromptPC = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 28.000000, 350.000000)
	registerVal17:setTopBottom(true, false, 56.570000, 72.570000)
	registerVal17:setAlpha(0.000000)
	registerVal17:setText(Engine.Localize("PLATFORM_FR_RESTART_COURSE"))
	registerVal17:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal17)
	registerVal2.RespawnButtonPromptPC = registerVal17
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_1BAF_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal12:completeAnimation()
		registerVal2.RestartTrackButtonPrompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.RespawnButtonPrompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.RestartTrackButtonPromptPC:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.RespawnButtonPromptPC:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1BAF_
	local function __FUNC_1DED_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_245E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 287.000000)
			arg0:setTopBottom(true, false, 0.760000, 120.760000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setLeftRight(true, false, 0.000000, 287.000000)
		registerVal3:setTopBottom(true, false, 0.760000, 120.760000)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_245E_)
		local function __FUNC_2681_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_2681_)
		local function __FUNC_2835_(arg0, arg1)
			local function __FUNC_298C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_298C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_298C_)
		end

		registerVal7:completeAnimation()
		registerVal2.ChangeTrackButtonPrompt:setAlpha(0.000000)
		__FUNC_2835_(registerVal7, {})
		local function __FUNC_2B41_(arg0, arg1)
			local function __FUNC_2CBB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 10.500000, -60.000000)
				arg0:setTopBottom(true, true, 109.000000, -0.240000)
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2CBB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CBB_)
		end

		registerVal8:completeAnimation()
		registerVal2.DpadBoxLineBottom:setLeftRight(true, true, 10.500000, -60.000000)
		registerVal2.DpadBoxLineBottom:setTopBottom(true, true, 109.000000, -0.240000)
		registerVal2.DpadBoxLineBottom:setAlpha(0.000000)
		__FUNC_2B41_(registerVal8, {})
		local function __FUNC_2EDD_(arg0, arg1)
			local function __FUNC_3057_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 10.500000, -60.000000)
				arg0:setTopBottom(true, true, 0.000000, -109.240000)
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3057_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3057_)
		end

		registerVal9:completeAnimation()
		registerVal2.DpadBoxLineTop:setLeftRight(true, true, 10.500000, -60.000000)
		registerVal2.DpadBoxLineTop:setTopBottom(true, true, 107.140000, -2.100000)
		registerVal2.DpadBoxLineTop:setAlpha(0.000000)
		__FUNC_2EDD_(registerVal9, {})
		local function __FUNC_3279_(arg0, arg1)
			local function __FUNC_33F3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 214.920000, 250.920000)
				arg0:setTopBottom(false, false, -55.370000, -51.650000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_33F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33F3_)
		end

		registerVal10:completeAnimation()
		registerVal2.SideElement2:setLeftRight(true, false, 214.920000, 250.920000)
		registerVal2.SideElement2:setTopBottom(false, false, 51.770000, 55.490000)
		registerVal2.SideElement2:setAlpha(0.000000)
		__FUNC_3279_(registerVal10, {})
		local function __FUNC_3615_(arg0, arg1)
			local function __FUNC_378F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 214.920000, 250.920000)
				arg0:setTopBottom(false, false, 52.520000, 56.240000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_378F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_378F_)
		end

		registerVal11:completeAnimation()
		registerVal2.SideElement1:setLeftRight(true, false, 214.920000, 250.920000)
		registerVal2.SideElement1:setTopBottom(false, false, 52.520000, 56.240000)
		registerVal2.SideElement1:setAlpha(0.000000)
		__FUNC_3615_(registerVal11, {})
		local function __FUNC_39B1_(arg0, arg1)
			local function __FUNC_3B08_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3B08_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B08_)
		end

		registerVal12:completeAnimation()
		registerVal2.RestartTrackButtonPrompt:setAlpha(0.000000)
		__FUNC_39B1_(registerVal12, {})
		local function __FUNC_3CBD_(arg0, arg1)
			local function __FUNC_3E14_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3E14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E14_)
		end

		registerVal13:completeAnimation()
		registerVal2.RespawnButtonPrompt:setAlpha(0.000000)
		__FUNC_3CBD_(registerVal13, {})
	end

	registerVal19.Intro = __FUNC_1DED_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_3FC9_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.freerunDpadBoxBlur:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.ChangeCourseBox:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ChangeTrackButtonPrompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DpadBoxLineBottom:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.DpadBoxLineTop:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.SideElement2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.SideElement1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.RestartTrackButtonPrompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.RespawnButtonPrompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.RestartTrackButtonPromptPC:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.RespawnButtonPromptPC:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_3FC9_
	local function __FUNC_449F_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_4B0E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 287.000000)
			arg0:setTopBottom(true, false, 0.760000, 120.760000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setLeftRight(true, false, 0.000000, 287.000000)
		registerVal3:setTopBottom(true, false, 0.760000, 120.760000)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_4B0E_)
		local function __FUNC_4D31_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_4D31_)
		local function __FUNC_4EE5_(arg0, arg1)
			local function __FUNC_503C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_503C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_503C_)
		end

		registerVal7:completeAnimation()
		registerVal2.ChangeTrackButtonPrompt:setAlpha(0.000000)
		__FUNC_4EE5_(registerVal7, {})
		local function __FUNC_51F1_(arg0, arg1)
			local function __FUNC_536B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 10.500000, -60.000000)
				arg0:setTopBottom(true, true, 109.000000, -0.240000)
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_536B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_536B_)
		end

		registerVal8:completeAnimation()
		registerVal2.DpadBoxLineBottom:setLeftRight(true, true, 10.500000, -60.000000)
		registerVal2.DpadBoxLineBottom:setTopBottom(true, true, 109.000000, -0.240000)
		registerVal2.DpadBoxLineBottom:setAlpha(0.000000)
		__FUNC_51F1_(registerVal8, {})
		local function __FUNC_558D_(arg0, arg1)
			local function __FUNC_5707_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 10.500000, -60.000000)
				arg0:setTopBottom(true, true, 0.000000, -109.240000)
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5707_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5707_)
		end

		registerVal9:completeAnimation()
		registerVal2.DpadBoxLineTop:setLeftRight(true, true, 10.500000, -60.000000)
		registerVal2.DpadBoxLineTop:setTopBottom(true, true, 107.140000, -2.100000)
		registerVal2.DpadBoxLineTop:setAlpha(0.000000)
		__FUNC_558D_(registerVal9, {})
		local function __FUNC_5929_(arg0, arg1)
			local function __FUNC_5AA3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 214.920000, 250.920000)
				arg0:setTopBottom(false, false, -55.370000, -51.650000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5AA3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AA3_)
		end

		registerVal10:completeAnimation()
		registerVal2.SideElement2:setLeftRight(true, false, 214.920000, 250.920000)
		registerVal2.SideElement2:setTopBottom(false, false, 51.770000, 55.490000)
		registerVal2.SideElement2:setAlpha(0.000000)
		__FUNC_5929_(registerVal10, {})
		local function __FUNC_5CC5_(arg0, arg1)
			local function __FUNC_5E3F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 214.920000, 250.920000)
				arg0:setTopBottom(false, false, 52.520000, 56.240000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5E3F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E3F_)
		end

		registerVal11:completeAnimation()
		registerVal2.SideElement1:setLeftRight(true, false, 214.920000, 250.920000)
		registerVal2.SideElement1:setTopBottom(false, false, 52.520000, 56.240000)
		registerVal2.SideElement1:setAlpha(0.000000)
		__FUNC_5CC5_(registerVal11, {})
		local function __FUNC_6061_(arg0, arg1)
			local function __FUNC_61B8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_61B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61B8_)
		end

		registerVal12:completeAnimation()
		registerVal2.RestartTrackButtonPrompt:setAlpha(0.000000)
		__FUNC_6061_(registerVal12, {})
		local function __FUNC_636D_(arg0, arg1)
			local function __FUNC_64C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_64C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64C4_)
		end

		registerVal13:completeAnimation()
		registerVal2.RespawnButtonPrompt:setAlpha(0.000000)
		__FUNC_636D_(registerVal13, {})
	end

	registerVal19.DefaultState = __FUNC_449F_
	registerVal18.Intro = registerVal19
	registerVal19 = {}
	local function __FUNC_6679_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal12:completeAnimation()
		registerVal2.RestartTrackButtonPrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.RespawnButtonPrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal2.RestartTrackButtonPromptPC:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.RespawnButtonPromptPC:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_6679_
	local function __FUNC_68B9_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_6F2A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 287.000000)
			arg0:setTopBottom(true, false, 0.760000, 120.760000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setLeftRight(true, false, 0.000000, 287.000000)
		registerVal3:setTopBottom(true, false, 0.760000, 120.760000)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_6F2A_)
		local function __FUNC_714D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_714D_)
		local function __FUNC_7301_(arg0, arg1)
			local function __FUNC_7458_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7458_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7458_)
		end

		registerVal7:completeAnimation()
		registerVal2.ChangeTrackButtonPrompt:setAlpha(0.000000)
		__FUNC_7301_(registerVal7, {})
		local function __FUNC_760D_(arg0, arg1)
			local function __FUNC_7787_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 10.500000, -60.000000)
				arg0:setTopBottom(true, true, 109.000000, -0.240000)
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7787_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7787_)
		end

		registerVal8:completeAnimation()
		registerVal2.DpadBoxLineBottom:setLeftRight(true, true, 10.500000, -60.000000)
		registerVal2.DpadBoxLineBottom:setTopBottom(true, true, 109.000000, -0.240000)
		registerVal2.DpadBoxLineBottom:setAlpha(0.000000)
		__FUNC_760D_(registerVal8, {})
		local function __FUNC_79A9_(arg0, arg1)
			local function __FUNC_7B23_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, 10.500000, -60.000000)
				arg0:setTopBottom(true, true, 0.000000, -109.240000)
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7B23_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B23_)
		end

		registerVal9:completeAnimation()
		registerVal2.DpadBoxLineTop:setLeftRight(true, true, 10.500000, -60.000000)
		registerVal2.DpadBoxLineTop:setTopBottom(true, true, 107.140000, -2.100000)
		registerVal2.DpadBoxLineTop:setAlpha(0.000000)
		__FUNC_79A9_(registerVal9, {})
		local function __FUNC_7D45_(arg0, arg1)
			local function __FUNC_7EBF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 214.920000, 250.920000)
				arg0:setTopBottom(false, false, -55.370000, -51.650000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7EBF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EBF_)
		end

		registerVal10:completeAnimation()
		registerVal2.SideElement2:setLeftRight(true, false, 214.920000, 250.920000)
		registerVal2.SideElement2:setTopBottom(false, false, 51.770000, 55.490000)
		registerVal2.SideElement2:setAlpha(0.000000)
		__FUNC_7D45_(registerVal10, {})
		local function __FUNC_80E1_(arg0, arg1)
			local function __FUNC_825B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 214.920000, 250.920000)
				arg0:setTopBottom(false, false, 52.520000, 56.240000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_825B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_825B_)
		end

		registerVal11:completeAnimation()
		registerVal2.SideElement1:setLeftRight(true, false, 214.920000, 250.920000)
		registerVal2.SideElement1:setTopBottom(false, false, 52.520000, 56.240000)
		registerVal2.SideElement1:setAlpha(0.000000)
		__FUNC_80E1_(registerVal11, {})
		local function __FUNC_847D_(arg0, arg1)
			local function __FUNC_85D4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_85D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85D4_)
		end

		registerVal12:completeAnimation()
		registerVal2.RestartTrackButtonPrompt:setAlpha(0.000000)
		__FUNC_847D_(registerVal12, {})
		local function __FUNC_8789_(arg0, arg1)
			local function __FUNC_88E0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_88E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88E0_)
		end

		registerVal13:completeAnimation()
		registerVal2.RespawnButtonPrompt:setAlpha(0.000000)
		__FUNC_8789_(registerVal13, {})
	end

	registerVal19.Intro = __FUNC_68B9_
	registerVal18.DefaultState_PC = registerVal19
	registerVal2.clipsPerState = registerVal18
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Intro"
	local function __FUNC_8A95_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_8A95_
	local registerVal22 = {}
	registerVal22.stateName = "DefaultState_PC"
	local function __FUNC_8AE1_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal22.condition = __FUNC_8AE1_
	registerVal20 = {registerVal21, registerVal22}
	registerVal2:mergeStateConditions(registerVal20)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_8B33_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_8B33_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "LastInput")
	local function __FUNC_8BBB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_8BBB_)
	local function __FUNC_8CD7_(arg0)
		arg0.freerunDpadBoxBlur:close()
		arg0.ChangeTrackButtonPrompt:close()
		arg0.RestartTrackButtonPrompt:close()
		arg0.RespawnButtonPrompt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8CD7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

