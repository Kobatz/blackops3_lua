-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSubTitle = registerVal1
function CoD.GroupsSubTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSubTitle)
	registerVal2.id = "GroupsSubTitle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 7.000000, -4.000000)
	registerVal3:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal3:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setLetterSpacing(0.600000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8CB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "name", true, __FUNC_8CB_)
	local function __FUNC_982_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_982_)
	registerVal2:addElement(registerVal3)
	registerVal2.weaponNameLabel = registerVal3
	local registerVal4 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.500000, 0.000000)
	registerVal4:setTopBottom(true, true, -0.500000, 1.500000)
	registerVal4:setAlpha(0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedSolid000 = registerVal4
	local function __FUNC_9E1_(arg0)
		arg0.BorderBakedSolid000:close()
		arg0.weaponNameLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9E1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

