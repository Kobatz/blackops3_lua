-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CPMissionTitle = registerVal1
function CoD.CPMissionTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CPMissionTitle)
	registerVal2.id = "CPMissionTitle"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 542.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 49.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 542.100000)
	registerVal3:setTopBottom(true, false, 1.000000, 49.220000)
	registerVal3:setAlpha(0.650000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cp_vault_sec_title_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.SecTitleBG0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 4.000000, 32.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 4.220000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image31 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 4.000000, 32.000000)
	registerVal5:setTopBottom(true, false, 45.000000, 49.220000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image300 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 41.000000, 254.000000)
	registerVal6:setTopBottom(true, false, 14.110000, 36.110000)
	registerVal6:setText(Engine.Localize("MENU_MISSION_BRIEFING_CAPS"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(2.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BriefingHeading = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

