-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_MedievalCapeWidget = registerVal1
function CoD.CallingCards_MedievalCapeWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_MedievalCapeWidget)
	registerVal2.id = "CallingCards_MedievalCapeWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 284.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 95.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 284.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 94.670000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_cape5"))
	registerVal2:addElement(registerVal3)
	registerVal2.Cape5 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 284.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 94.670000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_cape4"))
	registerVal2:addElement(registerVal4)
	registerVal2.Cape4 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 284.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 94.670000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_cape3"))
	registerVal2:addElement(registerVal5)
	registerVal2.Cape3 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 284.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 94.670000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_cape2"))
	registerVal2:addElement(registerVal6)
	registerVal2.Cape2 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 284.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 94.670000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_mp_career_medieval_cape"))
	registerVal2:addElement(registerVal7)
	registerVal2.Cape = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_86E_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_BC4_(arg0, arg1)
			local function __FUNC_D3F_(arg0, arg1)
				local function __FUNC_E94_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_E94_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E94_)
			end

			if arg1.interrupted then
				__FUNC_D3F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D3F_)
		end

		registerVal3:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_BC4_)
		local function __FUNC_1049_(arg0, arg1)
			local function __FUNC_11C3_(arg0, arg1)
				local function __FUNC_1318_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1318_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1318_)
			end

			if arg1.interrupted then
				__FUNC_11C3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C3_)
		end

		registerVal4:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_1049_)
		local function __FUNC_14CD_(arg0, arg1)
			local function __FUNC_1647_(arg0, arg1)
				local function __FUNC_179C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_179C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_179C_)
			end

			if arg1.interrupted then
				__FUNC_1647_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1647_)
		end

		registerVal5:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_14CD_)
		local function __FUNC_1951_(arg0, arg1)
			local function __FUNC_1ACB_(arg0, arg1)
				local function __FUNC_1C20_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1C20_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C20_)
			end

			if arg1.interrupted then
				__FUNC_1ACB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ACB_)
		end

		registerVal6:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_1951_)
		local function __FUNC_1DD5_(arg0, arg1)
			local function __FUNC_1F2C_(arg0, arg1)
				local function __FUNC_2084_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2084_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2084_)
			end

			if arg1.interrupted then
				__FUNC_1F2C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F2C_)
		end

		registerVal7:completeAnimation()
		registerVal2.Cape:setAlpha(1.000000)
		__FUNC_1DD5_(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_86E_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

