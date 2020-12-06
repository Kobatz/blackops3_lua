-- Decompiled with CoDLUIDecompiler by JariK

LUI.UIMouseCursor = {}
LUI.UIMouseCursor.priority = 1000.000000
local function __FUNC_1A0_(arg0, arg1)
	local registerVal2, registerVal3 = ProjectRootCoordinate(arg1.rootName, arg1.x, arg1.y)
	if registerVal2 ~= nil and registerVal3 ~= nil then
		if not arg1.root then
		end
		local registerVal5, registerVal6 = LUI.roots[arg1.rootName]:pixelsToUnits(registerVal2, registerVal3)
		if registerVal5 ~= nil and registerVal6 ~= nil then
			arg0:beginAnimation("default")
			arg0:setLeftRight(true, false, (registerVal5 - (arg0.size / 2.000000)), (registerVal5 + (arg0.size / 2.000000)))
			arg0:setTopBottom(true, false, (registerVal6 - (arg0.size / 2.000000)), (registerVal6 + (arg0.size / 2.000000)))
		end
	end
	arg0:dispatchEventToChildren(arg1)
end

local function __FUNC_3D6_(arg0)
	local registerVal1 = LUI.UIImage.new(arg0)
	registerVal1:setPriority(LUI.UIMouseCursor.priority)
	registerVal1:registerEventHandler("mousemove", __FUNC_1A0_)
	registerVal1.size = 64.000000
	return registerVal1
end

LUI.UIMouseCursor.new = __FUNC_3D6_
