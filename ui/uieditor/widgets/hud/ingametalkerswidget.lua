-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.LoadingScreenTalkerWidgetCPZM")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.InGameTalkersWidget = registerVal1
function CoD.InGameTalkersWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.InGameTalkersWidget)
	registerVal2.id = "InGameTalkersWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 87.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 87.000000)
	registerVal3:setDataSource("LoadingScreenPlayerListTeam1")
	registerVal3:setWidgetType(CoD.LoadingScreenTalkerWidgetCPZM)
	registerVal3:setVerticalCount(4.000000)
	registerVal3:setSpacing(5.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Talkers = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_8BE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Talkers:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8BE_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_9BB_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Talkers:setLeftRight(false, true, -190.000000, 0.000000)
		registerVal2.Talkers:setTopBottom(false, true, -87.000000, 0.000000)
		registerVal2.Talkers:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9BB_
	registerVal4.Safehouse = registerVal5
	registerVal5 = {}
	local function __FUNC_B3D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Talkers:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B3D_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Safehouse"
	local function __FUNC_C36_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		if not registerVal3 then
			registerVal3 = InSafehouse()
		else
		end
		return true
	end

	registerVal7.condition = __FUNC_C36_
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_D35_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_D35_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_E08_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_E08_)
	registerVal3.id = "Talkers"
	local function __FUNC_F92_(arg0)
		arg0.Talkers:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F92_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

