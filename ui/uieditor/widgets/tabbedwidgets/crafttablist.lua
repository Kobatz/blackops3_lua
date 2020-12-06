-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.TabbedWidgets.basicTabWidget")
local function __FUNC_214_(arg0, arg1, arg2)
	local function __FUNC_371_(arg1, arg2, arg3, arg4)
		local registerVal4 = PropertyIsTrue(arg0, "m_disableNavigation")
		if not registerVal4 then
			arg0.grid:navigateItemLeft()
		end
	end

	arg2:AddButtonCallbackFunction(arg2, arg1, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_371_, AlwaysFalse, false)
	local function __FUNC_429_(arg1, arg2, arg3, arg4)
		local registerVal4 = PropertyIsTrue(arg0, "m_disableNavigation")
		if not registerVal4 then
			arg0.grid:navigateItemRight()
		end
	end

	arg2:AddButtonCallbackFunction(arg2, arg1, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_429_, AlwaysFalse, false)
	arg0:setForceMouseEventDispatch(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.craftTabList = registerVal2
local function __FUNC_4E2_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.craftTabList)
	registerVal2.id = "craftTabList"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 1090.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:setLeftRight(true, false, 0.000000, 1090.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal3:setDataSource("TabbedView")
	registerVal3:setWidgetType(CoD.basicTabWidget)
	registerVal3:setHorizontalCount(6.000000)
	local function __FUNC_9C5_(arg0, arg2)
		UpdateDataSource(registerVal2, arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_9C5_)
	local function __FUNC_A5F_(arg0, arg2)
		local registerVal3 = PropertyIsTrue(registerVal2, "m_disableNavigation")
		if not registerVal3 then
			SelectItemIfPossible(registerVal2, arg0, arg1, arg2)
			PlaySoundSetSound(registerVal2, "list_right")
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("mouse_left_click", __FUNC_A5F_)
	registerVal2:addElement(registerVal3)
	registerVal2.grid = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_B8B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.grid:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B8B_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_C7F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.grid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C7F_
	registerVal4.Hidden = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_D78_(arg0)
		arg0.grid:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D78_)
	if __FUNC_214_ then
		__FUNC_214_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.craftTabList.new = __FUNC_4E2_
