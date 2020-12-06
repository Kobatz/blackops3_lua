-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedMask")
require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.CustomClassListScreen.Panes.CustomClassPlusSymbol")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.PersonalizePrompt")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponItemModelWidget_Internal = registerVal1
function CoD.WeaponItemModelWidget_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponItemModelWidget_Internal)
	registerVal2.id = "WeaponItemModelWidget_Internal"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 129.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 129.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BorderBakedMask.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderBakedMask0 = registerVal3
	local registerVal4 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.500000, -0.500000)
	registerVal4:setTopBottom(true, true, 0.500000, -0.500000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedSolid0 = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgIdle = registerVal5
	local registerVal6 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal6
	local registerVal7 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BoxButtonLrgInactive = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal8:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal8:setAlpha(0.500000)
	local function __FUNC_1694_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "image", true, __FUNC_1694_)
	registerVal2:addElement(registerVal8)
	registerVal2.itemImage = registerVal8
	local registerVal9 = CoD.CustomClassPlusSymbol.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, 183.000000, 10.000000)
	registerVal9:setTopBottom(false, false, -9.000000, 13.000000)
	registerVal9:setRGB(1.000000, 0.410000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.plusIcon = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 6.000000, 22.000000)
	registerVal10:setTopBottom(true, false, 7.000000, 23.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.Image0 = registerVal10
	local registerVal11 = CoD.PersonalizePrompt.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -61.500000, 61.500000)
	registerVal11:setTopBottom(false, true, -23.000000, -3.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11.promptText:setText(Engine.Localize("MPUI_BUTTON_PERSONALIZE_CAPS"))
	registerVal2:addElement(registerVal11)
	registerVal2.personalizePrompt = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, -4.500000, 4.500000)
	registerVal12:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal12:setRGB(1.000000, 0.090000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.glitch = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, -4.500000, 4.500000)
	registerVal13:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal13:setRGB(1.000000, 0.150000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.glitch2 = registerVal13
	local registerVal14 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.StartMenuframenoBG0 = registerVal14
	local registerVal15 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZoom(1.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.FocusBarT = registerVal15
	local registerVal16 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16:setZoom(1.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.FocusBarB = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_1748_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_1748_
	local function __FUNC_1B9F_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal15:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.Focus = __FUNC_1B9F_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_1ED4_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.DefaultClip = __FUNC_1ED4_
	local function __FUNC_21C2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.Focus = __FUNC_21C2_
	registerVal17.Equipped = registerVal18
	registerVal18 = {}
	local function __FUNC_24A9_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.DefaultClip = __FUNC_24A9_
	local function __FUNC_2796_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.Focus = __FUNC_2796_
	registerVal17.WeaponEquipped = registerVal18
	registerVal18 = {}
	local function __FUNC_2A7D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setRGB(0.000000, 1.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.DefaultClip = __FUNC_2A7D_
	local function __FUNC_2D65_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setRGB(0.000000, 1.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.Focus = __FUNC_2D65_
	registerVal17.Available = registerVal18
	registerVal18 = {}
	local function __FUNC_304D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setRGB(0.000000, 0.000000, 1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.DefaultClip = __FUNC_304D_
	local function __FUNC_3335_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.Focus = __FUNC_3335_
	registerVal17.NotEquippable = registerVal18
	registerVal18 = {}
	local function __FUNC_3605_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 1.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.DefaultClip = __FUNC_3605_
	local function __FUNC_38F2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 1.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.Focus = __FUNC_38F2_
	registerVal17.NotAvailable = registerVal18
	registerVal18 = {}
	local function __FUNC_3BDE_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BorderBakedMask0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 0.500000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.personalizePrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal18.DefaultClip = __FUNC_3BDE_
	registerVal17.NotVisible = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Equipped"
	local function __FUNC_3EC5_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal20.condition = __FUNC_3EC5_
	local registerVal21 = {}
	registerVal21.stateName = "WeaponEquipped"
	local function __FUNC_3F23_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_3F23_
	local registerVal22 = {}
	registerVal22.stateName = "Available"
	local function __FUNC_3F6D_(arg0, arg2, arg3)
		return IsCACSlotAvailable(arg0, arg2, arg1)
	end

	registerVal22.condition = __FUNC_3F6D_
	local registerVal23 = {}
	registerVal23.stateName = "NotEquippable"
	local function __FUNC_3FCC_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal23.condition = __FUNC_3FCC_
	local registerVal24 = {}
	registerVal24.stateName = "NotAvailable"
	local function __FUNC_402F_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal24.condition = __FUNC_402F_
	local registerVal25 = {}
	registerVal25.stateName = "NotVisible"
	local function __FUNC_4090_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal25.condition = __FUNC_4090_
	registerVal19 = {registerVal20, registerVal21, registerVal22, registerVal23, registerVal24, registerVal25}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_40DD_(arg0)
		arg0.BorderBakedMask0:close()
		arg0.BorderBakedSolid0:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.BoxButtonLrgInactive:close()
		arg0.plusIcon:close()
		arg0.personalizePrompt:close()
		arg0.StartMenuframenoBG0:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_40DD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

