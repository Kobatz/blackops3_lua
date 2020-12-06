-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PlayerBalanceWidget = registerVal1
function CoD.PlayerBalanceWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PlayerBalanceWidget)
	registerVal2.id = "PlayerBalanceWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 90.000000, 174.000000)
	registerVal3:setTopBottom(true, false, 41.000000, 89.000000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.BalanceAmount = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 85.000000, 126.000000)
	registerVal4:setTopBottom(true, false, 19.000000, 41.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.BalanceId = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 6.000000, 57.000000)
	registerVal5:setTopBottom(true, false, 19.000000, 41.000000)
	registerVal5:setText(Engine.Localize("Currency ID:"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.BalanceIdLabel = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 6.000000, 90.000000)
	registerVal6:setTopBottom(true, false, 41.000000, 89.000000)
	registerVal6:setText(Engine.Localize("Value:"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.BalanceAmountLabel = registerVal6
	local function __FUNC_927_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.BalanceAmount:linkToElementModel(registerVal2, "balanceAmount", true, __FUNC_927_)
	local function __FUNC_9F8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(ToString(registerVal1)))
		end
	end

	registerVal2.BalanceId:linkToElementModel(registerVal2, "balanceId", true, __FUNC_9F8_)
	local function __FUNC_ACC_(arg0)
		arg0.BalanceAmount:close()
		arg0.BalanceId:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_ACC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

