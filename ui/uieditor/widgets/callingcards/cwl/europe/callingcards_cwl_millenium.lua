-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CWL.CallingCards_cwl_worldmap_widget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_cwl_millenium = registerVal1
function CoD.CallingCards_cwl_millenium.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_cwl_millenium)
	registerVal2.id = "CallingCards_cwl_millenium"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_callingcards_cwl_purple_01"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG5Empty = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_callingcards_cwl_purple_bg0b"))
	registerVal2:addElement(registerVal4)
	registerVal2.BG1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_callingcards_cwl_purple_bg0c"))
	registerVal2:addElement(registerVal5)
	registerVal2.BG2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_callingcards_cwl_purple_02c"))
	registerVal2:addElement(registerVal6)
	registerVal2.BG5Glow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 240.000000, 720.000000)
	registerVal7:setTopBottom(true, false, -238.000000, 422.000000)
	registerVal7:setAlpha(0.300000)
	registerVal7:setYRot(1.000000)
	registerVal7:setZRot(53.000000)
	registerVal7:setScale(0.700000)
	registerVal7:setImage(RegisterImage("uie_callingcards_cwl_ember2b"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal7:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.040000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.EMBER2c = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -141.000000, 339.000000)
	registerVal8:setTopBottom(true, false, -238.000000, 422.000000)
	registerVal8:setAlpha(0.400000)
	registerVal8:setYRot(1.000000)
	registerVal8:setZRot(53.000000)
	registerVal8:setScale(0.700000)
	registerVal8:setImage(RegisterImage("uie_callingcards_cwl_ember2b"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal8:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.030000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.EMBER2b = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal9:setTopBottom(true, false, -251.000000, 409.000000)
	registerVal9:setYRot(1.000000)
	registerVal9:setZRot(53.000000)
	registerVal9:setImage(RegisterImage("uie_callingcards_cwl_ember2"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal9:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.050000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.EMBER2 = registerVal9
	local registerVal10 = CoD.CallingCards_cwl_worldmap_widget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal10:setTopBottom(true, false, -1.930000, 118.070000)
	registerVal10:setRGB(0.220000, 0.220000, 0.220000)
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.CallingCardscwlworldmapwidget0 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 3.000000, 480.000000)
	registerVal11:setTopBottom(true, false, 0.540000, 122.700000)
	registerVal11:setImage(RegisterImage("uie_callingcards_cwl_millenium"))
	registerVal2:addElement(registerVal11)
	registerVal2.LOGO = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 146.000000, 184.000000)
	registerVal12:setTopBottom(true, false, 75.220000, 160.920000)
	registerVal12:setRGB(0.000000, 0.050000, 1.000000)
	registerVal12:setZRot(-54.000000)
	registerVal12:setScale(1.400000)
	registerVal12:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.GLOWBALL = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_FAE_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BG5Empty:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_136C_(arg0, arg1)
			local function __FUNC_14E7_(arg0, arg1)
				local function __FUNC_163C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_163C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_163C_)
			end

			if arg1.interrupted then
				__FUNC_14E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E7_)
		end

		registerVal4:completeAnimation()
		registerVal2.BG1:setAlpha(0.000000)
		__FUNC_136C_(registerVal4, {})
		local function __FUNC_17F1_(arg0, arg1)
			local function __FUNC_1948_(arg0, arg1)
				local function __FUNC_1AC3_(arg0, arg1)
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
					__FUNC_1AC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AC3_)
			end

			if arg1.interrupted then
				__FUNC_1948_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1948_)
		end

		registerVal5:completeAnimation()
		registerVal2.BG2:setAlpha(0.000000)
		__FUNC_17F1_(registerVal5, {})
		local function __FUNC_1C75_(arg0, arg1)
			local function __FUNC_1DCC_(arg0, arg1)
				local function __FUNC_1F24_(arg0, arg1)
					local function __FUNC_207C_(arg0, arg1)
						local function __FUNC_21F7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_21F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21F7_)
					end

					if arg1.interrupted then
						__FUNC_207C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_207C_)
				end

				if arg1.interrupted then
					__FUNC_1F24_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F24_)
			end

			if arg1.interrupted then
				__FUNC_1DCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DCC_)
		end

		registerVal6:completeAnimation()
		registerVal2.BG5Glow:setAlpha(0.000000)
		__FUNC_1C75_(registerVal6, {})
		local function __FUNC_23A9_(arg0, arg1)
			local function __FUNC_25B6_(arg0, arg1)
				local function __FUNC_27E4_(arg0, arg1)
					local function __FUNC_2A14_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 284.000000, 322.000000)
						arg0:setTopBottom(true, false, -71.850000, 13.850000)
						arg0:setAlpha(0.000000)
						arg0:setXRot(0.000000)
						arg0:setYRot(0.000000)
						arg0:setZRot(-27.000000)
						arg0:setScale(1.600000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2A14_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 270.000000, 308.000000)
					arg0:setTopBottom(true, false, -42.850000, 42.850000)
					arg0:setAlpha(1.000000)
					arg0:setZRot(-27.000000)
					arg0:setScale(1.410000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A14_)
				end

				if arg1.interrupted then
					__FUNC_27E4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 221.000000, 259.000000)
				arg0:setTopBottom(true, false, 22.220000, 107.920000)
				arg0:setAlpha(0.650000)
				arg0:setZRot(-39.000000)
				arg0:setScale(1.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27E4_)
			end

			if arg1.interrupted then
				__FUNC_25B6_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 154.000000, 192.000000)
			arg0:setTopBottom(true, false, 69.220000, 154.920000)
			arg0:setAlpha(0.300000)
			arg0:setScale(1.100000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25B6_)
		end

		registerVal12:completeAnimation()
		registerVal2.GLOWBALL:setLeftRight(true, false, 111.000000, 149.000000)
		registerVal2.GLOWBALL:setTopBottom(true, false, 96.220000, 181.920000)
		registerVal2.GLOWBALL:setAlpha(0.000000)
		registerVal2.GLOWBALL:setXRot(0.000000)
		registerVal2.GLOWBALL:setYRot(0.000000)
		registerVal2.GLOWBALL:setZRot(-63.000000)
		registerVal2.GLOWBALL:setScale(0.800000)
		__FUNC_23A9_(registerVal12, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal14.DefaultClip = __FUNC_FAE_
	registerVal13.DefaultState = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_2CB8_(arg0)
		arg0.CallingCardscwlworldmapwidget0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2CB8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

