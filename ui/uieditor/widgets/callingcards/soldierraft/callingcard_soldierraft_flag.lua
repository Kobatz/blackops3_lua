-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_SoldierRaft_Flag = registerVal1
function CoD.CallingCard_SoldierRaft_Flag.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCard_SoldierRaft_Flag)
	registerVal2.id = "CallingCard_SoldierRaft_Flag"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_flag2"))
	registerVal2:addElement(registerVal3)
	registerVal2.Flag2 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_flag1"))
	registerVal2:addElement(registerVal4)
	registerVal2.Flag1 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_5FF_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_762_(arg0, arg1)
			local function __FUNC_8DB_(arg0, arg1)
				local function __FUNC_A53_(arg0, arg1)
					local function __FUNC_BCB_(arg0, arg1)
						local function __FUNC_D43_(arg0, arg1)
							local function __FUNC_EBB_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_EBB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBB_)
						end

						if arg1.interrupted then
							__FUNC_D43_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D43_)
					end

					if arg1.interrupted then
						__FUNC_BCB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCB_)
				end

				if arg1.interrupted then
					__FUNC_A53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A53_)
			end

			if arg1.interrupted then
				__FUNC_8DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DB_)
		end

		registerVal3:completeAnimation()
		registerVal2.Flag2:setAlpha(0.000000)
		__FUNC_762_(registerVal3, {})
		local function __FUNC_106D_(arg0, arg1)
			local function __FUNC_11E7_(arg0, arg1)
				local function __FUNC_135F_(arg0, arg1)
					local function __FUNC_14D7_(arg0, arg1)
						local function __FUNC_164F_(arg0, arg1)
							local function __FUNC_17C7_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_17C7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C7_)
						end

						if arg1.interrupted then
							__FUNC_164F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_164F_)
					end

					if arg1.interrupted then
						__FUNC_14D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D7_)
				end

				if arg1.interrupted then
					__FUNC_135F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_135F_)
			end

			if arg1.interrupted then
				__FUNC_11E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E7_)
		end

		registerVal4:completeAnimation()
		registerVal2.Flag1:setAlpha(1.000000)
		__FUNC_106D_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_5FF_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

