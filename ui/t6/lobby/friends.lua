-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Spinner")
CoD.Friends = {}
function CoD.Friends.GetRootUIModel(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "unifiedListRoot")
	return registerVal1
end

function CoD.Friends.GetCountUIModel(arg0)
	local registerVal1 = CoD.Friends.GetRootUIModel(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "count")
	return registerVal2
end

function CoD.Friends.GetUpdateUIModel(arg0)
	local registerVal1 = CoD.Friends.GetRootUIModel(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "update")
	return registerVal2
end

function CoD.Friends.GetItemUIModel(arg0, arg1)
	return Engine.GetModel(arg0, ("member" .. (arg1 - 1.000000)))
end

function CoD.Friends.GetCount(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "unifiedListRoot")
	registerVal2 = Engine.GetModel(registerVal1, "count")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	return registerVal3
end

