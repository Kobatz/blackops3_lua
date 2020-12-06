-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.WeaponMeterBacking")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_LabelSubHeadingB")
require("ui.uieditor.widgets.CAC.cac_WpnLvlMeter")
require("ui.uieditor.widgets.CAC.cac_LargePrestigeStars")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_WpnLvl = registerVal1
function CoD.cac_WpnLvl.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_WpnLvl)
	registerVal2.id = "cac_WpnLvl"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 415.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponMeterBacking.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 173.000000, 339.000000)
	registerVal3:setTopBottom(true, false, 9.000000, 31.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.WeaponMeterBacking = registerVal3
	local registerVal4 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, -275.000000)
	registerVal4:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.levelBoxBg = registerVal4
	local registerVal5 = CoD.FE_LabelSubHeadingB.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 6.000000, 138.000000)
	registerVal5:setTopBottom(true, false, 10.500000, 29.500000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5.Label1:setRGB(0.710000, 0.760000, 0.770000)
	registerVal5.Label1:setText(Engine.Localize("MPUI_WEAPON_LEVEL_CAPS"))
	registerVal5.Label1:setTTF("fonts/escom.ttf")
	registerVal5.Label1:setLetterSpacing(3.600000)
	registerVal2:addElement(registerVal5)
	registerVal2.levelLabel = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 142.000000, 174.000000)
	registerVal6:setTopBottom(true, false, 4.000000, 36.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_weaponmeterside"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.levelTextBg = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -62.500000, -36.500000)
	registerVal7:setTopBottom(false, true, -31.000000, -9.000000)
	registerVal7:setAlpha(0.250000)
	registerVal2:addElement(registerVal7)
	registerVal2.bg = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 132.500000, 158.500000)
	registerVal8:setTopBottom(false, true, -31.000000, -9.000000)
	registerVal8:setAlpha(0.250000)
	registerVal2:addElement(registerVal8)
	registerVal2.bg0 = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(false, false, -56.500000, -42.500000)
	registerVal9:setTopBottom(false, true, -30.000000, -10.000000)
	registerVal9:setText(Engine.Localize("12"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.currentLevelBacking = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 127.500000, 188.500000)
	registerVal10:setTopBottom(true, false, 10.000000, 30.000000)
	registerVal10:setText(Engine.Localize("12"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.currentLevel = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 379.000000, 415.000000)
	registerVal11:setTopBottom(true, false, 4.000000, 8.000000)
	registerVal11:setAlpha(0.500000)
	registerVal11:setYRot(-180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.topRightDots = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 379.000000, 415.000000)
	registerVal12:setTopBottom(true, false, 35.000000, 39.000000)
	registerVal12:setAlpha(0.500000)
	registerVal12:setYRot(-180.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.bottomRightDots = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 197.000000, 373.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_weaponmeterframe"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.rightBox = registerVal13
	local registerVal14 = CoD.cac_WpnLvlMeter.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 170.000000, 339.000000)
	registerVal14:setTopBottom(true, false, 4.000000, 36.000000)
	registerVal14:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal14.Meter:setShaderVector(0.000000, 0.650000, 0.000000, 0.000000, 0.000000)
	registerVal14.Meter2XP:setShaderVector(0.000000, 0.650000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.cacWpnLvlMeter0 = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(false, false, -124.500000, -88.500000)
	registerVal15:setTopBottom(false, true, -30.000000, -10.000000)
	registerVal15:setRGB(0.000000, 0.000000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setText(Engine.Localize("MPUI_MAX_CAPS"))
	registerVal15:setTTF("fonts/default.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.weaponLevel = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 337.000000, 369.000000)
	registerVal16:setTopBottom(true, false, 4.000000, 36.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_weaponmeterside"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.levelTextBg0 = registerVal16
	local registerVal17 = LUI.UIText.new()
	registerVal17:setLeftRight(true, false, 322.810000, 383.810000)
	registerVal17:setTopBottom(true, false, 10.000000, 30.000000)
	registerVal17:setText(Engine.Localize("13"))
	registerVal17:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal17:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal17)
	registerVal2.nextLevel = registerVal17
	local registerVal18 = CoD.cac_LargePrestigeStars.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 373.000000, 389.000000)
	registerVal18:setTopBottom(true, false, 4.000000, 36.000000)
	registerVal18:setScale(0.800000)
	local function __FUNC_19E8_(arg0)
		registerVal18:setModel(arg0, arg1)
	end

	registerVal18:linkToElementModel(registerVal2, nil, false, __FUNC_19E8_)
	registerVal2:addElement(registerVal18)
	registerVal2.cacLargePrestigeStars0 = registerVal18
	local registerVal19 = {}
	local registerVal20 = {}
	local function __FUNC_1A3A_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.WeaponMeterBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.levelBoxBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.levelLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.levelTextBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.bg0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.currentLevelBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.currentLevel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.topRightDots:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.bottomRightDots:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rightBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.cacWpnLvlMeter0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.weaponLevel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.levelTextBg0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.nextLevel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.cacLargePrestigeStars0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_1A3A_
	local function __FUNC_207F_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_246D_(arg0, arg1)
			local function __FUNC_25C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_25C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25C4_)
		end

		registerVal4:completeAnimation()
		registerVal2.levelBoxBg:setAlpha(0.000000)
		__FUNC_246D_(registerVal4, {})
		local function __FUNC_2779_(arg0, arg1)
			local function __FUNC_28D0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_28D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28D0_)
		end

		registerVal5:completeAnimation()
		registerVal2.levelLabel:setAlpha(0.000000)
		__FUNC_2779_(registerVal5, {})
		local function __FUNC_2A85_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.levelTextBg:setAlpha(0.000000)
		__FUNC_2A85_(registerVal6, {})
		local function __FUNC_2C39_(arg0, arg1)
			local function __FUNC_2D90_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2D90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D90_)
		end

		registerVal9:completeAnimation()
		registerVal2.currentLevelBacking:setAlpha(0.000000)
		__FUNC_2C39_(registerVal9, {})
		local function __FUNC_2F45_(arg0, arg1)
			local function __FUNC_309C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_309C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_309C_)
		end

		registerVal10:completeAnimation()
		registerVal2.currentLevel:setAlpha(0.000000)
		__FUNC_2F45_(registerVal10, {})
		local function __FUNC_3251_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.topRightDots:setAlpha(0.000000)
		__FUNC_3251_(registerVal11, {})
		local function __FUNC_3405_(arg0, arg1)
			local function __FUNC_355C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_355C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_355C_)
		end

		registerVal12:completeAnimation()
		registerVal2.bottomRightDots:setAlpha(0.000000)
		__FUNC_3405_(registerVal12, {})
		local function __FUNC_3711_(arg0, arg1)
			local function __FUNC_3868_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3868_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3868_)
		end

		registerVal13:completeAnimation()
		registerVal2.rightBox:setAlpha(0.000000)
		__FUNC_3711_(registerVal13, {})
		local function __FUNC_3A1D_(arg0, arg1)
			local function __FUNC_3B74_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3B74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B74_)
		end

		registerVal14:completeAnimation()
		registerVal2.cacWpnLvlMeter0:setAlpha(0.000000)
		__FUNC_3A1D_(registerVal14, {})
		local function __FUNC_3D29_(arg0, arg1)
			local function __FUNC_3E80_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3E80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E80_)
		end

		registerVal17:completeAnimation()
		registerVal2.nextLevel:setAlpha(0.000000)
		__FUNC_3D29_(registerVal17, {})
	end

	registerVal20.Intro = __FUNC_207F_
	registerVal19.DefaultState = registerVal20
	registerVal20 = {}
	local function __FUNC_4035_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.WeaponMeterBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.levelBoxBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.levelLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.levelTextBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bg:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.bg0:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.currentLevelBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.currentLevel:setLeftRight(true, false, 127.500000, 188.500000)
		registerVal2.currentLevel:setTopBottom(true, false, 10.000000, 30.000000)
		registerVal2.currentLevel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.topRightDots:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.bottomRightDots:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rightBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.cacWpnLvlMeter0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.weaponLevel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.levelTextBg0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.nextLevel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.cacLargePrestigeStars0:setLeftRight(true, false, 373.000000, 389.000000)
		registerVal2.cacLargePrestigeStars0:setTopBottom(true, false, 4.000000, 36.000000)
		registerVal2.cacLargePrestigeStars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_4035_
	local function __FUNC_477E_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_4B6D_(arg0, arg1)
			local function __FUNC_4CC4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4CC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CC4_)
		end

		registerVal4:completeAnimation()
		registerVal2.levelBoxBg:setAlpha(0.000000)
		__FUNC_4B6D_(registerVal4, {})
		local function __FUNC_4E79_(arg0, arg1)
			local function __FUNC_4FD0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4FD0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FD0_)
		end

		registerVal5:completeAnimation()
		registerVal2.levelLabel:setAlpha(0.000000)
		__FUNC_4E79_(registerVal5, {})
		local function __FUNC_5185_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.levelTextBg:setAlpha(0.000000)
		__FUNC_5185_(registerVal6, {})
		local function __FUNC_5339_(arg0, arg1)
			local function __FUNC_5490_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5490_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5490_)
		end

		registerVal9:completeAnimation()
		registerVal2.currentLevelBacking:setAlpha(0.000000)
		__FUNC_5339_(registerVal9, {})
		local function __FUNC_5645_(arg0, arg1)
			local function __FUNC_579C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_579C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_579C_)
		end

		registerVal10:completeAnimation()
		registerVal2.currentLevel:setAlpha(0.000000)
		__FUNC_5645_(registerVal10, {})
		local function __FUNC_5951_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.topRightDots:setAlpha(0.000000)
		__FUNC_5951_(registerVal11, {})
		local function __FUNC_5B05_(arg0, arg1)
			local function __FUNC_5C5C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5C5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C5C_)
		end

		registerVal12:completeAnimation()
		registerVal2.bottomRightDots:setAlpha(0.000000)
		__FUNC_5B05_(registerVal12, {})
		local function __FUNC_5E11_(arg0, arg1)
			local function __FUNC_5F68_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5F68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F68_)
		end

		registerVal13:completeAnimation()
		registerVal2.rightBox:setAlpha(0.000000)
		__FUNC_5E11_(registerVal13, {})
		local function __FUNC_611D_(arg0, arg1)
			local function __FUNC_6274_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6274_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6274_)
		end

		registerVal14:completeAnimation()
		registerVal2.cacWpnLvlMeter0:setAlpha(0.000000)
		__FUNC_611D_(registerVal14, {})
		local function __FUNC_6429_(arg0, arg1)
			local function __FUNC_6580_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6580_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6580_)
		end

		registerVal17:completeAnimation()
		registerVal2.nextLevel:setAlpha(0.000000)
		__FUNC_6429_(registerVal17, {})
	end

	registerVal20.Intro = __FUNC_477E_
	registerVal19.DisplayLevel = registerVal20
	registerVal20 = {}
	local function __FUNC_6735_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.WeaponMeterBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.levelBoxBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.levelLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.levelTextBg:setLeftRight(true, false, 142.000000, 174.000000)
		registerVal2.levelTextBg:setTopBottom(true, false, 4.000000, 36.000000)
		registerVal2.levelTextBg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.bg0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.currentLevelBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.currentLevel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.topRightDots:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.bottomRightDots:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.rightBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.cacWpnLvlMeter0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.weaponLevel:setLeftRight(false, false, -67.500000, -31.500000)
		registerVal2.weaponLevel:setTopBottom(false, true, -30.000000, -10.000000)
		registerVal2.weaponLevel:setAlpha(1.000000)
		registerVal2.weaponLevel:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
		registerVal2.weaponLevel:setShaderVector(0.000000, 0.020000, 0.000000, 0.000000, 0.000000)
		registerVal2.weaponLevel:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.weaponLevel:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.weaponLevel:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.levelTextBg0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.nextLevel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.cacLargePrestigeStars0:setLeftRight(true, false, 173.000000, 189.000000)
		registerVal2.cacLargePrestigeStars0:setTopBottom(true, false, 4.000000, 36.000000)
		registerVal2.cacLargePrestigeStars0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal20.DefaultClip = __FUNC_6735_
	registerVal19.MaxLevel = registerVal20
	registerVal2.clipsPerState = registerVal19
	local registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "DisplayLevel"
	local function __FUNC_708B_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentMenuWeaponType(arg0)
		registerVal3 = IsCACGunLevelExists(registerVal2, arg2, arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsCACGunLevelMax(registerVal2, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal22.condition = __FUNC_708B_
	local registerVal23 = {}
	registerVal23.stateName = "MaxLevel"
	local function __FUNC_7158_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentMenuWeaponType(arg0)
		registerVal3 = IsCACGunLevelExists(registerVal2, arg2, arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsCACGunLevelMax(registerVal2, arg2, arg1)
		end
		return registerVal3
	end

	registerVal23.condition = __FUNC_7158_
	registerVal21 = {registerVal22, registerVal23}
	registerVal2:mergeStateConditions(registerVal21)
	local function __FUNC_7224_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_7224_)
	local function __FUNC_7343_(arg0)
		arg0.WeaponMeterBacking:close()
		arg0.levelBoxBg:close()
		arg0.levelLabel:close()
		arg0.cacWpnLvlMeter0:close()
		arg0.cacLargePrestigeStars0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7343_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

