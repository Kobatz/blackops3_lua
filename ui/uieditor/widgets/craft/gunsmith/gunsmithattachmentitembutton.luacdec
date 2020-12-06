-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedMask")
require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithAttachmentItemButton = registerVal1
function CoD.GunsmithAttachmentItemButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithAttachmentItemButton)
	registerVal2.id = "GunsmithAttachmentItemButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 108.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = CoD.BorderBakedMask.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -0.500000, 0.500000)
	registerVal3:setTopBottom(true, true, -0.500000, 0.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setZoom(50.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderBakedMask0 = registerVal3
	local registerVal4 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -0.500000, 0.500000)
	registerVal4:setTopBottom(true, true, -0.500000, 0.500000)
	registerVal4:setZoom(50.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedSolid0 = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 3.310000)
	registerVal5:setRGB(1.000000, 0.410000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(10.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.border = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -4.000000, 4.000000)
	registerVal6:setTopBottom(false, true, -1.000000, 5.000000)
	registerVal6:setZoom(50.000000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_cacselection_listboxafocusfooter"))
	registerVal2:addElement(registerVal6)
	registerVal2.FocusFooter = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 31.330000, -31.330000)
	registerVal7:setTopBottom(true, false, -8.340000, -3.000000)
	registerVal7:setRGB(0.910000, 0.390000, 0.050000)
	registerVal7:setZoom(50.000000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_cacselection_listboxafocusheader"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.FocusHeader = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 16.790000, -16.790000)
	registerVal8:setTopBottom(true, true, 7.710000, -24.710000)
	registerVal8:setZoom(50.000000)
	local function __FUNC_FA8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "image", true, __FUNC_FA8_)
	registerVal2:addElement(registerVal8)
	registerVal2.itemImage = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, true, -4.000000, 4.000000)
	registerVal9:setTopBottom(false, true, -19.460000, -5.540000)
	registerVal9:setZoom(50.000000)
	registerVal9:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_105C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "name", true, __FUNC_105C_)
	registerVal2:addElement(registerVal9)
	registerVal2.itemLabel = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -26.000000, -12.000000)
	registerVal10:setTopBottom(true, false, 9.000000, 23.000000)
	registerVal10:setRGB(0.560000, 0.680000, 0.270000)
	registerVal10:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal10)
	registerVal2.equippedIcon = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1116_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.500000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.600000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.border:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.border:setTopBottom(true, true, 0.000000, 3.310000)
		registerVal2.border:setRGB(0.580000, 0.580000, 0.600000)
		registerVal2.border:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setAlpha(1.000000)
		registerVal2.FocusHeader:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, true, 16.500000, -16.500000)
		registerVal2.itemImage:setTopBottom(true, true, 8.000000, -25.000000)
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemLabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemLabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemLabel:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1116_
	local function __FUNC_17F1_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.border:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.border:setAlpha(0.000000)
		registerVal2.border:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusFooter:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.FocusFooter:setTopBottom(false, true, -1.000000, 5.000000)
		registerVal2.FocusFooter:setAlpha(1.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, true, 16.790000, -16.790000)
		registerVal2.itemImage:setTopBottom(true, true, 7.710000, -24.710000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setZoom(50.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemLabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemLabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemLabel:setZoom(50.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Focus = __FUNC_17F1_
	local function __FUNC_1F11_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2503_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.500000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		__FUNC_2503_(registerVal3, {})
		local function __FUNC_273B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.600000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		__FUNC_273B_(registerVal4, {})
		local function __FUNC_2973_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(0.000000)
		__FUNC_2973_(registerVal6, {})
		local function __FUNC_2B45_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setZoom(0.000000)
		__FUNC_2B45_(registerVal7, {})
		local function __FUNC_2D99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 16.790000, -16.790000)
			arg0:setTopBottom(true, true, 7.710000, -24.710000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, true, 16.500000, -16.500000)
		registerVal2.itemImage:setTopBottom(true, true, 8.000000, -25.000000)
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setZoom(0.000000)
		__FUNC_2D99_(registerVal8, {})
		local function __FUNC_2FDD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -4.000000, 4.000000)
			arg0:setTopBottom(false, true, -19.460000, -5.540000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemLabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemLabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemLabel:setZoom(0.000000)
		__FUNC_2FDD_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.GainFocus = __FUNC_1F11_
	local function __FUNC_31FE_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_380D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		__FUNC_380D_(registerVal3, {})
		local function __FUNC_3A3F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.600000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		__FUNC_3A3F_(registerVal4, {})
		local function __FUNC_3C6D_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.FocusFooter:setAlpha(1.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		__FUNC_3C6D_(registerVal6, {})
		local function __FUNC_3E3C_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		__FUNC_3E3C_(registerVal7, {})
		local function __FUNC_4087_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 16.500000, -16.500000)
			arg0:setTopBottom(true, true, 8.000000, -25.000000)
			arg0:setAlpha(0.800000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, true, 16.790000, -16.790000)
		registerVal2.itemImage:setTopBottom(true, true, 7.710000, -24.710000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setZoom(50.000000)
		__FUNC_4087_(registerVal8, {})
		local function __FUNC_42C9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -19.000000, -6.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemLabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemLabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemLabel:setZoom(50.000000)
		__FUNC_42C9_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.LoseFocus = __FUNC_31FE_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_44E0_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.500000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.600000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.border:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.border:setTopBottom(true, true, 0.000000, 3.310000)
		registerVal2.border:setRGB(0.580000, 0.580000, 0.600000)
		registerVal2.border:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setAlpha(1.000000)
		registerVal2.FocusHeader:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, true, 16.500000, -16.500000)
		registerVal2.itemImage:setTopBottom(true, true, 8.000000, -25.000000)
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemLabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemLabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemLabel:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_44E0_
	local function __FUNC_4BBD_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.border:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.border:setAlpha(0.000000)
		registerVal2.border:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusFooter:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.FocusFooter:setTopBottom(false, true, -1.000000, 5.000000)
		registerVal2.FocusFooter:setAlpha(1.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, true, 16.790000, -16.790000)
		registerVal2.itemImage:setTopBottom(true, true, 7.710000, -24.710000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setZoom(50.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemLabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemLabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemLabel:setZoom(50.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Focus = __FUNC_4BBD_
	local function __FUNC_52DD_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_58D4_(arg0, arg1)
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

		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedMask0:setAlpha(0.500000)
		registerVal2.BorderBakedMask0:setZoom(0.000000)
		__FUNC_58D4_(registerVal3, {})
		local function __FUNC_5B0F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -0.500000, 0.500000)
			arg0:setTopBottom(true, true, -0.500000, 0.500000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.BorderBakedSolid0:setAlpha(0.600000)
		registerVal2.BorderBakedSolid0:setZoom(0.000000)
		__FUNC_5B0F_(registerVal4, {})
		local function __FUNC_5D47_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.FocusFooter:setAlpha(0.000000)
		registerVal2.FocusFooter:setZoom(0.000000)
		__FUNC_5D47_(registerVal6, {})
		local function __FUNC_5F19_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -1.000000, 4.340000)
		registerVal2.FocusHeader:setRGB(0.250000, 0.250000, 0.250000)
		registerVal2.FocusHeader:setZoom(0.000000)
		__FUNC_5F19_(registerVal7, {})
		local function __FUNC_616D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 16.790000, -16.790000)
			arg0:setTopBottom(true, true, 7.710000, -24.710000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, true, 16.500000, -16.500000)
		registerVal2.itemImage:setTopBottom(true, true, 8.000000, -25.000000)
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.itemImage:setZoom(0.000000)
		__FUNC_616D_(registerVal8, {})
		local function __FUNC_63B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, -4.000000, 4.000000)
			arg0:setTopBottom(false, true, -19.460000, -5.540000)
			arg0:setZoom(50.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemLabel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.itemLabel:setTopBottom(false, true, -19.000000, -6.000000)
		registerVal2.itemLabel:setZoom(0.000000)
		__FUNC_63B1_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.GainFocus = __FUNC_52DD_
	local function __FUNC_65D2_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_6BDC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.BorderBakedMask0:setZoom(50.000000)
		__FUNC_6BDC_(registerVal3, {})
		local function __FUNC_6E0F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(0.600000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setLeftRight(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setTopBottom(true, true, -0.500000, 0.500000)
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.BorderBakedSolid0:setZoom(50.000000)
		__FUNC_6E0F_(registerVal4, {})
		local function __FUNC_703D_(arg0, arg1)
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

		registerVal6:completeAnimation()
		registerVal2.FocusFooter:setAlpha(1.000000)
		registerVal2.FocusFooter:setZoom(50.000000)
		__FUNC_703D_(registerVal6, {})
		local function __FUNC_720C_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.FocusHeader:setLeftRight(true, true, 31.330000, -31.330000)
		registerVal2.FocusHeader:setTopBottom(true, false, -8.340000, -3.000000)
		registerVal2.FocusHeader:setRGB(0.910000, 0.390000, 0.050000)
		registerVal2.FocusHeader:setZoom(50.000000)
		__FUNC_720C_(registerVal7, {})
		local function __FUNC_7457_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 16.500000, -16.500000)
			arg0:setTopBottom(true, true, 8.000000, -25.000000)
			arg0:setAlpha(0.800000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, true, 16.790000, -16.790000)
		registerVal2.itemImage:setTopBottom(true, true, 7.710000, -24.710000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.itemImage:setZoom(50.000000)
		__FUNC_7457_(registerVal8, {})
		local function __FUNC_7699_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -19.000000, -6.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemLabel:setLeftRight(true, true, -4.000000, 4.000000)
		registerVal2.itemLabel:setTopBottom(false, true, -19.460000, -5.540000)
		registerVal2.itemLabel:setZoom(50.000000)
		__FUNC_7699_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.equippedIcon:setRGB(0.560000, 0.680000, 0.270000)
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.LoseFocus = __FUNC_65D2_
	registerVal11.Equipped = registerVal12
	registerVal2.clipsPerState = registerVal11
	local function __FUNC_78B0_(arg0)
		arg0.BorderBakedMask0:close()
		arg0.BorderBakedSolid0:close()
		arg0.border:close()
		arg0.itemImage:close()
		arg0.itemLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_78B0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

