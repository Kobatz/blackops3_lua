-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local function __FUNC_268_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "MediaManager", true)
	Engine.CreateModel(registerVal2, "isBuyMoreSlot", true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MediaManager_EmblemItemLarge = registerVal2
local function __FUNC_34E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_268_ then
		__FUNC_268_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.MediaManager_EmblemItemLarge)
	registerVal2.id = "MediaManager_EmblemItemLarge"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 215.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -2.000000, 352.000000)
	registerVal3:setTopBottom(true, false, -2.000000, 217.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 215.000000)
	local function __FUNC_9E5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupEmblem(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Customization", "type", __FUNC_9E5_)
	registerVal2:addElement(registerVal4)
	registerVal2.DrawEmblem = registerVal4
	local registerVal5 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -2.000000, 352.000000)
	registerVal5:setTopBottom(true, false, -2.000000, 217.000000)
	registerVal5:setAlpha(0.850000)
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenuframenoBG0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A7C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DrawEmblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.850000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A7C_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_C47_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DrawEmblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C47_
	registerVal6.Hidden = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Hidden"
	local function __FUNC_E05_(arg0, arg2, arg3)
		local registerVal3 = MediaManagerSlotsUsed(arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_E05_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "MediaManager.slotsUsed")
	local function __FUNC_E63_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.slotsUsed"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_E63_)
	local function __FUNC_F8C_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.StartMenuframenoBG0:close()
		arg0.DrawEmblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F8C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MediaManager_EmblemItemLarge.new = __FUNC_34E_
