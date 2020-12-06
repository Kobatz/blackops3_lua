-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.CustomClassListScreen.Panes.CustomClassPlusSymbol")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CustomClassGenericItemButton = registerVal1
function CoD.CustomClassGenericItemButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CustomClassGenericItemButton)
	registerVal2.id = "CustomClassGenericItemButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -3.000000, 3.000000)
	registerVal3:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setZoom(-200.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_menu_customclass_boxstrokefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.140351, 0.140351, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderBakedStroke0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -3.000000, 3.000000)
	registerVal4:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setZoom(-100.000000)
	registerVal4:setImage(RegisterImage("uie_img_t7_menu_customclass_boxblurfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.140351, 0.140351, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedBlur0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -3.500000, 3.500000)
	registerVal5:setTopBottom(true, true, -3.500000, 3.500000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.300000)
	registerVal5:setZoom(50.000000)
	registerVal5:setImage(RegisterImage("uie_img_t7_menu_customclass_boxmaskfull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal5:setShaderVector(0.000000, 0.139130, 0.139130, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BorderBakedMask0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -0.500000, 0.500000)
	registerVal6:setTopBottom(true, true, -0.500000, 0.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(50.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.146789, 0.146789, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BorderBakedSolid0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -3.500000, 3.500000)
	registerVal7:setTopBottom(true, true, -3.500000, 3.500000)
	registerVal7:setAlpha(0.650000)
	registerVal7:setZoom(50.000000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_customclass_boxfull"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal7:setShaderVector(0.000000, 0.139130, 0.139130, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BorderBaked0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -37.210000, 37.210000)
	registerVal8:setTopBottom(false, false, -46.290000, 29.290000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(50.000000)
	local function __FUNC_16D2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "image", true, __FUNC_16D2_)
	registerVal2:addElement(registerVal8)
	registerVal2.itemImage = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, true, -4.000000, 4.000000)
	registerVal9:setTopBottom(false, true, -19.460000, -5.540000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(50.000000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1784_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "name", true, __FUNC_1784_)
	registerVal2:addElement(registerVal9)
	registerVal2.itemlabel = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -4.000000, 4.000000)
	registerVal10:setTopBottom(false, true, -1.000000, 5.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(50.000000)
	registerVal10:setImage(RegisterImage("uie_img_t7_menu_cacselection_listboxafocusfooter"))
	registerVal2:addElement(registerVal10)
	registerVal2.FocusFooter = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 31.330000, -31.330000)
	registerVal11:setTopBottom(true, false, -1.000000, 4.340000)
	registerVal11:setRGB(0.250000, 0.250000, 0.250000)
	registerVal11:setZoom(50.000000)
	registerVal11:setImage(RegisterImage("uie_img_t7_menu_cacselection_listboxafocusheader"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.FocusHeader = registerVal11
	local registerVal12 = CoD.CustomClassPlusSymbol.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -7.000000, 7.000000)
	registerVal12:setTopBottom(false, false, -10.000000, 4.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.CustomClassPlusSymbol0 = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_183E_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedBlur0:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.100000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(1.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setAlpha(1.000000)
		registerVal2.FocusHeader:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_183E_
	local function __FUNC_1F73_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.650000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setZoom(50.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(1.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.FocusFooter:setTopBottom(false, true, -1.000000, 5.000000)
		registerVal2.FocusFooter:setAlpha(1.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.Focus = __FUNC_1F73_
	local function __FUNC_26AD_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_2D73_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		__FUNC_2D73_(registerVal5, {})
		local function __FUNC_2F9C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.100000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.650000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		__FUNC_2F9C_(registerVal6, {})
		local function __FUNC_31CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		__FUNC_31CD_(registerVal7, {})
		local function __FUNC_33F8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -37.210000, 37.210000)
			arg0:setTopBottom(false, false, -46.290000, 29.290000)
			arg0:setAlpha(0.800000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setZoom(50.000000)
		__FUNC_33F8_(registerVal8, {})
		local function __FUNC_363D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -19.000000, -6.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(1.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		__FUNC_363D_(registerVal9, {})
		local function __FUNC_3877_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(1.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		__FUNC_3877_(registerVal10, {})
		local function __FUNC_3A44_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 31.330000, -31.330000)
			arg0:setTopBottom(true, false, -1.000000, 4.340000)
			arg0:setRGB(0.250000, 0.250000, 0.250000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		__FUNC_3A44_(registerVal11, {})
	end

	registerVal14.LoseFocus = __FUNC_26AD_
	local function __FUNC_3C8F_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_42CC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.900000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		__FUNC_42CC_(registerVal5, {})
		local function __FUNC_4507_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.650000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.100000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		__FUNC_4507_(registerVal6, {})
		local function __FUNC_473F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		__FUNC_473F_(registerVal7, {})
		local function __FUNC_4977_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setZoom(0.000000)
		__FUNC_4977_(registerVal8, {})
		local function __FUNC_4B49_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -4.000000, 4.000000)
			arg0:setTopBottom(false, true, -19.460000, -5.540000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(1.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		__FUNC_4B49_(registerVal9, {})
		local function __FUNC_4D8D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(0.000000)
		__FUNC_4D8D_(registerVal10, {})
		local function __FUNC_4F61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 31.330000, -31.330000)
			arg0:setTopBottom(true, false, -8.340000, -3.000000)
			arg0:setRGB(0.910000, 0.390000, 0.050000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setZoom(0.000000)
		__FUNC_4F61_(registerVal11, {})
	end

	registerVal14.GainFocus = __FUNC_3C8F_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_51B5_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.200000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.100000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setAlpha(1.000000)
		registerVal2.FocusHeader:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_51B5_
	local function __FUNC_58D8_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.300000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.650000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(50.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.FocusFooter:setTopBottom(false, true, -1.000000, 5.000000)
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setZoom(50.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.Focus = __FUNC_58D8_
	local function __FUNC_5F69_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_6583_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.200000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.300000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		__FUNC_6583_(registerVal5, {})
		local function __FUNC_67B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		__FUNC_67B1_(registerVal6, {})
		local function __FUNC_69DC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.100000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.650000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		__FUNC_69DC_(registerVal7, {})
		local function __FUNC_6C0D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -37.210000, 37.210000)
			arg0:setTopBottom(false, false, -46.290000, 29.290000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(50.000000)
		__FUNC_6C0D_(registerVal8, {})
		local function __FUNC_6E4C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -19.000000, -6.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		__FUNC_6E4C_(registerVal9, {})
		local function __FUNC_7082_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		__FUNC_7082_(registerVal10, {})
		local function __FUNC_7250_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setZoom(50.000000)
		__FUNC_7250_(registerVal11, {})
	end

	registerVal14.LoseFocus = __FUNC_5F69_
	local function __FUNC_7402_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_799E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.200000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		__FUNC_799E_(registerVal5, {})
		local function __FUNC_7BD7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		__FUNC_7BD7_(registerVal6, {})
		local function __FUNC_7E0F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.650000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.100000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		__FUNC_7E0F_(registerVal7, {})
		local function __FUNC_8047_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(0.000000)
		__FUNC_8047_(registerVal8, {})
		local function __FUNC_8219_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -4.000000, 4.000000)
			arg0:setTopBottom(false, true, -19.460000, -5.540000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		__FUNC_8219_(registerVal9, {})
		local function __FUNC_845D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(0.000000)
		__FUNC_845D_(registerVal10, {})
		local function __FUNC_8631_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setZoom(0.000000)
		__FUNC_8631_(registerVal11, {})
	end

	registerVal14.GainFocus = __FUNC_7402_
	registerVal13.Unavailable = registerVal14
	registerVal14 = {}
	local function __FUNC_87E2_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.100000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setAlpha(1.000000)
		registerVal2.FocusHeader:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setAlpha(1.000000)
		registerVal2.CustomClassPlusSymbol0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_87E2_
	local function __FUNC_8F1B_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.650000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(50.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.FocusFooter:setTopBottom(false, true, -1.000000, 5.000000)
		registerVal2.FocusFooter:setAlpha(1.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_8F1B_
	local function __FUNC_96B9_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_9DDF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		__FUNC_9DDF_(registerVal5, {})
		local function __FUNC_A008_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.100000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.650000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		__FUNC_A008_(registerVal6, {})
		local function __FUNC_A239_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		__FUNC_A239_(registerVal7, {})
		local function __FUNC_A464_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -37.210000, 37.210000)
			arg0:setTopBottom(false, false, -46.290000, 29.290000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(50.000000)
		__FUNC_A464_(registerVal8, {})
		local function __FUNC_A6A4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -19.000000, -6.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		__FUNC_A6A4_(registerVal9, {})
		local function __FUNC_A8DA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(1.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		__FUNC_A8DA_(registerVal10, {})
		local function __FUNC_AAA8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 31.330000, -31.330000)
			arg0:setTopBottom(true, false, -1.000000, 4.340000)
			arg0:setRGB(0.250000, 0.250000, 0.250000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		__FUNC_AAA8_(registerVal11, {})
		local function __FUNC_ACF3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setZoom(50.000000)
		__FUNC_ACF3_(registerVal12, {})
	end

	registerVal14.LoseFocus = __FUNC_96B9_
	local function __FUNC_AEA2_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_B536_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.900000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		__FUNC_B536_(registerVal5, {})
		local function __FUNC_B76F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.650000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.100000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		__FUNC_B76F_(registerVal6, {})
		local function __FUNC_B9A7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		__FUNC_B9A7_(registerVal7, {})
		local function __FUNC_BBDF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(0.000000)
		__FUNC_BBDF_(registerVal8, {})
		local function __FUNC_BDB1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -4.000000, 4.000000)
			arg0:setTopBottom(false, true, -19.460000, -5.540000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		__FUNC_BDB1_(registerVal9, {})
		local function __FUNC_BFF5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(0.000000)
		__FUNC_BFF5_(registerVal10, {})
		local function __FUNC_C1C9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 31.330000, -31.330000)
			arg0:setTopBottom(true, false, -8.340000, -3.000000)
			arg0:setRGB(0.910000, 0.390000, 0.050000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setZoom(0.000000)
		__FUNC_C1C9_(registerVal11, {})
		local function __FUNC_C41D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setZoom(0.000000)
		__FUNC_C41D_(registerVal12, {})
	end

	registerVal14.GainFocus = __FUNC_AEA2_
	registerVal13.Unequipped = registerVal14
	registerVal14 = {}
	local function __FUNC_C5CE_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.200000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.100000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setAlpha(1.000000)
		registerVal2.FocusHeader:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_C5CE_
	local function __FUNC_CCF0_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.300000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.650000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(50.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.FocusFooter:setTopBottom(false, true, -1.000000, 5.000000)
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setZoom(50.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.Focus = __FUNC_CCF0_
	local function __FUNC_D381_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_D99B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.200000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.300000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		__FUNC_D99B_(registerVal5, {})
		local function __FUNC_DBC9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		__FUNC_DBC9_(registerVal6, {})
		local function __FUNC_DDF4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.100000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.650000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		__FUNC_DDF4_(registerVal7, {})
		local function __FUNC_E025_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -37.210000, 37.210000)
			arg0:setTopBottom(false, false, -46.290000, 29.290000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(50.000000)
		__FUNC_E025_(registerVal8, {})
		local function __FUNC_E264_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -19.000000, -6.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		__FUNC_E264_(registerVal9, {})
		local function __FUNC_E49A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		__FUNC_E49A_(registerVal10, {})
		local function __FUNC_E668_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setZoom(50.000000)
		__FUNC_E668_(registerVal11, {})
	end

	registerVal14.LoseFocus = __FUNC_D381_
	local function __FUNC_E81A_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_EDB6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.300000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.200000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		__FUNC_EDB6_(registerVal5, {})
		local function __FUNC_EFEF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		__FUNC_EFEF_(registerVal6, {})
		local function __FUNC_F227_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.650000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.100000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		__FUNC_F227_(registerVal7, {})
		local function __FUNC_F45F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(0.000000)
		__FUNC_F45F_(registerVal8, {})
		local function __FUNC_F631_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -4.000000, 4.000000)
			arg0:setTopBottom(false, true, -19.460000, -5.540000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		__FUNC_F631_(registerVal9, {})
		local function __FUNC_F875_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(0.000000)
		__FUNC_F875_(registerVal10, {})
		local function __FUNC_FA49_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setZoom(0.000000)
		__FUNC_FA49_(registerVal11, {})
	end

	registerVal14.GainFocus = __FUNC_E81A_
	registerVal13.Unavailable_Gadget = registerVal14
	registerVal14 = {}
	local function __FUNC_FBFA_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.100000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setAlpha(1.000000)
		registerVal2.FocusHeader:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setAlpha(1.000000)
		registerVal2.CustomClassPlusSymbol0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_FBFA_
	local function __FUNC_10333_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.650000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(50.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.FocusFooter:setTopBottom(false, true, -1.000000, 5.000000)
		registerVal2.FocusFooter:setAlpha(1.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setAlpha(1.000000)
		registerVal2.CustomClassPlusSymbol0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_10333_
	local function __FUNC_10AED_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_1122F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		__FUNC_1122F_(registerVal5, {})
		local function __FUNC_11458_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.100000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.650000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		__FUNC_11458_(registerVal6, {})
		local function __FUNC_11689_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		__FUNC_11689_(registerVal7, {})
		local function __FUNC_118B4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -37.210000, 37.210000)
			arg0:setTopBottom(false, false, -46.290000, 29.290000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(50.000000)
		__FUNC_118B4_(registerVal8, {})
		local function __FUNC_11AF4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -19.000000, -6.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		__FUNC_11AF4_(registerVal9, {})
		local function __FUNC_11D2A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		__FUNC_11D2A_(registerVal10, {})
		local function __FUNC_11EF8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 31.330000, -31.330000)
			arg0:setTopBottom(true, false, -1.000000, 4.340000)
			arg0:setRGB(0.250000, 0.250000, 0.250000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		__FUNC_11EF8_(registerVal11, {})
		local function __FUNC_12143_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setAlpha(1.000000)
		registerVal2.CustomClassPlusSymbol0:setZoom(50.000000)
		__FUNC_12143_(registerVal12, {})
	end

	registerVal14.LoseFocus = __FUNC_10AED_
	local function __FUNC_12315_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_129CB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.900000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		__FUNC_129CB_(registerVal5, {})
		local function __FUNC_12C03_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.650000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.100000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		__FUNC_12C03_(registerVal6, {})
		local function __FUNC_12E3B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		__FUNC_12E3B_(registerVal7, {})
		local function __FUNC_13073_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.itemImage:setZoom(0.000000)
		__FUNC_13073_(registerVal8, {})
		local function __FUNC_13245_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -4.000000, 4.000000)
			arg0:setTopBottom(false, true, -19.460000, -5.540000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		__FUNC_13245_(registerVal9, {})
		local function __FUNC_13489_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(0.000000)
		__FUNC_13489_(registerVal10, {})
		local function __FUNC_1365D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 31.330000, -31.330000)
			arg0:setTopBottom(true, false, -8.340000, -3.000000)
			arg0:setRGB(0.910000, 0.390000, 0.050000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setZoom(0.000000)
		__FUNC_1365D_(registerVal11, {})
		local function __FUNC_138B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setAlpha(1.000000)
		registerVal2.CustomClassPlusSymbol0:setZoom(0.000000)
		__FUNC_138B1_(registerVal12, {})
	end

	registerVal14.GainFocus = __FUNC_12315_
	registerVal13.Unequipped_Gadget = registerVal14
	registerVal14 = {}
	local function __FUNC_13A85_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.100000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setAlpha(1.000000)
		registerVal2.FocusHeader:setZoom(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.CustomClassPlusSymbol0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_13A85_
	local function __FUNC_141A8_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.650000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setZoom(50.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.FocusFooter:setTopBottom(false, true, -1.000000, 5.000000)
		registerVal2.FocusFooter:setAlpha(1.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal14.Focus = __FUNC_141A8_
	local function __FUNC_148E5_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_14FAB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		__FUNC_14FAB_(registerVal5, {})
		local function __FUNC_151D4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.100000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(0.650000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		__FUNC_151D4_(registerVal6, {})
		local function __FUNC_15405_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(50.000000)
		__FUNC_15405_(registerVal7, {})
		local function __FUNC_15630_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -37.210000, 37.210000)
			arg0:setTopBottom(false, false, -46.290000, 29.290000)
			arg0:setAlpha(0.800000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(false, false, -37.210000, 37.210000)
		registerVal2.itemImage:setTopBottom(false, false, -46.290000, 29.290000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setZoom(50.000000)
		__FUNC_15630_(registerVal8, {})
		local function __FUNC_15875_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -19.000000, -6.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(50.000000)
		__FUNC_15875_(registerVal9, {})
		local function __FUNC_15AAA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		__FUNC_15AAA_(registerVal10, {})
		local function __FUNC_15C78_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 31.330000, -31.330000)
			arg0:setTopBottom(true, false, -1.000000, 4.340000)
			arg0:setRGB(0.250000, 0.250000, 0.250000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		__FUNC_15C78_(registerVal11, {})
	end

	registerVal14.LoseFocus = __FUNC_148E5_
	local function __FUNC_15EC3_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedStroke0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_164FB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.900000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		__FUNC_164FB_(registerVal5, {})
		local function __FUNC_16733_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.650000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.100000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		__FUNC_16733_(registerVal6, {})
		local function __FUNC_1696B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BorderBaked0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBaked0:setAlpha(0.000000)
		registerVal2.BorderBaked0:setZoom(0.000000)
		__FUNC_1696B_(registerVal7, {})
		local function __FUNC_16BA3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setZoom(0.000000)
		__FUNC_16BA3_(registerVal8, {})
		local function __FUNC_16D75_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -4.000000, 4.000000)
			arg0:setTopBottom(false, true, -19.460000, -5.540000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemlabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemlabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemlabel:setAlpha(0.000000)
		registerVal2.itemlabel:setZoom(0.000000)
		__FUNC_16D75_(registerVal9, {})
		local function __FUNC_16FB9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(0.000000)
		__FUNC_16FB9_(registerVal10, {})
		local function __FUNC_1718D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 31.330000, -31.330000)
			arg0:setTopBottom(true, false, -8.340000, -3.000000)
			arg0:setRGB(0.910000, 0.390000, 0.050000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setZoom(0.000000)
		__FUNC_1718D_(registerVal11, {})
	end

	registerVal14.GainFocus = __FUNC_15EC3_
	registerVal13.Equipped_Gadget = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_173E1_(arg0)
		arg0.CustomClassPlusSymbol0:close()
		arg0.itemImage:close()
		arg0.itemlabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_173E1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

