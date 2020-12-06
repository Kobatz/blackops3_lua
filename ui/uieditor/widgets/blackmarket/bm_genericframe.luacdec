-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_Bribe_title")
require("ui.uieditor.widgets.BlackMarket.BM_Bribe_Expires")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_GenericFrame = registerVal1
function CoD.BM_GenericFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_GenericFrame)
	registerVal2.id = "BM_GenericFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 467.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 161.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -3.000000, 469.000000)
	registerVal3:setTopBottom(true, false, -3.050000, 164.950000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_genericpromo_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BribeFrame = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 24.800000, 454.000000)
	registerVal4:setTopBottom(true, false, 21.500000, 141.280000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_genericpromo_wires"))
	registerVal2:addElement(registerVal4)
	registerVal2.Wires = registerVal4
	local registerVal5 = CoD.BM_Bribe_title.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 4.850000, 128.660000)
	registerVal5:setTopBottom(true, false, 5.020000, 59.190000)
	registerVal5.title:setRGB(1.000000, 1.000000, 1.000000)
	registerVal5.title:setText(LocalizeToUpperString("MPUI_BM_BRIBE"))
	registerVal2:addElement(registerVal5)
	registerVal2.BMBribetitle = registerVal5
	local registerVal6 = CoD.BM_Bribe_Expires.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -125.380000, -16.000000)
	registerVal6:setTopBottom(true, false, 106.170000, 162.000000)
	registerVal6.Text:setText(Engine.Localize("MPUI_BM_PROMO_EXPIRES"))
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NearExpiryTime"
	local function __FUNC_B9E_(arg0, arg2, arg3)
		return IsGlobalModelValueTrue(arg2, arg1, "autoevents.autoevent_timer_trifecta_promo_red")
	end

	registerVal10.condition = __FUNC_B9E_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "autoevents.autoevent_timer_trifecta_promo_red")
	local function __FUNC_C37_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.autoevent_timer_trifecta_promo_red"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_C37_)
	registerVal2:addElement(registerVal6)
	registerVal2.ExpiresWidget = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 27.570000, 138.570000)
	registerVal7:setTopBottom(true, false, 27.370000, 138.370000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_bribe_chip"))
	registerVal2:addElement(registerVal7)
	registerVal2.BribeChip = registerVal7
	local registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_D77_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_D77_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_DD6_(arg0)
		arg0.BMBribetitle:close()
		arg0.ExpiresWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DD6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

