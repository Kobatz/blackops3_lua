-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuSelectScreen.TacRigInfoWidget")
require("ui.uieditor.widgets.CAC.UnlockTokensWidget")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TacRigUpgradeWidget = registerVal1
function CoD.TacRigUpgradeWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TacRigUpgradeWidget)
	registerVal2.id = "TacRigUpgradeWidget"
	registerVal2.soundSet = "CAC_LethalGrenade"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.TacRigInfoWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 424.000000, 1216.000000)
	registerVal3:setTopBottom(true, false, 124.000000, 684.000000)
	registerVal3.UpgradeDesc:setText(Engine.Localize(""))
	registerVal3.PurchaseInstructionWidget.PurchaseInstruction:setText(Engine.Localize(""))
	registerVal3.cacTacticalRigDescription0.UpgradeName0:setText(Engine.Localize("CYBERCOM_RIG_PLAYER_MOVEMENT_PRO"))
	registerVal2:addElement(registerVal3)
	registerVal2.TacRigInfoWidget = registerVal3
	local registerVal4 = CoD.UnlockTokensWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 961.500000, 1171.500000)
	registerVal4:setTopBottom(true, false, 39.500000, 73.500000)
	registerVal4.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.UnlockTokensWidget = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 351.000000, 1087.000000)
	registerVal5:setTopBottom(true, false, -210.000000, -162.000000)
	registerVal5:setText(Engine.Localize(""))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.UpgradeTitle = registerVal5
	local registerVal6 = CoD.cac_3dTitleIntermediary.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 24.000000, 736.000000)
	registerVal6:setTopBottom(true, false, 0.500000, 146.500000)
	registerVal6.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("CPUI_PLAYER_MOVEMENT_UPGRADES"))
	registerVal2:addElement(registerVal6)
	registerVal2.cac3dTitleIntermediary = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 0.000000, 736.000000)
	registerVal7:setTopBottom(true, false, -81.000000, -35.000000)
	registerVal7:setText(Engine.Localize(""))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.UpgradeTitle0 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_BB3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.cac3dTitleIntermediary:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_BB3_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_CB9_(arg0)
		arg0.TacRigInfoWidget:close()
		arg0.UnlockTokensWidget:close()
		arg0.cac3dTitleIntermediary:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CB9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

