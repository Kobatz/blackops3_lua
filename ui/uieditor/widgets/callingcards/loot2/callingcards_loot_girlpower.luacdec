-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_GoldFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_loot_GirlPower = registerVal1
function CoD.CallingCards_loot_GirlPower.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_loot_GirlPower)
	registerVal2.id = "CallingCards_loot_GirlPower"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_loot_callingcard_girlpower_master_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_loot_callingcard_girlpower_master_fire1"))
	registerVal2:addElement(registerVal4)
	registerVal2.fire1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_loot_callingcard_girlpower_master_fire2"))
	registerVal2:addElement(registerVal5)
	registerVal2.fire2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_loot_callingcard_girlpower_master_fire3"))
	registerVal2:addElement(registerVal6)
	registerVal2.fire3 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal7:setImage(RegisterImage("uie_t7_loot_callingcard_girlpower_master_girl2"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image40 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal8:setImage(RegisterImage("uie_t7_loot_callingcard_girlpower_master_girl"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image300 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal9:setImage(RegisterImage("uie_t7_loot_callingcard_girlpower_master_wiz2"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image4 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal10:setImage(RegisterImage("uie_t7_loot_callingcard_girlpower_master_wiz"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image3000 = registerVal10
	local registerVal11 = CoD.CallingCards_GoldFrame.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.CallingCardsGoldFrame = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_BF3_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_F17_(arg0, arg1)
			local function __FUNC_108F_(arg0, arg1)
				local function __FUNC_1207_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1207_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1207_)
			end

			if arg1.interrupted then
				__FUNC_108F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.250000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108F_)
		end

		registerVal4:completeAnimation()
		registerVal2.fire1:setAlpha(1.000000)
		__FUNC_F17_(registerVal4, {})
		local function __FUNC_13B9_(arg0, arg1)
			local function __FUNC_1510_(arg0, arg1)
				local function __FUNC_168B_(arg0, arg1)
					local function __FUNC_17E0_(arg0, arg1)
						local function __FUNC_195B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_195B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_195B_)
					end

					if arg1.interrupted then
						__FUNC_17E0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E0_)
				end

				if arg1.interrupted then
					__FUNC_168B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_168B_)
			end

			if arg1.interrupted then
				__FUNC_1510_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1510_)
		end

		registerVal5:completeAnimation()
		registerVal2.fire2:setAlpha(0.000000)
		__FUNC_13B9_(registerVal5, {})
		local function __FUNC_1B0D_(arg0, arg1)
			local function __FUNC_1C64_(arg0, arg1)
				local function __FUNC_1DDF_(arg0, arg1)
					local function __FUNC_1F57_(arg0, arg1)
						local function __FUNC_20CF_(arg0, arg1)
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
							__FUNC_20CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20CF_)
					end

					if arg1.interrupted then
						__FUNC_1F57_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.540000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F57_)
				end

				if arg1.interrupted then
					__FUNC_1DDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DDF_)
			end

			if arg1.interrupted then
				__FUNC_1C64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C64_)
		end

		registerVal6:completeAnimation()
		registerVal2.fire3:setAlpha(0.000000)
		__FUNC_1B0D_(registerVal6, {})
		local function __FUNC_2281_(arg0, arg1)
			local function __FUNC_23FB_(arg0, arg1)
				local function __FUNC_2573_(arg0, arg1)
					local function __FUNC_26EB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_26EB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26EB_)
				end

				if arg1.interrupted then
					__FUNC_2573_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.290000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2573_)
			end

			if arg1.interrupted then
				__FUNC_23FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23FB_)
		end

		registerVal8:completeAnimation()
		registerVal2.Image300:setAlpha(0.000000)
		__FUNC_2281_(registerVal8, {})
		local function __FUNC_289D_(arg0, arg1)
			local function __FUNC_2A17_(arg0, arg1)
				local function __FUNC_2B8F_(arg0, arg1)
					local function __FUNC_2D07_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2D07_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D07_)
				end

				if arg1.interrupted then
					__FUNC_2B8F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B8F_)
			end

			if arg1.interrupted then
				__FUNC_2A17_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A17_)
		end

		registerVal10:completeAnimation()
		registerVal2.Image3000:setAlpha(0.000000)
		__FUNC_289D_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CallingCardsGoldFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal13.DefaultClip = __FUNC_BF3_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_2EB9_(arg0)
		arg0.CallingCardsGoldFrame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2EB9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

