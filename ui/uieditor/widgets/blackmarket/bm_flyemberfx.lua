-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_FlyEmberFX = registerVal1
function CoD.BM_FlyEmberFX.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_FlyEmberFX)
	registerVal2.id = "BM_FlyEmberFX"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_fyingember1"))
	registerVal2:addElement(registerVal3)
	registerVal2.FlyingEmber1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal4:setTopBottom(true, false, -2.000000, 58.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_fyingember2"))
	registerVal2:addElement(registerVal4)
	registerVal2.FlyingEmber2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -1.000000, 71.000000)
	registerVal5:setTopBottom(true, false, -13.000000, 59.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_fyingember3"))
	registerVal2:addElement(registerVal5)
	registerVal2.FlyingEmber3 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 15.000000, 111.000000)
	registerVal6:setTopBottom(true, false, -56.000000, 52.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_fyingember4"))
	registerVal2:addElement(registerVal6)
	registerVal2.FlyingEmber4 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 33.000000, 189.000000)
	registerVal7:setTopBottom(true, false, -152.000000, 40.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_fyingember5"))
	registerVal2:addElement(registerVal7)
	registerVal2.FlyingEmber5 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_826_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_BF3_(arg0, arg1)
			local function __FUNC_D48_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D48_)
		end

		registerVal3:completeAnimation()
		registerVal2.FlyingEmber1:setAlpha(1.000000)
		__FUNC_BF3_(registerVal3, {})
		local function __FUNC_EFD_(arg0, arg1)
			local function __FUNC_1054_(arg0, arg1)
				local function __FUNC_11CF_(arg0, arg1)
					local function __FUNC_1324_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1324_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1324_)
				end

				if arg1.interrupted then
					__FUNC_11CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11CF_)
			end

			if arg1.interrupted then
				__FUNC_1054_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1054_)
		end

		registerVal4:completeAnimation()
		registerVal2.FlyingEmber2:setAlpha(0.000000)
		__FUNC_EFD_(registerVal4, {})
		local function __FUNC_14D9_(arg0, arg1)
			local function __FUNC_1630_(arg0, arg1)
				local function __FUNC_17AB_(arg0, arg1)
					local function __FUNC_1900_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1900_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1900_)
				end

				if arg1.interrupted then
					__FUNC_17AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17AB_)
			end

			if arg1.interrupted then
				__FUNC_1630_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1630_)
		end

		registerVal5:completeAnimation()
		registerVal2.FlyingEmber3:setAlpha(0.000000)
		__FUNC_14D9_(registerVal5, {})
		local function __FUNC_1AB5_(arg0, arg1)
			local function __FUNC_1C2F_(arg0, arg1)
				local function __FUNC_1D84_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 14.000000, 110.000000)
					arg0:setTopBottom(true, false, -65.000000, 43.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1D84_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D84_)
			end

			if arg1.interrupted then
				__FUNC_1C2F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C2F_)
		end

		registerVal6:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setLeftRight(true, false, 14.000000, 110.000000)
		registerVal6:setTopBottom(true, false, -65.000000, 43.000000)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_1AB5_)
		local function __FUNC_1FA9_(arg0, arg1)
			local function __FUNC_2123_(arg0, arg1)
				local function __FUNC_2278_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 62.000000, 218.000000)
					arg0:setTopBottom(true, false, -203.000000, -11.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2278_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2278_)
			end

			if arg1.interrupted then
				__FUNC_2123_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2123_)
		end

		registerVal7:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setLeftRight(true, false, 62.000000, 218.000000)
		registerVal7:setTopBottom(true, false, -203.000000, -11.000000)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_1FA9_)
	end

	registerVal9.DefaultClip = __FUNC_826_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

