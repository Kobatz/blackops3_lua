-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordComparingPlayerInfo = registerVal1
function CoD.CombatRecordComparingPlayerInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordComparingPlayerInfo)
	registerVal2.id = "CombatRecordComparingPlayerInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -96.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -30.000000, 30.000000)
	local function __FUNC_B7B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "OtherPlayerStats", "XUID", __FUNC_B7B_)
	registerVal2:addElement(registerVal3)
	registerVal2.emblem = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, -17.000000, -100.500000)
	registerVal4:setTopBottom(false, false, -25.000000, 0.000000)
	registerVal4:setText(Engine.Localize("MENU_COMPARING_CAPS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.ComparingLabel = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, -17.000000, -100.500000)
	registerVal5:setTopBottom(false, false, 0.000000, 25.000000)
	registerVal5:setRGB(ColorSet.PartyFriendlyBlue.r, ColorSet.PartyFriendlyBlue.g, ColorSet.PartyFriendlyBlue.b)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C1C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "OtherPlayerStats", "gamertag", __FUNC_C1C_)
	registerVal2:addElement(registerVal5)
	registerVal2.ComparingGamertag = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_CB0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.emblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ComparingLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ComparingGamertag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_CB0_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_E69_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.emblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ComparingLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ComparingGamertag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_E69_
	registerVal6.Comparing = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Comparing"
	local function __FUNC_1021_(arg0, arg2, arg3)
		return IsComparingStats(arg1)
	end

	registerVal9.condition = __FUNC_1021_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "CombatRecordComparing")
	local function __FUNC_1076_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CombatRecordComparing"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_1076_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "OtherPlayerStats.InProgress")
	local function __FUNC_119F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "OtherPlayerStats.InProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_119F_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "OtherPlayerStats.Success")
	local function __FUNC_12CD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "OtherPlayerStats.Success"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_12CD_)
	local function __FUNC_13FA_(arg0)
		arg0.emblem:close()
		arg0.ComparingGamertag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13FA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

