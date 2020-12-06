-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSummaryTBD = registerVal1
function CoD.GroupsSummaryTBD.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSummaryTBD)
	registerVal2.id = "GroupsSummaryTBD"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 146.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 128.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 146.000000)
	registerVal3:setTopBottom(true, false, -14.790000, 147.570000)
	registerVal3:setZRot(360.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_hud_widget_ammo_5_hexagon"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, -42.000000, 39.000000)
	registerVal4:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal4:setText(Engine.Localize("GROUPS_UNDER_CONSTRUCTION"))
	registerVal4:setTTF("fonts/UnitedSansRgMd.ttf")
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.TextBox0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8D3_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A6D_(arg0, arg1)
			local function __FUNC_C56_(arg0, arg1)
				local function __FUNC_DAC_(arg0, arg1)
					local function __FUNC_F96_(arg0, arg1)
						local function __FUNC_10EC_(arg0, arg1)
							local function __FUNC_12D6_(arg0, arg1)
								local function __FUNC_142C_(arg0, arg1)
									local function __FUNC_1616_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 0.000000, 146.000000)
										arg0:setTopBottom(true, false, -14.790000, 147.570000)
										arg0:setZRot(360.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_1616_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 1000.000000, true, true, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 0.000000, 146.000000)
									arg0:setTopBottom(true, false, -14.790000, 147.570000)
									arg0:setZRot(360.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1616_)
								end

								if arg1.interrupted then
									__FUNC_142C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1010.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142C_)
							end

							if arg1.interrupted then
								__FUNC_12D6_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 989.000000, true, true, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, -2.000000, 144.000000)
							arg0:setTopBottom(true, false, -14.790000, 146.570000)
							arg0:setZRot(270.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D6_)
						end

						if arg1.interrupted then
							__FUNC_10EC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10EC_)
					end

					if arg1.interrupted then
						__FUNC_F96_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1000.000000, true, true, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -3.000000, 143.000000)
					arg0:setTopBottom(true, false, -15.790000, 145.570000)
					arg0:setZRot(180.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F96_)
				end

				if arg1.interrupted then
					__FUNC_DAC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAC_)
			end

			if arg1.interrupted then
				__FUNC_C56_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, true, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -1.000000, 145.000000)
			arg0:setTopBottom(true, false, -14.790000, 146.570000)
			arg0:setZRot(90.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C56_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 0.000000, 146.000000)
		registerVal2.Image0:setTopBottom(true, false, -13.790000, 147.570000)
		registerVal2.Image0:setZRot(0.000000)
		__FUNC_A6D_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_8D3_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

