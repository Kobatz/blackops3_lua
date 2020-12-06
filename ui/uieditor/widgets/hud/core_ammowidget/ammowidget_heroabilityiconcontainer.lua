-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityFill")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityForeStroke")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_HeroAbilityIcon")
local function __FUNC_2EB_(arg0, arg1)
	local registerVal2 = DataSources.HeroWeapon.getModel(arg1)
	local registerVal4 = Engine.CreateModel(registerVal2, "rouletteStatus")
	Engine.SetModelValue(registerVal4, 0.000000)
	registerVal4 = Engine.CreateModel(registerVal2, "cardImage")
	Engine.SetModelValue(registerVal4, "blacktransparent")
	registerVal4 = Engine.CreateModel(registerVal2, "thiefStatus")
	Engine.SetModelValue(registerVal4, 0.000000)
	registerVal4 = Engine.CreateModel(registerVal2, "thiefWeaponStatus")
	Engine.SetModelValue(registerVal4, 0.000000)
	registerVal4 = Engine.CreateModel(registerVal2, "thiefLastWeapon")
	local registerVal5 = CoD.SafeGetModelValue(registerVal2, "imageAvailable")
	if not registerVal5 then
	end
	Engine.SetModelValue(registerVal4, "")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroAbilityIconContainer = registerVal2
local function __FUNC_5B4_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_2EB_ then
		__FUNC_2EB_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroAbilityIconContainer)
	registerVal2.id = "AmmoWidget_HeroAbilityIconContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AmmoWidget_AbilityFill.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.330000, -1.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.330000)
	registerVal3:setRGB(0.400000, 0.310000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setZoom(5.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal3:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Fill = registerVal3
	local registerVal4 = CoD.AmmoWidget_AbilityForeStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 3.010000, -3.680000)
	registerVal4:setTopBottom(true, true, 4.000000, -3.670000)
	registerVal4:setZoom(-8.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ForeStroke = registerVal4
	local registerVal5 = CoD.AmmoWidget_HeroAbilityIcon.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -31.170000, 31.500000)
	registerVal5:setTopBottom(false, false, -30.500000, 32.170000)
	registerVal5:setRGB(1.000000, 0.770000, 0.000000)
	registerVal5:setAlpha(0.300000)
	registerVal5:setZoom(-18.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.AbilityIconGold = registerVal5
	local registerVal6 = CoD.AmmoWidget_HeroAbilityIcon.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -31.170000, 31.500000)
	registerVal6:setTopBottom(false, false, -30.500000, 32.170000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.100000)
	registerVal6:setZoom(14.500000)
	registerVal6:setScale(1.100000)
	registerVal2:addElement(registerVal6)
	registerVal2.AbilityIconSolid = registerVal6
	local registerVal7 = CoD.AmmoWidget_HeroAbilityIcon.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -31.170000, 31.500000)
	registerVal7:setTopBottom(false, false, -30.500000, 32.170000)
	registerVal7:setZoom(15.000000)
	registerVal7:setScale(1.200000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
	registerVal7:setShaderVector(0.000000, 0.050000, 0.500000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.AbilityIcon = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_1457_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1457_
	local function __FUNC_16BC_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1C4C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.770000, 0.000000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 0.770000, 0.000000)
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(5.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1C4C_(registerVal3, {})
		local function __FUNC_1FAC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-8.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(0.000000)
		registerVal2.ForeStroke:setZoom(-8.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_1FAC_(registerVal4, {})
		local function __FUNC_2237_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			arg0:setZoom(-18.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.000000)
		registerVal2.AbilityIconGold:setZoom(0.000000)
		__FUNC_2237_(registerVal5, {})
		local function __FUNC_240B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.100000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.AbilityIconSolid:setAlpha(0.000000)
		registerVal2.AbilityIconSolid:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_240B_(registerVal6, {})
		local function __FUNC_2676_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.000000)
		registerVal2.AbilityIcon:setZoom(15.000000)
		__FUNC_2676_(registerVal7, {})
	end

	registerVal9.Ready = __FUNC_16BC_
	local function __FUNC_2849_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2D8D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-10.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_2D8D_(registerVal3, {})
		local function __FUNC_30E2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(0.000000)
		registerVal2.ForeStroke:setZoom(-5.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_30E2_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.000000)
		registerVal2.AbilityIconGold:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_336B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setAlpha(0.000000)
		__FUNC_336B_(registerVal6, {})
		local function __FUNC_351D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.000000)
		registerVal2.AbilityIcon:setZoom(5.000000)
		__FUNC_351D_(registerVal7, {})
	end

	registerVal9.Charge = __FUNC_2849_
	local function __FUNC_36F1_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_3C1B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-8.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-8.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_3C1B_(registerVal3, {})
		local function __FUNC_3F6E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(0.000000)
		registerVal2.ForeStroke:setZoom(5.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_3F6E_(registerVal4, {})
		local function __FUNC_41F7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.100000)
			arg0:setZoom(-49.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.000000)
		registerVal2.AbilityIconGold:setZoom(0.000000)
		__FUNC_41F7_(registerVal5, {})
		local function __FUNC_43CB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.100000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setAlpha(0.000000)
		__FUNC_43CB_(registerVal6, {})
		local function __FUNC_457D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.000000)
		registerVal2.AbilityIcon:setZoom(10.000000)
		__FUNC_457D_(registerVal7, {})
	end

	registerVal9.InUse = __FUNC_36F1_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_4751_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 0.770000, 0.000000)
		registerVal2.Fill:setAlpha(0.300000)
		registerVal2.Fill:setZoom(5.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(-8.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setRGB(1.000000, 0.770000, 0.000000)
		registerVal2.AbilityIconGold:setAlpha(0.300000)
		registerVal2.AbilityIconGold:setZoom(-18.000000)
		registerVal2.AbilityIconGold:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.AbilityIconSolid:setAlpha(0.100000)
		registerVal2.AbilityIconSolid:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(1.000000)
		registerVal2.AbilityIcon:setZoom(15.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_4751_
	local function __FUNC_4D79_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5317_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.770000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 0.770000, 0.000000)
		registerVal2.Fill:setAlpha(0.300000)
		registerVal2.Fill:setZoom(5.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_5317_(registerVal3, {})
		local function __FUNC_566D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-8.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(-8.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_566D_(registerVal4, {})
		local function __FUNC_58FA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.300000)
		registerVal2.AbilityIconGold:setZoom(-18.000000)
		__FUNC_58FA_(registerVal5, {})
		local function __FUNC_5ACA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.AbilityIconSolid:setAlpha(0.100000)
		registerVal2.AbilityIconSolid:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_5ACA_(registerVal6, {})
		local function __FUNC_5D2F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(1.000000)
		registerVal2.AbilityIcon:setZoom(15.000000)
		__FUNC_5D2F_(registerVal7, {})
	end

	registerVal9.DefaultState = __FUNC_4D79_
	local function __FUNC_5F01_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_64A4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 0.770000, 0.000000)
		registerVal2.Fill:setAlpha(0.300000)
		registerVal2.Fill:setZoom(5.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_64A4_(registerVal3, {})
		local function __FUNC_67F8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.400000)
			arg0:setZoom(-5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(0.600000)
		registerVal2.ForeStroke:setZoom(-8.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_67F8_(registerVal4, {})
		local function __FUNC_6A86_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.300000)
		registerVal2.AbilityIconGold:setZoom(-18.000000)
		__FUNC_6A86_(registerVal5, {})
		local function __FUNC_6C56_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.050000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.AbilityIconSolid:setAlpha(0.100000)
		registerVal2.AbilityIconSolid:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_6C56_(registerVal6, {})
		local function __FUNC_6EC0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.900000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(1.000000)
		registerVal2.AbilityIcon:setZoom(15.000000)
		__FUNC_6EC0_(registerVal7, {})
	end

	registerVal9.Charge = __FUNC_5F01_
	local function __FUNC_7095_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_7633_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-8.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 0.770000, 0.000000)
		registerVal2.Fill:setAlpha(0.300000)
		registerVal2.Fill:setZoom(5.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_7633_(registerVal3, {})
		local function __FUNC_7984_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.500000)
			arg0:setZoom(5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(-8.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_7984_(registerVal4, {})
		local function __FUNC_7C12_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.100000)
			arg0:setZoom(-49.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.300000)
		registerVal2.AbilityIconGold:setZoom(-18.000000)
		__FUNC_7C12_(registerVal5, {})
		local function __FUNC_7DE7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.100000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.AbilityIconSolid:setAlpha(0.100000)
		registerVal2.AbilityIconSolid:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_7DE7_(registerVal6, {})
		local function __FUNC_8050_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.900000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(1.000000)
		registerVal2.AbilityIcon:setZoom(15.000000)
		__FUNC_8050_(registerVal7, {})
	end

	registerVal9.InUse = __FUNC_7095_
	registerVal8.Ready = registerVal9
	registerVal9 = {}
	local function __FUNC_8225_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-10.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(0.500000)
		registerVal2.ForeStroke:setZoom(-5.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.000000)
		registerVal2.AbilityIconGold:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.900000)
		registerVal2.AbilityIcon:setZoom(5.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_8225_
	local function __FUNC_8788_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_8CD7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-10.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_8CD7_(registerVal3, {})
		local function __FUNC_9028_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(-5.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_9028_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.000000)
		registerVal2.AbilityIconGold:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_92B6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setAlpha(0.050000)
		__FUNC_92B6_(registerVal6, {})
		local function __FUNC_9467_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.900000)
		registerVal2.AbilityIcon:setZoom(5.000000)
		__FUNC_9467_(registerVal7, {})
	end

	registerVal9.DefaultState = __FUNC_8788_
	local function __FUNC_9639_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_9BD2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.770000, 0.000000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-10.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_9BD2_(registerVal3, {})
		local function __FUNC_9F2E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-8.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(0.500000)
		registerVal2.ForeStroke:setZoom(-5.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_9F2E_(registerVal4, {})
		local function __FUNC_A1B5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			arg0:setZoom(-18.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.000000)
		registerVal2.AbilityIconGold:setZoom(0.000000)
		__FUNC_A1B5_(registerVal5, {})
		local function __FUNC_A38B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.100000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.AbilityIconSolid:setAlpha(0.050000)
		registerVal2.AbilityIconSolid:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_A38B_(registerVal6, {})
		local function __FUNC_A5F6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.900000)
		registerVal2.AbilityIcon:setZoom(5.000000)
		__FUNC_A5F6_(registerVal7, {})
	end

	registerVal9.Ready = __FUNC_9639_
	local function __FUNC_A7C9_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_AD02_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-8.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-10.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_AD02_(registerVal3, {})
		local function __FUNC_B054_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(0.500000)
		registerVal2.ForeStroke:setZoom(-5.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_B054_(registerVal4, {})
		local function __FUNC_B2DD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.100000)
			arg0:setZoom(-49.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.000000)
		registerVal2.AbilityIconGold:setZoom(0.000000)
		__FUNC_B2DD_(registerVal5, {})
		local function __FUNC_B4B3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.100000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setAlpha(0.050000)
		__FUNC_B4B3_(registerVal6, {})
		local function __FUNC_B663_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.900000)
		registerVal2.AbilityIcon:setZoom(5.000000)
		__FUNC_B663_(registerVal7, {})
	end

	registerVal9.InUse = __FUNC_A7C9_
	registerVal8.Charge = registerVal9
	registerVal9 = {}
	local function __FUNC_B835_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-8.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(5.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.100000)
		registerVal2.AbilityIconGold:setZoom(-49.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(1.000000)
		registerVal2.AbilityIcon:setZoom(10.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_B835_
	local function __FUNC_BD93_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_C2C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-8.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-8.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_C2C5_(registerVal3, {})
		local function __FUNC_C618_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(5.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_C618_(registerVal4, {})
		local function __FUNC_C8A6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.100000)
		registerVal2.AbilityIconGold:setZoom(-49.000000)
		__FUNC_C8A6_(registerVal5, {})
		local function __FUNC_CA76_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setAlpha(0.100000)
		__FUNC_CA76_(registerVal6, {})
		local function __FUNC_CC27_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(1.000000)
		registerVal2.AbilityIcon:setZoom(10.000000)
		__FUNC_CC27_(registerVal7, {})
	end

	registerVal9.DefaultState = __FUNC_BD93_
	local function __FUNC_CDF9_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_D397_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.770000, 0.000000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-8.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_D397_(registerVal3, {})
		local function __FUNC_D6F2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-8.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(0.500000)
		registerVal2.ForeStroke:setZoom(5.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_D6F2_(registerVal4, {})
		local function __FUNC_D979_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			arg0:setZoom(-18.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.100000)
		registerVal2.AbilityIconGold:setZoom(-49.000000)
		__FUNC_D979_(registerVal5, {})
		local function __FUNC_DB4F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.100000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.AbilityIconSolid:setAlpha(0.100000)
		registerVal2.AbilityIconSolid:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_DB4F_(registerVal6, {})
		local function __FUNC_DDBA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(0.900000)
		registerVal2.AbilityIcon:setZoom(10.000000)
		__FUNC_DDBA_(registerVal7, {})
	end

	registerVal9.Ready = __FUNC_CDF9_
	local function __FUNC_DF8D_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_E4C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Fill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Fill:setAlpha(0.000000)
		registerVal2.Fill:setZoom(-8.000000)
		registerVal2.Fill:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Fill:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Fill:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_E4C1_(registerVal3, {})
		local function __FUNC_E814_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.500000)
			arg0:setZoom(-5.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ForeStroke:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ForeStroke:setAlpha(1.000000)
		registerVal2.ForeStroke:setZoom(5.000000)
		registerVal2.ForeStroke:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_E814_(registerVal4, {})
		local function __FUNC_EAA2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.AbilityIconGold:setAlpha(0.100000)
		registerVal2.AbilityIconGold:setZoom(-49.000000)
		__FUNC_EAA2_(registerVal5, {})
		local function __FUNC_EC72_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.050000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.AbilityIconSolid:setAlpha(0.100000)
		__FUNC_EC72_(registerVal6, {})
		local function __FUNC_EE23_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.900000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilityIcon:setAlpha(1.000000)
		registerVal2.AbilityIcon:setZoom(10.000000)
		__FUNC_EE23_(registerVal7, {})
	end

	registerVal9.Charge = __FUNC_DF8D_
	registerVal8.InUse = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Ready"
	local function __FUNC_EFF5_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
		registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
			if registerVal3 then
				registerVal3 = IsHeroAbilityGadget(arg1)
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_EFF5_
	local registerVal12 = {}
	registerVal12.stateName = "Charge"
	local function __FUNC_F11D_(arg0, arg2, arg3)
		local registerVal3 = IsSpecialGadgetAvailable(arg1)
		if registerVal3 then
			registerVal3 = IsHeroWeaponOrGadgetInUse(arg0, arg1)
			if not registerVal3 then
				registerVal3 = IsHeroAbilityGadget(arg1)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_F11D_
	local registerVal13 = {}
	registerVal13.stateName = "InUse"
	local function __FUNC_F1F2_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponOrGadgetInUse(arg0, arg1)
		if registerVal3 then
			registerVal3 = IsHeroAbilityGadget(arg1)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_F1F2_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.ammo")
	local function __FUNC_F284_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.ammo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_F284_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_F3BC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_F3BC_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.powerRatio")
	local function __FUNC_F4F7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.powerRatio"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_F4F7_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "playerAbilities.playerGadget3.name")
	local function __FUNC_F632_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_F632_)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "currentWeapon.weapon")
	local function __FUNC_F768_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_F768_)
	local function __FUNC_F892_(arg0)
		arg0.Fill:close()
		arg0.ForeStroke:close()
		arg0.AbilityIconGold:close()
		arg0.AbilityIconSolid:close()
		arg0.AbilityIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F892_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidget_HeroAbilityIconContainer.new = __FUNC_5B4_
