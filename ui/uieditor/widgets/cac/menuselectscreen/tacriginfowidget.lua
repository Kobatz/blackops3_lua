-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.PurchaseInstructionWidget")
require("ui.uieditor.widgets.CAC.cac_TacticalRigDescription")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.TacRigInfoWidget = registerVal1
function CoD.TacRigInfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TacRigInfoWidget)
	registerVal2.id = "TacRigInfoWidget"
	registerVal2.soundSet = "CAC_LethalGrenade"
	registerVal2:setLeftRight(true, false, 0.000000, 1000.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 600.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 19.220000, 344.650000)
	registerVal3:setTopBottom(true, false, 49.000000, 72.000000)
	registerVal3:setText(Engine.Localize(""))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.UpgradeDesc = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -500.000000, -127.270000)
	registerVal4:setTopBottom(true, false, 99.000000, 382.500000)
	registerVal4:setAlpha(0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.UpdgradeImage = registerVal4
	local registerVal5 = CoD.PurchaseInstructionWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -593.560000, -16.500000)
	registerVal5:setTopBottom(false, true, -183.000000, -90.000000)
	registerVal5.PurchaseInstruction:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal5)
	registerVal2.PurchaseInstructionWidget = registerVal5
	local registerVal6 = CoD.cac_TacticalRigDescription.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 19.220000, 425.220000)
	registerVal6:setTopBottom(true, false, 4.000000, 40.000000)
	registerVal6.UpgradeName0:setText(Engine.Localize("CYBERCOM_RIG_PLAYER_MOVEMENT_PRO"))
	registerVal2:addElement(registerVal6)
	registerVal2.cacTacticalRigDescription0 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_A24_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.UpdgradeImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.cacTacticalRigDescription0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_A24_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_B96_(arg0)
		arg0.PurchaseInstructionWidget:close()
		arg0.cacTacticalRigDescription0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B96_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

