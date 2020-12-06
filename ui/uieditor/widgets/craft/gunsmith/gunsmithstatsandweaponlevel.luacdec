-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithStats")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithWeaponLevel")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithWarningWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithStatsAndWeaponLevel = registerVal1
function CoD.GunsmithStatsAndWeaponLevel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithStatsAndWeaponLevel)
	registerVal2.id = "GunsmithStatsAndWeaponLevel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 566.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 143.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GunsmithStats.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 24.000000, 26.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal3:setScale(0.900000)
	local function __FUNC_BA3_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_BA3_)
	registerVal2:addElement(registerVal3)
	registerVal2.stats = registerVal3
	local registerVal4 = CoD.GunsmithWeaponLevel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 153.000000, 566.000000)
	registerVal4:setTopBottom(true, false, 76.000000, 116.000000)
	registerVal4.levelLabel.Label1:setText(Engine.Localize("MPUI_WEAPON_LEVEL_CAPS"))
	registerVal4.levelLabel.Label1:setTTF("fonts/escom.ttf")
	local function __FUNC_BF2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.currentLevelBacking:setText(Engine.Localize(GetGunsmithCurrentWeaponLevel(arg1, registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GunsmithSnapshot", "SessionMode", __FUNC_BF2_)
	local function __FUNC_D06_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.currentLevel:setText(Engine.Localize(GetGunsmithCurrentWeaponLevel(arg1, registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GunsmithSnapshot", "SessionMode", __FUNC_D06_)
	local function __FUNC_E13_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.cacWpnLvlMeter0.Meter:setShaderVector(0.000000, GetGunsmithCurrentWeaponXP(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GunsmithSnapshot", "SessionMode", __FUNC_E13_)
	local function __FUNC_FD8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.nextLevel:setText(Engine.Localize(GetGunsmithNextWeaponLevel(arg1, registerVal1)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "GunsmithSnapshot", "SessionMode", __FUNC_FD8_)
	local function __FUNC_10E1_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_10E1_)
	registerVal2:addElement(registerVal4)
	registerVal2.weaponProgression = registerVal4
	local registerVal5 = CoD.GunsmithWarningWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 231.000000, 566.000000)
	registerVal5:setTopBottom(true, false, 116.000000, 143.000000)
	registerVal5.warningMsg.text:setText(Engine.Localize("MENU_GUNSMITH_VARIANT_CHANGED_WARNING"))
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Hide"
	local function __FUNC_1132_(arg0, arg2, arg3)
		local registerVal3 = Gunsmith_IsCurrentVariantChanged(arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_1132_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.warningMsg = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_119A_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.stats:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.weaponProgression:setLeftRight(true, false, 153.000000, 566.000000)
		registerVal2.weaponProgression:setTopBottom(true, false, 76.000000, 116.000000)
		registerVal2.weaponProgression:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.warningMsg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_119A_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_13DC_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.stats:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.weaponProgression:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.warningMsg:setLeftRight(true, false, 190.000000, 566.000000)
		registerVal2.warningMsg:setTopBottom(true, false, 116.000000, 140.000000)
		registerVal2.warningMsg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_13DC_
	registerVal6.StatsAndWeaponLevelHide = registerVal7
	registerVal7 = {}
	local function __FUNC_1620_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.stats:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.weaponProgression:setLeftRight(true, false, 151.000000, 566.000000)
		registerVal2.weaponProgression:setTopBottom(true, false, 0.000000, 40.000000)
		registerVal2.weaponProgression:setAlpha(1.000000)
		registerVal2.weaponProgression:setXRot(0.000000)
		registerVal2.weaponProgression:setYRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.warningMsg:setLeftRight(true, false, 190.000000, 566.000000)
		registerVal2.warningMsg:setTopBottom(true, false, 119.000000, 143.000000)
		registerVal2.warningMsg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1620_
	registerVal6.StatsHide = registerVal7
	registerVal7 = {}
	local function __FUNC_191D_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.stats:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.weaponProgression:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.warningMsg:setLeftRight(true, false, 226.000000, 562.000000)
		registerVal2.warningMsg:setTopBottom(true, false, 80.000000, 104.000000)
		registerVal2.warningMsg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_191D_
	registerVal6.WeaponLevelHide = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_1B65_(arg0)
		UpdateElementState(registerVal2, "weaponProgression", arg1)
	end

	registerVal2:subscribeToGlobalModel(arg1, "GunsmithSnapshot", "SessionMode", __FUNC_1B65_)
	local function __FUNC_1BDF_(arg0)
		arg0.stats:close()
		arg0.weaponProgression:close()
		arg0.warningMsg:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1BDF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

