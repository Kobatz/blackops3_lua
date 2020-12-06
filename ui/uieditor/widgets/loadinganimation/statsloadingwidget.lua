-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.LoadingAnimation.AnimationLoadingWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StatsLoadingWidget = registerVal1
function CoD.StatsLoadingWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StatsLoadingWidget)
	registerVal2.id = "StatsLoadingWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 169.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AnimationLoadingWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -72.000000, 72.000000)
	registerVal3:setTopBottom(false, false, -84.500000, 59.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.AnimationLoadingWidget = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal4:setTopBottom(false, false, 59.500000, 84.500000)
	registerVal4:setText(Engine.Localize("MENU_LOADING_DOTS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.LoadingLabel = registerVal4
	local function __FUNC_740_(arg0)
		arg0.AnimationLoadingWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_740_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

