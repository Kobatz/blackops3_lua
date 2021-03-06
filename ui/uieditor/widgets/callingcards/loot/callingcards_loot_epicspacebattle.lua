-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_GoldFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Loot_EpicSpaceBattle = registerVal1
function CoD.CallingCards_Loot_EpicSpaceBattle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Loot_EpicSpaceBattle)
	registerVal2.id = "CallingCards_Loot_EpicSpaceBattle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_loot_callingcard_epicspacebattle_master_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_loot_callingcard_epicspacebattle_master_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_loot_callingcard_epicspacebattle_master_bg3"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image10 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 295.000000, 415.000000)
	registerVal6:setTopBottom(true, false, 33.000000, 117.000000)
	registerVal6:setImage(RegisterImage("uie_t7_loot_callingcard_epicspacebattle_master_ship2"))
	registerVal2:addElement(registerVal6)
	registerVal2.ship = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 376.000000, 496.000000)
	registerVal7:setTopBottom(true, false, 36.000000, 120.000000)
	registerVal7:setImage(RegisterImage("uie_t7_loot_callingcard_epicspacebattle_master_explode"))
	registerVal2:addElement(registerVal7)
	registerVal2.explode = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 379.000000, 499.000000)
	registerVal8:setTopBottom(true, false, 26.000000, 110.000000)
	registerVal8:setScale(1.700000)
	registerVal8:setImage(RegisterImage("uie_t7_loot_callingcard_epicspacebattle_master_explode"))
	registerVal2:addElement(registerVal8)
	registerVal2.explode1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 84.000000)
	registerVal9:setImage(RegisterImage("uie_t7_loot_callingcard_epicspacebattle_master_ship1"))
	registerVal2:addElement(registerVal9)
	registerVal2.explode0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal10:setTopBottom(true, false, -15.000000, 165.000000)
	registerVal10:setZRot(13.000000)
	registerVal10:setScale(1.100000)
	registerVal10:setImage(RegisterImage("uie_t7_loot_callingcard_epicspacebattle_master_bullets"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal10:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.600000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.bullets = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal11:setImage(RegisterImage("uie_t7_loot_callingcard_epicspacebattle_master_rockets"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image100 = registerVal11
	local registerVal12 = CoD.CallingCards_GoldFrame.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.CallingCardsGoldFrame = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_E27_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1275_(arg0, arg1)
			local function __FUNC_13CC_(arg0, arg1)
				local function __FUNC_1547_(arg0, arg1)
					local function __FUNC_16BF_(arg0, arg1)
						local function __FUNC_1837_(arg0, arg1)
							local function __FUNC_19AF_(arg0, arg1)
								local function __FUNC_1B04_(arg0, arg1)
									local function __FUNC_1C5C_(arg0, arg1)
										local function __FUNC_1DD7_(arg0, arg1)
											local function __FUNC_1F2C_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_1F2C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F2C_)
										end

										if arg1.interrupted then
											__FUNC_1DD7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DD7_)
									end

									if arg1.interrupted then
										__FUNC_1C5C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C5C_)
								end

								if arg1.interrupted then
									__FUNC_1B04_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B04_)
							end

							if arg1.interrupted then
								__FUNC_19AF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19AF_)
						end

						if arg1.interrupted then
							__FUNC_1837_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1837_)
					end

					if arg1.interrupted then
						__FUNC_16BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16BF_)
				end

				if arg1.interrupted then
					__FUNC_1547_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1547_)
			end

			if arg1.interrupted then
				__FUNC_13CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13CC_)
		end

		registerVal5:completeAnimation()
		registerVal2.Image10:setAlpha(1.000000)
		__FUNC_1275_(registerVal5, {})
		local function __FUNC_20E1_(arg0, arg1)
			local function __FUNC_22A8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 295.000000, 415.000000)
				arg0:setTopBottom(true, false, 33.000000, 117.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_22A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 286.000000, 406.000000)
			arg0:setTopBottom(true, false, 36.000000, 120.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22A8_)
		end

		registerVal6:completeAnimation()
		registerVal2.ship:setLeftRight(true, false, 295.000000, 415.000000)
		registerVal2.ship:setTopBottom(true, false, 33.000000, 117.000000)
		__FUNC_20E1_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.explode:setLeftRight(true, false, 376.000000, 496.000000)
		registerVal2.explode:setTopBottom(true, false, 39.000000, 123.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_24AA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 376.000000, 496.000000)
			arg0:setTopBottom(true, false, 39.000000, 123.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(1.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.explode1:setLeftRight(true, false, 376.000000, 496.000000)
		registerVal2.explode1:setTopBottom(true, false, 39.000000, 123.000000)
		registerVal2.explode1:setAlpha(1.000000)
		registerVal2.explode1:setScale(1.000000)
		__FUNC_24AA_(registerVal8, {})
		local function __FUNC_26F0_(arg0, arg1)
			local function __FUNC_2880_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 0.000000, 120.000000)
				arg0:setTopBottom(true, false, 0.000000, 84.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2880_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -5.000000, 115.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2880_)
		end

		registerVal9:completeAnimation()
		registerVal2.explode0:setLeftRight(true, false, 0.000000, 120.000000)
		registerVal2.explode0:setTopBottom(true, false, 0.000000, 84.000000)
		__FUNC_26F0_(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.CallingCardsGoldFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal14.DefaultClip = __FUNC_E27_
	registerVal13.DefaultState = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_2A7D_(arg0)
		arg0.CallingCardsGoldFrame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2A7D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

