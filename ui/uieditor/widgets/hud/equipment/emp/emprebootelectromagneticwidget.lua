-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.OutOfBounds.outofbounds_sidebar")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Pixel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmpRebootElectromagneticWidget = registerVal1
function CoD.EmpRebootElectromagneticWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmpRebootElectromagneticWidget)
	registerVal2.id = "EmpRebootElectromagneticWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 751.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 49.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -214.080000, 213.670000)
	registerVal3:setTopBottom(false, false, -24.540000, 24.540000)
	registerVal3:setRGB(0.730000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_outofbounds_centerbox"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterBox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -214.080000, 213.670000)
	registerVal4:setTopBottom(false, false, -24.540000, 24.540000)
	registerVal4:setRGB(0.730000, 0.000000, 0.000000)
	registerVal4:setZoom(-20.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_outofbounds_centerbox"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.CenterBox0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -233.700000, 234.910000)
	registerVal5:setTopBottom(false, false, -9.870000, 11.870000)
	registerVal5:setText(Engine.Localize("MP_HUD_EMP"))
	registerVal5:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal5:setLetterSpacing(1.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.TextBoxWarningText2 = registerVal5
	local registerVal6 = CoD.outofbounds_sidebar.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, 112.380000, 375.620000)
	registerVal6:setTopBottom(false, false, -15.410000, 15.410000)
	registerVal6:setScale(0.300000)
	registerVal2:addElement(registerVal6)
	registerVal2.outofboundssidebar = registerVal6
	local registerVal7 = CoD.outofbounds_sidebar.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -375.620000, -112.380000)
	registerVal7:setTopBottom(false, false, -15.410000, 15.410000)
	registerVal7:setScale(0.300000)
	registerVal2:addElement(registerVal7)
	registerVal2.outofboundssidebar0 = registerVal7
	local registerVal8 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, 194.090000, 202.090000)
	registerVal8:setTopBottom(false, false, -19.410000, -11.410000)
	registerVal8.Image20:setAlpha(0.700000)
	registerVal8.Image20:setZoom(10.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.AbilityWheelPixel30 = registerVal8
	local registerVal9 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, 194.090000, 202.090000)
	registerVal9:setTopBottom(false, false, 11.410000, 19.410000)
	registerVal9.Image20:setAlpha(0.700000)
	registerVal9.Image20:setZoom(10.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.AbilityWheelPixel0 = registerVal9
	local registerVal10 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -211.910000, -203.910000)
	registerVal10:setTopBottom(false, false, -19.410000, -11.410000)
	registerVal10.Image20:setAlpha(0.700000)
	registerVal10.Image20:setZoom(10.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.AbilityWheelPixel1 = registerVal10
	local registerVal11 = CoD.AbilityWheel_Pixel.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -211.910000, -203.910000)
	registerVal11:setTopBottom(false, false, 11.410000, 19.410000)
	registerVal11.Image20:setAlpha(0.700000)
	registerVal11.Image20:setZoom(10.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.AbilityWheelPixel2 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_FFB_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_14C4_(arg0, arg1)
			local function __FUNC_163F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_163F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_163F_)
		end

		registerVal3:completeAnimation()
		registerVal2.CenterBox:setAlpha(1.000000)
		__FUNC_14C4_(registerVal3, {})
		local function __FUNC_17F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.CenterBox0:setAlpha(1.000000)
		__FUNC_17F1_(registerVal4, {})
		local function __FUNC_19A5_(arg0, arg1)
			local function __FUNC_1B1F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.950000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1B1F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.770000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B1F_)
		end

		registerVal5:completeAnimation()
		registerVal2.TextBoxWarningText2:setAlpha(1.000000)
		__FUNC_19A5_(registerVal5, {})
		local function __FUNC_1CD1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 276.090000, 284.090000)
			arg0:setTopBottom(false, false, -19.410000, -11.410000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.AbilityWheelPixel30:setLeftRight(false, false, 194.090000, 202.090000)
		registerVal2.AbilityWheelPixel30:setTopBottom(false, false, -19.410000, -11.410000)
		registerVal2.AbilityWheelPixel30:setAlpha(1.000000)
		__FUNC_1CD1_(registerVal8, {})
		local function __FUNC_1EF5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 276.090000, 284.090000)
			arg0:setTopBottom(false, false, 11.410000, 19.410000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.AbilityWheelPixel0:setLeftRight(false, false, 194.090000, 202.090000)
		registerVal2.AbilityWheelPixel0:setTopBottom(false, false, 11.410000, 19.410000)
		registerVal2.AbilityWheelPixel0:setAlpha(1.000000)
		__FUNC_1EF5_(registerVal9, {})
		local function __FUNC_2119_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -282.910000, -274.910000)
			arg0:setTopBottom(false, false, -19.410000, -11.410000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.AbilityWheelPixel1:setLeftRight(false, false, -211.910000, -201.910000)
		registerVal2.AbilityWheelPixel1:setTopBottom(false, false, -19.410000, -11.410000)
		registerVal2.AbilityWheelPixel1:setAlpha(1.000000)
		__FUNC_2119_(registerVal10, {})
		local function __FUNC_233D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -282.910000, -274.910000)
			arg0:setTopBottom(false, false, 11.410000, 19.410000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.AbilityWheelPixel2:setLeftRight(false, false, -211.910000, -201.910000)
		registerVal2.AbilityWheelPixel2:setTopBottom(false, false, 11.410000, 19.410000)
		registerVal2.AbilityWheelPixel2:setAlpha(1.000000)
		__FUNC_233D_(registerVal11, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal13.DefaultClip = __FUNC_FFB_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_2561_(arg0)
		arg0.outofboundssidebar:close()
		arg0.outofboundssidebar0:close()
		arg0.AbilityWheelPixel30:close()
		arg0.AbilityWheelPixel0:close()
		arg0.AbilityWheelPixel1:close()
		arg0.AbilityWheelPixel2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2561_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

