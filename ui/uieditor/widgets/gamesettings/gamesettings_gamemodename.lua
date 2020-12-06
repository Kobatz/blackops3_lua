-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_textboxBG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameSettings_GameModeName = registerVal1
function CoD.GameSettings_GameModeName.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_GameModeName)
	registerVal2.id = "GameSettings_GameModeName"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 489.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 38.000000)
	local registerVal3 = CoD.GameSettings_textboxBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GameSettingstextboxBG = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 11.750000, 477.250000)
	registerVal4:setTopBottom(true, false, 6.000000, 32.000000)
	registerVal4:setText(Engine.Localize(LocalizedGameType("Domination")))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setLetterSpacing(1.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.GameModeTextBox = registerVal4
	local function __FUNC_887_(arg0)
		arg0.GameSettingstextboxBG:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_887_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

