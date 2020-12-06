-- Decompiled with CoDLUIDecompiler by JariK

local registerVal0 = {}
registerVal0.UIWidth = 960.000000
registerVal0.UIHeight = 720.000000
registerVal0.roots = {}
registerVal0.createMenu = {}
registerVal0.hudMenuType = {}
local registerVal1 = {}
registerVal1.None = 0.000000
registerVal1.Left = 1.000000
registerVal1.Center = 2.000000
registerVal1.Right = 3.000000
registerVal1.Top = 4.000000
registerVal1.Middle = 5.000000
registerVal1.Bottom = 6.000000
registerVal0.Alignment = registerVal1
registerVal0.savedMenuStates = {}
LUI = registerVal0
if Enum.LUIAlignment then
	registerVal1 = {}
	registerVal1.None = Enum.LUIAlignment.LUI_ALIGNMENT_NONE
	registerVal1.Left = Enum.LUIAlignment.LUI_ALIGNMENT_LEFT
	registerVal1.Center = Enum.LUIAlignment.LUI_ALIGNMENT_CENTER
	registerVal1.Right = Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT
	registerVal1.Top = Enum.LUIAlignment.LUI_ALIGNMENT_TOP
	registerVal1.Middle = Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE
	registerVal1.Bottom = Enum.LUIAlignment.LUI_ALIGNMENT_BOTTOM
	LUI.Alignment = registerVal1
end
if hpairs ~= nil then
	pairs = hpairs
end
function InheritFrom(arg0)
	if not arg0 then
		error("LUI Error: Did not specify base class in InheritFrom!")
	end
	local registerVal1 = {}
	registerVal1.super = arg0
	local registerVal4 = {}
	registerVal4.__index = arg0
	setmetatable(registerVal1, registerVal4)
	registerVal1.m_eventHandlers = {}
	registerVal4 = {}
	registerVal4.__index = arg0.m_eventHandlers
	setmetatable(registerVal1.m_eventHandlers, registerVal4)
	return registerVal1
end

function LUI.ShallowCopy(arg0)
	local registerVal2, registerVal3, registerVal4 = pairs(arg0)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		{}[index5] = value6
	end
	return {}
end

function LUI.ConcatenateToTable(arg0, arg1)
	if arg1 == nil then
		return 
	end
	local registerVal2, registerVal3, registerVal4 = pairs(arg1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		table.insert(arg0, value6)
	end
end

function LUI.clamp(arg0, arg1, arg2)
	if arg0 <= arg1 then
		return arg1
	else
		if arg2 <= arg0 then
			return arg2
		else
			return arg0
		end
	end
end

function LUI.startswith(arg0, arg1)
	local registerVal2 = string.sub(arg0, 1.000000, string.len(arg1))
	if registerVal2 ~= arg1 then
	end
	return true
end

function LUI.endswith(arg0, arg1)
	local registerVal4 = string.len(arg1)
	local registerVal2 = string.sub(arg0, -registerVal4)
	if registerVal2 ~= arg1 then
	end
	return true
end

function LUI.splitString(arg0, arg1)
	local function __FUNC_FEC_(arg0)
		table.insert({}, arg0)
	end

	arg0.gsub(arg0, ("([^" .. arg1 .. "]+)"), __FUNC_FEC_)
	return {}
end

function LUI.getTableFromPath(arg0, arg1)
	local registerVal3, registerVal4, registerVal5 = string.gmatch(arg0, "[^.]+")
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if _G[index6] == nil then
			return nil
		end
	end
	return _G[index6]
end

function LUI.IterateTableBySortedKeys(arg0, arg1, arg2)
	local registerVal4, registerVal5, registerVal6 = pairs(arg0)
	local registerVal9 = arg2(, )
	if arg2 == nil or registerVal9 then
		table.insert({}, )
	end
	table.sort({}, arg1)
	local function __FUNC_1206_()
		if {}[(0.000000 + 1.000000)] == nil then
			return nil
		else
			return {}[(0.000000 + 1.000000)], CoDLUIDecompiler.LuaRegister
		end
	end

	return __FUNC_1206_
end

function LUI.CreateModelsAndInitialize(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = pairs(arg1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		LUI.CreateModelAndInitialize(arg0, index5, value6)
	end
end

function LUI.CreateModelAndInitialize(arg0, arg1, arg2)
	local registerVal3 = Engine.CreateModel(arg0, arg1)
	if registerVal3 and arg2 ~= nil then
		Engine.SetModelValue(registerVal3, arg2)
	end
	return registerVal3
end

function LUI.OverrideFunction_CallOriginalFirst(arg0, arg1, arg2)
	if arg0[arg1] then
		local function __FUNC_1458_(...)
			arg0[arg1](...)
			arg2(...)
		end

		arg0[arg1] = __FUNC_1458_
	else
		arg0[arg1] = arg2
	end
end

function LUI.OverrideFunction_CallOriginalSecond(arg0, arg1, arg2)
	if arg0[arg1] then
		local function __FUNC_14F4_(...)
			arg2(...)
			arg0[arg1](...)
		end

		arg0[arg1] = __FUNC_14F4_
	else
		arg0[arg1] = arg2
	end
end

require("ui.LUI.LUIElement")
require("ui.LUI.LUIElementAllocator")
require("ui.LUI.LUIRoot")
require("ui.LUI.LUITimer")
require("ui.LUI.LUIButtonRepeater")
require("ui.LUI.LUIImage")
require("ui.LUI.LUIList")
require("ui.LUI.LUIStreamedImage")
require("ui.LUI.LUIText")
require("ui.LUI.LUIAnimNumber")
require("ui.LUI.LUITightText")
require("ui.LUI.LUIButton")
require("ui.LUI.LUIMouseCursor")
require("ui.LUI.LUIVerticalList")
require("ui.LUI.LUIHorizontalList")
require("ui.LUI.LUIGridList")
require("ui.LUI.LUIScrollable")
require("ui.LUI.LUIVerticalScrollbar")
require("ui.LUI.LUISafeAreaOverlay")
require("ui.LUI.LUIFrame")
require("ui.LUI.LUIGridLayout")
if not debug then
	debug = {}
end
function debug.postdeploymentfunction()
	local registerVal0, registerVal1, registerVal2 = pairs(LUI.roots)
	for index3,value4 in registerVal0, registerVal1, registerVal2 do
		value4.debugReload = true
	end
end

LargestElements = {}
LargestElementsSize = {}
LargestElementsCount = {}
function CountFieldsHelper(arg0, arg1)
	if arg1[arg0] then
		return 
	end
	arg1[arg0] = true
	local registerVal3, registerVal4, registerVal5 = pairs(arg0)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = type(index6)
		if registerVal8 == "table" then
			registerVal8 = CountFieldsHelper(index6, arg1)
		end
	end
	return ((0.000000 + registerVal8) + 1.000000)
end

function CountFields(arg0)
	return CountFieldsHelper(arg0, {})
end

function CountReferencesHelper(arg0, arg1)
	if arg1[arg0] then
		return 
	end
	arg1[arg0] = true
	local registerVal2 = type(arg0)
	if registerVal2 == "userdata" then
		registerVal2 = getmetatable(arg0)
		if not registerVal2 then
			return 
		end
		if not registerVal2.__index then
			return 
		end
		local registerVal3 = type(registerVal2.__index)
		if registerVal3 == "table" and registerVal2.__index.id then
			registerVal3 = CountFields(registerVal2.__index)
			if arg1 or LargestElementsSize[registerVal2.__index.id] < registerVal3 then
				LargestElements[registerVal2.__index.id] = registerVal2.__index
				LargestElementsSize[registerVal2.__index.id] = registerVal3
			end
			if not LargestElementsCount[registerVal2.__index.id] then
				LargestElementsCount[registerVal2.__index.id] = 0.000000
			end
			LargestElementsCount[registerVal2.__index.id] = (LargestElementsCount[registerVal2.__index.id] + 1.000000)
		end
	end
	registerVal2 = type(registerVal2.__index)
	if registerVal2 ~= "table" then
		return 
	end
	registerVal2, registerVal3, registerVal4 = pairs(registerVal2.__index)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		CountReferencesHelper(value6, arg1)
	end
end

function CountReferences(arg0)
	{}[arg0] = true
	local registerVal2 = type(arg0)
	if registerVal2 == "userdata" then
		registerVal2 = getmetatable(arg0)
		if not registerVal2 then
			return 0.000000
		end
		if not registerVal2.__index then
			return 0.000000
		end
	end
	registerVal2 = type(registerVal2.__index)
	if registerVal2 ~= "table" then
		return 0.000000
	end
	registerVal2, registerVal3, registerVal4 = pairs(registerVal2.__index)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		CountReferencesHelper(value6, {})
	end
	registerVal3, registerVal4, registerVal5 = pairs({})
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
	end
	return (0.000000 + 1.000000)
end

function DisableGlobals()
	local registerVal0 = getmetatable(_G)
	if not registerVal0 then
		setmetatable(_G, {})
	end
	function {}.__newindex(arg0, arg1, arg2)
		error(("LUI Error: Tried to create global variable " .. arg1), 2.000000)
	end

	local registerVal1 = Dvar.cg_development:get()
	if registerVal1 then
		function {}.__index(arg0, arg1)
			if arg1 ~= "PreLoadFunc" and arg1 == "PostLoadFunc" or arg1 == "LobbyVM" then
				return nil
			end
			if debug and debug.traceback then
				local registerVal3 = debug.traceback()
			end
			registerVal3 = string.find(registerVal3, "debuggerIndexMeta")
			if registerVal3 == nil then
				registerVal3 = Dvar.ui_errorUndefLocals:get()
				if Dvar.ui_errorUndefLocals ~= nil and registerVal3 then
					error(("LUI Error: Tried to use undefined variable " .. arg1), 2.000000)
				else
					DebugPrint(("WARNING: Tried to use undefined variable " .. arg1 .. "
" .. registerVal3))
				end
			end
		end

	end
end

function EnableGlobals()
	local registerVal0 = getmetatable(_G)
	if not registerVal0 then
		setmetatable(_G, {})
	end
	{}.__newindex = nil
	local registerVal1 = Dvar.cg_development:get()
	if registerVal1 then
		{}.__index = nil
	end
end

