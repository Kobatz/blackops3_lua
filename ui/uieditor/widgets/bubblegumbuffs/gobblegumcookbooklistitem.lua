-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BubbleGumBuffs.GobbleGumCookBookIcon")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.ZM_Cookbook.ZM_Cookbook_RingWidget")
require("ui.uieditor.widgets.ZM_Cookbook.CookbookArrow_Widget")
require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_ConfirmationSubtext")
local function __FUNC_35D_(arg0, arg1, arg2)
	local function __FUNC_3D3_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		local registerVal2 = Engine.GetUnlockableInfoModelByIndex(registerVal1, ("Unlockables." .. registerVal1), Enum.eModes.MODE_ZOMBIES)
		if registerVal2 then
			arg0.GobbleGumCookBookIcon:setModel(registerVal2)
		end
	end

	arg0:linkToElementModel(arg0, "itemIndex", true, __FUNC_3D3_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GobbleGumCookbookListItem = registerVal2
local function __FUNC_541_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GobbleGumCookbookListItem)
	registerVal2.id = "GobbleGumCookbookListItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 340.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = CoD.GobbleGumCookBookIcon.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 62.500000, 243.500000)
	registerVal4:setTopBottom(true, false, 52.500000, 233.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.GobbleGumCookBookIcon = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.770000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.cacButtonBoxLrgInactiveStroke0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 4.000000, 300.000000)
	registerVal6:setTopBottom(true, false, -47.000000, -25.000000)
	registerVal6:setRGB(0.300000, 0.200000, 0.140000)
	registerVal6:setAlpha(0.700000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_119E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(LocalizeToUpperString(GetItemNameFromIndexZM(registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_119E_)
	registerVal2:addElement(registerVal6)
	registerVal2.Name = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, true, -165.000000, 103.000000)
	registerVal7:setTopBottom(true, true, 128.500000, -182.500000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.900000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_127F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "count", true, __FUNC_127F_)
	registerVal2:addElement(registerVal7)
	registerVal2.Count = registerVal7
	local registerVal8 = CoD.ZM_Cookbook_RingWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 47.890000, 252.890000)
	registerVal8:setTopBottom(true, false, 40.500000, 245.500000)
	registerVal8:setAlpha(0.700000)
	local function __FUNC_1336_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_1336_)
	local function __FUNC_1386_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal10 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal11 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal12 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal8.ring:setShaderVector(0.000000, ScaleVectorComponents(0.870000, 1.000000, 1.000000, 1.000000, registerVal10, registerVal11, registerVal12, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "percentComplete", true, __FUNC_1386_)
	registerVal2:addElement(registerVal8)
	registerVal2.ZMCookbookRingWidget = registerVal8
	local registerVal9 = CoD.CookbookArrow_Widget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, -6.280000, 307.050000)
	registerVal9:setTopBottom(true, false, 239.500000, 396.170000)
	registerVal2:addElement(registerVal9)
	registerVal2.CookbookArrowWidget0 = registerVal9
	local registerVal10 = CoD.Cookbook_ConfirmationSubtext.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 52.000000, 252.000000)
	registerVal10:setTopBottom(true, false, -23.000000, -3.000000)
	local function __FUNC_1532_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1532_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Red"
	local function __FUNC_1582_(arg0, arg2, arg3)
		return IsSelfModelValueLessThan(arg2, arg1, "percentComplete", 1.000000)
	end

	registerVal14.condition = __FUNC_1582_
	local registerVal15 = {}
	registerVal15.stateName = "Green"
	local function __FUNC_1608_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "percentComplete", 1.000000)
	end

	registerVal15.condition = __FUNC_1608_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_168F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "percentComplete"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "percentComplete", true, __FUNC_168F_)
	registerVal2:addElement(registerVal10)
	registerVal2.CookbookConfirmationSubtext0 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_17B1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.CookbookArrowWidget0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_17B1_
	local function __FUNC_18BC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal2.CookbookArrowWidget0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.Focus = __FUNC_18BC_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	registerVal8.id = "ZMCookbookRingWidget"
	local function __FUNC_19C3_(arg0, arg1)
		local registerVal2 = arg0.ZMCookbookRingWidget:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_19C3_)
	local function __FUNC_1AD0_(arg0)
		arg0.GobbleGumCookBookIcon:close()
		arg0.cacButtonBoxLrgInactiveStroke0:close()
		arg0.ZMCookbookRingWidget:close()
		arg0.CookbookArrowWidget0:close()
		arg0.CookbookConfirmationSubtext0:close()
		arg0.Name:close()
		arg0.Count:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1AD0_)
	if __FUNC_35D_ then
		__FUNC_35D_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GobbleGumCookbookListItem.new = __FUNC_541_
