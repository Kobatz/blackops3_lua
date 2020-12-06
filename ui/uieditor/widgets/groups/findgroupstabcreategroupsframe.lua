-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FindGroupsTabCreateGroupsFrame = registerVal1
function CoD.FindGroupsTabCreateGroupsFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FindGroupsTabCreateGroupsFrame)
	registerVal2.id = "FindGroupsTabCreateGroupsFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 700.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 488.000000)
	local registerVal5 = {}
	local registerVal6 = {}
	registerVal6.stateName = "Loading"
	local function __FUNC_441_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal6.condition = __FUNC_441_
	registerVal5 = {registerVal6}
	registerVal2:mergeStateConditions(registerVal5)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

