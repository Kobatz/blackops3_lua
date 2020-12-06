-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.KillcamWidgetTeamNameR = registerVal1
function CoD.KillcamWidgetTeamNameR.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KillcamWidgetTeamNameR)
	registerVal2.id = "KillcamWidgetTeamNameR"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 292.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	local registerVal3 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 3.000000)
	registerVal3:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.cacItemTitleGlow0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -52.930000, 49.070000)
	registerVal4:setTopBottom(false, false, -30.000000, 43.000000)
	registerVal4:setAlpha(0.140000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, true, -292.000000, -5.930000)
	registerVal5:setTopBottom(false, false, -15.000000, 17.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(0.600000)
	local function __FUNC_A60_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "name", true, __FUNC_A60_)
	local function __FUNC_B1A_(arg0, arg1)
		ScaleWidgetToLabelRightAligned(registerVal2, arg0, 2.000000)
		SetStateFromText(registerVal2, arg0, "DefaultState", "NoText")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_B1A_)
	registerVal2:addElement(registerVal5)
	registerVal2.weaponNameLabel = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_BDD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.cacItemTitleGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.140000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponNameLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_BDD_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_D99_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.cacItemTitleGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.weaponNameLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D99_
	registerVal6.NoText = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "NoText"
	local function __FUNC_F50_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "NoText")
	end

	registerVal9.condition = __FUNC_F50_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_FB7_(arg0)
		arg0.cacItemTitleGlow0:close()
		arg0.weaponNameLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FB7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

