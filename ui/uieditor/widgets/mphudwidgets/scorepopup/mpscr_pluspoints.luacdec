-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MPScr_PlusPoints = registerVal1
function CoD.MPScr_PlusPoints.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MPScr_PlusPoints)
	registerVal2.id = "MPScr_PlusPoints"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 85.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 66.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 18.000000, 84.000000)
	registerVal3:setTopBottom(true, false, 14.380000, 51.380000)
	registerVal3:setRGB(0.000000, 0.420000, 1.000000)
	registerVal3:setAlpha(0.010000)
	registerVal3:setZoom(-8.000000)
	registerVal3:setText(Engine.Localize("+50"))
	registerVal3:setTTF("fonts/UnitedSansSmCdBd_0.ttf")
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal3:setShaderVector(0.000000, 0.210000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setLetterSpacing(0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.Label2 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 17.000000, 83.000000)
	registerVal4:setTopBottom(true, false, 14.380000, 51.380000)
	registerVal4:setRGB(0.620000, 0.780000, 0.990000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("+50"))
	registerVal4:setTTF("fonts/UnitedSansSmCdBd_0.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.Label1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 85.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 65.750000)
	registerVal5:setRGB(0.020000, 0.420000, 1.000000)
	registerVal5:setAlpha(0.010000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Glow = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_921_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_AA2_(arg0, arg1)
			local function __FUNC_C1B_(arg0, arg1)
				local function __FUNC_D70_(arg0, arg1)
					local function __FUNC_EC8_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_EC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC8_)
				end

				if arg1.interrupted then
					__FUNC_D70_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Bounce)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D70_)
			end

			if arg1.interrupted then
				__FUNC_C1B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1B_)
		end

		registerVal3:completeAnimation()
		registerVal2.Label2:setAlpha(0.000000)
		__FUNC_AA2_(registerVal3, {})
		local function __FUNC_107D_(arg0, arg1)
			local function __FUNC_11F7_(arg0, arg1)
				local function __FUNC_134C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_134C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_134C_)
			end

			if arg1.interrupted then
				__FUNC_11F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F7_)
		end

		registerVal4:completeAnimation()
		registerVal2.Label1:setAlpha(0.000000)
		__FUNC_107D_(registerVal4, {})
		local function __FUNC_1501_(arg0, arg1)
			local function __FUNC_167B_(arg0, arg1)
				local function __FUNC_17F3_(arg0, arg1)
					local function __FUNC_196B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_196B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.340000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_196B_)
				end

				if arg1.interrupted then
					__FUNC_17F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Bounce)
				arg0:setAlpha(0.420000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17F3_)
			end

			if arg1.interrupted then
				__FUNC_167B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_167B_)
		end

		registerVal5:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_1501_(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_921_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

