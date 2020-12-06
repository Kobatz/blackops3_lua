-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.OutOfBounds.outofbounds_returnbox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.outofbounds_warningboxwidget = registerVal1
function CoD.outofbounds_warningboxwidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.outofbounds_warningboxwidget)
	registerVal2.id = "outofbounds_warningboxwidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 665.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 189.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -332.380000, 332.380000)
	registerVal3:setTopBottom(false, false, -94.730000, 94.730000)
	registerVal3:setRGB(0.730000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setZoom(-30.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_outofbounds_centerbox"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterBox0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -332.380000, 332.380000)
	registerVal4:setTopBottom(false, false, -94.730000, 94.730000)
	registerVal4:setRGB(0.730000, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_outofbounds_centerbox"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.CenterBox = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -332.380000, 332.380000)
	registerVal5:setTopBottom(false, false, -58.500000, 27.500000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setZoom(-30.000000)
	registerVal5:setText(Engine.Localize("MPUI_OUT_OF_BOUNDS_WARNING"))
	registerVal5:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal5:setLetterSpacing(7.500000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.TextBoxWarningText20 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -332.380000, 332.380000)
	registerVal6:setTopBottom(false, false, -58.500000, 27.500000)
	registerVal6:setAlpha(0.900000)
	registerVal6:setText(Engine.Localize("MPUI_OUT_OF_BOUNDS_WARNING"))
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal6:setLetterSpacing(7.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.TextBoxWarningText2 = registerVal6
	local registerVal7 = CoD.outofbounds_returnbox.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -218.500000, 216.500000)
	registerVal7:setTopBottom(false, false, 23.500000, 53.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.outofboundsreturnbox = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_DED_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_10EA_(arg0, arg1)
			local function __FUNC_1263_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.500000)
				arg0:setZoom(-50.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1263_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1263_)
		end

		registerVal3:completeAnimation()
		registerVal2.CenterBox0:setAlpha(0.500000)
		registerVal2.CenterBox0:setZoom(-50.000000)
		__FUNC_10EA_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CenterBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_1437_(arg0, arg1)
			local function __FUNC_15AF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.500000)
				arg0:setZoom(-40.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_15AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15AF_)
		end

		registerVal5:completeAnimation()
		registerVal2.TextBoxWarningText20:setAlpha(0.500000)
		registerVal2.TextBoxWarningText20:setZoom(-40.000000)
		__FUNC_1437_(registerVal5, {})
		local function __FUNC_1783_(arg0, arg1)
			local function __FUNC_18FB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.900000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_18FB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.400000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18FB_)
		end

		registerVal6:completeAnimation()
		registerVal2.TextBoxWarningText2:setAlpha(0.900000)
		__FUNC_1783_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.outofboundsreturnbox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_DED_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1AAD_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.CenterBox0:setLeftRight(false, false, -331.380000, 333.380000)
		registerVal2.CenterBox0:setTopBottom(false, false, -97.230000, 92.230000)
		registerVal2.CenterBox0:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CenterBox:setLeftRight(false, false, -331.380000, 333.380000)
		registerVal2.CenterBox:setTopBottom(false, false, -97.230000, 92.230000)
		registerVal2.CenterBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBoxWarningText20:setLeftRight(false, false, -331.380000, 332.500000)
		registerVal2.TextBoxWarningText20:setTopBottom(false, false, -61.000000, 25.000000)
		registerVal2.TextBoxWarningText20:setAlpha(0.500000)
		registerVal2.TextBoxWarningText20:setZoom(-30.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.TextBoxWarningText2:setLeftRight(false, false, -331.380000, 333.380000)
		registerVal2.TextBoxWarningText2:setTopBottom(false, false, -61.000000, 25.000000)
		registerVal2.TextBoxWarningText2:setAlpha(0.900000)
		registerVal2.TextBoxWarningText2:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
		registerVal2.TextBoxWarningText2:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.TextBoxWarningText2:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.TextBoxWarningText2:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.TextBoxWarningText2:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1AAD_
	registerVal8.IsOutOfBounds = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_2052_(arg0)
		arg0.outofboundsreturnbox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2052_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

