-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithStatsBranding")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithStatsVariantName = registerVal1
function CoD.GunsmithStatsVariantName.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithStatsVariantName)
	registerVal2.id = "GunsmithStatsVariantName"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 147.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.variantNameBg = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, true, -264.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 32.000000, 56.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_AC1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "variantName", true, __FUNC_AC1_)
	registerVal2:addElement(registerVal4)
	registerVal2.variantName = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, true, -147.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 57.000000, 74.000000)
	registerVal5:setRGB(ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_B54_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(GetGunsmithItemNameByIndex(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "weaponIndex", true, __FUNC_B54_)
	registerVal2:addElement(registerVal5)
	registerVal2.weaponName = registerVal5
	local registerVal6 = CoD.GunsmithStatsBranding.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -147.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Campaign"
	local function __FUNC_C3A_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualToEnum(arg2, arg1, "GunsmithSnapshot.SessionMode", Enum.eModes.MODE_CAMPAIGN)
	end

	registerVal10.condition = __FUNC_C3A_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "GunsmithSnapshot.SessionMode")
	local function __FUNC_D1A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GunsmithSnapshot.SessionMode"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_D1A_)
	registerVal2:addElement(registerVal6)
	registerVal2.statsBranding = registerVal6
	local function __FUNC_E4A_(arg0)
		arg0.statsBranding:close()
		arg0.variantName:close()
		arg0.weaponName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E4A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

