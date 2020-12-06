-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.uplink_IconandTextArmorbg = registerVal1
function CoD.uplink_IconandTextArmorbg.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.uplink_IconandTextArmorbg)
	registerVal2.id = "uplink_IconandTextArmorbg"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 41.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -36.000000, 19.000000)
	registerVal3:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_armorcontainer"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_normal"))
	registerVal3:setShaderVector(0.000000, 0.500000, 0.490000, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(20.000000, 10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -22.000000, -2.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal4:setImage(RegisterImage("uie_t7_uplink_shield"))
	registerVal2:addElement(registerVal4)
	registerVal2.Shield = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 41.080000)
	registerVal5:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal5:setText(Engine.Localize("MP_HUD_UPLINK_ARMOR"))
	registerVal5:setTTF("fonts/escom.ttf")
	local function __FUNC_86C_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_86C_)
	registerVal2:addElement(registerVal5)
	registerVal2.armorLabel = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_8CD_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_8CD_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

