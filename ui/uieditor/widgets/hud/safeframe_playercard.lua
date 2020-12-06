-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.PlayerCard.PlayerCard_Callout")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.safeframe_playercard = registerVal1
function CoD.safeframe_playercard.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.safeframe_playercard)
	registerVal2.id = "safeframe_playercard"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PlayerCard_Callout.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 23.000000, 255.000000)
	registerVal3:setTopBottom(true, false, 268.000000, 327.000000)
	registerVal3:setYRot(20.000000)
	local function __FUNC_96C_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "PlayerCallout", nil, __FUNC_96C_)
	registerVal2:addElement(registerVal3)
	registerVal2.PlayerCardCallout = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_9BE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_9BE_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_A1E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_A1E_
	registerVal4.HideNotifications = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "HideNotifications"
	local function __FUNC_A7E_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_A7E_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	local function __FUNC_C51_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_C51_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	local function __FUNC_DDC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_DDC_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_F6C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_F6C_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_10F5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_10F5_)
	local function __FUNC_127D_(arg0)
		arg0.PlayerCardCallout:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_127D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

