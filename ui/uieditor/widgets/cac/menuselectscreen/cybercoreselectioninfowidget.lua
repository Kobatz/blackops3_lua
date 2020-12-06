-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_CybercoreMainTile")
require("ui.uieditor.widgets.CAC.cac_CybercoreDescription")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_Texture")
require("ui.uieditor.widgets.AbilityWheel.AbilityWheel_IconHex")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreSelectionAbilityWidget")
require("ui.uieditor.widgets.Safehouse.LoadoutsAbilityWheel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CybercoreSelectionInfoWidget = registerVal1
function CoD.CybercoreSelectionInfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CybercoreSelectionInfoWidget)
	registerVal2.id = "CybercoreSelectionInfoWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 780.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 586.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_CybercoreMainTile.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal3:setTopBottom(true, false, 48.000000, 84.000000)
	local function __FUNC_1E07_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.name:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "name", true, __FUNC_1E07_)
	registerVal2:addElement(registerVal3)
	registerVal2.cacCybercoreMainTile0 = registerVal3
	local registerVal4 = CoD.cac_CybercoreDescription.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 432.000000)
	registerVal4:setTopBottom(true, false, 100.500000, 125.500000)
	local function __FUNC_1ED8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "desc", true, __FUNC_1ED8_)
	registerVal2:addElement(registerVal4)
	registerVal2.cacCybercoreDescription0 = registerVal4
	local registerVal5 = CoD.AbilityWheel_Texture.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 780.000000)
	registerVal5:setTopBottom(true, false, 65.000000, 586.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Texture = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 15.250000, 204.750000)
	registerVal6:setTopBottom(false, false, -63.500000, 126.000000)
	registerVal6:setScale(0.900000)
	local function __FUNC_1FB3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "icon", true, __FUNC_1FB3_)
	registerVal2:addElement(registerVal6)
	registerVal2.cybercoreIcon = registerVal6
	local registerVal7 = CoD.AbilityWheel_IconHex.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -89.750000, 0.500000)
	registerVal7:setTopBottom(false, false, -111.710000, -6.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZRot(-300.000000)
	registerVal7:setScale(0.900000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.AbilityWheelIconHex2 = registerVal7
	local registerVal8 = CoD.CybercoreSelectionAbilityWidget.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -83.500000, -1.500000)
	registerVal8:setTopBottom(false, false, -107.000000, -12.000000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_2064_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "AbilityWheelWeapon2", false, __FUNC_2064_)
	registerVal2:addElement(registerVal8)
	registerVal2.CybercoreSelectionAbilityWidget2 = registerVal8
	local registerVal9 = CoD.AbilityWheel_IconHex.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -89.500000, 0.750000)
	registerVal9:setTopBottom(false, false, 77.140000, 182.860000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZRot(-229.000000)
	registerVal9:setScale(0.900000)
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.AbilityWheelIconHex3 = registerVal9
	local registerVal10 = CoD.CybercoreSelectionAbilityWidget.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -85.500000, -3.500000)
	registerVal10:setTopBottom(false, false, 80.500000, 175.500000)
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_20B6_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "AbilityWheelWeapon3", false, __FUNC_20B6_)
	registerVal2:addElement(registerVal10)
	registerVal2.CybercoreSelectionAbilityWidget3 = registerVal10
	local registerVal11 = CoD.AbilityWheel_IconHex.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, 63.880000, 154.120000)
	registerVal11:setTopBottom(false, false, 155.500000, 258.210000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZRot(-180.000000)
	registerVal11:setScale(0.900000)
	registerVal11:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.AbilityWheelIconHex4 = registerVal11
	local registerVal12 = CoD.CybercoreSelectionAbilityWidget.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, 68.000000, 150.000000)
	registerVal12:setTopBottom(false, false, 155.500000, 250.500000)
	registerVal12:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_2106_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "AbilityWheelWeapon4", false, __FUNC_2106_)
	registerVal2:addElement(registerVal12)
	registerVal2.CybercoreSelectionAbilityWidget4 = registerVal12
	local registerVal13 = CoD.AbilityWheel_IconHex.new(arg0, arg1)
	registerVal13:setLeftRight(false, false, 211.250000, 301.500000)
	registerVal13:setTopBottom(false, false, 70.000000, 175.710000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setZRot(-130.000000)
	registerVal13:setScale(0.900000)
	registerVal13:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.AbilityWheelIconHex5 = registerVal13
	local registerVal14 = CoD.CybercoreSelectionAbilityWidget.new(arg0, arg1)
	registerVal14:setLeftRight(false, false, 214.500000, 296.500000)
	registerVal14:setTopBottom(false, false, 70.500000, 165.500000)
	registerVal14:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_2156_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, "AbilityWheelWeapon5", false, __FUNC_2156_)
	registerVal2:addElement(registerVal14)
	registerVal2.CybercoreSelectionAbilityWidget5 = registerVal14
	local registerVal15 = CoD.AbilityWheel_IconHex.new(arg0, arg1)
	registerVal15:setLeftRight(false, false, 213.500000, 303.750000)
	registerVal15:setTopBottom(false, false, -112.280000, -6.570000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setZRot(-58.000000)
	registerVal15:setScale(0.900000)
	registerVal15:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.AbilityWheelIconHex6 = registerVal15
	local registerVal16 = CoD.CybercoreSelectionAbilityWidget.new(arg0, arg1)
	registerVal16:setLeftRight(false, false, 216.500000, 298.500000)
	registerVal16:setTopBottom(false, false, -106.000000, -11.000000)
	registerVal16:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_21A6_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, "AbilityWheelWeapon6", false, __FUNC_21A6_)
	registerVal2:addElement(registerVal16)
	registerVal2.CybercoreSelectionAbilityWidget6 = registerVal16
	local registerVal17 = CoD.CybercoreSelectionAbilityWidget.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, 69.000000, 151.000000)
	registerVal17:setTopBottom(false, false, -185.710000, -90.710000)
	registerVal17:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_21F6_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, "AbilityWheelWeapon1", false, __FUNC_21F6_)
	registerVal2:addElement(registerVal17)
	registerVal2.CybercoreSelectionAbilityWidget1 = registerVal17
	local registerVal18 = CoD.AbilityWheel_IconHex.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, -264.500000, -174.250000)
	registerVal18:setTopBottom(false, false, -22.420000, 83.290000)
	registerVal18:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.AbilityWheelIconHex7 = registerVal18
	local registerVal19 = CoD.CybercoreSelectionAbilityWidget.new(arg0, arg1)
	registerVal19:setLeftRight(false, false, -261.500000, -179.500000)
	registerVal19:setTopBottom(false, false, -15.860000, 79.140000)
	registerVal19:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	local function __FUNC_2246_(arg0)
		registerVal19:setModel(arg0, arg1)
	end

	registerVal19:linkToElementModel(registerVal2, "AbilityWheelContextualWeapon1", false, __FUNC_2246_)
	registerVal2:addElement(registerVal19)
	registerVal2.CybercoreSelectionContextualAbilityWidget = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, false, -18.000000, 238.000000)
	registerVal20:setTopBottom(false, false, -97.710000, 158.290000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setImage(RegisterImage("uie_t7_mp_icon_loadout_center"))
	registerVal2:addElement(registerVal20)
	registerVal2.Hectagone = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, false, -123.880000, 348.710000)
	registerVal21:setTopBottom(false, false, -208.210000, 264.380000)
	registerVal21:setAlpha(0.650000)
	registerVal21:setScale(0.900000)
	registerVal21:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_gradcenter"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.OuterCircle = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(false, false, -34.380000, 246.380000)
	registerVal22:setTopBottom(false, false, -107.560000, 173.190000)
	registerVal22:setAlpha(0.650000)
	registerVal22:setScale(0.900000)
	registerVal22:setImage(RegisterImage("uie_t7_cp_hud_abilitywheel_gradcenter"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.CenterCircle = registerVal22
	local registerVal23 = CoD.LoadoutsAbilityWheel.new(arg0, arg1)
	registerVal23:setLeftRight(false, false, 62.380000, 152.620000)
	registerVal23:setTopBottom(false, false, -196.210000, -90.500000)
	registerVal2:addElement(registerVal23)
	registerVal2.LoadoutsAbilityWheel1 = registerVal23
	local registerVal24 = CoD.LoadoutsAbilityWheel.new(arg0, arg1)
	registerVal24:setLeftRight(false, false, -90.250000, 0.000000)
	registerVal24:setTopBottom(false, false, -112.360000, -6.640000)
	registerVal24:setZRot(-300.000000)
	registerVal2:addElement(registerVal24)
	registerVal2.LoadoutsAbilityWheel2 = registerVal24
	local registerVal25 = CoD.LoadoutsAbilityWheel.new(arg0, arg1)
	registerVal25:setLeftRight(false, false, -89.750000, 0.500000)
	registerVal25:setTopBottom(false, false, 77.140000, 182.860000)
	registerVal25:setZRot(-230.000000)
	registerVal2:addElement(registerVal25)
	registerVal2.LoadoutsAbilityWheel3 = registerVal25
	local registerVal26 = CoD.LoadoutsAbilityWheel.new(arg0, arg1)
	registerVal26:setLeftRight(false, false, 63.880000, 154.120000)
	registerVal26:setTopBottom(false, false, 155.000000, 260.710000)
	registerVal26:setZRot(-180.000000)
	registerVal2:addElement(registerVal26)
	registerVal2.LoadoutsAbilityWheel4 = registerVal26
	local registerVal27 = CoD.LoadoutsAbilityWheel.new(arg0, arg1)
	registerVal27:setLeftRight(false, false, 210.250000, 300.500000)
	registerVal27:setTopBottom(false, false, 70.140000, 175.860000)
	registerVal27:setZRot(-130.000000)
	registerVal2:addElement(registerVal27)
	registerVal2.LoadoutsAbilityWheel5 = registerVal27
	local registerVal28 = CoD.LoadoutsAbilityWheel.new(arg0, arg1)
	registerVal28:setLeftRight(false, false, 213.500000, 303.750000)
	registerVal28:setTopBottom(false, false, -111.360000, -5.640000)
	registerVal28:setZRot(-60.000000)
	registerVal2:addElement(registerVal28)
	registerVal2.LoadoutsAbilityWheel6 = registerVal28
	local function __FUNC_2296_(arg0)
		arg0.cacCybercoreMainTile0:close()
		arg0.cacCybercoreDescription0:close()
		arg0.Texture:close()
		arg0.AbilityWheelIconHex2:close()
		arg0.CybercoreSelectionAbilityWidget2:close()
		arg0.AbilityWheelIconHex3:close()
		arg0.CybercoreSelectionAbilityWidget3:close()
		arg0.AbilityWheelIconHex4:close()
		arg0.CybercoreSelectionAbilityWidget4:close()
		arg0.AbilityWheelIconHex5:close()
		arg0.CybercoreSelectionAbilityWidget5:close()
		arg0.AbilityWheelIconHex6:close()
		arg0.CybercoreSelectionAbilityWidget6:close()
		arg0.CybercoreSelectionAbilityWidget1:close()
		arg0.AbilityWheelIconHex7:close()
		arg0.CybercoreSelectionContextualAbilityWidget:close()
		arg0.LoadoutsAbilityWheel1:close()
		arg0.LoadoutsAbilityWheel2:close()
		arg0.LoadoutsAbilityWheel3:close()
		arg0.LoadoutsAbilityWheel4:close()
		arg0.LoadoutsAbilityWheel5:close()
		arg0.LoadoutsAbilityWheel6:close()
		arg0.cybercoreIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2296_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

