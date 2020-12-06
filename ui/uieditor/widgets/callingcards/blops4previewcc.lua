-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ZM_FX.ZmFx_Spark1Img")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Blops4PreviewCC = registerVal1
function CoD.Blops4PreviewCC.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.Blops4PreviewCC)
	registerVal2.id = "Blops4PreviewCC"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 124.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blops4_metal_backplate"))
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardBlops4Bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 49.000000, 177.000000)
	registerVal4:setTopBottom(false, false, -60.000000, 68.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blops4_metal_socket"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
	registerVal4:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BgBackplateSocket = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 289.000000, 417.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blops4_burning"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
	registerVal5:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.blops4BurnIn = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 98.000000, 610.000000)
	registerVal6:setTopBottom(true, false, -70.500000, 207.500000)
	registerVal6:setScale(0.560000)
	registerVal6:setImage(RegisterImage("uie_t7_blops4_metal_lightflare"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.flare0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 290.000000, 418.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blops4_logo"))
	registerVal2:addElement(registerVal7)
	registerVal2.blops4LogoHot = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 290.000000, 418.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal8:setAlpha(0.970000)
	registerVal8:setImage(RegisterImage("uie_t7_blops4_glowbar"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.blops4LogoHot0 = registerVal8
	local registerVal9 = CoD.ZmFx_Spark1Img.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 282.000000, 394.000000)
	registerVal9:setTopBottom(true, false, -45.000000, 123.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZRot(200.000000)
	registerVal9:setScale(0.300000)
	registerVal9.Image00:setShaderVector(0.000000, 10.000000, 2.000000, 0.000000, 0.000000)
	registerVal9.Image00:setShaderVector(1.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.ZmFxSpark1Img0 = registerVal9
	local registerVal10 = CoD.ZmFx_Spark1Img.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 302.000000, 414.000000)
	registerVal10:setTopBottom(true, false, -45.000000, 123.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setYRot(156.000000)
	registerVal10:setZRot(185.000000)
	registerVal10:setScale(0.300000)
	registerVal10.Image00:setShaderVector(0.000000, 10.000000, 2.000000, 0.000000, 0.000000)
	registerVal10.Image00:setShaderVector(1.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.ZmFxSpark1Img = registerVal10
	local registerVal11 = CoD.ZmFx_Spark1Img.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 321.000000, -47.000000)
	registerVal11:setTopBottom(true, true, -46.000000, 2.000000)
	registerVal11:setYRot(156.000000)
	registerVal11:setZRot(185.000000)
	registerVal11:setScale(0.300000)
	registerVal11.Image00:setShaderVector(0.000000, 10.000000, 2.000000, 0.000000, 0.000000)
	registerVal11.Image00:setShaderVector(1.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.ZmFxSpark1Img1 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal12:setTopBottom(true, false, -128.000000, 0.000000)
	registerVal12:setRGB(0.350000, 0.350000, 0.350000)
	registerVal2:addElement(registerVal12)
	registerVal2.Image0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal13:setTopBottom(true, false, 124.000000, 252.000000)
	registerVal13:setRGB(0.350000, 0.350000, 0.350000)
	registerVal2:addElement(registerVal13)
	registerVal2.Image1 = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1091_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_1D06_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 8000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setImage(RegisterImage("uie_t7_blops4_metal_backplate"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.CallingCardBlops4Bg:setImage(RegisterImage("uie_t7_blops4_metal_backplate"))
		__FUNC_1D06_(registerVal3, {})
		local function __FUNC_1EFA_(arg0, arg1)
			local function __FUNC_2094_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 4019.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, 49.000000, 177.000000)
				arg0:setTopBottom(false, false, -60.000000, 68.000000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.000000)
				arg0:setImage(RegisterImage("uie_t7_blops4_metal_socket"))
				arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
				arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2094_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(2.000000, 0.114951, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2094_)
		end

		registerVal4:completeAnimation()
		registerVal2.BgBackplateSocket:setLeftRight(false, false, 49.000000, 177.000000)
		registerVal2.BgBackplateSocket:setTopBottom(false, false, -60.000000, 68.000000)
		registerVal2.BgBackplateSocket:setAlpha(1.000000)
		registerVal2.BgBackplateSocket:setScale(1.000000)
		registerVal2.BgBackplateSocket:setImage(RegisterImage("uie_t7_blops4_metal_socket"))
		registerVal2.BgBackplateSocket:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
		registerVal2.BgBackplateSocket:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BgBackplateSocket:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BgBackplateSocket:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BgBackplateSocket:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1EFA_(registerVal4, {})
		local function __FUNC_2463_(arg0, arg1)
			local function __FUNC_25FC_(arg0, arg1)
				local function __FUNC_2798_(arg0, arg1)
					local function __FUNC_2913_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 480.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 289.000000, 417.000000)
						arg0:setTopBottom(true, false, 0.000000, 128.000000)
						arg0:setAlpha(0.000000)
						arg0:setImage(RegisterImage("uie_t7_blops4_burning"))
						arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
						arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
						arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2913_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 399.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.550000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2913_)
				end

				if arg1.interrupted then
					__FUNC_2798_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2798_)
			end

			if arg1.interrupted then
				__FUNC_25FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 3200.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(2.000000, 0.867204, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25FC_)
		end

		registerVal5:completeAnimation()
		registerVal2.blops4BurnIn:setLeftRight(true, false, 289.000000, 417.000000)
		registerVal2.blops4BurnIn:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.blops4BurnIn:setAlpha(1.000000)
		registerVal2.blops4BurnIn:setImage(RegisterImage("uie_t7_blops4_burning"))
		registerVal2.blops4BurnIn:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_normal"))
		registerVal2.blops4BurnIn:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.blops4BurnIn:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.blops4BurnIn:setShaderVector(2.000000, 0.050000, 0.000000, 0.000000, 0.000000)
		registerVal2.blops4BurnIn:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_2463_(registerVal5, {})
		local function __FUNC_2CB7_(arg0, arg1)
			local function __FUNC_2EC2_(arg0, arg1)
				local function __FUNC_30AB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 101.000000, 613.000000)
					arg0:setTopBottom(true, false, -70.000000, 208.000000)
					arg0:setAlpha(0.000000)
					arg0:setScale(0.500000)
					arg0:setImage(RegisterImage("uie_t7_blops4_metal_lightflare"))
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_30AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 539.000000, true, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 101.000000, 613.000000)
				arg0:setTopBottom(true, false, -70.000000, 208.000000)
				arg0:setScale(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30AB_)
			end

			if arg1.interrupted then
				__FUNC_2EC2_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 920.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 100.630000, 612.630000)
			arg0:setTopBottom(true, false, -70.740000, 207.260000)
			arg0:setAlpha(1.000000)
			arg0:setScale(0.600000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EC2_)
		end

		registerVal6:beginAnimation("keyframe", 2500.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setLeftRight(true, false, 100.000000, 612.000000)
		registerVal6:setTopBottom(true, false, -72.000000, 206.000000)
		registerVal6:setAlpha(0.000000)
		registerVal6:setScale(0.000000)
		registerVal6:setImage(RegisterImage("uie_t7_blops4_metal_lightflare"))
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_2CB7_)
		local function __FUNC_3355_(arg0, arg1)
			local function __FUNC_34CF_(arg0, arg1)
				local function __FUNC_3647_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1080.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 290.000000, 418.000000)
					arg0:setTopBottom(true, false, -2.000000, 126.000000)
					arg0:setAlpha(1.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3647_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 380.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3647_)
			end

			if arg1.interrupted then
				__FUNC_34CF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 459.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.550000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34CF_)
		end

		registerVal7:beginAnimation("keyframe", 2900.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setLeftRight(true, false, 290.000000, 418.000000)
		registerVal7:setTopBottom(true, false, -2.000000, 126.000000)
		registerVal7:setAlpha(0.000000)
		registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_3355_)
		local function __FUNC_38F6_(arg0, arg1)
			local function __FUNC_3A6F_(arg0, arg1)
				local function __FUNC_3BC4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(1.000000, 0.660000, 0.000000)
					arg0:setAlpha(0.000000)
					arg0:setImage(RegisterImage("uie_t7_blops4_glowbar"))
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3BC4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BC4_)
			end

			if arg1.interrupted then
				__FUNC_3A6F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A6F_)
		end

		registerVal8:beginAnimation("keyframe", 3039.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setRGB(1.000000, 0.660000, 0.000000)
		registerVal8:setAlpha(0.000000)
		registerVal8:setImage(RegisterImage("uie_t7_blops4_glowbar"))
		registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_38F6_)
		local function __FUNC_3E8D_(arg0, arg1)
			local function __FUNC_403F_(arg0, arg1)
				local function __FUNC_4204_(arg0, arg1)
					local function __FUNC_43CC_(arg0, arg1)
						local function __FUNC_4594_(arg0, arg1)
							local function __FUNC_4724_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 282.000000, 394.000000)
								arg0:setTopBottom(true, false, 27.000000, 195.000000)
								arg0:setAlpha(0.000000)
								arg0:setZRot(200.000000)
								arg0:setScale(0.300000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4724_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 31.500000, 199.500000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4724_)
						end

						if arg1.interrupted then
							__FUNC_4594_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 281.000000, 393.000000)
						arg0:setTopBottom(true, false, 35.500000, 193.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4594_)
					end

					if arg1.interrupted then
						__FUNC_43CC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1040.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 281.840000, 393.840000)
					arg0:setTopBottom(true, false, 31.210000, 190.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43CC_)
				end

				if arg1.interrupted then
					__FUNC_4204_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 281.000000, 393.000000)
				arg0:setTopBottom(true, false, -4.510000, 158.370000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4204_)
			end

			if arg1.interrupted then
				__FUNC_403F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -48.000000, 120.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_403F_)
		end

		registerVal9:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setLeftRight(true, false, 282.000000, 394.000000)
		registerVal9:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal9:setAlpha(0.000000)
		registerVal9:setZRot(200.000000)
		registerVal9:setScale(0.300000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_3E8D_)
		local function __FUNC_498E_(arg0, arg1)
			local function __FUNC_4B77_(arg0, arg1)
				local function __FUNC_4D3C_(arg0, arg1)
					local function __FUNC_4ECC_(arg0, arg1)
						local function __FUNC_505C_(arg0, arg1)
							local function __FUNC_5224_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 304.000000, 416.000000)
								arg0:setTopBottom(true, false, 36.000000, 204.000000)
								arg0:setAlpha(0.000000)
								arg0:setYRot(156.000000)
								arg0:setZRot(185.000000)
								arg0:setScale(0.300000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_5224_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 301.930000, 413.930000)
							arg0:setTopBottom(true, false, 42.000000, 210.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5224_)
						end

						if arg1.interrupted then
							__FUNC_505C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 37.500000, 193.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_505C_)
					end

					if arg1.interrupted then
						__FUNC_4ECC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1040.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 31.050000, 188.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ECC_)
				end

				if arg1.interrupted then
					__FUNC_4D3C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 303.000000, 415.000000)
				arg0:setTopBottom(true, false, -4.000000, 157.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D3C_)
			end

			if arg1.interrupted then
				__FUNC_4B77_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 305.000000, 417.000000)
			arg0:setTopBottom(true, false, -48.000000, 120.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B77_)
		end

		registerVal10:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setLeftRight(true, false, 302.000000, 414.000000)
		registerVal10:setTopBottom(true, false, -45.000000, 123.000000)
		registerVal10:setAlpha(0.000000)
		registerVal10:setYRot(156.000000)
		registerVal10:setZRot(185.000000)
		registerVal10:setScale(0.300000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_498E_)
		local function __FUNC_54B0_(arg0, arg1)
			local function __FUNC_569B_(arg0, arg1)
				local function __FUNC_5860_(arg0, arg1)
					local function __FUNC_5A28_(arg0, arg1)
						local function __FUNC_5BF0_(arg0, arg1)
							local function __FUNC_5DB8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 322.000000, -46.000000)
								arg0:setTopBottom(true, true, 27.000000, 75.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_5DB8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, true, 320.400000, -47.600000)
							arg0:setTopBottom(true, true, 33.000000, 76.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DB8_)
						end

						if arg1.interrupted then
							__FUNC_5BF0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, true, 321.230000, -46.770000)
						arg0:setTopBottom(true, true, 34.500000, 71.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BF0_)
					end

					if arg1.interrupted then
						__FUNC_5A28_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1040.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, true, 320.200000, -47.800000)
					arg0:setTopBottom(true, true, 31.130000, 69.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A28_)
				end

				if arg1.interrupted then
					__FUNC_5860_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, true, 320.070000, -47.930000)
				arg0:setTopBottom(true, true, -4.000000, 38.370000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5860_)
			end

			if arg1.interrupted then
				__FUNC_569B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, true, 324.000000, -44.000000)
			arg0:setTopBottom(true, true, -50.150000, -2.150000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_569B_)
		end

		registerVal11:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setLeftRight(true, true, 323.000000, -45.000000)
		registerVal11:setTopBottom(true, true, -46.150000, 1.850000)
		registerVal11:setAlpha(0.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_54B0_)
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal15.DefaultClip = __FUNC_1091_
	registerVal14.DefaultState = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_5FDD_(arg0)
		arg0.ZmFxSpark1Img0:close()
		arg0.ZmFxSpark1Img:close()
		arg0.ZmFxSpark1Img1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5FDD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

