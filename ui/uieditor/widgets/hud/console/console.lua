-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Console.ConsoleEntryContainer")
local function __FUNC_21C_(arg0, arg1)
	CoD.ConsoleUtility.Init(arg0, arg1, "console")
end

local function __FUNC_2B8_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "factions.isCoDCaster")
	registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "CodCaster.profileSettingsUpdated")
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.Console = registerVal3
local function __FUNC_3D0_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_2B8_ then
		__FUNC_2B8_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Console)
	registerVal2.id = "Console"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 680.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 98.000000)
	local registerVal3 = CoD.ConsoleEntryContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 680.000000)
	registerVal3:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_DA9_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "HUDItems", "console.line0", __FUNC_DA9_)
	registerVal2:addElement(registerVal3)
	registerVal2.ConsoleEntry0 = registerVal3
	local registerVal4 = CoD.ConsoleEntryContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 680.000000)
	registerVal4:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_DFA_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "HUDItems", "console.line1", __FUNC_DFA_)
	registerVal2:addElement(registerVal4)
	registerVal2.ConsoleEntry1 = registerVal4
	local registerVal5 = CoD.ConsoleEntryContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 680.000000)
	registerVal5:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_E4A_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "console.line2", __FUNC_E4A_)
	registerVal2:addElement(registerVal5)
	registerVal2.ConsoleEntry2 = registerVal5
	local registerVal6 = CoD.ConsoleEntryContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 680.000000)
	registerVal6:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_E9A_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "HUDItems", "console.line3", __FUNC_E9A_)
	registerVal2:addElement(registerVal6)
	registerVal2.ConsoleEntry3 = registerVal6
	local registerVal7 = CoD.ConsoleEntryContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 680.000000)
	registerVal7:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_EEA_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:subscribeToGlobalModel(arg1, "HUDItems", "console.line4", __FUNC_EEA_)
	registerVal2:addElement(registerVal7)
	registerVal2.ConsoleEntry4 = registerVal7
	local registerVal8 = CoD.ConsoleEntryContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 680.000000)
	registerVal8:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_F3A_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:subscribeToGlobalModel(arg1, "HUDItems", "console.line5", __FUNC_F3A_)
	registerVal2:addElement(registerVal8)
	registerVal2.ConsoleEntry5 = registerVal8
	local registerVal9 = CoD.ConsoleEntryContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 680.000000)
	registerVal9:setTopBottom(false, true, -20.000000, 0.000000)
	local function __FUNC_F8A_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:subscribeToGlobalModel(arg1, "HUDItems", "console.line6", __FUNC_F8A_)
	registerVal2:addElement(registerVal9)
	registerVal2.ConsoleEntry6 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_FDA_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.ConsoleEntry0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ConsoleEntry1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ConsoleEntry2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ConsoleEntry3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ConsoleEntry4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ConsoleEntry5:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ConsoleEntry6:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_FDA_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_12FF_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.ConsoleEntry0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ConsoleEntry1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ConsoleEntry2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ConsoleEntry3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ConsoleEntry4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ConsoleEntry5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ConsoleEntry6:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_12FF_
	registerVal10.HideForCodCaster = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "HideForCodCaster"
	local function __FUNC_1623_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_killfeed", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1623_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "factions.isCoDCaster")
	local function __FUNC_16DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_16DC_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "CodCaster.profileSettingsUpdated")
	local function __FUNC_1806_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_1806_)
	local function __FUNC_193A_(arg0)
		arg0.ConsoleEntry0:close()
		arg0.ConsoleEntry1:close()
		arg0.ConsoleEntry2:close()
		arg0.ConsoleEntry3:close()
		arg0.ConsoleEntry4:close()
		arg0.ConsoleEntry5:close()
		arg0.ConsoleEntry6:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_193A_)
	if __FUNC_21C_ then
		__FUNC_21C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Console.new = __FUNC_3D0_
