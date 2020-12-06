-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.WeaponBuildKits.WeaponBuildKitsVariantAttachments")
require("ui.uieditor.widgets.CAC.cac_WpnLvl")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponBuildKitsVariantAttachmentList = registerVal1
function CoD.WeaponBuildKitsVariantAttachmentList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponBuildKitsVariantAttachmentList)
	registerVal2.id = "WeaponBuildKitsVariantAttachmentList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponBuildKitsVariantAttachments.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -566.470000, 240.870000)
	registerVal3:setTopBottom(false, true, -181.870000, -81.870000)
	local function __FUNC_914_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_914_)
	registerVal2:addElement(registerVal3)
	registerVal2.variantAttachments = registerVal3
	local registerVal4 = CoD.cac_WpnLvl.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 772.870000, 1187.870000)
	registerVal4:setTopBottom(false, true, -131.000000, -91.000000)
	registerVal4.levelLabel.Label1:setText(Engine.Localize("MPUI_WEAPON_LEVEL_CAPS"))
	registerVal4.levelLabel.Label1:setTTF("fonts/escom.ttf")
	local function __FUNC_966_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_966_)
	local function __FUNC_9B6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.currentLevelBacking:setText(Engine.Localize(GetCurrentWeaponLevel(arg1, registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "weaponIndex", true, __FUNC_9B6_)
	local function __FUNC_AC2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.currentLevel:setText(Engine.Localize(GetCurrentWeaponLevel(arg1, registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "weaponIndex", true, __FUNC_AC2_)
	local function __FUNC_BC7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.cacWpnLvlMeter0.Meter:setShaderVector(0.000000, GetCurrentWeaponXP(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "weaponIndex", true, __FUNC_BC7_)
	local function __FUNC_D84_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4.cacWpnLvlMeter0.Meter2XP:setShaderVector(0.000000, GetCurrentWeaponXP(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "weaponIndex", true, __FUNC_D84_)
	local function __FUNC_F47_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.nextLevel:setText(Engine.Localize(GetNextWeaponLevel(arg1, registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "weaponIndex", true, __FUNC_F47_)
	registerVal2:addElement(registerVal4)
	registerVal2.cacWpnLvl = registerVal4
	registerVal3.id = "variantAttachments"
	local function __FUNC_1045_(arg0, arg1)
		local registerVal2 = arg0.variantAttachments:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1045_)
	local function __FUNC_1152_(arg0)
		arg0.variantAttachments:close()
		arg0.cacWpnLvl:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1152_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

