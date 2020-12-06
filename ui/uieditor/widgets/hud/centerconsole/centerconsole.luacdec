-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.CenterConsole.CenterConsoleEntryContainer")
local function __FUNC_226_(arg0, arg1)
	local registerVal2 = IsMultiplayer()
	if arg1 or not 0.000000 then
	end
	CoD.ConsoleUtility.Init(arg0, arg1, "centerConsole", nil)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.CenterConsole = registerVal2
local function __FUNC_306_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CenterConsole)
	registerVal2.id = "CenterConsole"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 740.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 98.000000)
	local registerVal3 = CoD.CenterConsoleEntryContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 740.000000)
	registerVal3:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_AD1_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "HUDItems", "centerConsole.line0", __FUNC_AD1_)
	registerVal2:addElement(registerVal3)
	registerVal2.ConsoleEntry0 = registerVal3
	local registerVal4 = CoD.CenterConsoleEntryContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 740.000000)
	registerVal4:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_B22_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "HUDItems", "centerConsole.line1", __FUNC_B22_)
	registerVal2:addElement(registerVal4)
	registerVal2.ConsoleEntry1 = registerVal4
	local registerVal5 = CoD.CenterConsoleEntryContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 740.000000)
	registerVal5:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_B72_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "centerConsole.line2", __FUNC_B72_)
	registerVal2:addElement(registerVal5)
	registerVal2.ConsoleEntry2 = registerVal5
	local registerVal6 = CoD.CenterConsoleEntryContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 740.000000)
	registerVal6:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_BC2_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "HUDItems", "centerConsole.line3", __FUNC_BC2_)
	registerVal2:addElement(registerVal6)
	registerVal2.ConsoleEntry3 = registerVal6
	local registerVal7 = CoD.CenterConsoleEntryContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 740.000000)
	registerVal7:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_C12_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:subscribeToGlobalModel(arg1, "HUDItems", "centerConsole.line4", __FUNC_C12_)
	registerVal2:addElement(registerVal7)
	registerVal2.ConsoleEntry4 = registerVal7
	local registerVal8 = CoD.CenterConsoleEntryContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 740.000000)
	registerVal8:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_C62_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:subscribeToGlobalModel(arg1, "HUDItems", "centerConsole.line5", __FUNC_C62_)
	registerVal2:addElement(registerVal8)
	registerVal2.ConsoleEntry5 = registerVal8
	local registerVal9 = CoD.CenterConsoleEntryContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 740.000000)
	registerVal9:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_CB2_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:subscribeToGlobalModel(arg1, "HUDItems", "centerConsole.line6", __FUNC_CB2_)
	registerVal2:addElement(registerVal9)
	registerVal2.ConsoleEntry6 = registerVal9
	local function __FUNC_D02_(arg0)
		arg0.ConsoleEntry0:close()
		arg0.ConsoleEntry1:close()
		arg0.ConsoleEntry2:close()
		arg0.ConsoleEntry3:close()
		arg0.ConsoleEntry4:close()
		arg0.ConsoleEntry5:close()
		arg0.ConsoleEntry6:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D02_)
	if __FUNC_226_ then
		__FUNC_226_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CenterConsole.new = __FUNC_306_
