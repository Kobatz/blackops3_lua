-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_FrameWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_SideBetCallingCard = registerVal1
function CoD.BM_Contracts_SideBetCallingCard.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_SideBetCallingCard)
	registerVal2.id = "BM_Contracts_SideBetCallingCard"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 92.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CallingCards_FrameWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -2.000000, -2.000000)
	local function __FUNC_5B4_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_5B4_)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardsFrameWidget = registerVal3
	local function __FUNC_606_(arg0)
		arg0.CallingCardsFrameWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_606_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

