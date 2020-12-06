-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_frame_noBG = registerVal1
function CoD.StartMenu_frame_noBG.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_frame_noBG)
	registerVal2.id = "StartMenu_frame_noBG"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 140.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgstrokefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.053333, 0.114286, 0.366667, 0.366667)
	registerVal3:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_631_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_631_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_692_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_692_
	registerVal4.Disabled = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

