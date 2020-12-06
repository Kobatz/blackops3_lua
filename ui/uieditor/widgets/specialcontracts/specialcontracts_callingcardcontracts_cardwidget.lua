-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
require("ui.uieditor.widgets.BlackMarket.BM_Contracts_ActiveArrow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialContracts_CallingCardContracts_CardWidget = registerVal1
function CoD.SpecialContracts_CallingCardContracts_CardWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialContracts_CallingCardContracts_CardWidget)
	registerVal2.id = "SpecialContracts_CallingCardContracts_CardWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 84.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -4.000000, 244.000000)
	registerVal3:setTopBottom(true, false, -4.000000, 87.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_cc_frame"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.181452, 0.494506, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(45.000000, 45.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.frame = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 4.000000, 236.000000)
	registerVal4:setTopBottom(true, false, 63.000000, 82.000000)
	registerVal4:setAlpha(0.850000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_155A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "name", true, __FUNC_155A_)
	registerVal2:addElement(registerVal4)
	registerVal2.text = registerVal4
	local registerVal5 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -120.000000, 360.000000)
	registerVal5:setTopBottom(true, false, -30.000000, 90.000000)
	registerVal5.CardIconFrame:setScale(0.500000)
	local function __FUNC_1612_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_1612_)
	registerVal2:addElement(registerVal5)
	registerVal2.CardIcon = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -1.000000, 241.000000)
	registerVal6:setTopBottom(true, false, 30.000000, 33.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.black = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 104.000000, 136.000000)
	registerVal7:setTopBottom(true, false, 15.720000, 47.720000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_contract_callingcard_lock"))
	registerVal2:addElement(registerVal7)
	registerVal2.Lock = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -11.000000, 11.160000)
	registerVal8:setTopBottom(true, true, -17.000000, 10.000000)
	registerVal8:setImage(RegisterImage("uie_t7_blackmarket_contracts_cc_frame_hover"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal8:setShaderVector(0.000000, 0.183097, 0.432432, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(48.000000, 48.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.NineSliceShaderHover = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -126.130000, 122.130000)
	registerVal9:setTopBottom(true, false, -23.770000, 23.280000)
	registerVal9:setImage(RegisterImage("uie_t7_bm_contracts_hover_upperglow"))
	registerVal2:addElement(registerVal9)
	registerVal2.upperglow = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -100.000000, 84.000000)
	registerVal10:setTopBottom(false, true, 0.000000, 40.000000)
	registerVal10:setImage(RegisterImage("uie_t7_bm_contracts_hover_lowerglow"))
	registerVal2:addElement(registerVal10)
	registerVal2.lowerglow = registerVal10
	local registerVal11 = CoD.BM_Contracts_ActiveArrow.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, -7.130000, 67.500000)
	registerVal11:setTopBottom(true, false, -4.000000, 24.000000)
	registerVal11.left:setImage(RegisterImage("uie_t7_bm_contracts_active_ribbon_left"))
	registerVal11.center:setImage(RegisterImage("uie_t7_bm_contracts_active_ribbon_center"))
	registerVal11.right:setImage(RegisterImage("uie_t7_bm_contracts_active_ribbon_right"))
	registerVal11.Text:setText(Engine.Localize("MPUI_ACTIVE_CAPS"))
	registerVal2:addElement(registerVal11)
	registerVal2.ActiveArrow = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -0.920000, 241.080000)
	registerVal12:setTopBottom(true, false, 30.720000, 33.720000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.black0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 104.080000, 136.080000)
	registerVal13:setTopBottom(true, false, 16.440000, 48.440000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_blackmarket_contract_callingcard_lock"))
	registerVal2:addElement(registerVal13)
	registerVal2.Lock0 = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1662_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.CardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.NineSliceShaderHover:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ActiveArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.DefaultClip = __FUNC_1662_
	local function __FUNC_18CE_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.CardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1B7A_(arg0, arg1)
			local function __FUNC_1CF3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1CF3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CF3_)
		end

		registerVal8:completeAnimation()
		registerVal2.NineSliceShaderHover:setAlpha(1.000000)
		__FUNC_1B7A_(registerVal8, {})
		local function __FUNC_1EA5_(arg0, arg1)
			local function __FUNC_201F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_201F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_201F_)
		end

		registerVal9:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_1EA5_(registerVal9, {})
		local function __FUNC_21D1_(arg0, arg1)
			local function __FUNC_234B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_234B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_234B_)
		end

		registerVal10:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_21D1_(registerVal10, {})
	end

	registerVal15.Focus = __FUNC_18CE_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_24FD_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal5:completeAnimation()
		registerVal2.CardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NineSliceShaderHover:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ActiveArrow:setLeftRight(true, false, -6.130000, 68.500000)
		registerVal2.ActiveArrow:setTopBottom(true, false, -5.000000, 23.000000)
		registerVal2.ActiveArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.black0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Lock0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_24FD_
	local function __FUNC_2946_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.CardIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2BA6_(arg0, arg1)
			local function __FUNC_2D1F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2D1F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D1F_)
		end

		registerVal8:completeAnimation()
		registerVal2.NineSliceShaderHover:setAlpha(1.000000)
		__FUNC_2BA6_(registerVal8, {})
		local function __FUNC_2ED1_(arg0, arg1)
			local function __FUNC_304B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_304B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_304B_)
		end

		registerVal9:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_2ED1_(registerVal9, {})
		local function __FUNC_31FD_(arg0, arg1)
			local function __FUNC_3377_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3377_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3377_)
		end

		registerVal10:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_31FD_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ActiveArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.Focus = __FUNC_2946_
	registerVal14.Complete = registerVal15
	registerVal15 = {}
	local function __FUNC_3529_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal5:completeAnimation()
		registerVal2.CardIcon:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.NineSliceShaderHover:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ActiveArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.black0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Lock0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_3529_
	local function __FUNC_38E7_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal5:completeAnimation()
		registerVal2.CardIcon:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_3B94_(arg0, arg1)
			local function __FUNC_3D0F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3D0F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D0F_)
		end

		registerVal8:completeAnimation()
		registerVal2.NineSliceShaderHover:setAlpha(1.000000)
		__FUNC_3B94_(registerVal8, {})
		local function __FUNC_3EC1_(arg0, arg1)
			local function __FUNC_403B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_403B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_403B_)
		end

		registerVal9:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_3EC1_(registerVal9, {})
		local function __FUNC_41ED_(arg0, arg1)
			local function __FUNC_4367_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4367_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4367_)
		end

		registerVal10:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_41ED_(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.black0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Lock0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_38E7_
	registerVal14.Active = registerVal15
	registerVal15 = {}
	local function __FUNC_4519_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.CardIcon:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal8:completeAnimation()
		registerVal2.NineSliceShaderHover:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.upperglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lowerglow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ActiveArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.black0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Lock0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_4519_
	local function __FUNC_4832_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal5:completeAnimation()
		registerVal2.CardIcon:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lock:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_4BE3_(arg0, arg1)
			local function __FUNC_4D5B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4D5B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D5B_)
		end

		registerVal8:completeAnimation()
		registerVal2.NineSliceShaderHover:setAlpha(1.000000)
		__FUNC_4BE3_(registerVal8, {})
		local function __FUNC_4F0D_(arg0, arg1)
			local function __FUNC_5087_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5087_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5087_)
		end

		registerVal9:completeAnimation()
		registerVal2.upperglow:setAlpha(1.000000)
		__FUNC_4F0D_(registerVal9, {})
		local function __FUNC_5239_(arg0, arg1)
			local function __FUNC_53B3_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_53B3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 740.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.480000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53B3_)
		end

		registerVal10:completeAnimation()
		registerVal2.lowerglow:setAlpha(1.000000)
		__FUNC_5239_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.ActiveArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.black0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Lock0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_4832_
	registerVal14.Locked = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Complete"
	local function __FUNC_5565_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isComplete")
	end

	registerVal17.condition = __FUNC_5565_
	local registerVal18 = {}
	registerVal18.stateName = "Active"
	local function __FUNC_55DA_(arg0, arg2, arg3)
		return IsSpecialContractActive(registerVal2, arg2, arg1)
	end

	registerVal18.condition = __FUNC_55DA_
	local registerVal19 = {}
	registerVal19.stateName = "Locked"
	local function __FUNC_563D_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isComplete")
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_563D_
	registerVal16 = {registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_56B6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isComplete"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isComplete", true, __FUNC_56B6_)
	local function __FUNC_57D4_(arg0)
		arg0.CardIcon:close()
		arg0.ActiveArrow:close()
		arg0.text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_57D4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

