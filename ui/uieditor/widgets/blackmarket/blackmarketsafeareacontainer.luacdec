-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.NextKeyProgress")
require("ui.uieditor.widgets.StartMenu.StartMenu_CurrencyCounts")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackMarketSafeAreaContainer = registerVal1
function CoD.BlackMarketSafeAreaContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackMarketSafeAreaContainer)
	registerVal2.id = "BlackMarketSafeAreaContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.NextKeyProgress.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -428.000000, -73.000000)
	registerVal3:setTopBottom(true, false, 29.000000, 79.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.NextKeyProgress = registerVal3
	local registerVal4 = CoD.StartMenu_CurrencyCounts.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -508.000000, -304.000000)
	registerVal4:setTopBottom(true, false, 47.000000, 77.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "ShowKeysAndVials"
	local function __FUNC_A19_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_A19_
	local registerVal9 = {}
	registerVal9.stateName = "Shown"
	local function __FUNC_A65_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_A65_
	local registerVal10 = {}
	registerVal10.stateName = "ShownOnlyKeys"
	local function __FUNC_AB1_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_AB1_
	local registerVal11 = {}
	registerVal11.stateName = "ShownAllExceptVials"
	local function __FUNC_AFD_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_AFD_
	local registerVal12 = {}
	registerVal12.stateName = "ShownOnlyVials"
	local function __FUNC_B49_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_B49_
	local registerVal13 = {}
	registerVal13.stateName = "ShownAllExceptCryptoKeys"
	local function __FUNC_B95_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_B95_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "CryptoKeyProgress.keyCount")
	local function __FUNC_BE1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_BE1_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_D10_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_D10_)
	registerVal2:addElement(registerVal4)
	registerVal2.StartMenuCurrencyCounts = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 340.380000, 1223.000000)
	registerVal5:setTopBottom(true, false, 80.850000, 125.850000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Guides = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 340.380000, 1223.000000)
	registerVal6:setTopBottom(true, false, -13.150000, 31.850000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Gudies2 = registerVal6
	local function __FUNC_E40_(arg0)
		arg0.NextKeyProgress:close()
		arg0.StartMenuCurrencyCounts:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E40_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

