-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Console.ConsoleEntry")
local function __FUNC_219_(arg0, arg1)
	CoD.ConsoleUtility.EntryInit(arg0, arg1, Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ConsoleEntryContainer = registerVal2
local function __FUNC_300_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ConsoleEntryContainer)
	registerVal2.id = "ConsoleEntryContainer"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 680.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = CoD.ConsoleEntry.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 680.000000)
	registerVal3:setTopBottom(false, true, -14.000000, 0.000000)
	local function __FUNC_614_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_614_)
	registerVal2:addElement(registerVal3)
	registerVal2.ConsoleEntry = registerVal3
	local function __FUNC_666_(arg0)
		arg0.ConsoleEntry:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_666_)
	if __FUNC_219_ then
		__FUNC_219_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ConsoleEntryContainer.new = __FUNC_300_
