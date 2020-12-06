-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_16E_(arg0)
	{}._originalTable = arg0
	local registerVal2 = {}
	registerVal2.__index = arg0
	local function __FUNC_217_(arg0, arg1, arg2)
		error("Attempt to modify a value in a readonly table.")
	end

	registerVal2.__newindex = __FUNC_217_
	setmetatable({}, registerVal2)
	return {}
end

{}.ReadOnlyTable = __FUNC_16E_
local registerVal1 = {}.ReadOnlyTable({})
LuaReadOnlyTables = registerVal1
