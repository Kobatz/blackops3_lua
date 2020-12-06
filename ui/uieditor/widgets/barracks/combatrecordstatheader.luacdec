-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderThin")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordStatHeader = registerVal1
function CoD.CombatRecordStatHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordStatHeader)
	registerVal2.id = "CombatRecordStatHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 124.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 56.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal3:setTopBottom(false, false, -24.500000, -3.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal3:setShaderVector(0.000000, 0.010000, 0.050000, 0.010000, 0.050000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBar = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -24.000000, -4.000000)
	registerVal4:setText(Engine.Localize("MENU_KILLS_CAPS"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.StatLabel = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -47.500000, 47.500000)
	registerVal5:setTopBottom(false, false, 0.000000, 26.000000)
	registerVal5:setRGB(1.000000, 0.800000, 0.400000)
	registerVal5:setText(Engine.Localize("42,000"))
	registerVal5:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.StatValue = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -47.500000, 47.500000)
	registerVal6:setTopBottom(false, false, 34.000000, 60.000000)
	registerVal6:setRGB(ColorSet.PartyFriendlyBlue.r, ColorSet.PartyFriendlyBlue.g, ColorSet.PartyFriendlyBlue.b)
	registerVal6:setText(Engine.Localize("42,000"))
	registerVal6:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.ComparedStatValue = registerVal6
	local registerVal7 = CoD.BorderThin.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BorderThin0 = registerVal7
	local registerVal8 = CoD.BorderThin.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 60.000000, 32.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BorderThin00 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_EB6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal2.ComparedStatValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.BorderThin00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_EB6_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1017_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal2.ComparedStatValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.BorderThin00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1017_
	registerVal9.Comparing = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Comparing"
	local function __FUNC_1177_(arg0, arg2, arg3)
		return IsComparingStats(arg1)
	end

	registerVal12.condition = __FUNC_1177_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "CombatRecordComparing")
	local function __FUNC_11CA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CombatRecordComparing"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_11CA_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "OtherPlayerStats.InProgress")
	local function __FUNC_12F3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "OtherPlayerStats.InProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_12F3_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "OtherPlayerStats.Success")
	local function __FUNC_1421_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "OtherPlayerStats.Success"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_1421_)
	local function __FUNC_154E_(arg0)
		arg0.BorderThin0:close()
		arg0.BorderThin00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_154E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

