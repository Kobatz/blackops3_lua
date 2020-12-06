-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupsBetaWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsBetaSafeAreaContainer = registerVal1
function CoD.GroupsBetaSafeAreaContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsBetaSafeAreaContainer)
	registerVal2.id = "GroupsBetaSafeAreaContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GroupsBetaWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -206.000000, -6.000000)
	registerVal3:setTopBottom(false, true, -34.000000, -12.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GroupsBetaWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5D1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupsBetaWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5D1_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6D8_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.GroupsBetaWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6D8_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_7DB_(arg0)
		arg0.GroupsBetaWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7DB_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

