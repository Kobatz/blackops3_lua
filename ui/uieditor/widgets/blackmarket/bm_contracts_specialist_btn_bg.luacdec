-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_Specialist_btn_bg = registerVal1
function CoD.BM_Contracts_Specialist_btn_bg.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_Specialist_btn_bg)
	registerVal2.id = "BM_Contracts_Specialist_btn_bg"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -16.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_btn_center"))
	registerVal2:addElement(registerVal3)
	registerVal2.center = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -16.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contracts_character_btn_bg_right"))
	registerVal2:addElement(registerVal4)
	registerVal2.right = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_5FC_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_5FC_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

