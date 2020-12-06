-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.WeaponMeterBacking")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_LabelSubHeadingB")
require("ui.uieditor.widgets.CAC.cac_WpnLvlMeter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithWeaponLevel = registerVal1
function CoD.GunsmithWeaponLevel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithWeaponLevel)
	registerVal2.id = "GunsmithWeaponLevel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 415.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponMeterBacking.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 213.000000, 379.000000)
	registerVal3:setTopBottom(true, false, 9.000000, 31.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.WeaponMeterBacking = registerVal3
	local registerVal4 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 40.000000, -235.000000)
	registerVal4:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.levelBoxBg = registerVal4
	local registerVal5 = CoD.FE_LabelSubHeadingB.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 46.000000, 178.000000)
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
	registerVal6:setLeftRight(true, false, 182.000000, 214.000000)
	registerVal6:setTopBottom(true, false, 4.000000, 36.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_weaponmeterside"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.levelTextBg = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -22.500000, 3.500000)
	registerVal7:setTopBottom(false, true, -31.000000, -9.000000)
	registerVal7:setAlpha(0.250000)
	registerVal2:addElement(registerVal7)
	registerVal2.bg = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 172.500000, 198.500000)
	registerVal8:setTopBottom(false, true, -31.000000, -9.000000)
	registerVal8:setAlpha(0.250000)
	registerVal2:addElement(registerVal8)
	registerVal2.bg0 = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(false, false, -16.500000, -2.500000)
	registerVal9:setTopBottom(false, true, -30.000000, -10.000000)
	registerVal9:setText(Engine.Localize("12"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.currentLevelBacking = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 167.500000, 228.500000)
	registerVal10:setTopBottom(true, false, 10.000000, 30.000000)
	registerVal10:setText(Engine.Localize("12"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.currentLevel = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 237.000000, 413.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_weaponmeterframe"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.rightBox = registerVal11
	local registerVal12 = CoD.cac_WpnLvlMeter.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 210.000000, 379.000000)
	registerVal12:setTopBottom(true, false, 4.000000, 36.000000)
	registerVal12:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal12.Meter:setShaderVector(0.000000, 0.650000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.cacWpnLvlMeter0 = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(false, false, -84.500000, -48.500000)
	registerVal13:setTopBottom(false, true, -30.000000, -10.000000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setText(Engine.Localize("MPUI_MAX_CAPS"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.weaponLevel = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 377.000000, 409.000000)
	registerVal14:setTopBottom(true, false, 4.000000, 36.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_weaponmeterside"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.levelTextBg0 = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, 362.810000, 423.810000)
	registerVal15:setTopBottom(true, false, 10.000000, 30.000000)
	registerVal15:setText(Engine.Localize("13"))
	registerVal15:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.nextLevel = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1613_()
		registerVal2:setupElementClipCounter(13.000000)
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
		registerVal2.rightBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.cacWpnLvlMeter0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.weaponLevel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.levelTextBg0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.nextLevel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1613_
	local function __FUNC_1B3C_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_1E7E_(arg0, arg1)
			local function __FUNC_1FD4_(arg0, arg1)
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
				__FUNC_1FD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FD4_)
		end

		registerVal4:completeAnimation()
		registerVal2.levelBoxBg:setAlpha(0.000000)
		__FUNC_1E7E_(registerVal4, {})
		local function __FUNC_2189_(arg0, arg1)
			local function __FUNC_22E0_(arg0, arg1)
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
				__FUNC_22E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E0_)
		end

		registerVal5:completeAnimation()
		registerVal2.levelLabel:setAlpha(0.000000)
		__FUNC_2189_(registerVal5, {})
		local function __FUNC_2495_(arg0, arg1)
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
		__FUNC_2495_(registerVal6, {})
		local function __FUNC_2649_(arg0, arg1)
			local function __FUNC_27A0_(arg0, arg1)
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
				__FUNC_27A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27A0_)
		end

		registerVal9:completeAnimation()
		registerVal2.currentLevelBacking:setAlpha(0.000000)
		__FUNC_2649_(registerVal9, {})
		local function __FUNC_2955_(arg0, arg1)
			local function __FUNC_2AAC_(arg0, arg1)
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
				__FUNC_2AAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AAC_)
		end

		registerVal10:completeAnimation()
		registerVal2.currentLevel:setAlpha(0.000000)
		__FUNC_2955_(registerVal10, {})
		local function __FUNC_2C61_(arg0, arg1)
			local function __FUNC_2DB8_(arg0, arg1)
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
				__FUNC_2DB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DB8_)
		end

		registerVal11:completeAnimation()
		registerVal2.rightBox:setAlpha(0.000000)
		__FUNC_2C61_(registerVal11, {})
		local function __FUNC_2F6D_(arg0, arg1)
			local function __FUNC_30C4_(arg0, arg1)
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
				__FUNC_30C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30C4_)
		end

		registerVal12:completeAnimation()
		registerVal2.cacWpnLvlMeter0:setAlpha(0.000000)
		__FUNC_2F6D_(registerVal12, {})
		local function __FUNC_3279_(arg0, arg1)
			local function __FUNC_33D0_(arg0, arg1)
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
				__FUNC_33D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33D0_)
		end

		registerVal15:completeAnimation()
		registerVal2.nextLevel:setAlpha(0.000000)
		__FUNC_3279_(registerVal15, {})
	end

	registerVal17.Intro = __FUNC_1B3C_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_3585_()
		registerVal2:setupElementClipCounter(13.000000)
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
		registerVal2.currentLevel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.rightBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.cacWpnLvlMeter0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.weaponLevel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.levelTextBg0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.nextLevel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_3585_
	local function __FUNC_3ABA_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_3DFA_(arg0, arg1)
			local function __FUNC_3F50_(arg0, arg1)
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
				__FUNC_3F50_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F50_)
		end

		registerVal4:completeAnimation()
		registerVal2.levelBoxBg:setAlpha(0.000000)
		__FUNC_3DFA_(registerVal4, {})
		local function __FUNC_4105_(arg0, arg1)
			local function __FUNC_425C_(arg0, arg1)
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
				__FUNC_425C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_425C_)
		end

		registerVal5:completeAnimation()
		registerVal2.levelLabel:setAlpha(0.000000)
		__FUNC_4105_(registerVal5, {})
		local function __FUNC_4411_(arg0, arg1)
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
		__FUNC_4411_(registerVal6, {})
		local function __FUNC_45C5_(arg0, arg1)
			local function __FUNC_471C_(arg0, arg1)
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
				__FUNC_471C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_471C_)
		end

		registerVal9:completeAnimation()
		registerVal2.currentLevelBacking:setAlpha(0.000000)
		__FUNC_45C5_(registerVal9, {})
		local function __FUNC_48D1_(arg0, arg1)
			local function __FUNC_4A28_(arg0, arg1)
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
				__FUNC_4A28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A28_)
		end

		registerVal10:completeAnimation()
		registerVal2.currentLevel:setAlpha(0.000000)
		__FUNC_48D1_(registerVal10, {})
		local function __FUNC_4BDD_(arg0, arg1)
			local function __FUNC_4D34_(arg0, arg1)
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
				__FUNC_4D34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D34_)
		end

		registerVal11:completeAnimation()
		registerVal2.rightBox:setAlpha(0.000000)
		__FUNC_4BDD_(registerVal11, {})
		local function __FUNC_4EE9_(arg0, arg1)
			local function __FUNC_5040_(arg0, arg1)
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
				__FUNC_5040_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5040_)
		end

		registerVal12:completeAnimation()
		registerVal2.cacWpnLvlMeter0:setAlpha(0.000000)
		__FUNC_4EE9_(registerVal12, {})
		local function __FUNC_51F5_(arg0, arg1)
			local function __FUNC_534C_(arg0, arg1)
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
				__FUNC_534C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_534C_)
		end

		registerVal15:completeAnimation()
		registerVal2.nextLevel:setAlpha(0.000000)
		__FUNC_51F5_(registerVal15, {})
	end

	registerVal17.Intro = __FUNC_3ABA_
	registerVal16.DisplayLevel = registerVal17
	registerVal17 = {}
	local function __FUNC_5501_()
		registerVal2:setupElementClipCounter(13.000000)
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
		registerVal2.levelTextBg:setLeftRight(true, false, 181.000000, 213.000000)
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
		registerVal2.rightBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.cacWpnLvlMeter0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.weaponLevel:setLeftRight(false, false, -28.500000, 7.500000)
		registerVal2.weaponLevel:setTopBottom(false, true, -30.000000, -10.000000)
		registerVal2.weaponLevel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.levelTextBg0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.nextLevel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_5501_
	registerVal16.MaxLevel = registerVal17
	registerVal2.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "DisplayLevel"
	local function __FUNC_5B25_(arg0, arg2, arg3)
		local registerVal3 = Gunsmith_IsSnapshotGunLevelExists(registerVal2, arg2, arg1)
		if registerVal3 then
			registerVal3 = Gunsmith_IsSnapshotWeaponLevelMax(registerVal2, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_5B25_
	local registerVal20 = {}
	registerVal20.stateName = "MaxLevel"
	local function __FUNC_5BDE_(arg0, arg2, arg3)
		local registerVal3 = Gunsmith_IsSnapshotGunLevelExists(registerVal2, arg2, arg1)
		if registerVal3 then
			registerVal3 = Gunsmith_IsSnapshotWeaponLevelMax(registerVal2, arg2, arg1)
		end
		return registerVal3
	end

	registerVal20.condition = __FUNC_5BDE_
	registerVal18 = {registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal18)
	local function __FUNC_5C92_(arg0)
		arg0.WeaponMeterBacking:close()
		arg0.levelBoxBg:close()
		arg0.levelLabel:close()
		arg0.cacWpnLvlMeter0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5C92_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

