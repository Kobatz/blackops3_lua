-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.ChargeShot.ChargeShot_reticle_ui3d")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChargeShot_reticle = registerVal1
function CoD.ChargeShot_reticle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChargeShot_reticle)
	registerVal2.id = "ChargeShot_reticle"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 600.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ChargeShot_reticle_ui3d.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -349.200000, 349.200000)
	registerVal3:setTopBottom(false, false, -296.000000, 294.360000)
	Engine.SetupUI3DWindow(arg1, 3.000000, 698.394000, 590.360000)
	registerVal3:setUI3DWindow(3.000000)
	local function __FUNC_633_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", nil, __FUNC_633_)
	registerVal2:addElement(registerVal3)
	registerVal2.ui3d = registerVal3
	local function __FUNC_682_(arg0)
		arg0.ui3d:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_682_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

