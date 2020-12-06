-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C7_(arg0)
	local function __FUNC_207_(arg0)
		local registerVal1 = arg0:getFirstChild()
		local registerVal2 = registerVal1:getNextSibling()
		registerVal1:close()
		LUI.UIElement.close(arg0)
	end

	arg0.close = __FUNC_207_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.DynamicContainerWidget = registerVal2
local function __FUNC_2DB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DynamicContainerWidget)
	registerVal2.id = "DynamicContainerWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	if __FUNC_1C7_ then
		__FUNC_1C7_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.DynamicContainerWidget.new = __FUNC_2DB_
