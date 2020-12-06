-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GobbleGumCookbookDistillsBalance = registerVal1
function CoD.GobbleGumCookbookDistillsBalance.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GobbleGumCookbookDistillsBalance)
	registerVal2.id = "GobbleGumCookbookDistillsBalance"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 75.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 25.000000)
	registerVal3:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_cookbook_distill_icon"))
	registerVal2:addElement(registerVal3)
	registerVal2.Icon = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 25.000000, 75.000000)
	registerVal4:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal4:setRGB(0.300000, 0.200000, 0.140000)
	registerVal4:setTTF("fonts/default.ttf")
	local function __FUNC_893_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(SetValueIfNumberIsLessThanOrEqualTo(0.000000, "0", registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GobbleGumDistills", "totalDistills", __FUNC_893_)
	registerVal2:addElement(registerVal4)
	registerVal2.balance = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_997_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.balance:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_997_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_AE5_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.balance:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.balance:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AE5_
	registerVal5.VisiblePopup = registerVal6
	registerVal6 = {}
	local function __FUNC_C69_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Icon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.balance:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C69_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "VisiblePopup"
	local function __FUNC_DB9_(arg0, arg2, arg3)
		local registerVal3 = IsLootReady(arg1)
		if registerVal3 then
			registerVal3 = IsCurrentMenu(arg0, "SystemOverlay_GobbleGumRecipe")
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_DB9_
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_E5F_(arg0, arg2, arg3)
		return IsLootReady(arg1)
	end

	registerVal9.condition = __FUNC_E5F_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "CryptoKeyProgress.keyCount")
	local function __FUNC_EAD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_EAD_)
	local function __FUNC_FDC_(arg0)
		arg0.balance:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FDC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

