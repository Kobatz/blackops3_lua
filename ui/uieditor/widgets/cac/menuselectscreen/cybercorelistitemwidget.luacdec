-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CPSystems.Loadout.LoadoutCoreTiles")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CybercoreListItemWidget = registerVal1
function CoD.CybercoreListItemWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CybercoreListItemWidget)
	registerVal2.id = "CybercoreListItemWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 310.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 114.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120000, 0.120000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -57.000000, 55.000000)
	registerVal4:setTopBottom(false, false, -57.000000, 55.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.icon = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 288.500000, 304.500000)
	registerVal5:setTopBottom(true, false, 4.000000, 20.000000)
	registerVal5:setRGB(0.550000, 0.770000, 0.250000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal5)
	registerVal2.equippedIcon = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FEFocusBarContainerT = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal7:setTopBottom(false, true, -8.000000, -1.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FEFocusBarContainerB = registerVal7
	local registerVal8 = CoD.LoadoutCoreTiles.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 12.000000, 210.000000)
	registerVal8:setTopBottom(true, false, 81.500000, 103.500000)
	registerVal2:addElement(registerVal8)
	registerVal2.LoadoutCoreTiles = registerVal8
	local function __FUNC_C5F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.icon:linkToElementModel(registerVal2, "icon", true, __FUNC_C5F_)
	local function __FUNC_D10_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.itemName:setText(Engine.Localize(LocalizeIntoString("CPUI_VAL1_CORE", registerVal1)))
		end
	end

	registerVal2.LoadoutCoreTiles:linkToElementModel(registerVal2, "name", true, __FUNC_D10_)
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_E28_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEFocusBarContainerT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_E28_
	local function __FUNC_FF0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEFocusBarContainerT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.Focus = __FUNC_FF0_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_11BD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEFocusBarContainerT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_11BD_
	local function __FUNC_1389_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEFocusBarContainerT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FEFocusBarContainerB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.Focus = __FUNC_1389_
	registerVal9.Equipped = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Equipped"
	local function __FUNC_1550_(arg0, arg2, arg3)
		return IsCybercoreItemEquipped(arg0, arg2, arg1)
	end

	registerVal12.condition = __FUNC_1550_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal8.id = "LoadoutCoreTiles"
	local function __FUNC_15B5_(arg0, arg1)
		local registerVal2 = arg0.LoadoutCoreTiles:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_15B5_)
	local function __FUNC_16C0_(arg0)
		arg0.FEFocusBarContainerT:close()
		arg0.FEFocusBarContainerB:close()
		arg0.LoadoutCoreTiles:close()
		arg0.icon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16C0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

