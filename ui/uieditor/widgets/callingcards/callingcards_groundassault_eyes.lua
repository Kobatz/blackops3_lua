-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_GroundAssault_Eyes = registerVal1
function CoD.CallingCards_GroundAssault_Eyes.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_GroundAssault_Eyes)
	registerVal2.id = "CallingCards_GroundAssault_Eyes"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 6.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 76.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 1.950000, 4.780000)
	registerVal3:setTopBottom(true, false, 0.000000, 75.930000)
	registerVal3:setRGB(1.000000, 0.020000, 0.000000)
	registerVal3:setZRot(90.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 6.180000)
	registerVal4:setTopBottom(true, false, 34.500000, 41.430000)
	registerVal4:setRGB(1.000000, 0.020000, 0.000000)
	registerVal4:setZRot(80.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6E5_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_847_(arg0, arg1)
			local function __FUNC_9BF_(arg0, arg1)
				local function __FUNC_B37_(arg0, arg1)
					local function __FUNC_CAF_(arg0, arg1)
						local function __FUNC_E27_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 960.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.150000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_E27_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E27_)
					end

					if arg1.interrupted then
						__FUNC_CAF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAF_)
				end

				if arg1.interrupted then
					__FUNC_B37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B37_)
			end

			if arg1.interrupted then
				__FUNC_9BF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BF_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image1:setAlpha(0.150000)
		__FUNC_847_(registerVal3, {})
		local function __FUNC_FD9_(arg0, arg1)
			local function __FUNC_1153_(arg0, arg1)
				local function __FUNC_12CB_(arg0, arg1)
					local function __FUNC_1443_(arg0, arg1)
						local function __FUNC_15BB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 960.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.150000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_15BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15BB_)
					end

					if arg1.interrupted then
						__FUNC_1443_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1443_)
				end

				if arg1.interrupted then
					__FUNC_12CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12CB_)
			end

			if arg1.interrupted then
				__FUNC_1153_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.300000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1153_)
		end

		registerVal4:completeAnimation()
		registerVal2.Image0:setAlpha(0.150000)
		__FUNC_FD9_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_6E5_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

