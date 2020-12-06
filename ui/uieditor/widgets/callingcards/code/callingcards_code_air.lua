-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CODE.CallingCards_code_air_plane")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_code_air = registerVal1
function CoD.CallingCards_code_air.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_code_air)
	registerVal2.id = "CallingCards_code_air"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_air_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_air_bg2"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal4:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.mountain = registerVal4
	local registerVal5 = CoD.CallingCards_code_air_plane.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardscodeairplane0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcards_air_clouds"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal6:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 1.500000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.clouds = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -55.680000, 563.320000)
	registerVal7:setTopBottom(true, false, 120.000000, 248.000000)
	registerVal7:setRGB(0.280000, 0.280000, 0.280000)
	registerVal2:addElement(registerVal7)
	registerVal2.Image0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -55.680000, 563.320000)
	registerVal8:setTopBottom(true, false, -128.000000, 0.000000)
	registerVal8:setRGB(0.280000, 0.280000, 0.280000)
	registerVal2:addElement(registerVal8)
	registerVal2.Image1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -619.000000, 0.000000)
	registerVal9:setTopBottom(true, false, -4.000000, 124.000000)
	registerVal9:setRGB(0.280000, 0.280000, 0.280000)
	registerVal2:addElement(registerVal9)
	registerVal2.Image2 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 480.000000, 1099.000000)
	registerVal10:setTopBottom(true, false, -4.000000, 124.000000)
	registerVal10:setRGB(0.280000, 0.280000, 0.280000)
	registerVal2:addElement(registerVal10)
	registerVal2.Image3 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_B67_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_E55_(arg0, arg1)
			local function __FUNC_FE4_(arg0, arg1)
				local function __FUNC_1174_(arg0, arg1)
					local function __FUNC_1304_(arg0, arg1)
						local function __FUNC_1494_(arg0, arg1)
							local function __FUNC_1624_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 919.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 0.000000, 480.000000)
								arg0:setTopBottom(true, false, 0.000000, 120.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1624_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 5.000000, 125.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1624_)
						end

						if arg1.interrupted then
							__FUNC_1494_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1140.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 9.000000, 129.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1494_)
					end

					if arg1.interrupted then
						__FUNC_1304_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 480.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -4.000000, 116.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1304_)
				end

				if arg1.interrupted then
					__FUNC_1174_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 359.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, -12.000000, 108.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1174_)
			end

			if arg1.interrupted then
				__FUNC_FE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 920.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -14.120000, 105.880000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FE4_)
		end

		registerVal5:completeAnimation()
		registerVal2.CallingCardscodeairplane0:setLeftRight(true, false, 0.000000, 480.000000)
		registerVal2.CallingCardscodeairplane0:setTopBottom(true, false, 0.000000, 120.000000)
		__FUNC_E55_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.clouds:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
		registerVal2.clouds:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.clouds:setShaderVector(1.000000, 1.500000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_B67_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	local function __FUNC_1821_(arg0)
		arg0.CallingCardscodeairplane0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1821_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

