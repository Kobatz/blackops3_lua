-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AAR.XPbarFrame")
require("ui.uieditor.widgets.AAR.PerformanceTab.ContractCryptokeyBatch")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.NextKeyProgress = registerVal1
function CoD.NextKeyProgress.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.NextKeyProgress)
	registerVal2.id = "NextKeyProgress"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 1.000000, -0.740000)
	registerVal3:setRGB(0.160000, 0.160000, 0.160000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.cryptokeyProgressBgGrey = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal4:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.009950, 0.076923, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cachitBG0 = registerVal4
	local registerVal5 = CoD.XPbarFrame.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 84.830000, -4.000000)
	registerVal5:setTopBottom(false, true, -28.000000, -5.740000)
	registerVal2:addElement(registerVal5)
	registerVal2.XpBarFrame = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 88.000000, -7.000000)
	registerVal6:setTopBottom(false, true, -24.000000, -10.000000)
	registerVal6:setAlpha(0.100000)
	registerVal2:addElement(registerVal6)
	registerVal2.cryptokeyProgressBg = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 88.000000, -7.000000)
	registerVal7:setTopBottom(false, true, -24.000000, -10.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1A50_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal7:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "progress", __FUNC_1A50_)
	registerVal2:addElement(registerVal7)
	registerVal2.cryptokeyProgress = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 88.000000, -7.000000)
	registerVal8:setTopBottom(false, true, -24.000000, -10.000000)
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1BA8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal8:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "animProgress", __FUNC_1BA8_)
	registerVal2:addElement(registerVal8)
	registerVal2.cryptokeyProgressForNewKey = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 83.000000, -7.000000)
	registerVal9:setTopBottom(true, false, 15.260000, 51.000000)
	registerVal9:setAlpha(0.410000)
	registerVal9:setImage(RegisterImage("uie_t7_mp_menu_startflow_meterglow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.MeterGlow = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 83.000000, 183.500000)
	registerVal10:setTopBottom(false, true, -45.000000, -25.000000)
	registerVal10:setScale(0.900000)
	registerVal10:setText(Engine.Localize("MPUI_NEXT_KEY_CAPS"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal10)
	registerVal2.nextKeyText = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -2.000000, 23.000000)
	registerVal11:setTopBottom(false, false, -4.000000, 21.000000)
	registerVal11:setImage(RegisterImage("uie_t7_icon_blackmarket_cryptokey"))
	registerVal2:addElement(registerVal11)
	registerVal2.CryptoIcon = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 24.140000, 84.830000)
	registerVal12:setTopBottom(false, false, -3.240000, 18.760000)
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_1D00_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "keyCount", __FUNC_1D00_)
	registerVal2:addElement(registerVal12)
	registerVal2.CryptoCount = registerVal12
	local registerVal13 = LUI.UITightText.new()
	registerVal13:setLeftRight(true, false, 671.500000, 869.500000)
	registerVal13:setTopBottom(false, false, -16.240000, 13.760000)
	registerVal13:setRGB(0.410000, 0.740000, 0.270000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setText(LocalizeToUpperString("MPUI_BM_CRYPTOKEY_EARNED"))
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13:setLetterSpacing(1.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.CryptoKeyNewCount = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 630.690000, 667.830000)
	registerVal14:setTopBottom(false, false, -19.000000, 18.140000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_icon_blackmarket_cryptokey"))
	registerVal2:addElement(registerVal14)
	registerVal2.CryptoIcon0 = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 559.000000, 630.690000)
	registerVal15:setTopBottom(false, false, -21.240000, 18.760000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1DFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "keyCount", __FUNC_1DFB_)
	registerVal2:addElement(registerVal15)
	registerVal2.CryptoCountNew0 = registerVal15
	local registerVal16 = LUI.UIElement.new()
	registerVal16:setLeftRight(true, false, -140.500000, -92.500000)
	registerVal16:setTopBottom(true, false, 35.500000, 83.500000)
	registerVal16:setPlaySoundDirect(true)
	registerVal2:addElement(registerVal16)
	registerVal2.Sound = registerVal16
	local registerVal17 = CoD.ContractCryptokeyBatch.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 78.000000, 352.000000)
	registerVal17:setTopBottom(true, false, 1.000000, 49.260000)
	registerVal17:setAlpha(0.000000)
	local function __FUNC_1EB2_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:subscribeToGlobalModel(arg1, "CryptoKeyProgress", nil, __FUNC_1EB2_)
	registerVal2:addElement(registerVal17)
	registerVal2.ContractCryptokeyBatch = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -247.000000, 247.000000)
	registerVal18:setTopBottom(true, false, -30.240000, 77.760000)
	registerVal18:setRGB(0.930000, 0.730000, 0.380000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setScale(1.200000)
	registerVal18:setImage(RegisterImage("uie_t7_hud_notficationhighlight"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.highlight = registerVal18
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_1F02_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyProgressBgGrey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.XpBarFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.cryptokeyProgressBg:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.cryptokeyProgress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.cryptokeyProgressForNewKey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.MeterGlow:setAlpha(0.410000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.nextKeyText:setText(Engine.Localize("MPUI_NEXT_KEY_CAPS"))
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal2.CryptoCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CryptoKeyNewCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CryptoIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CryptoCountNew0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal17:completeAnimation()
		registerVal2.ContractCryptokeyBatch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_1F02_
	local function __FUNC_2531_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyProgressBgGrey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.cryptokeyProgress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_29EE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.cryptokeyProgressForNewKey:setAlpha(1.000000)
		__FUNC_29EE_(registerVal8, {})
		registerVal13:completeAnimation()
		registerVal2.CryptoKeyNewCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CryptoIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CryptoCountNew0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_2BA1_(arg0, arg2)
			if not arg2.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setPlaySoundDirect(true)
			arg0:playSound("uin_bm_bar_fill_tail", arg1)
			if arg2.interrupted then
				registerVal2.clipFinished(arg0, arg2)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(true)
		registerVal2.Sound:playSound("uin_bm_bar_fill_main", arg1)
		__FUNC_2BA1_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ContractCryptokeyBatch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.NewXPNoNewKey = __FUNC_2531_
	local function __FUNC_2D9B_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyProgressBgGrey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_3735_(arg0, arg1)
			local function __FUNC_38AF_(arg0, arg1)
				local function __FUNC_3A04_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3A04_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1350.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A04_)
			end

			if arg1.interrupted then
				__FUNC_38AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38AF_)
		end

		registerVal5:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_3735_)
		local function __FUNC_3BB9_(arg0, arg1)
			local function __FUNC_3D33_(arg0, arg1)
				local function __FUNC_3E88_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.100000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3E88_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1330.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E88_)
			end

			if arg1.interrupted then
				__FUNC_3D33_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1069.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D33_)
		end

		registerVal6:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.100000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_3BB9_)
		registerVal7:completeAnimation()
		registerVal2.cryptokeyProgress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_403D_(arg0, arg1)
			local function __FUNC_4194_(arg0, arg1)
				local function __FUNC_431F_(arg0, arg1)
					local function __FUNC_4474_(arg0, arg1)
						local function __FUNC_45EF_(arg0, arg1)
							local function __FUNC_4744_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 1.000000, 1.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4744_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4744_)
						end

						if arg1.interrupted then
							__FUNC_45EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45EF_)
					end

					if arg1.interrupted then
						__FUNC_4474_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 979.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4474_)
				end

				if arg1.interrupted then
					__FUNC_431F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.420000, 0.750000, 0.270000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_431F_)
			end

			if arg1.interrupted then
				__FUNC_4194_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4194_)
		end

		registerVal8:completeAnimation()
		registerVal2.cryptokeyProgressForNewKey:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.cryptokeyProgressForNewKey:setAlpha(1.000000)
		__FUNC_403D_(registerVal8, {})
		local function __FUNC_4922_(arg0, arg1)
			local function __FUNC_4ACE_(arg0, arg1)
				local function __FUNC_4C47_(arg0, arg1)
					local function __FUNC_4DBF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(0.430000, 0.750000, 0.280000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4DBF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DBF_)
				end

				if arg1.interrupted then
					__FUNC_4C47_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C47_)
			end

			if arg1.interrupted then
				__FUNC_4ACE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.430000, 0.750000, 0.280000)
			arg0:setAlpha(0.140000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ACE_)
		end

		registerVal9:completeAnimation()
		registerVal2.MeterGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.MeterGlow:setAlpha(0.410000)
		__FUNC_4922_(registerVal9, {})
		local function __FUNC_4FA4_(arg0, arg1)
			local function __FUNC_511F_(arg0, arg1)
				local function __FUNC_5274_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5274_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1350.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5274_)
			end

			if arg1.interrupted then
				__FUNC_511F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_511F_)
		end

		registerVal10:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(1.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_4FA4_)
		local function __FUNC_5429_(arg0, arg1)
			local function __FUNC_55A3_(arg0, arg1)
				local function __FUNC_56F8_(arg0, arg1)
					local function __FUNC_5850_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5850_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5850_)
				end

				if arg1.interrupted then
					__FUNC_56F8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1249.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56F8_)
			end

			if arg1.interrupted then
				__FUNC_55A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55A3_)
		end

		registerVal11:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(1.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_5429_)
		local function __FUNC_5A05_(arg0, arg1)
			local function __FUNC_5B7F_(arg0, arg1)
				local function __FUNC_5CD4_(arg0, arg1)
					local function __FUNC_5E2C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5E2C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E2C_)
				end

				if arg1.interrupted then
					__FUNC_5CD4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1239.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CD4_)
			end

			if arg1.interrupted then
				__FUNC_5B7F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B7F_)
		end

		registerVal12:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setRGB(1.000000, 1.000000, 1.000000)
		registerVal12:setAlpha(1.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_5A05_)
		local function __FUNC_6005_(arg0, arg1)
			local function __FUNC_615C_(arg0, arg1)
				local function __FUNC_62EC_(arg0, arg1)
					local function __FUNC_649F_(arg0, arg1)
						local function __FUNC_662C_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 86.040000, 359.540000)
							arg0:setTopBottom(false, false, -16.240000, 13.760000)
							arg0:setRGB(0.410000, 0.740000, 0.270000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_662C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 166.040000, 439.540000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_662C_)
					end

					if arg1.interrupted then
						__FUNC_649F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 214.440000, 487.940000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_649F_)
				end

				if arg1.interrupted then
					__FUNC_62EC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 450.340000, 723.840000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62EC_)
			end

			if arg1.interrupted then
				__FUNC_615C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_615C_)
		end

		registerVal13:completeAnimation()
		registerVal2.CryptoKeyNewCount:setLeftRight(true, false, 671.500000, 945.000000)
		registerVal2.CryptoKeyNewCount:setTopBottom(false, false, -16.240000, 13.760000)
		registerVal2.CryptoKeyNewCount:setRGB(0.410000, 0.740000, 0.270000)
		registerVal2.CryptoKeyNewCount:setAlpha(0.000000)
		__FUNC_6005_(registerVal13, {})
		local function __FUNC_6884_(arg0, arg1)
			local function __FUNC_6A14_(arg0, arg1)
				local function __FUNC_6BC7_(arg0, arg1)
					local function __FUNC_6D54_(arg0, arg1)
						local function __FUNC_6F07_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 440.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 47.240000, 84.380000)
							arg0:setTopBottom(false, false, -19.000000, 18.140000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_6F07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 47.240000, 84.380000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F07_)
					end

					if arg1.interrupted then
						__FUNC_6D54_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 127.160000, 164.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D54_)
				end

				if arg1.interrupted then
					__FUNC_6BC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 175.360000, 212.500000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BC7_)
			end

			if arg1.interrupted then
				__FUNC_6A14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 410.370000, 447.510000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A14_)
		end

		registerVal14:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setLeftRight(true, false, 630.690000, 667.830000)
		registerVal14:setTopBottom(false, false, -19.000000, 18.140000)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_6884_)
		local function __FUNC_7129_(arg0, arg1)
			local function __FUNC_7280_(arg0, arg1)
				local function __FUNC_7410_(arg0, arg1)
					local function __FUNC_75A0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -25.310000, 46.380000)
						arg0:setTopBottom(false, false, -21.240000, 18.760000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_75A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 54.690000, 126.380000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_75A0_)
				end

				if arg1.interrupted then
					__FUNC_7410_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 102.260000, 173.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7410_)
			end

			if arg1.interrupted then
				__FUNC_7280_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7280_)
		end

		registerVal15:completeAnimation()
		registerVal2.CryptoCountNew0:setLeftRight(true, false, 559.000000, 630.690000)
		registerVal2.CryptoCountNew0:setTopBottom(false, false, -21.240000, 18.760000)
		registerVal2.CryptoCountNew0:setAlpha(0.000000)
		__FUNC_7129_(registerVal15, {})
		local function __FUNC_77C5_(arg0, arg2)
			local function __FUNC_7961_(arg0, arg2)
				if not arg2.interrupted then
					arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setPlaySoundDirect(true)
				arg0:playSound("uin_bm_key_earned", arg1)
				if arg2.interrupted then
					registerVal2.clipFinished(arg0, arg2)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg2.interrupted then
				__FUNC_7961_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("uin_bm_bar_fill_tail", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7961_)
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(true)
		registerVal2.Sound:playSound("uin_bm_bar_fill_main", arg1)
		__FUNC_77C5_(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.ContractCryptokeyBatch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.NewKey = __FUNC_2D9B_
	local function __FUNC_7B58_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyProgressBgGrey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_84DD_(arg0, arg1)
			local function __FUNC_8634_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8634_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2730.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8634_)
		end

		registerVal5:completeAnimation()
		registerVal2.XpBarFrame:setAlpha(0.000000)
		__FUNC_84DD_(registerVal5, {})
		local function __FUNC_87E9_(arg0, arg1)
			local function __FUNC_8940_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.100000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8940_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2730.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8940_)
		end

		registerVal6:completeAnimation()
		registerVal2.cryptokeyProgressBg:setAlpha(0.000000)
		__FUNC_87E9_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.cryptokeyProgress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.cryptokeyProgressForNewKey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.MeterGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_8AF5_(arg0, arg1)
			local function __FUNC_8C4C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8C4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2730.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C4C_)
		end

		registerVal10:completeAnimation()
		registerVal2.nextKeyText:setAlpha(0.000000)
		__FUNC_8AF5_(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.CryptoIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CryptoCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.CryptoCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CryptoKeyNewCount:setLeftRight(true, false, 189.500000, 357.500000)
		registerVal2.CryptoKeyNewCount:setTopBottom(false, false, -13.000000, 13.000000)
		registerVal2.CryptoKeyNewCount:setRGB(0.970000, 0.780000, 0.230000)
		registerVal2.CryptoKeyNewCount:setAlpha(0.000000)
		registerVal2.CryptoKeyNewCount:setText(LocalizeToUpperString("MENU_BONUS_CRYPTOKEYS"))
		registerVal2.CryptoKeyNewCount:setLetterSpacing(3.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CryptoIcon0:setLeftRight(true, false, 88.940000, 118.240000)
		registerVal2.CryptoIcon0:setTopBottom(false, false, -12.870000, 15.000000)
		registerVal2.CryptoIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		local function __FUNC_8E01_(arg0, arg1)
			local function __FUNC_8F58_(arg0, arg1)
				local function __FUNC_90E8_(arg0, arg1)
					local function __FUNC_9278_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -25.310000, 46.380000)
						arg0:setTopBottom(false, false, -21.240000, 18.760000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_9278_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 54.690000, 126.380000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9278_)
				end

				if arg1.interrupted then
					__FUNC_90E8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 102.260000, 173.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90E8_)
			end

			if arg1.interrupted then
				__FUNC_8F58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F58_)
		end

		registerVal15:completeAnimation()
		registerVal2.CryptoCountNew0:setLeftRight(true, false, 559.000000, 630.690000)
		registerVal2.CryptoCountNew0:setTopBottom(false, false, -21.240000, 18.760000)
		registerVal2.CryptoCountNew0:setAlpha(0.000000)
		__FUNC_8E01_(registerVal15, {})
		local function __FUNC_949D_(arg0, arg2)
			local function __FUNC_9639_(arg0, arg2)
				if not arg2.interrupted then
					arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setPlaySoundDirect(true)
				arg0:playSound("uin_bm_key_earned", arg1)
				if arg2.interrupted then
					registerVal2.clipFinished(arg0, arg2)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg2.interrupted then
				__FUNC_9639_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("uin_bm_bar_fill_tail", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9639_)
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(true)
		registerVal2.Sound:playSound("uin_bm_bar_fill_main", arg1)
		__FUNC_949D_(registerVal16, {})
		local function __FUNC_9830_(arg0, arg1)
			local function __FUNC_99C9_(arg0, arg1)
				local function __FUNC_9B43_(arg0, arg1)
					local function __FUNC_9CBB_(arg0, arg1)
						local function __FUNC_9E10_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_9E10_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 2220.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E10_)
					end

					if arg1.interrupted then
						__FUNC_9CBB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9CBB_)
				end

				if arg1.interrupted then
					__FUNC_9B43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(0.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B43_)
			end

			if arg1.interrupted then
				__FUNC_99C9_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99C9_)
		end

		registerVal17:completeAnimation()
		registerVal2.ContractCryptokeyBatch:setAlpha(0.000000)
		registerVal2.ContractCryptokeyBatch:setScale(4.000000)
		__FUNC_9830_(registerVal17, {})
		local function __FUNC_9FE8_(arg0, arg1)
			local function __FUNC_A163_(arg0, arg1)
				local function __FUNC_A2FE_(arg0, arg1)
					local function __FUNC_A49A_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setScale(2.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_A49A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.250000)
					arg0:setScale(1.530000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A49A_)
				end

				if arg1.interrupted then
					__FUNC_A2FE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:setScale(1.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A2FE_)
			end

			if arg1.interrupted then
				__FUNC_A163_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.030000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A163_)
		end

		registerVal18:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.highlight:setScale(0.500000)
		__FUNC_9FE8_(registerVal18, {})
	end

	registerVal20.NewKeyBatch = __FUNC_7B58_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_A670_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.XpBarFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.cryptokeyProgressBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.cryptokeyProgressForNewKey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.MeterGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.nextKeyText:setText(Engine.Localize("MPUI_BM_RETRIEVING_CRYPTOKEYS"))
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal20.DefaultClip = __FUNC_A670_
	registerVal19.Retrieving = registerVal20
	registerVal20 = {}
	local function __FUNC_A959_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.XpBarFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.cryptokeyProgressBg:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.cryptokeyProgressForNewKey:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.MeterGlow:setAlpha(0.410000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.nextKeyText:setText(Engine.Localize("MPUI_NEXT_KEY_CAPS"))
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal20.DefaultClip = __FUNC_A959_
	local function __FUNC_AC40_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyProgressBgGrey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.cryptokeyProgress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_B043_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.cryptokeyProgressForNewKey:setAlpha(1.000000)
		__FUNC_B043_(registerVal8, {})
		registerVal13:completeAnimation()
		registerVal2.CryptoKeyNewCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CryptoIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.CryptoCountNew0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_B1F5_(arg0, arg2)
			if not arg2.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setPlaySoundDirect(true)
			arg0:playSound("uin_bm_bar_fill_tail", arg1)
			if arg2.interrupted then
				registerVal2.clipFinished(arg0, arg2)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(true)
		registerVal2.Sound:playSound("uin_bm_bar_fill_main", arg1)
		__FUNC_B1F5_(registerVal16, {})
	end

	registerVal20.NewXPNoNewKey = __FUNC_AC40_
	local function __FUNC_B3EF_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyProgressBgGrey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_BC91_(arg0, arg1)
			local function __FUNC_BE0B_(arg0, arg1)
				local function __FUNC_BF60_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_BF60_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1350.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF60_)
			end

			if arg1.interrupted then
				__FUNC_BE0B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE0B_)
		end

		registerVal5:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_BC91_)
		local function __FUNC_C115_(arg0, arg1)
			local function __FUNC_C28F_(arg0, arg1)
				local function __FUNC_C3E4_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.100000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_C3E4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1330.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C3E4_)
			end

			if arg1.interrupted then
				__FUNC_C28F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1069.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C28F_)
		end

		registerVal6:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.100000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_C115_)
		registerVal7:completeAnimation()
		registerVal2.cryptokeyProgress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_C599_(arg0, arg1)
			local function __FUNC_C6F0_(arg0, arg1)
				local function __FUNC_C87B_(arg0, arg1)
					local function __FUNC_C9D0_(arg0, arg1)
						local function __FUNC_CB4B_(arg0, arg1)
							local function __FUNC_CCA0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 1.000000, 1.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_CCA0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCA0_)
						end

						if arg1.interrupted then
							__FUNC_CB4B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB4B_)
					end

					if arg1.interrupted then
						__FUNC_C9D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 979.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C9D0_)
				end

				if arg1.interrupted then
					__FUNC_C87B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.420000, 0.750000, 0.270000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C87B_)
			end

			if arg1.interrupted then
				__FUNC_C6F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6F0_)
		end

		registerVal8:completeAnimation()
		registerVal2.cryptokeyProgressForNewKey:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.cryptokeyProgressForNewKey:setAlpha(1.000000)
		__FUNC_C599_(registerVal8, {})
		local function __FUNC_CE7E_(arg0, arg1)
			local function __FUNC_D02A_(arg0, arg1)
				local function __FUNC_D1A3_(arg0, arg1)
					local function __FUNC_D31B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(0.430000, 0.750000, 0.280000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_D31B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D31B_)
				end

				if arg1.interrupted then
					__FUNC_D1A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D1A3_)
			end

			if arg1.interrupted then
				__FUNC_D02A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.430000, 0.750000, 0.280000)
			arg0:setAlpha(0.140000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D02A_)
		end

		registerVal9:completeAnimation()
		registerVal2.MeterGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.MeterGlow:setAlpha(0.410000)
		__FUNC_CE7E_(registerVal9, {})
		local function __FUNC_D500_(arg0, arg1)
			local function __FUNC_D67B_(arg0, arg1)
				local function __FUNC_D7D0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D7D0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1350.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D7D0_)
			end

			if arg1.interrupted then
				__FUNC_D67B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D67B_)
		end

		registerVal10:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(1.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_D500_)
		local function __FUNC_D985_(arg0, arg1)
			local function __FUNC_DAFF_(arg0, arg1)
				local function __FUNC_DC54_(arg0, arg1)
					local function __FUNC_DDAC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_DDAC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDAC_)
				end

				if arg1.interrupted then
					__FUNC_DC54_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1249.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC54_)
			end

			if arg1.interrupted then
				__FUNC_DAFF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAFF_)
		end

		registerVal11:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(1.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_D985_)
		local function __FUNC_DF61_(arg0, arg1)
			local function __FUNC_E0DB_(arg0, arg1)
				local function __FUNC_E230_(arg0, arg1)
					local function __FUNC_E388_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_E388_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E388_)
				end

				if arg1.interrupted then
					__FUNC_E230_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1239.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E230_)
			end

			if arg1.interrupted then
				__FUNC_E0DB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E0DB_)
		end

		registerVal12:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setRGB(1.000000, 1.000000, 1.000000)
		registerVal12:setAlpha(1.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_DF61_)
		local function __FUNC_E561_(arg0, arg1)
			local function __FUNC_E6F0_(arg0, arg1)
				local function __FUNC_E8A3_(arg0, arg1)
					local function __FUNC_EA30_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 86.040000, 359.540000)
						arg0:setTopBottom(false, false, -16.240000, 13.760000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_EA30_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 166.040000, 439.540000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA30_)
				end

				if arg1.interrupted then
					__FUNC_E8A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 214.440000, 487.940000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8A3_)
			end

			if arg1.interrupted then
				__FUNC_E6F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 450.340000, 723.840000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E6F0_)
		end

		registerVal13:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
		registerVal13:setLeftRight(true, false, 671.500000, 945.000000)
		registerVal13:setTopBottom(false, false, -16.240000, 13.760000)
		registerVal13:setAlpha(0.000000)
		registerVal13:registerEventHandler("transition_complete_keyframe", __FUNC_E561_)
		local function __FUNC_EC55_(arg0, arg1)
			local function __FUNC_EDE4_(arg0, arg1)
				local function __FUNC_EF97_(arg0, arg1)
					local function __FUNC_F124_(arg0, arg1)
						local function __FUNC_F2D7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 440.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 47.240000, 84.380000)
							arg0:setTopBottom(false, false, -19.000000, 18.140000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_F2D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 47.240000, 84.380000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F2D7_)
					end

					if arg1.interrupted then
						__FUNC_F124_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 127.160000, 164.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F124_)
				end

				if arg1.interrupted then
					__FUNC_EF97_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 175.360000, 212.500000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF97_)
			end

			if arg1.interrupted then
				__FUNC_EDE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 410.370000, 447.510000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDE4_)
		end

		registerVal14:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setLeftRight(true, false, 630.690000, 667.830000)
		registerVal14:setTopBottom(false, false, -19.000000, 18.140000)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_EC55_)
		local function __FUNC_F4F9_(arg0, arg1)
			local function __FUNC_F650_(arg0, arg1)
				local function __FUNC_F7E0_(arg0, arg1)
					local function __FUNC_F970_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -25.310000, 46.380000)
						arg0:setTopBottom(false, false, -21.240000, 18.760000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_F970_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 54.690000, 126.380000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F970_)
				end

				if arg1.interrupted then
					__FUNC_F7E0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 102.260000, 173.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F7E0_)
			end

			if arg1.interrupted then
				__FUNC_F650_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F650_)
		end

		registerVal15:completeAnimation()
		registerVal2.CryptoCountNew0:setLeftRight(true, false, 559.000000, 630.690000)
		registerVal2.CryptoCountNew0:setTopBottom(false, false, -21.240000, 18.760000)
		registerVal2.CryptoCountNew0:setAlpha(0.000000)
		__FUNC_F4F9_(registerVal15, {})
		local function __FUNC_FB95_(arg0, arg2)
			local function __FUNC_FD31_(arg0, arg2)
				if not arg2.interrupted then
					arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setPlaySoundDirect(true)
				arg0:playSound("uin_bm_key_earned", arg1)
				if arg2.interrupted then
					registerVal2.clipFinished(arg0, arg2)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg2.interrupted then
				__FUNC_FD31_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("uin_bm_bar_fill_tail", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD31_)
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(true)
		registerVal2.Sound:playSound("uin_bm_bar_fill_main", arg1)
		__FUNC_FB95_(registerVal16, {})
	end

	registerVal20.NewKey = __FUNC_B3EF_
	local function __FUNC_FF28_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyProgressBgGrey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_107CD_(arg0, arg1)
			local function __FUNC_10947_(arg0, arg1)
				local function __FUNC_10A9C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_10A9C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1350.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A9C_)
			end

			if arg1.interrupted then
				__FUNC_10947_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10947_)
		end

		registerVal5:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_107CD_)
		local function __FUNC_10C51_(arg0, arg1)
			local function __FUNC_10DCB_(arg0, arg1)
				local function __FUNC_10F20_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.100000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_10F20_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1330.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F20_)
			end

			if arg1.interrupted then
				__FUNC_10DCB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1069.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10DCB_)
		end

		registerVal6:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.100000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_10C51_)
		registerVal7:completeAnimation()
		registerVal2.cryptokeyProgress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_110D5_(arg0, arg1)
			local function __FUNC_1122C_(arg0, arg1)
				local function __FUNC_113B7_(arg0, arg1)
					local function __FUNC_1150C_(arg0, arg1)
						local function __FUNC_11687_(arg0, arg1)
							local function __FUNC_117DC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 1.000000, 1.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_117DC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_117DC_)
						end

						if arg1.interrupted then
							__FUNC_11687_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11687_)
					end

					if arg1.interrupted then
						__FUNC_1150C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 979.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1150C_)
				end

				if arg1.interrupted then
					__FUNC_113B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.420000, 0.750000, 0.270000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113B7_)
			end

			if arg1.interrupted then
				__FUNC_1122C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1122C_)
		end

		registerVal8:completeAnimation()
		registerVal2.cryptokeyProgressForNewKey:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.cryptokeyProgressForNewKey:setAlpha(1.000000)
		__FUNC_110D5_(registerVal8, {})
		local function __FUNC_119BA_(arg0, arg1)
			local function __FUNC_11B66_(arg0, arg1)
				local function __FUNC_11CDF_(arg0, arg1)
					local function __FUNC_11E57_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(0.430000, 0.750000, 0.280000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_11E57_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E57_)
				end

				if arg1.interrupted then
					__FUNC_11CDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11CDF_)
			end

			if arg1.interrupted then
				__FUNC_11B66_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.430000, 0.750000, 0.280000)
			arg0:setAlpha(0.140000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11B66_)
		end

		registerVal9:completeAnimation()
		registerVal2.MeterGlow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.MeterGlow:setAlpha(0.410000)
		__FUNC_119BA_(registerVal9, {})
		local function __FUNC_1203C_(arg0, arg1)
			local function __FUNC_121B7_(arg0, arg1)
				local function __FUNC_1230C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1230C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1350.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1230C_)
			end

			if arg1.interrupted then
				__FUNC_121B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_121B7_)
		end

		registerVal10:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(1.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_1203C_)
		local function __FUNC_124C1_(arg0, arg1)
			local function __FUNC_1263B_(arg0, arg1)
				local function __FUNC_12790_(arg0, arg1)
					local function __FUNC_128E8_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_128E8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_128E8_)
				end

				if arg1.interrupted then
					__FUNC_12790_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1249.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12790_)
			end

			if arg1.interrupted then
				__FUNC_1263B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1263B_)
		end

		registerVal11:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(1.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_124C1_)
		local function __FUNC_12A9D_(arg0, arg1)
			local function __FUNC_12C17_(arg0, arg1)
				local function __FUNC_12D6C_(arg0, arg1)
					local function __FUNC_12EC4_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_12EC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12EC4_)
				end

				if arg1.interrupted then
					__FUNC_12D6C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1239.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D6C_)
			end

			if arg1.interrupted then
				__FUNC_12C17_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 709.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12C17_)
		end

		registerVal12:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setRGB(1.000000, 1.000000, 1.000000)
		registerVal12:setAlpha(1.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_12A9D_)
		local function __FUNC_1309D_(arg0, arg1)
			local function __FUNC_1322C_(arg0, arg1)
				local function __FUNC_133DF_(arg0, arg1)
					local function __FUNC_1356C_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 86.040000, 359.540000)
						arg0:setTopBottom(false, false, -16.240000, 13.760000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1356C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 166.040000, 439.540000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1356C_)
				end

				if arg1.interrupted then
					__FUNC_133DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 214.440000, 487.940000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_133DF_)
			end

			if arg1.interrupted then
				__FUNC_1322C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 450.340000, 723.840000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1322C_)
		end

		registerVal13:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
		registerVal13:setLeftRight(true, false, 671.500000, 945.000000)
		registerVal13:setTopBottom(false, false, -16.240000, 13.760000)
		registerVal13:setAlpha(0.000000)
		registerVal13:registerEventHandler("transition_complete_keyframe", __FUNC_1309D_)
		local function __FUNC_13791_(arg0, arg1)
			local function __FUNC_13920_(arg0, arg1)
				local function __FUNC_13AD3_(arg0, arg1)
					local function __FUNC_13C60_(arg0, arg1)
						local function __FUNC_13E13_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 440.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 47.240000, 84.380000)
							arg0:setTopBottom(false, false, -19.000000, 18.140000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_13E13_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 47.240000, 84.380000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E13_)
					end

					if arg1.interrupted then
						__FUNC_13C60_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 127.160000, 164.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13C60_)
				end

				if arg1.interrupted then
					__FUNC_13AD3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 175.360000, 212.500000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13AD3_)
			end

			if arg1.interrupted then
				__FUNC_13920_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 410.370000, 447.510000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13920_)
		end

		registerVal14:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setLeftRight(true, false, 630.690000, 667.830000)
		registerVal14:setTopBottom(false, false, -19.000000, 18.140000)
		registerVal14:setAlpha(0.000000)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_13791_)
		local function __FUNC_14035_(arg0, arg1)
			local function __FUNC_1418C_(arg0, arg1)
				local function __FUNC_1431C_(arg0, arg1)
					local function __FUNC_144AC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -25.310000, 46.380000)
						arg0:setTopBottom(false, false, -21.240000, 18.760000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_144AC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 54.690000, 126.380000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_144AC_)
				end

				if arg1.interrupted then
					__FUNC_1431C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 102.260000, 173.950000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1431C_)
			end

			if arg1.interrupted then
				__FUNC_1418C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1418C_)
		end

		registerVal15:completeAnimation()
		registerVal2.CryptoCountNew0:setLeftRight(true, false, 559.000000, 630.690000)
		registerVal2.CryptoCountNew0:setTopBottom(false, false, -21.240000, 18.760000)
		registerVal2.CryptoCountNew0:setAlpha(0.000000)
		__FUNC_14035_(registerVal15, {})
		local function __FUNC_146D1_(arg0, arg2)
			local function __FUNC_1486D_(arg0, arg2)
				if not arg2.interrupted then
					arg0:beginAnimation("keyframe", 1049.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setPlaySoundDirect(true)
				arg0:playSound("uin_bm_key_earned", arg1)
				if arg2.interrupted then
					registerVal2.clipFinished(arg0, arg2)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg2.interrupted then
				__FUNC_1486D_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("uin_bm_bar_fill_tail", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1486D_)
		end

		registerVal16:completeAnimation()
		registerVal2.Sound:setPlaySoundDirect(true)
		registerVal2.Sound:playSound("uin_bm_bar_fill_main", arg1)
		__FUNC_146D1_(registerVal16, {})
	end

	registerVal20.NewKeyBatch = __FUNC_FF28_
	registerVal19.HidePixels = registerVal20
	registerVal2.clipsPerState = registerVal19
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Retrieving"
	local function __FUNC_14A64_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "CryptoKeyProgress.keyCount", -1.000000)
	end

	registerVal22.condition = __FUNC_14A64_
	local registerVal23 = {}
	registerVal23.stateName = "HidePixels"
	local function __FUNC_14AEE_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal23.condition = __FUNC_14AEE_
	registerVal21 = {registerVal22, registerVal23}
	registerVal2:mergeStateConditions(registerVal21)
	registerVal22 = Engine.GetModelForController(arg1)
	registerVal21 = Engine.GetModel(registerVal22, "CryptoKeyProgress.keyCount")
	local function __FUNC_14B39_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal21, __FUNC_14B39_)
	local function __FUNC_14C68_(arg0)
		arg0.XpBarFrame:close()
		arg0.ContractCryptokeyBatch:close()
		arg0.cryptokeyProgress:close()
		arg0.cryptokeyProgressForNewKey:close()
		arg0.CryptoCount:close()
		arg0.CryptoCountNew0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_14C68_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

