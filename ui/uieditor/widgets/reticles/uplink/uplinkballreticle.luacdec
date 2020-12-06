-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.uplink.uplink_IconandTextArmorbg")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Reticles.Uplink.uplinkReticle")
local function __FUNC_298_(arg0, arg1)
	arg0:setupReticle(arg1)
	local registerVal4 = {}
	registerVal4 = {"speed_throw", "attack"}
	DataSources.ReticleBindings.createModelsForActions(arg1, registerVal4)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.uplinkBallReticle = registerVal2
local function __FUNC_38D_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_298_ then
		__FUNC_298_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.uplinkBallReticle)
	registerVal2.id = "uplinkBallReticle"
	registerVal2.soundSet = "CAC_PrimaryWeapon"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -136.590000, 146.000000)
	registerVal3:setTopBottom(false, false, 174.630000, 191.630000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackFrame = registerVal3
	local registerVal4 = CoD.uplink_IconandTextArmorbg.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -15.790000, 25.210000)
	registerVal4:setTopBottom(false, false, 191.800000, 211.800000)
	registerVal4.armorLabel:setText(Engine.Localize("MP_HUD_UPLINK_ARMOR"))
	registerVal2:addElement(registerVal4)
	registerVal2.BallArmorWidget = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -91.000000, 90.000000)
	registerVal5:setTopBottom(false, false, 181.750000, 185.250000)
	registerVal5:setAlpha(0.400000)
	registerVal2:addElement(registerVal5)
	registerVal2.armorBorder = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -90.000000, 89.000000)
	registerVal6:setTopBottom(false, false, 183.000000, 184.000000)
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1C38_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal6:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "HUDItems", "armorPercent", __FUNC_1C38_)
	registerVal2:addElement(registerVal6)
	registerVal2.armorFill = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -203.250000, -169.000000)
	registerVal7:setTopBottom(false, false, 168.000000, 201.750000)
	local function __FUNC_1D90_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "ReticleBindings", "speed_throw", __FUNC_1D90_)
	registerVal2:addElement(registerVal7)
	registerVal2.passIcon = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 168.250000, 202.500000)
	registerVal8:setTopBottom(false, false, 168.000000, 202.130000)
	local function __FUNC_1E44_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "ReticleBindings", "attack", __FUNC_1E44_)
	registerVal2:addElement(registerVal8)
	registerVal2.throwIcon = registerVal8
	local registerVal9 = CoD.uplinkReticle.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -65.180000, 65.180000)
	registerVal9:setTopBottom(false, false, -65.180000, 65.180000)
	registerVal2:addElement(registerVal9)
	registerVal2.uplinkReticle = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, false, -296.570000, -96.570000)
	registerVal10:setTopBottom(false, false, 172.630000, 192.630000)
	registerVal10:setText(Engine.Localize("PLATFORM_BALL_THROW"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.KeyMouseThrow = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, false, 94.430000, 294.430000)
	registerVal11:setTopBottom(false, false, 172.630000, 192.630000)
	registerVal11:setText(Engine.Localize("PLATFORM_BALL_PASS"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.KeyMousePass = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 737.960000, 807.710000)
	registerVal12:setTopBottom(true, false, 533.000000, 553.060000)
	registerVal12:setText(Engine.Localize("MP_HUD_UPLINK_THROW"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.Trow = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 474.000000, 543.000000)
	registerVal13:setTopBottom(true, false, 533.000000, 553.000000)
	registerVal13:setText(Engine.Localize("MP_HUD_UPLINK_PASS"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.Pass = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1EF8_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_2631_(arg0, arg1)
			local function __FUNC_2788_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -114.270000, 114.330000)
				arg0:setTopBottom(false, false, 174.630000, 191.630000)
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2788_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2788_)
		end

		registerVal3:completeAnimation()
		registerVal2.BlackFrame:setLeftRight(false, false, -162.270000, 165.330000)
		registerVal2.BlackFrame:setTopBottom(false, false, 174.630000, 191.630000)
		registerVal2.BlackFrame:setAlpha(0.300000)
		__FUNC_2631_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.armorLabel:completeAnimation()
		registerVal2.BallArmorWidget:setAlpha(1.000000)
		registerVal2.BallArmorWidget.armorLabel:setText(Engine.Localize("MP_HUD_UPLINK_ARMOR"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.armorBorder:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.armorFill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_29AD_(arg0, arg1)
			local function __FUNC_2B04_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -192.250000, -158.000000)
				arg0:setTopBottom(false, false, 168.000000, 201.750000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2B04_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B04_)
		end

		registerVal7:completeAnimation()
		registerVal2.passIcon:setLeftRight(false, false, -192.250000, -158.000000)
		registerVal2.passIcon:setTopBottom(false, false, 168.000000, 201.750000)
		registerVal2.passIcon:setAlpha(1.000000)
		__FUNC_29AD_(registerVal7, {})
		local function __FUNC_2D29_(arg0, arg1)
			local function __FUNC_2E80_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 160.250000, 194.500000)
				arg0:setTopBottom(false, false, 168.000000, 202.130000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2E80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E80_)
		end

		registerVal8:completeAnimation()
		registerVal2.throwIcon:setLeftRight(false, false, 160.250000, 194.500000)
		registerVal2.throwIcon:setTopBottom(false, false, 168.000000, 202.130000)
		registerVal2.throwIcon:setAlpha(1.000000)
		__FUNC_2D29_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.uplinkReticle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.KeyMouseThrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.KeyMousePass:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		local function __FUNC_30A5_(arg0, arg1)
			local function __FUNC_31FC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 726.960000, 796.710000)
				arg0:setTopBottom(true, false, 533.000000, 553.060000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_31FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31FC_)
		end

		registerVal12:completeAnimation()
		registerVal2.Trow:setLeftRight(true, false, 726.960000, 796.710000)
		registerVal2.Trow:setTopBottom(true, false, 533.000000, 553.060000)
		registerVal2.Trow:setAlpha(1.000000)
		__FUNC_30A5_(registerVal12, {})
		local function __FUNC_3421_(arg0, arg1)
			local function __FUNC_3578_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 486.000000, 555.000000)
				arg0:setTopBottom(true, false, 533.000000, 553.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3578_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3578_)
		end

		registerVal13:completeAnimation()
		registerVal2.Pass:setLeftRight(true, false, 486.000000, 555.000000)
		registerVal2.Pass:setTopBottom(true, false, 533.000000, 553.000000)
		registerVal2.Pass:setAlpha(1.000000)
		__FUNC_3421_(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1EF8_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_379D_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BallArmorWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.armorBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.armorFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.passIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.throwIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.uplinkReticle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.KeyMouseThrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.KeyMousePass:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Trow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pass:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_379D_
	registerVal14.Hidden = registerVal15
	registerVal15 = {}
	local function __FUNC_3C0C_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.armorBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.armorFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.passIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.throwIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.uplinkReticle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.KeyMouseThrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.KeyMousePass:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Trow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pass:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_3C0C_
	registerVal14.HiddenOffhand = registerVal15
	registerVal15 = {}
	local function __FUNC_401F_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_4585_(arg0, arg1)
			local function __FUNC_46DC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -120.000000, 120.000000)
				arg0:setTopBottom(false, false, 174.630000, 191.630000)
				arg0:setAlpha(0.300000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_46DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46DC_)
		end

		registerVal3:completeAnimation()
		registerVal2.BlackFrame:setLeftRight(false, false, -180.000000, 180.000000)
		registerVal2.BlackFrame:setTopBottom(false, false, 174.630000, 191.630000)
		registerVal2.BlackFrame:setAlpha(0.300000)
		__FUNC_4585_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.armorLabel:completeAnimation()
		registerVal2.BallArmorWidget:setAlpha(1.000000)
		registerVal2.BallArmorWidget.armorLabel:setText(Engine.Localize("MP_HUD_UPLINK_ARMOR"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.passIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.throwIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_4901_(arg0, arg1)
			local function __FUNC_4A58_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -308.570000, -108.570000)
				arg0:setTopBottom(false, false, 172.630000, 192.630000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4A58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A58_)
		end

		registerVal10:completeAnimation()
		registerVal2.KeyMouseThrow:setLeftRight(false, false, -308.570000, -108.570000)
		registerVal2.KeyMouseThrow:setTopBottom(false, false, 172.630000, 192.630000)
		registerVal2.KeyMouseThrow:setAlpha(1.000000)
		__FUNC_4901_(registerVal10, {})
		local function __FUNC_4C7D_(arg0, arg1)
			local function __FUNC_4DD4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 107.500000, 307.500000)
				arg0:setTopBottom(false, false, 172.630000, 192.630000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4DD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DD4_)
		end

		registerVal11:completeAnimation()
		registerVal2.KeyMousePass:setLeftRight(false, false, 107.500000, 307.500000)
		registerVal2.KeyMousePass:setTopBottom(false, false, 172.630000, 192.630000)
		registerVal2.KeyMousePass:setAlpha(1.000000)
		__FUNC_4C7D_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Trow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pass:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_401F_
	registerVal14.KeyMouse = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Hidden"
	local function __FUNC_4FF9_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_CAMERA_ANIM_HIDING_HUD)
		if not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DRAW_RETICLE)
			if registerVal3 then
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
				registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
				if not registerVal3 and not registerVal3 then
					registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
					if registerVal3 then
						registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
						registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_REMOTE_MISSILE)
						registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
						registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_THIRD_PERSON)
						registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_PLAYER_DEAD)
						registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
						if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
							registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
						end
					end
				end
			end
		end
		return true
	end

	registerVal17.condition = __FUNC_4FF9_
	local registerVal18 = {}
	registerVal18.stateName = "HiddenOffhand"
	local function __FUNC_54A5_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "currentWeapon.usingOffhand")
	end

	registerVal18.condition = __FUNC_54A5_
	local registerVal19 = {}
	registerVal19.stateName = "KeyMouse"
	local function __FUNC_5522_(arg0, arg2, arg3)
		local registerVal3 = IsGamepad(arg1)
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_5522_
	registerVal16 = {registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_CAMERA_ANIM_HIDING_HUD))
	local function __FUNC_5573_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_CAMERA_ANIM_HIDING_HUD)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_5573_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DRAW_RETICLE))
	local function __FUNC_5705_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DRAW_RETICLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_5705_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_588F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_588F_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	local function __FUNC_5A15_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_5A15_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_5B9F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_5B9F_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_5D26_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_5D26_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_MISSILE))
	local function __FUNC_5EB4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_MISSILE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_5EB4_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_6044_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_6044_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_THIRD_PERSON))
	local function __FUNC_61CD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_THIRD_PERSON)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_61CD_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_PLAYER_DEAD))
	local function __FUNC_635A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_PLAYER_DEAD)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_635A_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_64E2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_64E2_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE))
	local function __FUNC_666E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_WEAPON_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_666E_)
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, "currentWeapon.usingOffhand")
	local function __FUNC_67FD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.usingOffhand"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_67FD_)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_692C_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_692C_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal17 = Engine.GetModelForController(arg1)
	registerVal16 = Engine.GetModel(registerVal17, "LastInput")
	local function __FUNC_69B7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal16, __FUNC_69B7_)
	local function __FUNC_6AD3_(arg0)
		arg0.BallArmorWidget:close()
		arg0.armorBorder:close()
		arg0.uplinkReticle:close()
		arg0.armorFill:close()
		arg0.passIcon:close()
		arg0.throwIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6AD3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.uplinkBallReticle.new = __FUNC_38D_
