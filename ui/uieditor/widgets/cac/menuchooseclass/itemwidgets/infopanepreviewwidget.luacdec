-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfopaneWeaponPreview")
require("ui.uieditor.widgets.CAC.cac_CustomClassDecscription")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_31E_(arg0, arg1, arg2)
	local function __FUNC_3BB_()
		local registerVal2 = {}
		registerVal2.name = "update_state"
		registerVal2.menu = arg2
		arg0:processEvent(registerVal2)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setModel", __FUNC_3BB_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.InfopanePreviewWidget = registerVal2
local function __FUNC_448_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.InfopanePreviewWidget)
	registerVal2.id = "InfopanePreviewWidget"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 850.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 596.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bgImage = registerVal3
	local registerVal4 = CoD.InfoPaneItemName.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 18.000000, 399.000000)
	registerVal4:setTopBottom(true, false, 13.000000, 47.000000)
	registerVal4.weaponNameWithVariant.variantName:setAlpha(1.000000)
	local function __FUNC_FB4_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_FB4_)
	local function __FUNC_1006_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "name", true, __FUNC_1006_)
	local function __FUNC_1113_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.weaponNameWithVariant.variantName.itemName:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "variantName", true, __FUNC_1113_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemName = registerVal4
	local registerVal5 = CoD.InfopaneWeaponPreview.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 128.500000, 640.500000)
	registerVal5:setTopBottom(true, false, 119.000000, 375.000000)
	local function __FUNC_120E_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_120E_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "WideImage"
	local function __FUNC_125E_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACSlot2by1AspectRatio(arg2)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_125E_
	local registerVal10 = {}
	registerVal10.stateName = "EmptySquareImage"
	local function __FUNC_12F1_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotInfopane2by1AspectRatio(arg2)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_12F1_
	local registerVal11 = {}
	registerVal11.stateName = "EmptyWideImage"
	local function __FUNC_139D_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotInfopane2by1AspectRatio(arg2)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_139D_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.weaponPreview = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 19.000000, 275.000000)
	registerVal6:setTopBottom(true, false, -11.500000, 7.500000)
	registerVal6:setRGB(0.970000, 0.320000, 0.050000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setLetterSpacing(1.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1445_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "headerName", true, __FUNC_1445_)
	registerVal2:addElement(registerVal6)
	registerVal2.categoryName = registerVal6
	local registerVal7 = CoD.cac_CustomClassDecscription.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 19.000000, 275.000000)
	registerVal7:setTopBottom(true, false, 51.000000, 73.000000)
	local function __FUNC_14FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.weaponDescTextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "desc", true, __FUNC_14FE_)
	registerVal2:addElement(registerVal7)
	registerVal2.cacCustomClassDecscription0 = registerVal7
	registerVal8 = CoD.XCamMouseControl.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -296.500000, 360.000000)
	registerVal8:setTopBottom(true, true, 47.000000, -86.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.xcamMouse = registerVal8
	registerVal9 = {}
	registerVal10 = {}
	local function __FUNC_15DD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal4.weaponNameWithVariant.variantName:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.itemName.weaponNameWithVariant.variantName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponPreview:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.categoryName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultClip = __FUNC_15DD_
	local function __FUNC_1822_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_19CD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.itemName:setAlpha(0.000000)
		__FUNC_19CD_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponPreview:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1B81_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.categoryName:setAlpha(0.000000)
		__FUNC_1B81_(registerVal6, {})
	end

	registerVal10.Intro = __FUNC_1822_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1D35_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal4.weaponNameWithVariant.variantName:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponPreview:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.categoryName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultClip = __FUNC_1D35_
	local function __FUNC_1F7A_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_21B1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Bounce)
				arg0.weaponNameWithVariant.variantName:beginAnimation("subkeyframe", 439.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			arg0.weaponNameWithVariant.variantName:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.weaponNameWithVariant.variantName:completeAnimation()
		registerVal2.itemName:setAlpha(0.000000)
		registerVal2.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		__FUNC_21B1_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponPreview:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2423_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.categoryName:setAlpha(0.000000)
		__FUNC_2423_(registerVal6, {})
	end

	registerVal10.Intro = __FUNC_1F7A_
	registerVal9.NonVariantNameSlot = registerVal10
	registerVal10 = {}
	local function __FUNC_25D5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal4.weaponNameWithVariant.variantName:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponPreview:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.categoryName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultClip = __FUNC_25D5_
	local function __FUNC_281A_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2A37_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Bounce)
				arg0.weaponNameWithVariant.variantName:beginAnimation("subkeyframe", 239.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			arg0.weaponNameWithVariant.variantName:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal4.weaponNameWithVariant.variantName:completeAnimation()
		registerVal2.itemName:setAlpha(0.000000)
		registerVal2.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
		__FUNC_2A37_(registerVal4, {})
		local function __FUNC_2CA7_(arg0, arg1)
			local function __FUNC_2DFC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 499.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2DFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DFC_)
		end

		registerVal5:completeAnimation()
		registerVal2.weaponPreview:setAlpha(0.000000)
		__FUNC_2CA7_(registerVal5, {})
		local function __FUNC_2FB1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.categoryName:setAlpha(0.000000)
		__FUNC_2FB1_(registerVal6, {})
	end

	registerVal10.Intro = __FUNC_281A_
	registerVal9.SlotIsEmpty = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "NonVariantNameSlot"
	local function __FUNC_3165_(arg0, arg1, arg2)
		local registerVal3 = IsCACSlotHasVariantName(arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_3165_
	local registerVal13 = {}
	registerVal13.stateName = "SlotIsEmpty"
	local function __FUNC_31C5_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_31C5_
	registerVal11 = {registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_327D_(arg0)
		arg0.itemName:close()
		arg0.weaponPreview:close()
		arg0.cacCustomClassDecscription0:close()
		arg0.xcamMouse:close()
		arg0.categoryName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_327D_)
	if __FUNC_31E_ then
		__FUNC_31E_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.InfopanePreviewWidget.new = __FUNC_448_
