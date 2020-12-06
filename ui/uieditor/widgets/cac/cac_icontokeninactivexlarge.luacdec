-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_IconTokenInactiveXLarge = registerVal1
function CoD.cac_IconTokenInactiveXLarge.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_IconTokenInactiveXLarge)
	registerVal2.id = "cac_IconTokenInactiveXLarge"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 264.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 258.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cacselection_icontokeninactivexl"))
	registerVal2:addElement(registerVal3)
	registerVal2.tokenImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cacselection_icontokeninactivexl_cp"))
	registerVal2:addElement(registerVal4)
	registerVal2.tokenImageCP = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_79C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.tokenImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.tokenImageCP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_79C_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_8F8_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.tokenImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.tokenImageCP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8F8_
	registerVal5.Visible = registerVal6
	registerVal6 = {}
	local function __FUNC_A59_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.tokenImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.tokenImageCP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A59_
	registerVal5.VisibleCP = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_BB9_(arg0, arg1, arg2)
		local registerVal3 = IsCampaign()
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_BB9_
	local registerVal9 = {}
	registerVal9.stateName = "VisibleCP"
	local function __FUNC_C08_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal9.condition = __FUNC_C08_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_C54_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_C54_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

