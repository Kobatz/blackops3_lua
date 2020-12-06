-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BubbleGumBuffGumShadow = registerVal1
function CoD.BubbleGumBuffGumShadow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BubbleGumBuffGumShadow)
	registerVal2.id = "BubbleGumBuffGumShadow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 302.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 303.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 2.000000, 288.680000)
	registerVal3:setTopBottom(true, false, 17.410000, 303.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_panelcircle"))
	registerVal2:addElement(registerVal3)
	registerVal2.Shadow = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_68E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_68E_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_78A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_78A_
	registerVal4.Visible = registerVal5
	registerVal5 = {}
	local function __FUNC_886_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Shadow:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_886_
	registerVal4.Locked = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_982_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACItemDLCPurchased(arg0, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_982_
	local registerVal8 = {}
	registerVal8.stateName = "Locked"
	local function __FUNC_A1D_(arg0, arg1, arg2)
		return true
	end

	registerVal8.condition = __FUNC_A1D_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_A50_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_A50_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

