-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Debug.LobbyProcessQueueDebugItemText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyProcessQueueDebugItem = registerVal1
function CoD.LobbyProcessQueueDebugItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyProcessQueueDebugItem)
	registerVal2.id = "LobbyProcessQueueDebugItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 10.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = CoD.LobbyProcessQueueDebugItemText.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal4:setTopBottom(true, false, -2.000000, 12.000000)
	registerVal4.Name:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_883_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_883_)
	local function __FUNC_8D2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Name:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "processName", true, __FUNC_8D2_)
	registerVal2:addElement(registerVal4)
	registerVal2.LobbyProcessQueueDebugItemText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9A4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_9A4_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A06_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setRGB(0.000000, 0.040000, 0.430000)
		registerVal2.Background:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.Name:completeAnimation()
		registerVal2.LobbyProcessQueueDebugItemText.Name:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A06_
	registerVal5.Process = registerVal6
	registerVal6 = {}
	local function __FUNC_C57_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.Background:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.Name:completeAnimation()
		registerVal2.LobbyProcessQueueDebugItemText.Name:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C57_
	registerVal5.Action = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Process"
	local function __FUNC_E9B_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "process")
	end

	registerVal8.condition = __FUNC_E9B_
	local registerVal9 = {}
	registerVal9.stateName = "Action"
	local function __FUNC_F20_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "type", "action")
	end

	registerVal9.condition = __FUNC_F20_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_FA7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "type"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "type", true, __FUNC_FA7_)
	local function __FUNC_10BE_(arg0)
		arg0.LobbyProcessQueueDebugItemText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10BE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

