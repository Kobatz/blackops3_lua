-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_BribeOffertime = registerVal1
function CoD.BM_BribeOffertime.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_BribeOffertime)
	registerVal2.id = "BM_BribeOffertime"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal3:setTopBottom(false, true, -20.000000, 0.000000)
	registerVal3:setRGB(0.300000, 0.870000, 1.000000)
	registerVal3:setText(Engine.Localize("MPUI_BM_BRIBE_END_TIME"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_BOTTOM)
	registerVal2:addElement(registerVal3)
	registerVal2.BribeOfferTime = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal4:setTopBottom(false, true, -20.000000, 0.000000)
	registerVal4:setRGB(0.300000, 0.870000, 1.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("MPUI_BM_BRIBE_BUY_FAST"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_BOTTOM)
	registerVal2:addElement(registerVal4)
	registerVal2.BribeBuyFast = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8D8_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BribeOfferTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BribeBuyFast:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8D8_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A3D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BribeOfferTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BribeBuyFast:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A3D_
	registerVal5.Expired = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Expired"
	local function __FUNC_BA1_(arg0, arg2, arg3)
		local registerVal3 = IsBribeActive(arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_BA1_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "autoevents.cycled")
	local function __FUNC_BF7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_BF7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

