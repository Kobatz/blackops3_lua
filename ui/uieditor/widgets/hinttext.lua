-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.hintTextInternal")
local function __FUNC_204_(arg0, arg1)
	local function __FUNC_2C4_(arg2)
		local registerVal3 = {}
		registerVal3.name = "update_state"
		registerVal3.controller = arg1
		arg0:processEvent(registerVal3)
	end

	arg0:subscribeToGlobalModel(arg1, "PerController", "hintText", __FUNC_2C4_)
	local function __FUNC_35A_(arg0)
		arg0:unsubscribeFromAllModels()
		arg0.close(arg0)
		DataSources.PerController.clearHintText(arg1)
	end

	arg0.close = __FUNC_35A_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.hintText = registerVal2
local function __FUNC_421_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.hintText)
	registerVal2.id = "hintText"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.hintTextInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setAlpha(0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "NoHintText"
	local function __FUNC_80E_(arg0, arg2, arg3)
		local registerVal3 = HasGlobalHintText(arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_80E_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.hintTextInternal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_867_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.hintTextInternal:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_867_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_967_(arg0)
		arg0.hintTextInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_967_)
	if __FUNC_204_ then
		__FUNC_204_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.hintText.new = __FUNC_421_
