-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_AirAssaultWidget = registerVal1
function CoD.CallingCards_AirAssaultWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_AirAssaultWidget)
	registerVal2.id = "CallingCards_AirAssaultWidget"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_airassault_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 323.000000, 667.860000)
	registerVal4:setTopBottom(true, false, -152.270000, 140.270000)
	registerVal4:setRGB(1.000000, 0.630000, 0.000000)
	registerVal4:setZRot(-84.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.GlowOrangeOver = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 174.800000, 346.000000)
	registerVal5:setTopBottom(true, false, -66.000000, 148.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_efficiency_smoke2"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal5:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.230000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.smoke1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -103.040000, 174.800000)
	registerVal6:setTopBottom(true, false, -57.690000, 157.690000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_efficiency_smoke3"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal6:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.150000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.smoke2 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_937_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A4F_(arg0, arg1)
			local function __FUNC_BC7_(arg0, arg1)
				local function __FUNC_D3F_(arg0, arg1)
					local function __FUNC_EB7_(arg0, arg1)
						local function __FUNC_102F_(arg0, arg1)
							local function __FUNC_11A7_(arg0, arg1)
								local function __FUNC_131F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_131F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.590000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_131F_)
							end

							if arg1.interrupted then
								__FUNC_11A7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.850000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11A7_)
						end

						if arg1.interrupted then
							__FUNC_102F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.730000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_102F_)
					end

					if arg1.interrupted then
						__FUNC_EB7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB7_)
				end

				if arg1.interrupted then
					__FUNC_D3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.410000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D3F_)
			end

			if arg1.interrupted then
				__FUNC_BC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.590000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC7_)
		end

		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		__FUNC_A4F_(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_937_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

