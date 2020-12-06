-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_EquipmentEmpty = registerVal1
function CoD.AmmoWidget_EquipmentEmpty.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_EquipmentEmpty)
	registerVal2.id = "AmmoWidget_EquipmentEmpty"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 26.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.310000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.ImgIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -10.290000, 10.290000)
	registerVal4:setTopBottom(true, true, -10.290000, 10.290000)
	registerVal4:setRGB(1.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.310000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.ImgIconGrow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -20.500000, 20.000000)
	registerVal5:setTopBottom(false, false, -18.500000, 18.500000)
	registerVal5:setRGB(1.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.520000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_ammowidget_inventoryboxempty"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.EmptyFlash = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_7BC_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ImgIcon:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.ImgIcon:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.ImgIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgIconGrow:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.ImgIconGrow:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.ImgIconGrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.EmptyFlash:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_7BC_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_A38_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_C47_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.ImgIcon:setAlpha(1.000000)
		__FUNC_C47_(registerVal3, {})
		local function __FUNC_DF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -15.000000, 15.000000)
			arg0:setTopBottom(true, true, -15.000000, 15.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgIconGrow:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.ImgIconGrow:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.ImgIconGrow:setAlpha(1.000000)
		__FUNC_DF9_(registerVal4, {})
		local function __FUNC_1013_(arg0, arg1)
			local function __FUNC_118B_(arg0, arg1)
				local function __FUNC_12E0_(arg0, arg1)
					local function __FUNC_145B_(arg0, arg1)
						local function __FUNC_15B0_(arg0, arg1)
							local function __FUNC_172B_(arg0, arg1)
								local function __FUNC_1880_(arg0, arg1)
									local function __FUNC_19FB_(arg0, arg1)
										local function __FUNC_1B50_(arg0, arg1)
											local function __FUNC_1CCB_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_1CCB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CCB_)
										end

										if arg1.interrupted then
											__FUNC_1B50_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B50_)
									end

									if arg1.interrupted then
										__FUNC_19FB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.590000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19FB_)
								end

								if arg1.interrupted then
									__FUNC_1880_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1880_)
							end

							if arg1.interrupted then
								__FUNC_172B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_172B_)
						end

						if arg1.interrupted then
							__FUNC_15B0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15B0_)
					end

					if arg1.interrupted then
						__FUNC_145B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_145B_)
				end

				if arg1.interrupted then
					__FUNC_12E0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12E0_)
			end

			if arg1.interrupted then
				__FUNC_118B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118B_)
		end

		registerVal5:completeAnimation()
		registerVal2.EmptyFlash:setAlpha(0.000000)
		__FUNC_1013_(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A38_
	registerVal6.Empty = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

