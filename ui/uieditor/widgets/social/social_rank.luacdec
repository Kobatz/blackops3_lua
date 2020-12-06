-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.Social_RanksFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Social.Social_Rank_PrestigeText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_Rank = registerVal1
function CoD.Social_Rank.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_Rank)
	registerVal2.id = "Social_Rank"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 115.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 1.000000, 79.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 113.000000)
	registerVal3:setAlpha(0.050000)
	registerVal2:addElement(registerVal3)
	registerVal2.WhiteBox = registerVal3
	local registerVal4 = CoD.Social_RanksFrame.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 115.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.SocialRanksFrame = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal5:setTopBottom(false, true, -17.000000, -3.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.gameModeBG = registerVal5
	local registerVal6 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -39.000000, 39.000000)
	registerVal6:setTopBottom(true, false, 117.000000, 135.500000)
	registerVal6:setAlpha(0.650000)
	registerVal2:addElement(registerVal6)
	registerVal2.ImageBorder = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -38.000000, 38.000000)
	registerVal7:setTopBottom(false, false, 60.250000, 78.250000)
	registerVal7:setRGB(0.580000, 0.640000, 0.650000)
	registerVal7:setText(Engine.Localize("35"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.level = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -31.500000, 31.500000)
	registerVal8:setTopBottom(false, true, -93.000000, -30.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.rankIconAdd = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -40.000000, 39.000000)
	registerVal9:setTopBottom(false, true, -17.000000, -3.000000)
	registerVal9:setScale(LanguageOverrideNumber("japanese", 0.800000, 1.000000))
	registerVal9:setText(Engine.Localize("MENU_GAMETYPE_CAPS"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setLetterSpacing(LanguageOverrideNumber("japanese", -4.000000, 0.000000))
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.GameMode = registerVal9
	local registerVal10 = CoD.Social_Rank_PrestigeText.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -55.000000, 55.000000)
	registerVal10:setTopBottom(false, false, -73.500000, -55.500000)
	registerVal10.prestige:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal10)
	registerVal2.prestige = registerVal10
	local function __FUNC_E4D_(arg0)
		arg0.SocialRanksFrame:close()
		arg0.ImageBorder:close()
		arg0.prestige:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E4D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

