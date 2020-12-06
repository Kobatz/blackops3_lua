-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_Fist = registerVal1
function CoD.AmmoWidget_Fist.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_Fist)
	registerVal2.id = "AmmoWidget_Fist"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 35.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 75.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 35.480000)
	registerVal3:setTopBottom(true, false, 0.000000, 74.500000)
	registerVal3:setImage(RegisterImage("uie_img_t7_hud_icon_fist_proto"))
	registerVal2:addElement(registerVal3)
	registerVal2.Fist = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_551_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_551_
	local function __FUNC_5B2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.AmmoUpdate = __FUNC_5B2_
	local function __FUNC_612_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.HeroWeapon = __FUNC_612_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

