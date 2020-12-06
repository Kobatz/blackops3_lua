-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
LUI.UIImage = registerVal1
LUI.UIImage.Materials = {}
registerVal1 = RegisterImage("$white")
LUI.UIImage.DefaultImage = registerVal1
function LUI.UIImage.addElement(arg0, arg1)
	if arg1.id ~= "LUITimer" then
		DebugPrint("WARNING: An element is being added to a UIImage element. This will cause undesired behavior!")
	end
	LUI.UIElement.addElement(arg0, arg1)
end

function LUI.UIImage.canAddElement(arg0, arg1)
	if arg1.id ~= "LUITimer" then
		DebugPrint("WARNING: An element is being added to a UIImage element. This will cause undesired behavior!")
	end
	return LUI.UIElement.canAddElement(arg0, arg1)
end

function LUI.UIImage.new(arg0)
	local registerVal1 = LUI.UIElement.new(arg0)
	registerVal1:setClass(LUI.UIImage)
	registerVal1:setupUIImage()
	if arg0 ~= nil and arg0.material ~= nil then
		registerVal1:setImage(arg0.material)
	end
	return registerVal1
end

function LUI.UIImage.GetCachedMaterial(arg0)
	if LUI.UIImage.Materials[arg0] == nil then
		local registerVal2 = RegisterMaterial(arg0)
		LUI.UIImage.Materials[arg0] = registerVal2
	end
	return registerVal2
end

LUI.UIImage.id = "LUIImage"
