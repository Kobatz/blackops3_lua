-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DoubleLoot = registerVal1
function CoD.DoubleLoot.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DoubleLoot)
	registerVal2.id = "DoubleLoot"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -39.000000, 41.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 82.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_blackmarket_doubleloot"))
	registerVal2:addElement(registerVal3)
	registerVal2.cryptokeyBack = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_59A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_59A_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_69D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.cryptokeyBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_69D_
	registerVal4.DoubleLoot = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "DoubleLoot"
	local function __FUNC_79C_(arg0, arg2, arg3)
		return IsDoubleLootXP(arg1)
	end

	registerVal7.condition = __FUNC_79C_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

