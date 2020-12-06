-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C1_(arg0, arg1, arg2)
	local function __FUNC_2C9_(arg0, arg1)
		arg0.barImage:setShaderVector(0.000000, arg1, 0.000000, 0.000000, 0.000000)
	end

	arg0.setBarWidth = __FUNC_2C9_
	local registerVal3 = arg2:getModel()
	if arg1 or not registerVal3 then
		return 
	end
	registerVal3 = arg2:getModel()
	local registerVal4 = Engine.GetModel(registerVal3, "frac")
	if not registerVal4 then
		return 
	end
	local function __FUNC_34C_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			local registerVal3 = Engine.GetModel(registerVal3, "duration")
			registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal3, "duration"))
			if registerVal3 and registerVal3 then
				registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal3, "duration"))
			end
			arg0.barImage:beginAnimation("update", registerVal3)
			arg0.barImage:setShaderVector(0.000000, registerVal1, 0.000000, 0.000000, 0.000000)
		end
	end

	arg0:subscribeToModel(registerVal4, __FUNC_34C_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GenericUpdateBar = registerVal2
local function __FUNC_51B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.GenericUpdateBar)
	registerVal2.id = "GenericUpdateBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 467.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 49.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal3:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.barImage = registerVal3
	if __FUNC_1C1_ then
		__FUNC_1C1_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GenericUpdateBar.new = __FUNC_51B_
