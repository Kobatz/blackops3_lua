-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_227_(arg0, arg1, arg2)
	local function __FUNC_3BF_(arg1, arg2, arg3, arg4)
		local registerVal6 = {}
		registerVal6.name = "lose_focus"
		registerVal6.controller = arg3
		arg0:processEvent(registerVal6)
		registerVal6 = {}
		registerVal6.name = "dropdown_item_cancelled"
		registerVal6.element = arg0
		return arg0:dispatchEventToParent(registerVal6)
	end

	CoD.Menu.AddButtonCallbackFunction(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3BF_)
	local function __FUNC_4BD_(arg1, arg2, arg3, arg4)
		local registerVal4 = arg2:AcceptGamePadButtonInputFromModelCallback(arg3)
		if not arg2.m_disableNavigation and registerVal4 then
			local registerVal6 = {}
			registerVal6.name = "lose_focus"
			registerVal6.controller = arg3
			arg0:processEvent(registerVal6)
			registerVal6 = {}
			registerVal6.name = "dropdown_item_selected"
			registerVal6.element = arg0
			return arg0:dispatchEventToParent(registerVal6)
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4BD_)
	arg0.m_dropdownItem = true
end

local function __FUNC_634_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_227_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.OptionDropdownItem = registerVal3
local function __FUNC_6A7_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.OptionDropdownItem)
	registerVal2.id = "OptionDropdownItem"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.fullbacking = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 6.200000, 243.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_DEB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "valueDisplay", true, __FUNC_DEB_)
	registerVal2:addElement(registerVal4)
	registerVal2.labelText = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, false, -1.000000, 3.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusBarT = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(false, true, -2.000000, 2.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarB = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_EA2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.labelText:setLeftRight(true, false, 6.200000, 243.000000)
		registerVal2.labelText:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.labelText:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.labelText:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_EA2_
	local function __FUNC_111D_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.fullbacking:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.fullbacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.labelText:setLeftRight(true, false, 6.200000, 240.000000)
		registerVal2.labelText:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.labelText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.labelText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.Focus = __FUNC_111D_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_140C_(arg0)
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.labelText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_140C_)
	if __FUNC_634_ then
		__FUNC_634_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.OptionDropdownItem.new = __FUNC_6A7_
