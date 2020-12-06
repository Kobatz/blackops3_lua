-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_Pip = registerVal1
function CoD.BM_Contracts_Pip.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_Pip)
	registerVal2.id = "BM_Contracts_Pip"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -8.000000, 8.000000)
	registerVal3:setTopBottom(true, true, -7.000000, 9.000000)
	registerVal3:setScale(1.200000)
	registerVal3:setImage(RegisterImage("uie_t7_bm_contracts_pip_empty"))
	registerVal2:addElement(registerVal3)
	registerVal2.Pipempty = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -8.000000, 8.000000)
	registerVal4:setTopBottom(true, true, -7.000000, 9.000000)
	registerVal4:setScale(1.200000)
	registerVal4:setImage(RegisterImage("uie_t7_bm_contracts_pip_full"))
	registerVal2:addElement(registerVal4)
	registerVal2.Pip = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -8.000000, 8.000000)
	registerVal5:setTopBottom(true, true, -7.000000, 9.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setScale(1.200000)
	registerVal5:setImage(RegisterImage("uie_t7_bm_contracts_pip_completed_"))
	registerVal2:addElement(registerVal5)
	registerVal2.PipCompleted = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_747_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Pipempty:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Pip:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Pip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PipCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_747_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_928_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Pipempty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Pip:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Pip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PipCompleted:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_928_
	registerVal6.AllComplete = registerVal7
	registerVal7 = {}
	local function __FUNC_B0C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Pipempty:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Pip:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Pip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PipCompleted:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B0C_
	registerVal6.Complete = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

