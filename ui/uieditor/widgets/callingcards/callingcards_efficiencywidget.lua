-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_EfficiencyWidget = registerVal1
function CoD.CallingCards_EfficiencyWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_EfficiencyWidget)
	registerVal2.id = "CallingCards_EfficiencyWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_efficiency_bgdark"))
	registerVal2:addElement(registerVal3)
	registerVal2.BGDark = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_efficiency_bglight"))
	registerVal2:addElement(registerVal4)
	registerVal2.BGLight = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 89.160000, 269.160000)
	registerVal5:setTopBottom(true, false, -44.180000, 75.820000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_efficiency_smoke1"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Smoke1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 188.000000, 284.000000)
	registerVal6:setTopBottom(true, false, -30.190000, 89.820000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_efficiency_smoke2"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -81.000000, 39.000000)
	registerVal7:setTopBottom(true, false, -128.190000, -44.180000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_efficiency_smoke3"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image1 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 257.000000, 273.620000)
	registerVal8:setTopBottom(true, false, 41.820000, 82.890000)
	registerVal8:setRGB(1.000000, 0.080000, 0.000000)
	registerVal8:setAlpha(0.600000)
	registerVal8:setZRot(90.000000)
	registerVal8:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.GlowOrangeOver0 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_A6F_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_F3C_(arg0, arg1)
			local function __FUNC_10B7_(arg0, arg1)
				local function __FUNC_122F_(arg0, arg1)
					local function __FUNC_13A7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_13A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A7_)
				end

				if arg1.interrupted then
					__FUNC_122F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_122F_)
			end

			if arg1.interrupted then
				__FUNC_10B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B7_)
		end

		registerVal4:completeAnimation()
		registerVal2.BGLight:setAlpha(1.000000)
		__FUNC_F3C_(registerVal4, {})
		local function __FUNC_1559_(arg0, arg1)
			local function __FUNC_1750_(arg0, arg1)
				local function __FUNC_1980_(arg0, arg1)
					local function __FUNC_1BB0_(arg0, arg1)
						local function __FUNC_1DBD_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 369.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 93.610000, 273.620000)
							arg0:setTopBottom(true, false, -44.180000, 75.820000)
							arg0:setAlpha(0.000000)
							arg0:setZRot(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1DBD_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1420.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 89.160000, 269.160000)
						arg0:setTopBottom(true, false, -44.180000, 75.820000)
						arg0:setZRot(0.000000)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBD_)
					end

					if arg1.interrupted then
						__FUNC_1BB0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -21.810000, 158.190000)
					arg0:setTopBottom(true, false, -137.700000, -17.700000)
					arg0:setAlpha(0.000000)
					arg0:setZRot(-27.710000)
					arg0:setScale(1.430000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BB0_)
				end

				if arg1.interrupted then
					__FUNC_1980_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1379.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -39.000000, 141.000000)
				arg0:setTopBottom(true, false, -152.190000, -32.190000)
				arg0:setAlpha(0.800000)
				arg0:setZRot(-32.000000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1980_)
			end

			if arg1.interrupted then
				__FUNC_1750_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 89.160000, 269.160000)
			arg0:setAlpha(0.410000)
			arg0:setZRot(-10.030000)
			arg0:setScale(1.160000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1750_)
		end

		registerVal5:completeAnimation()
		registerVal2.Smoke1:setLeftRight(true, false, 93.610000, 273.620000)
		registerVal2.Smoke1:setTopBottom(true, false, -44.180000, 75.820000)
		registerVal2.Smoke1:setAlpha(0.000000)
		registerVal2.Smoke1:setZRot(0.000000)
		registerVal2.Smoke1:setScale(1.000000)
		__FUNC_1559_(registerVal5, {})
		local function __FUNC_2021_(arg0, arg1)
			local function __FUNC_2178_(arg0, arg1)
				local function __FUNC_2386_(arg0, arg1)
					local function __FUNC_256F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 8.600000, 104.600000)
						arg0:setTopBottom(true, false, -120.000000, 0.000000)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.900000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_256F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1930.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 8.600000, 104.600000)
					arg0:setTopBottom(true, false, -120.000000, 0.000000)
					arg0:setScale(1.900000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_256F_)
				end

				if arg1.interrupted then
					__FUNC_2386_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 166.700000, 262.700000)
				arg0:setTopBottom(true, false, -40.850000, 79.150000)
				arg0:setAlpha(0.450000)
				arg0:setScale(1.110000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2386_)
			end

			if arg1.interrupted then
				__FUNC_2178_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1440.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2178_)
		end

		registerVal6:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 188.000000, 284.000000)
		registerVal2.Image0:setTopBottom(true, false, -30.190000, 89.820000)
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.Image0:setScale(1.000000)
		__FUNC_2021_(registerVal6, {})
		local function __FUNC_27AF_(arg0, arg1)
			local function __FUNC_2904_(arg0, arg1)
				local function __FUNC_2AEF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 110.000000, 230.000000)
					arg0:setTopBottom(true, false, -77.110000, 6.890000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2AEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1150.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 131.510000, 251.510000)
				arg0:setTopBottom(true, false, -53.760000, 30.240000)
				arg0:setAlpha(0.670000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AEF_)
			end

			if arg1.interrupted then
				__FUNC_2904_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2904_)
		end

		registerVal7:beginAnimation("keyframe", 2309.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setLeftRight(true, false, 180.000000, 300.000000)
		registerVal7:setTopBottom(true, false, -1.110000, 82.890000)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_27AF_)
		local function __FUNC_2D11_(arg0, arg1)
			local function __FUNC_2E68_(arg0, arg1)
				local function __FUNC_2FE3_(arg0, arg1)
					local function __FUNC_315B_(arg0, arg1)
						local function __FUNC_32D3_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 2349.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_32D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.550000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32D3_)
					end

					if arg1.interrupted then
						__FUNC_315B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.180000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_315B_)
				end

				if arg1.interrupted then
					__FUNC_2FE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.410000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FE3_)
			end

			if arg1.interrupted then
				__FUNC_2E68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1419.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E68_)
		end

		registerVal8:completeAnimation()
		registerVal2.GlowOrangeOver0:setAlpha(0.000000)
		__FUNC_2D11_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_A6F_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

