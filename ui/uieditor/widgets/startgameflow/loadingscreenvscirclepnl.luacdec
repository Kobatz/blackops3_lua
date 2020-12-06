-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.LoadingScreenVSCirclePnlIntl")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenVSCirclePnl = registerVal1
function CoD.LoadingScreenVSCirclePnl.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenVSCirclePnl)
	registerVal2.id = "LoadingScreenVSCirclePnl"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LoadingScreenVSCirclePnlIntl.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 89.880000)
	registerVal3:setTopBottom(true, false, 0.000000, 89.880000)
	registerVal2:addElement(registerVal3)
	registerVal2.LoadingScreenVSCirclePnlIntl = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_65A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_65A_
	local function __FUNC_6BA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.StartLoading = __FUNC_6BA_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_71A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_71A_
	registerVal4.CodCaster = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "CodCaster"
	local function __FUNC_77A_(arg0, arg2, arg3)
		return IsCodCaster(arg1)
	end

	registerVal7.condition = __FUNC_77A_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_7C9_(arg0)
		arg0.LoadingScreenVSCirclePnlIntl:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7C9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

