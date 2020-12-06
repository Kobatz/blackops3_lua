-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidget_Internal")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemHintText")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
require("ui.uieditor.widgets.CAC.CustomClassListScreen.Panes.CustomClassPlusSymbol")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
local function __FUNC_41F_(arg0, arg1, arg2)
	local function __FUNC_4B0_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.itemHintText.textCenterAlign:setText(Engine.Localize(registerVal1))
			local registerVal3 = arg0.itemHintText.textCenterAlign:getTextWidth()
			arg0.itemHintText:setLeftRight(false, false, ((-registerVal3 / 2.000000) - 16.000000), ((registerVal3 / 2.000000) + 16.000000))
		end
	end

	arg0.itemHintText:linkToElementModel(arg0, "name", true, __FUNC_4B0_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.OverCapacityItem = registerVal2
local function __FUNC_643_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.OverCapacityItem)
	registerVal2.id = "OverCapacityItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 129.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 129.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 1.000000, 52.000000)
	registerVal3:setTopBottom(true, false, -23.000000, -4.000000)
	registerVal3:setTTF("fonts/escom.ttf")
	local function __FUNC_15DC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "headerName", true, __FUNC_15DC_)
	registerVal2:addElement(registerVal3)
	registerVal2.header = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidget_Internal.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -64.500000, 64.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 129.000000)
	local function __FUNC_1696_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_1696_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Equipped"
	local function __FUNC_1767_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal8.condition = __FUNC_1767_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.sizeElement = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -6.000000, 6.000000)
	registerVal5:setTopBottom(true, false, 4.000000, 16.000000)
	registerVal5:setRGB(0.250000, 0.250000, 0.260000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.opticIndicator = registerVal5
	local registerVal6 = CoD.ItemHintText.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -48.000000, 48.000000)
	registerVal6:setTopBottom(false, true, 22.000000, 42.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_17B0_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_17B0_)
	local function __FUNC_1802_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.textCenterAlign:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "name", true, __FUNC_1802_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoHintText"
	local function __FUNC_18DF_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_18DF_
	local registerVal11 = {}
	registerVal11.stateName = "LeftAlign"
	local function __FUNC_1929_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1929_
	local registerVal12 = {}
	registerVal12.stateName = "RightAlign"
	local function __FUNC_1975_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_1975_
	local registerVal13 = {}
	registerVal13.stateName = "CenterAlign"
	local function __FUNC_19C1_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_19C1_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.itemHintText = registerVal6
	registerVal7 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -5.000000, 5.000000)
	registerVal7:setTopBottom(false, true, 10.000000, 20.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_1A0C_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1A0C_)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "NoHintText"
	local function __FUNC_1A5E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_1A5E_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.hintArrow = registerVal7
	registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 1.000000, -1.500000)
	registerVal8:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarT = registerVal8
	registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 1.000000, -1.500000)
	registerVal9:setTopBottom(false, true, -3.000000, 1.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarB = registerVal9
	registerVal10 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 1.000000, 129.000000)
	registerVal10:setTopBottom(true, false, 9.230000, 119.770000)
	local function __FUNC_1AA9_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1AA9_)
	registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Visible"
	local function __FUNC_1AFA_(arg0, arg2, arg3)
		return ItemIsBanned(arg0, arg2, arg1)
	end

	registerVal14.condition = __FUNC_1AFA_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.Pregame.Update")
	local function __FUNC_1B52_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_1B52_)
	registerVal2:addElement(registerVal10)
	registerVal2.RestrictedItemWarning = registerVal10
	registerVal11 = CoD.CustomClassPlusSymbol.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -10.000000, 10.000000)
	registerVal11:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal11:setRGB(1.000000, 0.430000, 0.090000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZRot(45.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.plusIcon = registerVal11
	registerVal12 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal12
	registerVal13 = {}
	registerVal14 = {}
	local function __FUNC_1C7E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.opticIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal14.DefaultClip = __FUNC_1C7E_
	local function __FUNC_1EE1_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setLeftRight(false, false, -42.500000, 42.500000)
		registerVal2.itemHintText:setTopBottom(false, true, 19.000000, 39.000000)
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal14.Focus = __FUNC_1EE1_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_21B2_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_21B2_
	local function __FUNC_2475_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_2475_
	registerVal13.Wildcard = registerVal14
	registerVal14 = {}
	local function __FUNC_2743_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.sizeElement:setLeftRight(false, false, -31.000000, 31.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 62.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2743_
	local function __FUNC_2ACD_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.sizeElement:setLeftRight(false, false, -31.000000, 31.000000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 62.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_2ACD_
	registerVal13.Small = registerVal14
	registerVal14 = {}
	local function __FUNC_2E68_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.sizeElement:setLeftRight(false, false, -64.500000, 64.500000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 129.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2E68_
	local function __FUNC_31F5_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.sizeElement:setLeftRight(false, false, -64.500000, 64.500000)
		registerVal2.sizeElement:setTopBottom(true, false, 0.000000, 129.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 1.000000, -1.500000)
		registerVal2.FocusBarT:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 1.000000, -1.500000)
		registerVal2.FocusBarB:setTopBottom(false, true, -3.000000, 1.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_31F5_
	registerVal13.Weapon = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Wildcard"
	local function __FUNC_363F_(arg0, arg1, arg2)
		return IsCACSlotOvercapacityWildcard(arg1)
	end

	registerVal16.condition = __FUNC_363F_
	local registerVal17 = {}
	registerVal17.stateName = "Small"
	local function __FUNC_369F_(arg0, arg1, arg2)
		local registerVal3 = IsCACSlotOvercapacity2by1AspectRatio(arg1)
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_369F_
	local registerVal18 = {}
	registerVal18.stateName = "Weapon"
	local function __FUNC_370A_(arg0, arg1, arg2)
		return true
	end

	registerVal18.condition = __FUNC_370A_
	registerVal15 = {registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal15)
	registerVal4.id = "sizeElement"
	local function __FUNC_373C_(arg0, arg1)
		local registerVal2 = arg0.sizeElement:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_373C_)
	local function __FUNC_3843_(arg0)
		arg0.sizeElement:close()
		arg0.itemHintText:close()
		arg0.hintArrow:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.RestrictedItemWarning:close()
		arg0.plusIcon:close()
		arg0.BoxButtonLrgInactiveDiag:close()
		arg0.header:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3843_)
	if __FUNC_41F_ then
		__FUNC_41F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.OverCapacityItem.new = __FUNC_643_
