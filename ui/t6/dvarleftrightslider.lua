-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.LeftRightSlider")
CoD.DvarLeftRightSlider = {}
local function __FUNC_1B7_(arg0, arg1)
	Engine.SetDvar(arg0.m_dvarName, arg1)
end

local function __FUNC_239_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = tonumber(Engine.DvarString(nil, arg2))
	local registerVal8 = CoD.LeftRightSlider.new(arg1, arg5, nil, registerVal7, arg3, arg4, arg6)
	registerVal8.m_dvarName = arg2
	registerVal8.m_currentValue = registerVal7
	registerVal8.m_currentController = arg0
	registerVal8:setSliderCallback(__FUNC_1B7_)
	return registerVal8
end

CoD.DvarLeftRightSlider.new = __FUNC_239_
