-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordGameModeStat = registerVal1
function CoD.CombatRecordGameModeStat.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordGameModeStat)
	registerVal2.id = "CombatRecordGameModeStat"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 166.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -164.000000, -153.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 29.500000)
	registerVal3:setRGB(0.950000, 0.910000, 0.110000)
	registerVal2:addElement(registerVal3)
	registerVal2.WinsColorImage = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 96.000000, 166.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4:setAlpha(0.800000)
	registerVal2:addElement(registerVal4)
	registerVal2.StartMenuframenoBG0 = registerVal4
	local registerVal5 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 101.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal5:setAlpha(0.800000)
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenuframenoBG00 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, true, -145.000000, -70.000000)
	registerVal6:setTopBottom(true, false, 5.750000, 25.750000)
	registerVal6:setText(Engine.Localize("MENU_WINS"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.WinsLabel = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, 18.000000, 76.000000)
	registerVal7:setTopBottom(false, false, -11.000000, 9.000000)
	registerVal7:setRGB(1.000000, 0.800000, 0.400000)
	registerVal7:setText(Engine.Localize("888"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.StatValue = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, 83.000000, 141.000000)
	registerVal8:setTopBottom(false, false, -11.000000, 9.000000)
	registerVal8:setRGB(ColorSet.PartyFriendlyBlue.r, ColorSet.PartyFriendlyBlue.g, ColorSet.PartyFriendlyBlue.b)
	registerVal8:setText(Engine.Localize("888"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.StatComparisonValue = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_E6E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal2.StatComparisonValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_E6E_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_F77_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal2.StatComparisonValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_F77_
	registerVal9.Comparison = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Comparison"
	local function __FUNC_107A_(arg0, arg2, arg3)
		return IsComparingStats(arg1)
	end

	registerVal12.condition = __FUNC_107A_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "CombatRecordComparing")
	local function __FUNC_10CE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CombatRecordComparing"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_10CE_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "OtherPlayerStats.InProgress")
	local function __FUNC_11F7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "OtherPlayerStats.InProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_11F7_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "OtherPlayerStats.Success")
	local function __FUNC_1325_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "OtherPlayerStats.Success"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_1325_)
	local function __FUNC_1452_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1452_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

