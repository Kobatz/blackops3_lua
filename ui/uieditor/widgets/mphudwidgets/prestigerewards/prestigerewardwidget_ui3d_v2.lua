-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.prestigeRewardWidget_UI3D_v2 = registerVal1
function CoD.prestigeRewardWidget_UI3D_v2.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.prestigeRewardWidget_UI3D_v2)
	registerVal2.id = "prestigeRewardWidget_UI3D_v2"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 153.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -62.400000, -41.600000)
	registerVal3:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	local function __FUNC_897_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(SetValueIfEmptyString("-", GetRightAlignedCharacter(1.000000, 6.000000, registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", "weaponPrestigeUI3DText", __FUNC_897_)
	registerVal2:addElement(registerVal3)
	registerVal2.digit1 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -41.600000, -20.800000)
	registerVal4:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal4:setTTF("fonts/FoundryGridnik-Medium.ttf")
	local function __FUNC_99A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(SetValueIfEmptyString("-", GetRightAlignedCharacter(2.000000, 6.000000, registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentWeapon", "weaponPrestigeUI3DText", __FUNC_99A_)
	registerVal2:addElement(registerVal4)
	registerVal2.digit2 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, false, -20.800000, 0.000000)
	registerVal5:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal5:setTTF("fonts/FoundryGridnik-Medium.ttf")
	local function __FUNC_A9E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(SetValueIfEmptyString("-", GetRightAlignedCharacter(3.000000, 6.000000, registerVal1)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CurrentWeapon", "weaponPrestigeUI3DText", __FUNC_A9E_)
	registerVal2:addElement(registerVal5)
	registerVal2.digit3 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, false, 0.000000, 20.800000)
	registerVal6:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	local function __FUNC_BA2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(SetValueIfEmptyString("-", GetRightAlignedCharacter(4.000000, 6.000000, registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "CurrentWeapon", "weaponPrestigeUI3DText", __FUNC_BA2_)
	registerVal2:addElement(registerVal6)
	registerVal2.digit4 = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(false, false, 20.800000, 41.600000)
	registerVal7:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal7:setTTF("fonts/FoundryGridnik-Medium.ttf")
	local function __FUNC_CA6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(SetValueIfEmptyString("-", GetRightAlignedCharacter(5.000000, 6.000000, registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "CurrentWeapon", "weaponPrestigeUI3DText", __FUNC_CA6_)
	registerVal2:addElement(registerVal7)
	registerVal2.digit5 = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(false, false, 41.600000, 62.400000)
	registerVal8:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal8:setTTF("fonts/FoundryGridnik-Medium.ttf")
	local function __FUNC_DAA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(SetValueIfEmptyString("-", GetRightAlignedCharacter(6.000000, 6.000000, registerVal1)))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "CurrentWeapon", "weaponPrestigeUI3DText", __FUNC_DAA_)
	registerVal2:addElement(registerVal8)
	registerVal2.digit6 = registerVal8
	local function __FUNC_EA9_(arg0)
		arg0.digit1:close()
		arg0.digit2:close()
		arg0.digit3:close()
		arg0.digit4:close()
		arg0.digit5:close()
		arg0.digit6:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EA9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

