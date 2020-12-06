-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_LockBars = registerVal1
function CoD.BM_Contracts_LockBars.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_LockBars)
	registerVal2.id = "BM_Contracts_LockBars"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 57.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 41.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.500000, 24.500000)
	registerVal3:setTopBottom(true, false, 0.500000, 40.500000)
	registerVal3:setImage(RegisterImage("uie_t7_bm_special_contracts_lineleft"))
	registerVal2:addElement(registerVal3)
	registerVal2.bmContractBars = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 24.500000, -24.500000)
	registerVal4:setTopBottom(true, false, 0.500000, 40.500000)
	registerVal4:setImage(RegisterImage("uie_t7_bm_special_contracts_linecenter"))
	registerVal2:addElement(registerVal4)
	registerVal2.bmContractBars0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -24.500000, -0.500000)
	registerVal5:setTopBottom(true, false, 0.500000, 40.500000)
	registerVal5:setImage(RegisterImage("uie_t7_bm_special_contracts_lineright"))
	registerVal2:addElement(registerVal5)
	registerVal2.bmContractBars00 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_6B4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_6B4_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

