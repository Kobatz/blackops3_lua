-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordStatRing = registerVal1
function CoD.CombatRecordStatRing.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordStatRing)
	registerVal2.id = "CombatRecordStatRing"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 256.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 256.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -256.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 256.000000)
	registerVal3:setRGB(0.360000, 0.360000, 0.360000)
	registerVal3:setAlpha(0.350000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_aar_whiteringfore"))
	registerVal2:addElement(registerVal3)
	registerVal2.BGRing = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -256.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 256.000000)
	registerVal4:setRGB(0.950000, 0.910000, 0.110000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_aar_whiteringthin"))
	registerVal2:addElement(registerVal4)
	registerVal2.WinsRing = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, true, -236.000000, -20.000000)
	registerVal5:setTopBottom(true, false, 94.000000, 128.000000)
	registerVal5:setText(Engine.Localize("MENU_WLRATIO_CAPS"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.WLRatioLabel = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, true, -236.000000, -20.000000)
	registerVal6:setTopBottom(true, false, 128.000000, 168.000000)
	registerVal6:setRGB(1.000000, 0.800000, 0.400000)
	registerVal6:setText(Engine.Localize("42,000"))
	registerVal6:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.StatValue = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -256.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 256.000000)
	registerVal7:setRGB(0.380000, 0.380000, 0.380000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_aar_whiteringthinloss"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal7:setShaderVector(0.000000, 0.370000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.LossRing = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, true, -236.000000, -20.000000)
	registerVal8:setTopBottom(true, false, 168.000000, 208.000000)
	registerVal8:setRGB(ColorSet.PartyFriendlyBlue.r, ColorSet.PartyFriendlyBlue.g, ColorSet.PartyFriendlyBlue.b)
	registerVal8:setText(Engine.Localize("42,000"))
	registerVal8:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.ComparisonStatValue = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_F1E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal2.ComparisonStatValue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_F1E_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1027_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal2.ComparisonStatValue:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1027_
	registerVal9.Comparing = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Comparing"
	local function __FUNC_112A_(arg0, arg2, arg3)
		return IsComparingStats(arg1)
	end

	registerVal12.condition = __FUNC_112A_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "CombatRecordComparing")
	local function __FUNC_117E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CombatRecordComparing"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_117E_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "OtherPlayerStats.InProgress")
	local function __FUNC_12A7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "OtherPlayerStats.InProgress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_12A7_)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "OtherPlayerStats.Success")
	local function __FUNC_13D5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "OtherPlayerStats.Success"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_13D5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

