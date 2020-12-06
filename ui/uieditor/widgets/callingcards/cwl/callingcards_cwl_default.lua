-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CWL.CallingCards_cwl_default_sonyLogo")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_cwl_default = registerVal1
function CoD.CallingCards_cwl_default.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_cwl_default)
	registerVal2.id = "CallingCards_cwl_default"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_cwl_default_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_cwl_default_bg2"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal4:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.300000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.500000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FlaresLarge = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcards_cwl_default_bg3"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal5:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 1.930000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.flaresSmall = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 240.000000, 720.000000)
	registerVal6:setTopBottom(true, false, -238.000000, 422.000000)
	registerVal6:setAlpha(0.300000)
	registerVal6:setYRot(1.000000)
	registerVal6:setZRot(53.000000)
	registerVal6:setScale(0.700000)
	registerVal6:setImage(RegisterImage("uie_callingcards_cwl_ember2b"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal6:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.040000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.EMBER2c = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -141.000000, 339.000000)
	registerVal7:setTopBottom(true, false, -238.000000, 422.000000)
	registerVal7:setAlpha(0.400000)
	registerVal7:setYRot(1.000000)
	registerVal7:setZRot(53.000000)
	registerVal7:setScale(0.700000)
	registerVal7:setImage(RegisterImage("uie_callingcards_cwl_ember2b"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal7:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.030000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.EMBER2b = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal8:setTopBottom(true, false, -251.000000, 409.000000)
	registerVal8:setYRot(1.000000)
	registerVal8:setZRot(53.000000)
	registerVal8:setImage(RegisterImage("uie_callingcards_cwl_ember2"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal8:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.050000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.EMBER2 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 305.000000, 448.000000)
	registerVal9:setTopBottom(true, false, -12.750000, 129.750000)
	registerVal9:setRGB(0.950000, 0.600000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZRot(-54.000000)
	registerVal9:setScale(1.400000)
	registerVal9:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.GLOWBALL = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcards_cwl_default_logo"))
	registerVal2:addElement(registerVal10)
	registerVal2.Logo = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 320.000000, 435.000000)
	registerVal11:setTopBottom(true, false, 2.000000, 117.000000)
	registerVal11:setRGB(1.000000, 0.550000, 0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_callingcards_cwl_default_glow1"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.glow1 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 320.000000, 435.000000)
	registerVal12:setTopBottom(true, false, 2.000000, 117.000000)
	registerVal12:setRGB(1.000000, 0.550000, 0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_callingcards_cwl_default_glow2"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glow2 = registerVal12
	local registerVal13 = CoD.CallingCards_cwl_default_sonyLogo.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 46.000000, 314.000000)
	registerVal13:setTopBottom(true, false, 25.000000, 92.000000)
	registerVal13:setAlpha(0.750000)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "visible"
	local function __FUNC_12C2_(arg0, arg1, arg2)
		return IsOrbis()
	end

	registerVal17.condition = __FUNC_12C2_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal2:addElement(registerVal13)
	registerVal2.CallingCardscwldefaultsonyLogo = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1309_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_184B_(arg0, arg1)
			local function __FUNC_1A0A_(arg0, arg1)
				local function __FUNC_1BED_(arg0, arg1)
					local function __FUNC_1DCC_(arg0, arg1)
						local function __FUNC_1FBB_(arg0, arg1)
							local function __FUNC_2198_(arg0, arg1)
								local function __FUNC_237D_(arg0, arg1)
									local function __FUNC_2566_(arg0, arg1)
										local function __FUNC_274E_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
											arg0:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
											arg0:setShaderVector(1.000000, 0.000000, 0.300000, 0.000000, 0.000000)
											arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
											arg0:setShaderVector(3.000000, 0.500000, 0.500000, 0.000000, 0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_274E_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.330000)
										arg0:setShaderVector(1.000000, 0.000000, 0.247636, 0.000000, 0.000000)
										arg0:setShaderVector(3.000000, 0.510000, 0.500000, 0.000000, 0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_274E_)
									end

									if arg1.interrupted then
										__FUNC_2566_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.050000)
									arg0:setShaderVector(1.000000, 0.000000, 0.192000, 0.000000, 0.000000)
									arg0:setShaderVector(3.000000, 0.500000, 0.710000, 0.000000, 0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2566_)
								end

								if arg1.interrupted then
									__FUNC_237D_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:setShaderVector(1.000000, 0.000000, 0.120000, 0.000000, 0.000000)
								arg0:setShaderVector(3.000000, 0.500000, 0.780000, 0.000000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_237D_)
							end

							if arg1.interrupted then
								__FUNC_2198_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:setShaderVector(1.000000, 0.000000, 0.300000, 0.000000, 0.000000)
							arg0:setShaderVector(3.000000, 0.500000, 0.500000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2198_)
						end

						if arg1.interrupted then
							__FUNC_1FBB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.780000)
						arg0:setShaderVector(1.000000, 0.000000, 0.120000, -0.100000, 0.000000)
						arg0:setShaderVector(3.000000, 0.192222, 0.372222, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FBB_)
					end

					if arg1.interrupted then
						__FUNC_1DCC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 420.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setShaderVector(1.000000, 0.000000, 0.120000, 0.000000, 0.000000)
					arg0:setShaderVector(3.000000, 0.300000, 0.300000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DCC_)
				end

				if arg1.interrupted then
					__FUNC_1BED_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 260.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.550000)
				arg0:setShaderVector(1.000000, 0.000000, 0.300000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.300000, 0.800000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BED_)
			end

			if arg1.interrupted then
				__FUNC_1A0A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(1.000000, 0.000000, 0.120000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.300000, 0.300000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A0A_)
		end

		registerVal4:completeAnimation()
		registerVal2.FlaresLarge:setAlpha(1.000000)
		registerVal2.FlaresLarge:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.FlaresLarge:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.FlaresLarge:setShaderVector(1.000000, 0.000000, 0.300000, 0.000000, 0.000000)
		registerVal2.FlaresLarge:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.FlaresLarge:setShaderVector(3.000000, 0.500000, 0.500000, 0.000000, 0.000000)
		__FUNC_184B_(registerVal4, {})
		local function __FUNC_2A35_(arg0, arg1)
			local function __FUNC_2BFB_(arg0, arg1)
				local function __FUNC_2DBF_(arg0, arg1)
					local function __FUNC_2F7E_(arg0, arg1)
						local function __FUNC_3143_(arg0, arg1)
							local function __FUNC_3328_(arg0, arg1)
								local function __FUNC_3515_(arg0, arg1)
									local function __FUNC_36FC_(arg0, arg1)
										local function __FUNC_38C3_(arg0, arg1)
											local function __FUNC_3A87_(arg0, arg1)
												local function __FUNC_3C4B_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
													arg0:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
													arg0:setShaderVector(1.000000, 0.000000, 0.250000, 0.000000, 0.000000)
													arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
													arg0:setShaderVector(3.000000, 0.690000, 1.930000, 0.000000, 0.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_3C4B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
												arg0:setShaderVector(1.000000, 0.000000, 0.080000, 0.000000, 0.000000)
												arg0:setShaderVector(3.000000, 0.760000, 0.700000, 0.000000, 0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C4B_)
											end

											if arg1.interrupted then
												__FUNC_3A87_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
											arg0:setShaderVector(1.000000, 0.000000, 0.142273, 0.000000, 0.000000)
											arg0:setShaderVector(3.000000, 0.570455, 0.273182, 0.000000, 0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A87_)
										end

										if arg1.interrupted then
											__FUNC_38C3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
										arg0:setShaderVector(1.000000, 0.000000, 0.150000, 0.000000, 0.000000)
										arg0:setShaderVector(3.000000, 0.740000, 0.490000, 0.000000, 0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38C3_)
									end

									if arg1.interrupted then
										__FUNC_36FC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
									arg0:setShaderVector(1.000000, 0.000000, 0.250000, 0.000000, 0.000000)
									arg0:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
									arg0:setShaderVector(3.000000, 0.700000, 1.930000, 0.000000, 0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36FC_)
								end

								if arg1.interrupted then
									__FUNC_3515_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 329.000000, false, false, CoD.TweenType.Linear)
								arg0:setShaderVector(1.000000, 0.000000, 0.300556, 0.000000, 0.000000)
								arg0:setShaderVector(2.000000, 0.000000, 0.984444, 0.000000, 0.000000)
								arg0:setShaderVector(3.000000, 0.763333, 1.327222, 0.000000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3515_)
							end

							if arg1.interrupted then
								__FUNC_3328_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
							arg0:setShaderVector(1.000000, 0.000000, 0.380000, 0.000000, 0.000000)
							arg0:setShaderVector(2.000000, 0.000000, 0.960000, 0.000000, 0.000000)
							arg0:setShaderVector(3.000000, 0.840000, 0.380000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3328_)
						end

						if arg1.interrupted then
							__FUNC_3143_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 249.000000, false, false, CoD.TweenType.Linear)
						arg0:setShaderVector(1.000000, 0.000000, 0.175000, 0.000000, 0.000000)
						arg0:setShaderVector(3.000000, 0.920000, 0.905769, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3143_)
					end

					if arg1.interrupted then
						__FUNC_2F7E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setShaderVector(1.000000, 0.000000, 0.300000, 0.000000, 0.000000)
					arg0:setShaderVector(3.000000, 1.020000, 0.300000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F7E_)
				end

				if arg1.interrupted then
					__FUNC_2DBF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(1.000000, 0.000000, 0.286250, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.918250, 0.748250, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DBF_)
			end

			if arg1.interrupted then
				__FUNC_2BFB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(1.000000, 0.000000, 0.276250, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.844250, 1.074250, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BFB_)
		end

		registerVal5:completeAnimation()
		registerVal2.flaresSmall:setAlpha(1.000000)
		registerVal2.flaresSmall:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.flaresSmall:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.flaresSmall:setShaderVector(1.000000, 0.000000, 0.250000, 0.000000, 0.000000)
		registerVal2.flaresSmall:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.flaresSmall:setShaderVector(3.000000, 0.650000, 1.930000, 0.000000, 0.000000)
		__FUNC_2A35_(registerVal5, {})
		local function __FUNC_3F36_(arg0, arg1)
			local function __FUNC_40AF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2009.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_40AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 569.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40AF_)
		end

		registerVal9:completeAnimation()
		registerVal2.GLOWBALL:setAlpha(0.000000)
		__FUNC_3F36_(registerVal9, {})
		local function __FUNC_4261_(arg0, arg1)
			local function __FUNC_43DB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2289.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_43DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43DB_)
		end

		registerVal11:completeAnimation()
		registerVal2.glow1:setAlpha(0.000000)
		__FUNC_4261_(registerVal11, {})
		local function __FUNC_458D_(arg0, arg1)
			local function __FUNC_46E4_(arg0, arg1)
				local function __FUNC_485F_(arg0, arg1)
					local function __FUNC_49D7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 2009.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 0.550000, 0.000000)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.100000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_49D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49D7_)
				end

				if arg1.interrupted then
					__FUNC_485F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.970000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_485F_)
			end

			if arg1.interrupted then
				__FUNC_46E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46E4_)
		end

		registerVal12:completeAnimation()
		registerVal2.glow2:setRGB(1.000000, 0.550000, 0.000000)
		registerVal2.glow2:setAlpha(0.000000)
		registerVal2.glow2:setScale(1.000000)
		__FUNC_458D_(registerVal12, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal15.DefaultClip = __FUNC_1309_
	registerVal14.DefaultState = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_4BDA_(arg0)
		arg0.CallingCardscwldefaultsonyLogo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4BDA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

