-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_agr_missile = registerVal1
function CoD.vhud_agr_missile.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.vhud_agr_missile)
	registerVal2.id = "vhud_agr_missile"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 31.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -24.000000, 24.000000)
	registerVal3:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal3:setYRot(130.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_notificationiconmissileoutline"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.agrIconMissileLine1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -24.000000, 24.000000)
	registerVal4:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setYRot(130.000000)
	registerVal4:setScale(1.200000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_notificationiconmissile1"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.agrIconMissile1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -8.230000, 8.230000)
	registerVal5:setTopBottom(false, false, -26.850000, 28.850000)
	registerVal5:setRGB(0.710000, 1.000000, 0.830000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZRot(-90.000000)
	registerVal5:setScale(1.200000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.GlowOrangeOver = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_8B6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.agrIconMissileLine1:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.agrIconMissile1:setAlpha(0.000000)
		registerVal2.agrIconMissile1:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_8B6_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_AAB_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_C99_(arg0, arg1)
			local function __FUNC_DF0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setScale(1.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_DF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF0_)
		end

		registerVal3:completeAnimation()
		registerVal2.agrIconMissileLine1:setScale(1.200000)
		__FUNC_C99_(registerVal3, {})
		local function __FUNC_FA5_(arg0, arg1)
			local function __FUNC_111F_(arg0, arg1)
				local function __FUNC_12BA_(arg0, arg1)
					local function __FUNC_1456_(arg0, arg1)
						local function __FUNC_15F2_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							arg0:setScale(1.200000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_15F2_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:setScale(1.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F2_)
					end

					if arg1.interrupted then
						__FUNC_1456_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.320000)
					arg0:setScale(1.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1456_)
				end

				if arg1.interrupted then
					__FUNC_12BA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12BA_)
			end

			if arg1.interrupted then
				__FUNC_111F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_111F_)
		end

		registerVal4:completeAnimation()
		registerVal2.agrIconMissile1:setAlpha(1.000000)
		registerVal2.agrIconMissile1:setScale(1.200000)
		__FUNC_FA5_(registerVal4, {})
		local function __FUNC_17C8_(arg0, arg1)
			local function __FUNC_1943_(arg0, arg1)
				local function __FUNC_1ADE_(arg0, arg1)
					local function __FUNC_1C7A_(arg0, arg1)
						local function __FUNC_1E16_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(1.200000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1E16_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:setScale(1.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E16_)
					end

					if arg1.interrupted then
						__FUNC_1C7A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.200000)
					arg0:setScale(1.200000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C7A_)
				end

				if arg1.interrupted then
					__FUNC_1ADE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:setScale(1.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ADE_)
			end

			if arg1.interrupted then
				__FUNC_1943_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1943_)
		end

		registerVal5:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(1.000000)
		registerVal2.GlowOrangeOver:setScale(1.200000)
		__FUNC_17C8_(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_AAB_
	registerVal6.Armed = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

