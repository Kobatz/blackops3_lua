-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuSelectScreen.CybercoreMulticoreWidget")
require("ui.uieditor.widgets.CPSystems.Loadout.cyberCoreTiles")
require("ui.uieditor.widgets.CPSystems.Loadout.ChangeCybercoreLabel")
require("ui.uieditor.widgets.CPSystems.Loadout.MultiCoreTitle")
local function __FUNC_31B_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	local function __FUNC_3B1_(arg0, arg2)
		CoD.PCUtil.SimulateButtonPress(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	arg0:registerEventHandler("button_action", __FUNC_3B1_)
end

local function __FUNC_497_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_31B_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.CybercoreLoadoutWidget = registerVal3
local function __FUNC_507_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CybercoreLoadoutWidget)
	registerVal2.id = "CybercoreLoadoutWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 293.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 179.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, 25.000000, 2.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120000, 0.120000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 2.000000, 258.500000)
	registerVal4:setTopBottom(true, false, 150.000000, 173.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Backing = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -77.000000, 77.000000)
	registerVal5:setTopBottom(true, true, 25.000000, 0.000000)
	registerVal5:setScale(0.800000)
	registerVal5:setImage(RegisterImage(GetItemImageFromIndex(GetCybercoreItemIndex(arg1, "uie_t7_hud_ks_carepackage_menu"))))
	registerVal2:addElement(registerVal5)
	registerVal2.cybercoreIcon = registerVal5
	local registerVal6 = CoD.CybercoreMulticoreWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 174.000000, 293.000000)
	registerVal6:setTopBottom(true, false, 25.000000, 115.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6.icon:setImage(RegisterImage(GetItemImageFromIndex(GetEquippedCybercoreItemIndex(arg1, "uie_t7_hud_ks_carepackage_menu"))))
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Active"
	local function __FUNC_1290_(arg0, arg2, arg3)
		return IsMulticoreActivated(arg1)
	end

	registerVal10.condition = __FUNC_1290_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.CybercoreMulticoreWidget0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 3.000000, -3.000000)
	registerVal7:setTopBottom(true, false, 144.750000, 160.750000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("FEATURE_MULTICORE_DESC"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.multicoreInstruction = registerVal7
	local registerVal8 = CoD.cyberCoreTiles.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 291.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.cyberCoreTiles = registerVal8
	registerVal9 = CoD.ChangeCybercoreLabel.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 2.000000, 258.500000)
	registerVal9:setTopBottom(true, false, 157.000000, 179.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.ChangeCybercoreLabel = registerVal9
	registerVal10 = CoD.MultiCoreTitle.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 1.000000, 291.000000)
	registerVal10:setTopBottom(true, false, 26.000000, 49.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.MultiCoreTitle = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -94.000000, 134.000000)
	registerVal11:setTopBottom(true, true, -35.210000, 45.210000)
	registerVal11:setRGB(0.910000, 1.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Glow2 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_12EA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.clipFinished(registerVal3, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_12EA_
	local function __FUNC_140D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.clipFinished(registerVal3, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Over = __FUNC_140D_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1531_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.multicoreInstruction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.ChangeCybercoreLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1531_
	local function __FUNC_16F6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.multicoreInstruction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.ChangeCybercoreLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Over = __FUNC_16F6_
	registerVal12.Multicore = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Multicore"
	local function __FUNC_18BF_(arg0, arg2, arg3)
		return IsMulticoreActivated(arg1)
	end

	registerVal15.condition = __FUNC_18BF_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_1916_(arg0)
		arg0.CybercoreMulticoreWidget0:close()
		arg0.cyberCoreTiles:close()
		arg0.ChangeCybercoreLabel:close()
		arg0.MultiCoreTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1916_)
	if __FUNC_497_ then
		__FUNC_497_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CybercoreLoadoutWidget.new = __FUNC_507_
