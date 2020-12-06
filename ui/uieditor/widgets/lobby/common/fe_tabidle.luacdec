-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_TabIdle = registerVal1
function CoD.FE_TabIdle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_TabIdle)
	registerVal2.id = "FE_TabIdle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 152.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.052632, 0.200000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_643_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_643_
	local function __FUNC_6A2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Active = __FUNC_6A2_
	local function __FUNC_702_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.GainActive = __FUNC_702_
	local function __FUNC_762_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LoseActive = __FUNC_762_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

