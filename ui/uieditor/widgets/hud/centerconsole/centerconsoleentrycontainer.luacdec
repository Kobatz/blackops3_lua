-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.CenterConsole.CenterConsoleEntry")
local function __FUNC_22B_(arg0, arg1)
	CoD.ConsoleUtility.EntryInit(arg0, arg1, Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CenterConsoleEntryContainer = registerVal2
local function __FUNC_312_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CenterConsoleEntryContainer)
	registerVal2.id = "CenterConsoleEntryContainer"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 740.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = CoD.CenterConsoleEntry.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 740.000000)
	registerVal3:setTopBottom(false, true, -26.000000, 0.000000)
	local function __FUNC_646_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_646_)
	registerVal2:addElement(registerVal3)
	registerVal2.ConsoleEntry = registerVal3
	local function __FUNC_696_(arg0)
		arg0.ConsoleEntry:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_696_)
	if __FUNC_22B_ then
		__FUNC_22B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CenterConsoleEntryContainer.new = __FUNC_312_
