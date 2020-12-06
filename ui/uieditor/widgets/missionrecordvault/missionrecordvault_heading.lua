-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleLine")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MissionRecordVault_Heading = registerVal1
function CoD.MissionRecordVault_Heading.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionRecordVault_Heading)
	registerVal2.id = "MissionRecordVault_Heading"
	registerVal2.soundSet = "CAC_PrimaryWeapon"
	registerVal2:setLeftRight(true, false, 0.000000, 379.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 93.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 16.000000, 715.000000)
	registerVal3:setTopBottom(true, false, 13.000000, 53.000000)
	registerVal3:setText(LocalizeToUpperString("FLYING LOTUS"))
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Title = registerVal3
	local registerVal4 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 1.000000, -31.000000)
	registerVal4:setTopBottom(false, false, 22.000000, 26.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETitleLineL = registerVal4
	local registerVal5 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 1.000000, -31.000000)
	registerVal5:setTopBottom(false, false, -45.000000, -41.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FETitleLineU = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -80.000000, 72.000000)
	registerVal6:setTopBottom(true, false, 22.000000, 30.000000)
	registerVal6:setZRot(45.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_titlebacklinediaga"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.diaglrg = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 43.000000, 79.000000)
	registerVal7:setTopBottom(true, false, -18.000000, -10.000000)
	registerVal7:setZRot(45.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlebacklinediagb"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.diagsm = registerVal7
	local function __FUNC_AA5_(arg0)
		arg0.FETitleLineL:close()
		arg0.FETitleLineU:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AA5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

