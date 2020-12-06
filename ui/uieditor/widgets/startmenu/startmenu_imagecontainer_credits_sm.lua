-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_ImageContainer_Credits_SM = registerVal1
function CoD.StartMenu_ImageContainer_Credits_SM.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.StartMenu_ImageContainer_Credits_SM)
	registerVal2.id = "StartMenu_ImageContainer_Credits_SM"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 181.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 119.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -148.500000, 148.500000)
	registerVal3:setTopBottom(false, false, -68.500000, 68.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.ImageContainer = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_4EC_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_4EC_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

