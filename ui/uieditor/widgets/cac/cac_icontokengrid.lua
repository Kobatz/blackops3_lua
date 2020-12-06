-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_IconTokenStatic")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_IconTokenGrid = registerVal1
function CoD.cac_IconTokenGrid.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_IconTokenGrid)
	registerVal2.id = "cac_IconTokenGrid"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_IconTokenStatic.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 28.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.cacIconTokenStatic0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5C6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.cacIconTokenStatic0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5C6_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6CF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.cacIconTokenStatic0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6CF_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_7D2_(arg0)
		arg0.cacIconTokenStatic0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7D2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

