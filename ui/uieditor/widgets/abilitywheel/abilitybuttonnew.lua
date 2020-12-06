-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Bracket")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_IconHex")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_IconSections2")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Pixel")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Icon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AbilityButtonNew = registerVal1
function CoD.AbilityButtonNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AbilityButtonNew)
	registerVal2.id = "AbilityButtonNew"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 150.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -93.920000, 96.120000)
	registerVal3:setTopBottom(false, false, -97.520000, 92.520000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.Shadow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -52.000000, 188.000000)
	registerVal4:setTopBottom(false, false, -106.000000, -2.000000)
	registerVal4:setYRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_gradbracket"))
	registerVal2:addElement(registerVal4)
	registerVal2.GradBracketR = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -188.000000, 52.000000)
	registerVal5:setTopBottom(false, false, -106.000000, -2.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_gradbracket"))
	registerVal2:addElement(registerVal5)
	registerVal2.GrabBrakcetL = registerVal5
	local registerVal6 = CoD.AbilityWheel_Bracket.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -95.000000, 93.000000)
	registerVal6:setTopBottom(false, false, -38.000000, 14.000000)
	registerVal6:setAlpha(0.450000)
	registerVal2:addElement(registerVal6)
	registerVal2.Bracket = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -45.830000, 47.830000)
	registerVal7:setTopBottom(false, false, 89.970000, 106.030000)
	registerVal7:setRGB(0.600000, 0.600000, 0.600000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_iconsemi"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Semi = registerVal7
	local registerVal8 = CoD.AbilityWheel_IconHex.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -40.270000, 42.070000)
	registerVal8:setTopBottom(false, false, -4.000000, 91.000000)
	registerVal8:setAlpha(0.900000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.IconHex = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -2.000000, 5.000000)
	registerVal9:setTopBottom(false, false, 88.000000, 100.000000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_iconhexlower"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.IconHexLine = registerVal9
	local registerVal10 = CoD.AbilityWheel_IconSections2.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -60.900000, 63.100000)
	registerVal10:setTopBottom(false, false, -43.000000, 38.000000)
	registerVal10:setAlpha(0.200000)
	registerVal10:setZoom(-20.000000)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Unused"
	local function __FUNC_1E49_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_1E49_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal2:addElement(registerVal10)
	registerVal2.IconSections1 = registerVal10
	local registerVal11 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, 51.000000, 59.000000)
	registerVal11:setTopBottom(false, false, 13.000000, 21.000000)
	registerVal11:setRGB(0.000000, 0.560000, 1.000000)
	registerVal11:setAlpha(0.600000)
	registerVal2:addElement(registerVal11)
	registerVal2.Pixel1 = registerVal11
	local registerVal12 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -57.000000, -49.000000)
	registerVal12:setTopBottom(false, false, 13.000000, 21.000000)
	registerVal12:setRGB(0.000000, 0.560000, 1.000000)
	registerVal12:setAlpha(0.600000)
	registerVal2:addElement(registerVal12)
	registerVal2.Pixel2 = registerVal12
	registerVal13 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, 46.000000, 54.000000)
	registerVal13:setTopBottom(false, false, 67.000000, 75.000000)
	registerVal13:setRGB(0.000000, 0.560000, 1.000000)
	registerVal13:setAlpha(0.600000)
	registerVal2:addElement(registerVal13)
	registerVal2.Pixel3 = registerVal13
	registerVal14 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, -52.000000, -44.000000)
	registerVal14:setTopBottom(false, false, 67.000000, 75.000000)
	registerVal14:setRGB(0.000000, 0.560000, 1.000000)
	registerVal14:setAlpha(0.600000)
	registerVal2:addElement(registerVal14)
	registerVal2.Pixel4 = registerVal14
	local registerVal15 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, -2.000000, 6.000000)
	registerVal15:setTopBottom(false, false, -23.000000, -15.000000)
	registerVal15:setRGB(0.000000, 0.560000, 1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.Pixel5 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, false, -7.100000, 7.300000)
	registerVal16:setTopBottom(false, false, -77.000000, -59.000000)
	registerVal16:setRGB(0.000000, 0.560000, 1.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_icontophex"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.PixelHex = registerVal16
	local registerVal17 = CoD.AbilityWheel_Icon.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -35.000000, 37.000000)
	registerVal17:setTopBottom(false, false, 9.000000, 81.000000)
	registerVal17:setRGB(0.520000, 0.730000, 0.780000)
	registerVal17:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal17:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal17:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1E95_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.IconImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal2, "image", true, __FUNC_1E95_)
	registerVal2:addElement(registerVal17)
	registerVal2.AbilitylIcon = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, false, -95.900000, 122.150000)
	registerVal18:setTopBottom(false, false, -154.000000, 139.000000)
	registerVal18:setRGB(0.260000, 0.450000, 0.000000)
	registerVal18:setAlpha(0.000000)
	registerVal18:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Glow = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, -57.800000, 211.800000)
	registerVal19:setTopBottom(true, false, -23.930000, 249.930000)
	registerVal19:setRGB(0.970000, 0.740000, 0.130000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setScale(0.700000)
	registerVal19:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.PanelGlow00 = registerVal19
	local registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_1F67_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -106.000000, -2.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -106.000000, -2.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -38.000000, 14.000000)
		registerVal2.Bracket:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bracket:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 89.970000, 106.030000)
		registerVal2.Semi:setRGB(0.600000, 0.600000, 0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -40.270000, 42.070000)
		registerVal2.IconHex:setTopBottom(false, false, -4.000000, 91.000000)
		registerVal2.IconHex:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconHex:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(false, false, -3.000000, 5.000000)
		registerVal2.IconHexLine:setTopBottom(false, false, 88.000000, 100.000000)
		registerVal2.IconHexLine:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconHexLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.IconSections1:setLeftRight(false, false, -60.900000, 63.100000)
		registerVal2.IconSections1:setTopBottom(false, false, 4.500000, 85.500000)
		registerVal2.IconSections1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconSections1:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 51.000000, 59.000000)
		registerVal2.Pixel1:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel1:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -57.000000, -49.000000)
		registerVal2.Pixel2:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel2:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 46.000000, 54.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -52.000000, -44.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -23.000000, -15.000000)
		registerVal2.Pixel5:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.PixelHex:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.PixelHex:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -35.000000, 37.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, 9.000000, 81.000000)
		registerVal2.AbilitylIcon:setRGB(0.520000, 0.730000, 0.780000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal21.DefaultClip = __FUNC_1F67_
	local function __FUNC_2BBE_()
		registerVal2:setupElementClipCounter(16.000000)
		local function __FUNC_375A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.000000)
		__FUNC_375A_(registerVal3, {})
		local function __FUNC_390D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, 188.000000)
			arg0:setTopBottom(false, false, -128.000000, -24.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -106.000000, -2.000000)
		__FUNC_390D_(registerVal4, {})
		local function __FUNC_3B0E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -188.000000, 52.000000)
			arg0:setTopBottom(false, false, -128.000000, -24.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -106.000000, -2.000000)
		__FUNC_3B0E_(registerVal5, {})
		local function __FUNC_3D0E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 93.000000)
			arg0:setTopBottom(false, false, -60.000000, -8.000000)
			arg0:setRGB(1.000000, 0.760000, 0.240000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -38.000000, 14.000000)
		registerVal2.Bracket:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_3D0E_(registerVal6, {})
		local function __FUNC_3F41_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -45.830000, 47.830000)
			arg0:setTopBottom(false, false, 84.970000, 101.030000)
			arg0:setRGB(0.330000, 0.330000, 0.330000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 89.970000, 106.030000)
		registerVal2.Semi:setRGB(0.600000, 0.600000, 0.600000)
		__FUNC_3F41_(registerVal7, {})
		local function __FUNC_416B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -51.000000, 53.000000)
			arg0:setTopBottom(false, false, -27.000000, 93.000000)
			arg0:setRGB(1.000000, 0.760000, 0.240000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -40.270000, 42.070000)
		registerVal2.IconHex:setTopBottom(false, false, -4.000000, 91.000000)
		registerVal2.IconHex:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconHex:setAlpha(0.900000)
		__FUNC_416B_(registerVal8, {})
		local function __FUNC_43C0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -3.000000, 5.000000)
			arg0:setTopBottom(false, false, 88.000000, 100.000000)
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(false, false, -3.000000, 5.000000)
		registerVal2.IconHexLine:setTopBottom(false, false, 88.000000, 100.000000)
		registerVal2.IconHexLine:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_43C0_(registerVal9, {})
		local function __FUNC_45EB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.IconSections1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconSections1:setAlpha(0.200000)
		__FUNC_45EB_(registerVal10, {})
		local function __FUNC_47C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 56.000000, 64.000000)
			arg0:setTopBottom(false, false, -1.000000, 7.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 51.000000, 59.000000)
		registerVal2.Pixel1:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel1:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_47C1_(registerVal11, {})
		local function __FUNC_49F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -62.000000, -54.000000)
			arg0:setTopBottom(false, false, -1.000000, 7.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -57.000000, -49.000000)
		registerVal2.Pixel2:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel2:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_49F5_(registerVal12, {})
		local function __FUNC_4C29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 56.000000, 64.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 46.000000, 54.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_4C29_(registerVal13, {})
		local function __FUNC_4E5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -62.000000, -54.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -52.000000, -44.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_4E5D_(registerVal14, {})
		local function __FUNC_5091_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -2.000000, 6.000000)
			arg0:setTopBottom(false, false, -47.000000, -39.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -23.000000, -15.000000)
		registerVal2.Pixel5:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_5091_(registerVal15, {})
		local function __FUNC_52C5_(arg0, arg1)
			local function __FUNC_543F_(arg0, arg1)
				local function __FUNC_55B7_(arg0, arg1)
					local function __FUNC_572F_(arg0, arg1)
						local function __FUNC_58A7_(arg0, arg1)
							local function __FUNC_5A1F_(arg0, arg1)
								local function __FUNC_5B74_(arg0, arg1)
									local function __FUNC_5CEF_(arg0, arg1)
										local function __FUNC_5E44_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_5E44_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E44_)
									end

									if arg1.interrupted then
										__FUNC_5CEF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.600000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CEF_)
								end

								if arg1.interrupted then
									__FUNC_5B74_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B74_)
							end

							if arg1.interrupted then
								__FUNC_5A1F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A1F_)
						end

						if arg1.interrupted then
							__FUNC_58A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58A7_)
					end

					if arg1.interrupted then
						__FUNC_572F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_572F_)
				end

				if arg1.interrupted then
					__FUNC_55B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.710000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55B7_)
			end

			if arg1.interrupted then
				__FUNC_543F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.690000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_543F_)
		end

		registerVal16:completeAnimation()
		registerVal2.PixelHex:setAlpha(0.000000)
		__FUNC_52C5_(registerVal16, {})
		local function __FUNC_5FF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -41.000000, 45.000000)
			arg0:setTopBottom(false, false, -8.000000, 78.000000)
			arg0:setRGB(0.650000, 0.670000, 0.190000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -35.000000, 37.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, 9.000000, 81.000000)
		registerVal2.AbilitylIcon:setRGB(0.520000, 0.730000, 0.780000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(0.000000)
		__FUNC_5FF9_(registerVal17, {})
		local function __FUNC_6272_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 123.050000)
			arg0:setTopBottom(false, false, -97.520000, 195.480000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_6272_(registerVal18, {})
	end

	registerVal21.GainFocus = __FUNC_2BBE_
	local function __FUNC_6495_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -128.000000, -24.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -128.000000, -24.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -60.000000, -8.000000)
		registerVal2.Bracket:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 84.970000, 101.030000)
		registerVal2.Semi:setRGB(0.330000, 0.330000, 0.330000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_7136_(arg0, arg1)
			local function __FUNC_728C_(arg0, arg1)
				local function __FUNC_7407_(arg0, arg1)
					local function __FUNC_755C_(arg0, arg1)
						local function __FUNC_76D7_(arg0, arg1)
							local function __FUNC_782C_(arg0, arg1)
								local function __FUNC_79A7_(arg0, arg1)
									local function __FUNC_7AFC_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(false, false, -51.000000, 53.000000)
										arg0:setTopBottom(false, false, -27.000000, 93.000000)
										arg0:setRGB(1.000000, 0.760000, 0.240000)
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_7AFC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AFC_)
								end

								if arg1.interrupted then
									__FUNC_79A7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.900000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79A7_)
							end

							if arg1.interrupted then
								__FUNC_782C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_782C_)
						end

						if arg1.interrupted then
							__FUNC_76D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76D7_)
					end

					if arg1.interrupted then
						__FUNC_755C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_755C_)
				end

				if arg1.interrupted then
					__FUNC_7407_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7407_)
			end

			if arg1.interrupted then
				__FUNC_728C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_728C_)
		end

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -51.000000, 53.000000)
		registerVal2.IconHex:setTopBottom(false, false, -27.000000, 93.000000)
		registerVal2.IconHex:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.IconHex:setAlpha(1.000000)
		__FUNC_7136_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(true, false, 185.000000, 193.000000)
		registerVal2.IconHexLine:setTopBottom(true, false, 199.000000, 211.000000)
		registerVal2.IconHexLine:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconHexLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.IconSections1:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconSections1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel1:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel2:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -47.000000, -39.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.PixelHex:setLeftRight(false, false, -6.900000, 10.100000)
		registerVal2.PixelHex:setTopBottom(false, false, -55.250000, -34.000000)
		registerVal2.PixelHex:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -41.000000, 45.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, -8.000000, 78.000000)
		registerVal2.AbilitylIcon:setRGB(0.650000, 0.670000, 0.190000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(50.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.PanelGlow00:setLeftRight(true, false, -36.740000, 182.740000)
		registerVal2.PanelGlow00:setTopBottom(true, false, -3.460000, 219.460000)
		registerVal2.PanelGlow00:setRGB(0.970000, 0.740000, 0.130000)
		registerVal2.PanelGlow00:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.Focus = __FUNC_6495_
	local function __FUNC_7D4F_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_8A8A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.200000)
		__FUNC_8A8A_(registerVal3, {})
		local function __FUNC_8C3D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, 188.000000)
			arg0:setTopBottom(false, false, -106.000000, -2.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -128.000000, -24.000000)
		__FUNC_8C3D_(registerVal4, {})
		local function __FUNC_8E3E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -188.000000, 52.000000)
			arg0:setTopBottom(false, false, -106.000000, -2.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -128.000000, -24.000000)
		__FUNC_8E3E_(registerVal5, {})
		local function __FUNC_903E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 93.000000)
			arg0:setTopBottom(false, false, -38.000000, 14.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -60.000000, -8.000000)
		registerVal2.Bracket:setRGB(1.000000, 0.760000, 0.240000)
		__FUNC_903E_(registerVal6, {})
		local function __FUNC_9267_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -45.830000, 47.830000)
			arg0:setTopBottom(false, false, 89.970000, 106.030000)
			arg0:setRGB(0.600000, 0.600000, 0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 84.970000, 101.030000)
		registerVal2.Semi:setRGB(0.330000, 0.330000, 0.330000)
		__FUNC_9267_(registerVal7, {})
		local function __FUNC_948F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -40.270000, 42.070000)
			arg0:setTopBottom(false, false, -4.000000, 91.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -51.000000, 53.000000)
		registerVal2.IconHex:setTopBottom(false, false, -27.000000, 93.000000)
		registerVal2.IconHex:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.IconHex:setAlpha(0.900000)
		__FUNC_948F_(registerVal8, {})
		local function __FUNC_96DA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 72.000000, 80.000000)
			arg0:setTopBottom(true, false, 163.000000, 175.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(true, false, 72.000000, 80.000000)
		registerVal2.IconHexLine:setTopBottom(true, false, 163.000000, 175.000000)
		registerVal2.IconHexLine:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_96DA_(registerVal9, {})
		local function __FUNC_9903_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -61.000000, 63.000000)
			arg0:setTopBottom(false, false, 4.500000, 85.500000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.IconSections1:setLeftRight(false, false, -62.000000, 62.000000)
		registerVal2.IconSections1:setTopBottom(false, false, 4.500000, 85.500000)
		registerVal2.IconSections1:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconSections1:setAlpha(0.000000)
		__FUNC_9903_(registerVal10, {})
		local function __FUNC_9B4E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 51.000000, 59.000000)
			arg0:setTopBottom(false, false, 13.000000, 21.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel1:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel1:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_9B4E_(registerVal11, {})
		local function __FUNC_9D81_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -57.000000, -49.000000)
			arg0:setTopBottom(false, false, 13.000000, 21.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel2:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel2:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_9D81_(registerVal12, {})
		local function __FUNC_9FB5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 46.000000, 54.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_9FB5_(registerVal13, {})
		local function __FUNC_A1E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, -44.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_A1E9_(registerVal14, {})
		local function __FUNC_A41D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -2.000000, 6.000000)
			arg0:setTopBottom(false, false, -23.000000, -15.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -47.000000, -39.000000)
		registerVal2.Pixel5:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_A41D_(registerVal15, {})
		local function __FUNC_A651_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -6.900000, 10.300000)
			arg0:setTopBottom(false, false, -55.500000, -34.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.PixelHex:setLeftRight(false, false, -6.900000, 10.300000)
		registerVal2.PixelHex:setTopBottom(false, false, -55.500000, -34.000000)
		registerVal2.PixelHex:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.PixelHex:setAlpha(1.000000)
		__FUNC_A651_(registerVal16, {})
		local function __FUNC_A8A3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -35.000000, 37.000000)
			arg0:setTopBottom(false, false, 9.000000, 81.000000)
			arg0:setRGB(0.520000, 0.730000, 0.780000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -41.000000, 45.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, -8.000000, 78.000000)
		registerVal2.AbilitylIcon:setRGB(0.650000, 0.670000, 0.190000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(50.000000)
		__FUNC_A8A3_(registerVal17, {})
		local function __FUNC_AB1A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 123.050000)
			arg0:setTopBottom(false, false, -97.520000, 195.480000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(1.000000)
		__FUNC_AB1A_(registerVal18, {})
		local function __FUNC_AD3D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -36.800000, 182.600000)
			arg0:setTopBottom(true, false, -5.930000, 217.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.PanelGlow00:setLeftRight(true, false, -36.800000, 182.600000)
		registerVal2.PanelGlow00:setTopBottom(true, false, -5.930000, 217.000000)
		registerVal2.PanelGlow00:setAlpha(0.170000)
		__FUNC_AD3D_(registerVal19, {})
	end

	registerVal21.LoseFocus = __FUNC_7D4F_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_AF61_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -106.000000, -2.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -106.000000, -2.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -38.000000, 14.000000)
		registerVal2.Bracket:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bracket:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 89.970000, 106.030000)
		registerVal2.Semi:setRGB(0.600000, 0.600000, 0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -40.270000, 42.070000)
		registerVal2.IconHex:setTopBottom(false, false, -4.000000, 91.000000)
		registerVal2.IconHex:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconHex:setAlpha(0.360000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(true, false, 185.000000, 193.000000)
		registerVal2.IconHexLine:setTopBottom(true, false, 194.000000, 206.000000)
		registerVal2.IconHexLine:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconHexLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.IconSections1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconSections1:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 51.000000, 59.000000)
		registerVal2.Pixel1:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel1:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -57.000000, -49.000000)
		registerVal2.Pixel2:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel2:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 46.000000, 54.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -52.000000, -44.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -23.000000, -15.000000)
		registerVal2.Pixel5:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.PixelHex:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.PixelHex:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -35.000000, 37.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, 9.000000, 81.000000)
		registerVal2.AbilitylIcon:setRGB(0.520000, 0.730000, 0.780000)
		registerVal2.AbilitylIcon:setAlpha(0.000000)
		registerVal2.AbilitylIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal21.DefaultClip = __FUNC_AF61_
	registerVal20.Inactive = registerVal21
	registerVal21 = {}
	local function __FUNC_BB56_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -106.000000, -2.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -106.000000, -2.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -38.000000, 14.000000)
		registerVal2.Bracket:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Bracket:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 89.970000, 106.030000)
		registerVal2.Semi:setRGB(0.600000, 0.600000, 0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -40.270000, 42.070000)
		registerVal2.IconHex:setTopBottom(false, false, -4.000000, 91.000000)
		registerVal2.IconHex:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconHex:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(true, false, 72.000000, 80.000000)
		registerVal2.IconHexLine:setTopBottom(true, false, 163.000000, 175.000000)
		registerVal2.IconHexLine:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconHexLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.IconSections1:setLeftRight(false, false, -60.900000, 63.100000)
		registerVal2.IconSections1:setTopBottom(false, false, 4.500000, 85.500000)
		registerVal2.IconSections1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconSections1:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 51.000000, 59.000000)
		registerVal2.Pixel1:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel1:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -57.000000, -49.000000)
		registerVal2.Pixel2:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel2:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 46.000000, 54.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -52.000000, -44.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -23.000000, -15.000000)
		registerVal2.Pixel5:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.PixelHex:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.PixelHex:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -35.000000, 37.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, 9.000000, 81.000000)
		registerVal2.AbilitylIcon:setRGB(0.520000, 0.730000, 0.780000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal21.DefaultClip = __FUNC_BB56_
	local function __FUNC_C7AE_()
		registerVal2:setupElementClipCounter(16.000000)
		local function __FUNC_D34A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.000000)
		__FUNC_D34A_(registerVal3, {})
		local function __FUNC_D4FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, 188.000000)
			arg0:setTopBottom(false, false, -128.000000, -24.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -106.000000, -2.000000)
		__FUNC_D4FD_(registerVal4, {})
		local function __FUNC_D6FE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -188.000000, 52.000000)
			arg0:setTopBottom(false, false, -128.000000, -24.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -106.000000, -2.000000)
		__FUNC_D6FE_(registerVal5, {})
		local function __FUNC_D8FE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 93.000000)
			arg0:setTopBottom(false, false, -60.000000, -8.000000)
			arg0:setRGB(1.000000, 0.760000, 0.240000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -38.000000, 14.000000)
		registerVal2.Bracket:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_D8FE_(registerVal6, {})
		local function __FUNC_DB31_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -45.830000, 47.830000)
			arg0:setTopBottom(false, false, 84.970000, 101.030000)
			arg0:setRGB(0.330000, 0.330000, 0.330000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 89.970000, 106.030000)
		registerVal2.Semi:setRGB(0.600000, 0.600000, 0.600000)
		__FUNC_DB31_(registerVal7, {})
		local function __FUNC_DD5B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -51.000000, 53.000000)
			arg0:setTopBottom(false, false, -27.000000, 93.000000)
			arg0:setRGB(1.000000, 0.760000, 0.240000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -40.270000, 42.070000)
		registerVal2.IconHex:setTopBottom(false, false, -4.000000, 91.000000)
		registerVal2.IconHex:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconHex:setAlpha(0.900000)
		__FUNC_DD5B_(registerVal8, {})
		local function __FUNC_DFB0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 72.000000, 80.000000)
			arg0:setTopBottom(true, false, 163.000000, 175.000000)
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(true, false, 72.000000, 80.000000)
		registerVal2.IconHexLine:setTopBottom(true, false, 163.000000, 175.000000)
		registerVal2.IconHexLine:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_DFB0_(registerVal9, {})
		local function __FUNC_E1DB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.IconSections1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconSections1:setAlpha(0.200000)
		__FUNC_E1DB_(registerVal10, {})
		local function __FUNC_E3B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 56.000000, 64.000000)
			arg0:setTopBottom(false, false, -1.000000, 7.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 51.000000, 59.000000)
		registerVal2.Pixel1:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel1:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_E3B1_(registerVal11, {})
		local function __FUNC_E5E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -62.000000, -54.000000)
			arg0:setTopBottom(false, false, -1.000000, 7.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -57.000000, -49.000000)
		registerVal2.Pixel2:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel2:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_E5E5_(registerVal12, {})
		local function __FUNC_E819_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 56.000000, 64.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 46.000000, 54.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_E819_(registerVal13, {})
		local function __FUNC_EA4D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -62.000000, -54.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -52.000000, -44.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_EA4D_(registerVal14, {})
		local function __FUNC_EC81_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -2.000000, 6.000000)
			arg0:setTopBottom(false, false, -47.000000, -39.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -23.000000, -15.000000)
		registerVal2.Pixel5:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_EC81_(registerVal15, {})
		local function __FUNC_EEB5_(arg0, arg1)
			local function __FUNC_F02F_(arg0, arg1)
				local function __FUNC_F1A7_(arg0, arg1)
					local function __FUNC_F31F_(arg0, arg1)
						local function __FUNC_F497_(arg0, arg1)
							local function __FUNC_F60F_(arg0, arg1)
								local function __FUNC_F764_(arg0, arg1)
									local function __FUNC_F8DF_(arg0, arg1)
										local function __FUNC_FA34_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_FA34_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA34_)
									end

									if arg1.interrupted then
										__FUNC_F8DF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.600000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8DF_)
								end

								if arg1.interrupted then
									__FUNC_F764_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F764_)
							end

							if arg1.interrupted then
								__FUNC_F60F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F60F_)
						end

						if arg1.interrupted then
							__FUNC_F497_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F497_)
					end

					if arg1.interrupted then
						__FUNC_F31F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F31F_)
				end

				if arg1.interrupted then
					__FUNC_F1A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.710000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F1A7_)
			end

			if arg1.interrupted then
				__FUNC_F02F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.690000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F02F_)
		end

		registerVal16:completeAnimation()
		registerVal2.PixelHex:setAlpha(0.000000)
		__FUNC_EEB5_(registerVal16, {})
		local function __FUNC_FBE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -41.000000, 45.000000)
			arg0:setTopBottom(false, false, -8.000000, 78.000000)
			arg0:setRGB(0.650000, 0.670000, 0.190000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -35.000000, 37.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, 9.000000, 81.000000)
		registerVal2.AbilitylIcon:setRGB(0.520000, 0.730000, 0.780000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(0.000000)
		__FUNC_FBE9_(registerVal17, {})
		local function __FUNC_FE62_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 123.050000)
			arg0:setTopBottom(false, false, -97.520000, 195.480000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_FE62_(registerVal18, {})
	end

	registerVal21.GainFocus = __FUNC_C7AE_
	local function __FUNC_10085_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -128.000000, -24.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -128.000000, -24.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -60.000000, -8.000000)
		registerVal2.Bracket:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 84.970000, 101.030000)
		registerVal2.Semi:setRGB(0.330000, 0.330000, 0.330000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_10C8F_(arg0, arg1)
			local function __FUNC_10DE4_(arg0, arg1)
				local function __FUNC_10F5F_(arg0, arg1)
					local function __FUNC_110B4_(arg0, arg1)
						local function __FUNC_1122F_(arg0, arg1)
							local function __FUNC_11384_(arg0, arg1)
								local function __FUNC_114FF_(arg0, arg1)
									local function __FUNC_11654_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(false, false, -51.000000, 53.000000)
										arg0:setTopBottom(false, false, -27.000000, 93.000000)
										arg0:setRGB(1.000000, 0.760000, 0.240000)
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_11654_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11654_)
								end

								if arg1.interrupted then
									__FUNC_114FF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.900000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_114FF_)
							end

							if arg1.interrupted then
								__FUNC_11384_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11384_)
						end

						if arg1.interrupted then
							__FUNC_1122F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1122F_)
					end

					if arg1.interrupted then
						__FUNC_110B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_110B4_)
				end

				if arg1.interrupted then
					__FUNC_10F5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F5F_)
			end

			if arg1.interrupted then
				__FUNC_10DE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10DE4_)
		end

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -51.000000, 53.000000)
		registerVal2.IconHex:setTopBottom(false, false, -27.000000, 93.000000)
		registerVal2.IconHex:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.IconHex:setAlpha(1.000000)
		__FUNC_10C8F_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(false, false, 110.000000, 118.000000)
		registerVal2.IconHexLine:setTopBottom(false, false, 124.000000, 136.000000)
		registerVal2.IconHexLine:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconHexLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.IconSections1:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconSections1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel1:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel2:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -47.000000, -39.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.PixelHex:setLeftRight(false, false, -6.900000, 10.100000)
		registerVal2.PixelHex:setTopBottom(false, false, -55.250000, -34.000000)
		registerVal2.PixelHex:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -41.000000, 45.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, -8.000000, 78.000000)
		registerVal2.AbilitylIcon:setRGB(0.650000, 0.670000, 0.190000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(50.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.PanelGlow00:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.Focus = __FUNC_10085_
	local function __FUNC_118A7_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_1257E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.200000)
		__FUNC_1257E_(registerVal3, {})
		local function __FUNC_12731_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, 188.000000)
			arg0:setTopBottom(false, false, -106.000000, -2.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -128.000000, -24.000000)
		__FUNC_12731_(registerVal4, {})
		local function __FUNC_12932_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -188.000000, 52.000000)
			arg0:setTopBottom(false, false, -106.000000, -2.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -128.000000, -24.000000)
		__FUNC_12932_(registerVal5, {})
		local function __FUNC_12B32_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 93.000000)
			arg0:setTopBottom(false, false, -38.000000, 14.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -60.000000, -8.000000)
		registerVal2.Bracket:setRGB(1.000000, 0.760000, 0.240000)
		__FUNC_12B32_(registerVal6, {})
		local function __FUNC_12D5B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -45.830000, 47.830000)
			arg0:setTopBottom(false, false, 89.970000, 106.030000)
			arg0:setRGB(0.600000, 0.600000, 0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 84.970000, 101.030000)
		registerVal2.Semi:setRGB(0.330000, 0.330000, 0.330000)
		__FUNC_12D5B_(registerVal7, {})
		local function __FUNC_12F83_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -40.270000, 42.070000)
			arg0:setTopBottom(false, false, -4.000000, 91.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -51.000000, 53.000000)
		registerVal2.IconHex:setTopBottom(false, false, -27.000000, 93.000000)
		registerVal2.IconHex:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.IconHex:setAlpha(0.900000)
		__FUNC_12F83_(registerVal8, {})
		local function __FUNC_131CE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 72.000000, 80.000000)
			arg0:setTopBottom(true, false, 163.000000, 175.000000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(true, false, 72.000000, 80.000000)
		registerVal2.IconHexLine:setTopBottom(true, false, 163.000000, 175.000000)
		registerVal2.IconHexLine:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_131CE_(registerVal9, {})
		local function __FUNC_133F7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -61.000000, 63.000000)
			arg0:setTopBottom(false, false, 4.500000, 85.500000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.IconSections1:setLeftRight(false, false, -62.000000, 62.000000)
		registerVal2.IconSections1:setTopBottom(false, false, 4.500000, 85.500000)
		registerVal2.IconSections1:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconSections1:setAlpha(0.000000)
		__FUNC_133F7_(registerVal10, {})
		local function __FUNC_13642_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 51.000000, 59.000000)
			arg0:setTopBottom(false, false, 13.000000, 21.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel1:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel1:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_13642_(registerVal11, {})
		local function __FUNC_13875_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -57.000000, -49.000000)
			arg0:setTopBottom(false, false, 13.000000, 21.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel2:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel2:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_13875_(registerVal12, {})
		local function __FUNC_13AA9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 46.000000, 54.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_13AA9_(registerVal13, {})
		local function __FUNC_13CDD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, -44.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_13CDD_(registerVal14, {})
		local function __FUNC_13F11_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -2.000000, 6.000000)
			arg0:setTopBottom(false, false, -23.000000, -15.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -47.000000, -39.000000)
		registerVal2.Pixel5:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_13F11_(registerVal15, {})
		local function __FUNC_14145_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -6.900000, 10.300000)
			arg0:setTopBottom(false, false, -55.500000, -34.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.PixelHex:setLeftRight(false, false, -6.900000, 10.300000)
		registerVal2.PixelHex:setTopBottom(false, false, -55.500000, -34.000000)
		registerVal2.PixelHex:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.PixelHex:setAlpha(1.000000)
		__FUNC_14145_(registerVal16, {})
		local function __FUNC_14397_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -35.000000, 37.000000)
			arg0:setTopBottom(false, false, 9.000000, 81.000000)
			arg0:setRGB(0.520000, 0.730000, 0.780000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -41.000000, 45.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, -8.000000, 78.000000)
		registerVal2.AbilitylIcon:setRGB(0.650000, 0.670000, 0.190000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(50.000000)
		__FUNC_14397_(registerVal17, {})
		local function __FUNC_1460E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 123.050000)
			arg0:setTopBottom(false, false, -97.520000, 195.480000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(1.000000)
		__FUNC_1460E_(registerVal18, {})
		local function __FUNC_14831_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.PanelGlow00:setAlpha(0.050000)
		__FUNC_14831_(registerVal19, {})
	end

	registerVal21.LoseFocus = __FUNC_118A7_
	registerVal20.Control = registerVal21
	registerVal21 = {}
	local function __FUNC_149E5_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -106.000000, -2.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -106.000000, -2.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -38.000000, 14.000000)
		registerVal2.Bracket:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.Bracket:setAlpha(0.850000)
		registerVal2.Bracket:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.Bracket:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.Bracket:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Bracket:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Bracket:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Bracket:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 89.970000, 106.030000)
		registerVal2.Semi:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconHex:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.IconHex:setAlpha(1.000000)
		registerVal2.IconHex:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.IconHex:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(true, false, 72.000000, 80.000000)
		registerVal2.IconHexLine:setTopBottom(true, false, 163.000000, 175.000000)
		registerVal2.IconHexLine:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.IconHexLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.IconSections1:setLeftRight(false, false, -60.900000, 63.100000)
		registerVal2.IconSections1:setTopBottom(false, false, 4.500000, 85.500000)
		registerVal2.IconSections1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconSections1:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 51.000000, 59.000000)
		registerVal2.Pixel1:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel1:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -57.000000, -49.000000)
		registerVal2.Pixel2:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel2:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 46.000000, 54.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -52.000000, -44.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -23.000000, -15.000000)
		registerVal2.Pixel5:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.PixelHex:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.PixelHex:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(0.000000)
		registerVal2.AbilitylIcon:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.AbilitylIcon:setShaderVector(0.000000, 0.100000, -0.500000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal21.DefaultClip = __FUNC_149E5_
	local function __FUNC_15952_()
		registerVal2:setupElementClipCounter(16.000000)
		local function __FUNC_167FE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.000000)
		__FUNC_167FE_(registerVal3, {})
		local function __FUNC_169B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, 188.000000)
			arg0:setTopBottom(false, false, -128.000000, -24.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -106.000000, -2.000000)
		__FUNC_169B1_(registerVal4, {})
		local function __FUNC_16BB2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -188.000000, 52.000000)
			arg0:setTopBottom(false, false, -128.000000, -24.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -106.000000, -2.000000)
		__FUNC_16BB2_(registerVal5, {})
		local function __FUNC_16DB2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 93.000000)
			arg0:setTopBottom(false, false, -60.000000, -8.000000)
			arg0:setRGB(1.000000, 0.760000, 0.240000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -38.000000, 14.000000)
		registerVal2.Bracket:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_16DB2_(registerVal6, {})
		local function __FUNC_16FE5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -45.830000, 47.830000)
			arg0:setTopBottom(false, false, 84.970000, 101.030000)
			arg0:setRGB(0.330000, 0.330000, 0.330000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 89.970000, 106.030000)
		registerVal2.Semi:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_16FE5_(registerVal7, {})
		local function __FUNC_1720F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -51.000000, 53.000000)
			arg0:setTopBottom(false, false, -27.000000, 93.000000)
			arg0:setRGB(1.000000, 0.760000, 0.240000)
			arg0:setAlpha(0.900000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
			arg0:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
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

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -40.270000, 42.070000)
		registerVal2.IconHex:setTopBottom(false, false, -4.000000, 91.000000)
		registerVal2.IconHex:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.IconHex:setAlpha(0.900000)
		registerVal2.IconHex:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
		registerVal2.IconHex:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1720F_(registerVal8, {})
		local function __FUNC_175C2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 72.000000, 80.000000)
			arg0:setTopBottom(true, false, 163.000000, 175.000000)
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(true, false, 72.000000, 80.000000)
		registerVal2.IconHexLine:setTopBottom(true, false, 163.000000, 175.000000)
		registerVal2.IconHexLine:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_175C2_(registerVal9, {})
		local function __FUNC_177EB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.IconSections1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconSections1:setAlpha(0.200000)
		__FUNC_177EB_(registerVal10, {})
		local function __FUNC_179C1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 56.000000, 64.000000)
			arg0:setTopBottom(false, false, -1.000000, 7.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 51.000000, 59.000000)
		registerVal2.Pixel1:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel1:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_179C1_(registerVal11, {})
		local function __FUNC_17BF5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -62.000000, -54.000000)
			arg0:setTopBottom(false, false, -1.000000, 7.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -57.000000, -49.000000)
		registerVal2.Pixel2:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel2:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_17BF5_(registerVal12, {})
		local function __FUNC_17E29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 56.000000, 64.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 46.000000, 54.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_17E29_(registerVal13, {})
		local function __FUNC_1805D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -62.000000, -54.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -52.000000, -44.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_1805D_(registerVal14, {})
		local function __FUNC_18291_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -2.000000, 6.000000)
			arg0:setTopBottom(false, false, -47.000000, -39.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -23.000000, -15.000000)
		registerVal2.Pixel5:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_18291_(registerVal15, {})
		local function __FUNC_184C5_(arg0, arg1)
			local function __FUNC_1863F_(arg0, arg1)
				local function __FUNC_187B7_(arg0, arg1)
					local function __FUNC_1892F_(arg0, arg1)
						local function __FUNC_18AA7_(arg0, arg1)
							local function __FUNC_18C1F_(arg0, arg1)
								local function __FUNC_18D74_(arg0, arg1)
									local function __FUNC_18EEF_(arg0, arg1)
										local function __FUNC_19044_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setRGB(0.960000, 0.440000, 0.020000)
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_19044_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19044_)
									end

									if arg1.interrupted then
										__FUNC_18EEF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.600000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18EEF_)
								end

								if arg1.interrupted then
									__FUNC_18D74_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18D74_)
							end

							if arg1.interrupted then
								__FUNC_18C1F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18C1F_)
						end

						if arg1.interrupted then
							__FUNC_18AA7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18AA7_)
					end

					if arg1.interrupted then
						__FUNC_1892F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1892F_)
				end

				if arg1.interrupted then
					__FUNC_187B7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.710000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_187B7_)
			end

			if arg1.interrupted then
				__FUNC_1863F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.690000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1863F_)
		end

		registerVal16:completeAnimation()
		registerVal2.PixelHex:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.PixelHex:setAlpha(0.000000)
		__FUNC_184C5_(registerVal16, {})
		local function __FUNC_1922C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -41.000000, 45.000000)
			arg0:setTopBottom(false, false, -8.000000, 78.000000)
			arg0:setRGB(0.650000, 0.670000, 0.190000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
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

		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -35.000000, 37.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, 7.500000, 79.500000)
		registerVal2.AbilitylIcon:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(0.000000)
		registerVal2.AbilitylIcon:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.AbilitylIcon:setShaderVector(0.000000, 0.100000, -0.500000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1922C_(registerVal17, {})
		local function __FUNC_19601_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 123.050000)
			arg0:setTopBottom(false, false, -97.520000, 195.480000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_19601_(registerVal18, {})
	end

	registerVal21.GainFocus = __FUNC_15952_
	local function __FUNC_19825_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -128.000000, -24.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -128.000000, -24.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -60.000000, -8.000000)
		registerVal2.Bracket:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 84.970000, 101.030000)
		registerVal2.Semi:setRGB(0.330000, 0.330000, 0.330000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1A516_(arg0, arg1)
			local function __FUNC_1A66C_(arg0, arg1)
				local function __FUNC_1A7E7_(arg0, arg1)
					local function __FUNC_1A93C_(arg0, arg1)
						local function __FUNC_1AAB7_(arg0, arg1)
							local function __FUNC_1AC0C_(arg0, arg1)
								local function __FUNC_1AD87_(arg0, arg1)
									local function __FUNC_1AEDC_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(false, false, -51.000000, 53.000000)
										arg0:setTopBottom(false, false, -27.000000, 93.000000)
										arg0:setRGB(1.000000, 0.760000, 0.240000)
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_1AEDC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AEDC_)
								end

								if arg1.interrupted then
									__FUNC_1AD87_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.900000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD87_)
							end

							if arg1.interrupted then
								__FUNC_1AC0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AC0C_)
						end

						if arg1.interrupted then
							__FUNC_1AAB7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AAB7_)
					end

					if arg1.interrupted then
						__FUNC_1A93C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A93C_)
				end

				if arg1.interrupted then
					__FUNC_1A7E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A7E7_)
			end

			if arg1.interrupted then
				__FUNC_1A66C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A66C_)
		end

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -51.000000, 53.000000)
		registerVal2.IconHex:setTopBottom(false, false, -27.000000, 93.000000)
		registerVal2.IconHex:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.IconHex:setAlpha(1.000000)
		__FUNC_1A516_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(false, false, 110.000000, 118.000000)
		registerVal2.IconHexLine:setTopBottom(false, false, 124.000000, 136.000000)
		registerVal2.IconHexLine:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconHexLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.IconSections1:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconSections1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel1:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel1:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel2:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel2:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -47.000000, -39.000000)
		registerVal2.Pixel5:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.PixelHex:setLeftRight(false, false, -6.900000, 10.100000)
		registerVal2.PixelHex:setTopBottom(false, false, -55.250000, -34.000000)
		registerVal2.PixelHex:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.PixelHex:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -41.000000, 45.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, -8.000000, 78.000000)
		registerVal2.AbilitylIcon:setRGB(0.650000, 0.670000, 0.190000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(50.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.PanelGlow00:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.Focus = __FUNC_19825_
	local function __FUNC_1B12F_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_1C10B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.200000)
		__FUNC_1C10B_(registerVal3, {})
		local function __FUNC_1C2BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, 188.000000)
			arg0:setTopBottom(false, false, -106.000000, -2.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -128.000000, -24.000000)
		__FUNC_1C2BD_(registerVal4, {})
		local function __FUNC_1C4BE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -188.000000, 52.000000)
			arg0:setTopBottom(false, false, -106.000000, -2.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -128.000000, -24.000000)
		__FUNC_1C4BE_(registerVal5, {})
		local function __FUNC_1C6BE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 93.000000)
			arg0:setTopBottom(false, false, -38.000000, 14.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -60.000000, -8.000000)
		registerVal2.Bracket:setRGB(1.000000, 0.760000, 0.240000)
		__FUNC_1C6BE_(registerVal6, {})
		local function __FUNC_1C8F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -45.830000, 47.830000)
			arg0:setTopBottom(false, false, 89.970000, 106.030000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 84.970000, 101.030000)
		registerVal2.Semi:setRGB(0.330000, 0.330000, 0.330000)
		__FUNC_1C8F1_(registerVal7, {})
		local function __FUNC_1CB25_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -40.270000, 42.070000)
			arg0:setTopBottom(false, false, -4.000000, 91.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			arg0:setAlpha(0.900000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
			arg0:setShaderVector(0.000000, 0.100000, -0.500000, 0.000000, 0.000000)
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

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -51.000000, 53.000000)
		registerVal2.IconHex:setTopBottom(false, false, -27.000000, 93.000000)
		registerVal2.IconHex:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.IconHex:setAlpha(0.900000)
		registerVal2.IconHex:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
		registerVal2.IconHex:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.IconHex:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1CB25_(registerVal8, {})
		local function __FUNC_1CEE4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -3.000000, 5.000000)
			arg0:setTopBottom(false, false, 88.000000, 100.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(false, false, -3.000000, 5.000000)
		registerVal2.IconHexLine:setTopBottom(false, false, 88.000000, 100.000000)
		registerVal2.IconHexLine:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_1CEE4_(registerVal9, {})
		local function __FUNC_1D119_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -61.000000, 63.000000)
			arg0:setTopBottom(false, false, 4.500000, 85.500000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.IconSections1:setLeftRight(false, false, -62.000000, 62.000000)
		registerVal2.IconSections1:setTopBottom(false, false, 4.500000, 85.500000)
		registerVal2.IconSections1:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconSections1:setAlpha(0.000000)
		__FUNC_1D119_(registerVal10, {})
		local function __FUNC_1D366_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 51.000000, 59.000000)
			arg0:setTopBottom(false, false, 13.000000, 21.000000)
			arg0:setRGB(0.000000, 0.560000, 1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel1:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel1:setRGB(0.000000, 0.560000, 1.000000)
		__FUNC_1D366_(registerVal11, {})
		local function __FUNC_1D599_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -57.000000, -49.000000)
			arg0:setTopBottom(false, false, 13.000000, 21.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel2:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel2:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_1D599_(registerVal12, {})
		local function __FUNC_1D7CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 46.000000, 54.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_1D7CD_(registerVal13, {})
		local function __FUNC_1DA01_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, -44.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_1DA01_(registerVal14, {})
		local function __FUNC_1DC35_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -2.000000, 6.000000)
			arg0:setTopBottom(false, false, -23.000000, -15.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -47.000000, -39.000000)
		registerVal2.Pixel5:setRGB(0.960000, 0.440000, 0.020000)
		__FUNC_1DC35_(registerVal15, {})
		local function __FUNC_1DE69_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -6.900000, 10.300000)
			arg0:setTopBottom(false, false, -55.500000, -34.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.PixelHex:setLeftRight(false, false, -6.900000, 10.300000)
		registerVal2.PixelHex:setTopBottom(false, false, -55.500000, -34.000000)
		registerVal2.PixelHex:setRGB(0.960000, 0.440000, 0.020000)
		registerVal2.PixelHex:setAlpha(1.000000)
		__FUNC_1DE69_(registerVal16, {})
		local function __FUNC_1E0C0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -35.000000, 37.000000)
			arg0:setTopBottom(false, false, 9.000000, 81.000000)
			arg0:setRGB(0.960000, 0.440000, 0.020000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
			arg0:setShaderVector(0.000000, 0.100000, -0.500000, 0.000000, 0.000000)
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

		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -41.000000, 45.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, -8.000000, 78.000000)
		registerVal2.AbilitylIcon:setRGB(0.650000, 0.670000, 0.190000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(50.000000)
		registerVal2.AbilitylIcon:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.AbilitylIcon:setShaderVector(0.000000, 0.100000, -0.500000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.AbilitylIcon:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_1E0C0_(registerVal17, {})
		local function __FUNC_1E495_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 123.050000)
			arg0:setTopBottom(false, false, -97.520000, 195.480000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(1.000000)
		__FUNC_1E495_(registerVal18, {})
		local function __FUNC_1E6B9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.PanelGlow00:setAlpha(0.050000)
		__FUNC_1E6B9_(registerVal19, {})
	end

	registerVal21.LoseFocus = __FUNC_1B12F_
	registerVal20.Chaos = registerVal21
	registerVal21 = {}
	local function __FUNC_1E86D_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -106.000000, -2.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -106.000000, -2.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -38.000000, 14.000000)
		registerVal2.Bracket:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.Bracket:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 89.970000, 106.030000)
		registerVal2.Semi:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -40.270000, 42.070000)
		registerVal2.IconHex:setTopBottom(false, false, -4.000000, 91.000000)
		registerVal2.IconHex:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.IconHex:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(true, false, 72.000000, 80.000000)
		registerVal2.IconHexLine:setTopBottom(true, false, 163.000000, 175.000000)
		registerVal2.IconHexLine:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.IconHexLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.IconSections1:setLeftRight(false, false, -60.900000, 63.100000)
		registerVal2.IconSections1:setTopBottom(false, false, 4.500000, 85.500000)
		registerVal2.IconSections1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconSections1:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 51.000000, 59.000000)
		registerVal2.Pixel1:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel1:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -57.000000, -49.000000)
		registerVal2.Pixel2:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel2:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 46.000000, 54.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -52.000000, -44.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -23.000000, -15.000000)
		registerVal2.Pixel5:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.PixelHex:setRGB(0.000000, 0.560000, 1.000000)
		registerVal2.PixelHex:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -35.000000, 37.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, 9.000000, 81.000000)
		registerVal2.AbilitylIcon:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal21.DefaultClip = __FUNC_1E86D_
	local function __FUNC_1F4C1_()
		registerVal2:setupElementClipCounter(16.000000)
		local function __FUNC_20078_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.000000)
		__FUNC_20078_(registerVal3, {})
		local function __FUNC_2022D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, 188.000000)
			arg0:setTopBottom(false, false, -128.000000, -24.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -106.000000, -2.000000)
		__FUNC_2022D_(registerVal4, {})
		local function __FUNC_2042E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -188.000000, 52.000000)
			arg0:setTopBottom(false, false, -128.000000, -24.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -106.000000, -2.000000)
		__FUNC_2042E_(registerVal5, {})
		local function __FUNC_2062E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 93.000000)
			arg0:setTopBottom(false, false, -60.000000, -8.000000)
			arg0:setRGB(1.000000, 0.760000, 0.240000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -38.000000, 14.000000)
		registerVal2.Bracket:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_2062E_(registerVal6, {})
		local function __FUNC_20861_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -45.830000, 47.830000)
			arg0:setTopBottom(false, false, 84.970000, 101.030000)
			arg0:setRGB(0.330000, 0.330000, 0.330000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 89.970000, 106.030000)
		registerVal2.Semi:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_20861_(registerVal7, {})
		local function __FUNC_20A8B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -51.000000, 53.000000)
			arg0:setTopBottom(false, false, -27.000000, 93.000000)
			arg0:setRGB(1.000000, 0.760000, 0.240000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -40.270000, 42.070000)
		registerVal2.IconHex:setTopBottom(false, false, -4.000000, 91.000000)
		registerVal2.IconHex:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.IconHex:setAlpha(0.900000)
		__FUNC_20A8B_(registerVal8, {})
		local function __FUNC_20CE0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -3.000000, 5.000000)
			arg0:setTopBottom(false, false, 88.000000, 100.000000)
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(false, false, -3.000000, 5.000000)
		registerVal2.IconHexLine:setTopBottom(false, false, 88.000000, 100.000000)
		registerVal2.IconHexLine:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_20CE0_(registerVal9, {})
		local function __FUNC_20F0B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.IconSections1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.IconSections1:setAlpha(0.200000)
		__FUNC_20F0B_(registerVal10, {})
		local function __FUNC_210E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 56.000000, 64.000000)
			arg0:setTopBottom(false, false, -1.000000, 7.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 51.000000, 59.000000)
		registerVal2.Pixel1:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel1:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_210E1_(registerVal11, {})
		local function __FUNC_21315_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -62.000000, -54.000000)
			arg0:setTopBottom(false, false, -1.000000, 7.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -57.000000, -49.000000)
		registerVal2.Pixel2:setTopBottom(false, false, 13.000000, 21.000000)
		registerVal2.Pixel2:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_21315_(registerVal12, {})
		local function __FUNC_21549_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 56.000000, 64.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 46.000000, 54.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_21549_(registerVal13, {})
		local function __FUNC_2177D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -62.000000, -54.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -52.000000, -44.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_2177D_(registerVal14, {})
		local function __FUNC_219B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -2.000000, 6.000000)
			arg0:setTopBottom(false, false, -47.000000, -39.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -23.000000, -15.000000)
		registerVal2.Pixel5:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_219B1_(registerVal15, {})
		local function __FUNC_21BE5_(arg0, arg1)
			local function __FUNC_21D5F_(arg0, arg1)
				local function __FUNC_21ED7_(arg0, arg1)
					local function __FUNC_2204F_(arg0, arg1)
						local function __FUNC_221C7_(arg0, arg1)
							local function __FUNC_2233F_(arg0, arg1)
								local function __FUNC_22494_(arg0, arg1)
									local function __FUNC_2260F_(arg0, arg1)
										local function __FUNC_22764_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setRGB(0.220000, 0.750000, 0.160000)
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_22764_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22764_)
									end

									if arg1.interrupted then
										__FUNC_2260F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.600000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2260F_)
								end

								if arg1.interrupted then
									__FUNC_22494_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22494_)
							end

							if arg1.interrupted then
								__FUNC_2233F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2233F_)
						end

						if arg1.interrupted then
							__FUNC_221C7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_221C7_)
					end

					if arg1.interrupted then
						__FUNC_2204F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2204F_)
				end

				if arg1.interrupted then
					__FUNC_21ED7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.710000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21ED7_)
			end

			if arg1.interrupted then
				__FUNC_21D5F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.690000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21D5F_)
		end

		registerVal16:completeAnimation()
		registerVal2.PixelHex:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.PixelHex:setAlpha(0.000000)
		__FUNC_21BE5_(registerVal16, {})
		local function __FUNC_2294C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -41.000000, 45.000000)
			arg0:setTopBottom(false, false, -8.000000, 78.000000)
			arg0:setRGB(0.650000, 0.670000, 0.190000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -35.000000, 37.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, 9.000000, 81.000000)
		registerVal2.AbilitylIcon:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(0.000000)
		__FUNC_2294C_(registerVal17, {})
		local function __FUNC_22BC6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 123.050000)
			arg0:setTopBottom(false, false, -97.520000, 195.480000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_22BC6_(registerVal18, {})
	end

	registerVal21.GainFocus = __FUNC_1F4C1_
	local function __FUNC_22DE9_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -128.000000, -24.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -128.000000, -24.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -60.000000, -8.000000)
		registerVal2.Bracket:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 84.970000, 101.030000)
		registerVal2.Semi:setRGB(0.330000, 0.330000, 0.330000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_23B3E_(arg0, arg1)
			local function __FUNC_23C94_(arg0, arg1)
				local function __FUNC_23E0F_(arg0, arg1)
					local function __FUNC_23F64_(arg0, arg1)
						local function __FUNC_240DF_(arg0, arg1)
							local function __FUNC_24234_(arg0, arg1)
								local function __FUNC_243AF_(arg0, arg1)
									local function __FUNC_24504_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(false, false, -51.000000, 53.000000)
										arg0:setTopBottom(false, false, -27.000000, 93.000000)
										arg0:setRGB(1.000000, 0.760000, 0.240000)
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_24504_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24504_)
								end

								if arg1.interrupted then
									__FUNC_243AF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.900000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_243AF_)
							end

							if arg1.interrupted then
								__FUNC_24234_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24234_)
						end

						if arg1.interrupted then
							__FUNC_240DF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_240DF_)
					end

					if arg1.interrupted then
						__FUNC_23F64_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23F64_)
				end

				if arg1.interrupted then
					__FUNC_23E0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.600000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23E0F_)
			end

			if arg1.interrupted then
				__FUNC_23C94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23C94_)
		end

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -51.000000, 53.000000)
		registerVal2.IconHex:setTopBottom(false, false, -27.000000, 93.000000)
		registerVal2.IconHex:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.IconHex:setAlpha(1.000000)
		__FUNC_23B3E_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(false, false, 110.000000, 118.000000)
		registerVal2.IconHexLine:setTopBottom(false, false, 124.000000, 136.000000)
		registerVal2.IconHexLine:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconHexLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.IconSections1:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconSections1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel1:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel1:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel2:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel2:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -47.000000, -39.000000)
		registerVal2.Pixel5:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.PixelHex:setLeftRight(false, false, -6.900000, 10.100000)
		registerVal2.PixelHex:setTopBottom(false, false, -55.250000, -34.000000)
		registerVal2.PixelHex:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.PixelHex:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -41.000000, 45.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, -8.000000, 78.000000)
		registerVal2.AbilitylIcon:setRGB(0.650000, 0.670000, 0.190000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(50.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.PanelGlow00:setLeftRight(true, false, -57.800000, 211.800000)
		registerVal2.PanelGlow00:setTopBottom(true, false, -23.930000, 249.930000)
		registerVal2.PanelGlow00:setAlpha(0.050000)
		registerVal2.clipFinished(registerVal19, {})
	end

	registerVal21.Focus = __FUNC_22DE9_
	local function __FUNC_24757_()
		registerVal2:setupElementClipCounter(17.000000)
		local function __FUNC_25438_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.200000)
		__FUNC_25438_(registerVal3, {})
		local function __FUNC_255ED_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, 188.000000)
			arg0:setTopBottom(false, false, -106.000000, -2.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.GradBracketR:setLeftRight(false, false, -52.000000, 188.000000)
		registerVal2.GradBracketR:setTopBottom(false, false, -128.000000, -24.000000)
		__FUNC_255ED_(registerVal4, {})
		local function __FUNC_257EE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -188.000000, 52.000000)
			arg0:setTopBottom(false, false, -106.000000, -2.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.GrabBrakcetL:setLeftRight(false, false, -188.000000, 52.000000)
		registerVal2.GrabBrakcetL:setTopBottom(false, false, -128.000000, -24.000000)
		__FUNC_257EE_(registerVal5, {})
		local function __FUNC_259EE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 93.000000)
			arg0:setTopBottom(false, false, -38.000000, 14.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Bracket:setLeftRight(false, false, -95.000000, 93.000000)
		registerVal2.Bracket:setTopBottom(false, false, -60.000000, -8.000000)
		registerVal2.Bracket:setRGB(1.000000, 0.760000, 0.240000)
		__FUNC_259EE_(registerVal6, {})
		local function __FUNC_25C21_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -45.830000, 47.830000)
			arg0:setTopBottom(false, false, 89.970000, 106.030000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -45.830000, 47.830000)
		registerVal2.Semi:setTopBottom(false, false, 84.970000, 101.030000)
		registerVal2.Semi:setRGB(0.330000, 0.330000, 0.330000)
		__FUNC_25C21_(registerVal7, {})
		local function __FUNC_25E55_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -40.270000, 42.070000)
			arg0:setTopBottom(false, false, -4.000000, 91.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			arg0:setAlpha(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.IconHex:setLeftRight(false, false, -51.000000, 53.000000)
		registerVal2.IconHex:setTopBottom(false, false, -27.000000, 93.000000)
		registerVal2.IconHex:setRGB(1.000000, 0.760000, 0.240000)
		registerVal2.IconHex:setAlpha(0.900000)
		__FUNC_25E55_(registerVal8, {})
		local function __FUNC_260AC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -3.000000, 5.000000)
			arg0:setTopBottom(false, false, 88.000000, 100.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.IconHexLine:setLeftRight(false, false, -3.000000, 5.000000)
		registerVal2.IconHexLine:setTopBottom(false, false, 88.000000, 100.000000)
		registerVal2.IconHexLine:setRGB(0.000000, 0.000000, 0.000000)
		__FUNC_260AC_(registerVal9, {})
		local function __FUNC_262E1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -61.000000, 63.000000)
			arg0:setTopBottom(false, false, 4.500000, 85.500000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.IconSections1:setLeftRight(false, false, -62.000000, 62.000000)
		registerVal2.IconSections1:setTopBottom(false, false, 4.500000, 85.500000)
		registerVal2.IconSections1:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.IconSections1:setAlpha(0.000000)
		__FUNC_262E1_(registerVal10, {})
		local function __FUNC_2652E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 51.000000, 59.000000)
			arg0:setTopBottom(false, false, 13.000000, 21.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Pixel1:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel1:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel1:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_2652E_(registerVal11, {})
		local function __FUNC_26761_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -57.000000, -49.000000)
			arg0:setTopBottom(false, false, 13.000000, 21.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.Pixel2:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel2:setTopBottom(false, false, -1.000000, 7.000000)
		registerVal2.Pixel2:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_26761_(registerVal12, {})
		local function __FUNC_26995_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 46.000000, 54.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Pixel3:setLeftRight(false, false, 56.000000, 64.000000)
		registerVal2.Pixel3:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel3:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_26995_(registerVal13, {})
		local function __FUNC_26BC9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -52.000000, -44.000000)
			arg0:setTopBottom(false, false, 67.000000, 75.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal14:completeAnimation()
		registerVal2.Pixel4:setLeftRight(false, false, -62.000000, -54.000000)
		registerVal2.Pixel4:setTopBottom(false, false, 67.000000, 75.000000)
		registerVal2.Pixel4:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_26BC9_(registerVal14, {})
		local function __FUNC_26DFD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -2.000000, 6.000000)
			arg0:setTopBottom(false, false, -23.000000, -15.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Pixel5:setLeftRight(false, false, -2.000000, 6.000000)
		registerVal2.Pixel5:setTopBottom(false, false, -47.000000, -39.000000)
		registerVal2.Pixel5:setRGB(0.220000, 0.750000, 0.160000)
		__FUNC_26DFD_(registerVal15, {})
		local function __FUNC_27031_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -6.900000, 10.300000)
			arg0:setTopBottom(false, false, -55.500000, -34.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal2.PixelHex:setLeftRight(false, false, -6.900000, 10.300000)
		registerVal2.PixelHex:setTopBottom(false, false, -55.500000, -34.000000)
		registerVal2.PixelHex:setRGB(0.220000, 0.750000, 0.160000)
		registerVal2.PixelHex:setAlpha(1.000000)
		__FUNC_27031_(registerVal16, {})
		local function __FUNC_27288_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, true, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -35.000000, 37.000000)
			arg0:setTopBottom(false, false, 9.000000, 81.000000)
			arg0:setRGB(0.220000, 0.750000, 0.160000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal17:completeAnimation()
		registerVal2.AbilitylIcon:setLeftRight(false, false, -41.000000, 45.000000)
		registerVal2.AbilitylIcon:setTopBottom(false, false, -8.000000, 78.000000)
		registerVal2.AbilitylIcon:setRGB(0.650000, 0.670000, 0.190000)
		registerVal2.AbilitylIcon:setAlpha(1.000000)
		registerVal2.AbilitylIcon:setZoom(50.000000)
		__FUNC_27288_(registerVal17, {})
		local function __FUNC_27502_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -95.000000, 123.050000)
			arg0:setTopBottom(false, false, -97.520000, 195.480000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.Glow:setLeftRight(false, false, -95.000000, 123.050000)
		registerVal2.Glow:setTopBottom(false, false, -97.520000, 195.480000)
		registerVal2.Glow:setAlpha(1.000000)
		__FUNC_27502_(registerVal18, {})
		local function __FUNC_27725_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal2.PanelGlow00:setAlpha(0.170000)
		__FUNC_27725_(registerVal19, {})
	end

	registerVal21.LoseFocus = __FUNC_24757_
	registerVal20.Martial = registerVal21
	registerVal2.clipsPerState = registerVal20
	local registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Inactive"
	local function __FUNC_278D9_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "enabled")
		return (not registerVal3)
	end

	registerVal23.condition = __FUNC_278D9_
	local registerVal24 = {}
	registerVal24.stateName = "Control"
	local function __FUNC_2794F_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.cybercomRequestedType", 0.000000)
	end

	registerVal24.condition = __FUNC_2794F_
	local registerVal25 = {}
	registerVal25.stateName = "Chaos"
	local function __FUNC_279DA_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.cybercomRequestedType", 2.000000)
	end

	registerVal25.condition = __FUNC_279DA_
	local registerVal26 = {}
	registerVal26.stateName = "Martial"
	local function __FUNC_27A66_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "hudItems.cybercomRequestedType", 1.000000)
	end

	registerVal26.condition = __FUNC_27A66_
	registerVal22 = {registerVal23, registerVal24, registerVal25, registerVal26}
	registerVal2:mergeStateConditions(registerVal22)
	local function __FUNC_27AF2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "enabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "enabled", true, __FUNC_27AF2_)
	registerVal23 = Engine.GetModelForController(arg1)
	registerVal22 = Engine.GetModel(registerVal23, "hudItems.cybercomRequestedType")
	local function __FUNC_27C0D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.cybercomRequestedType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal22, __FUNC_27C0D_)
	local function __FUNC_27D40_(arg0)
		arg0.Bracket:close()
		arg0.IconHex:close()
		arg0.IconSections1:close()
		arg0.Pixel1:close()
		arg0.Pixel2:close()
		arg0.Pixel3:close()
		arg0.Pixel4:close()
		arg0.Pixel5:close()
		arg0.AbilitylIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_27D40_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

