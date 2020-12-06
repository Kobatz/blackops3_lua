-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.scorestreakRequirementLabel = registerVal1
function CoD.scorestreakRequirementLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.scorestreakRequirementLabel)
	registerVal2.id = "scorestreakRequirementLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 55.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 14.000000, -15.000000)
	registerVal3:setTopBottom(true, true, -2.000000, -2.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.cacButtonBoxLrgInactive0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 17.000000, -18.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.labelBacking = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -57.000000, 55.000000)
	registerVal5:setTopBottom(true, false, 1.000000, 21.000000)
	registerVal5:setText(Engine.Localize(LocalizeToUpperString("MENU_SCORE")))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.scorestreakRequirementLabel = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -57.000000, 55.000000)
	registerVal6:setTopBottom(true, false, 23.500000, 49.500000)
	registerVal6:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A9D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(GetScorestreakMomentumFromIndex(registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_A9D_)
	registerVal2:addElement(registerVal6)
	registerVal2.score = registerVal6
	local function __FUNC_B87_(arg0)
		arg0.cacButtonBoxLrgInactive0:close()
		arg0.score:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B87_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

