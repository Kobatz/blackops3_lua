-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_MemberBlurPanelContainer")
require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Competitive_LobbyWidget_Title = registerVal1
function CoD.Competitive_LobbyWidget_Title.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Competitive_LobbyWidget_Title)
	registerVal2.id = "Competitive_LobbyWidget_Title"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 418.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_MemberBlurPanelContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.FEMemberBlurPanel0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEMemberBlurPanelContainer0 = registerVal3
	local registerVal4 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.500000, 2.500000)
	registerVal4:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal4:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal4)
	registerVal2.TitleGlow1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -53.430000, 48.570000)
	registerVal5:setTopBottom(false, false, -30.000000, 43.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Glow = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 3.000000, 552.000000)
	registerVal6:setTopBottom(false, false, -13.000000, 13.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setText(Engine.Localize(LocalizeIntoString("", "Care Package")))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(0.600000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C23_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_C23_)
	registerVal2:addElement(registerVal6)
	registerVal2.Title = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_C81_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_C81_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_CE2_(arg0)
		arg0.FEMemberBlurPanelContainer0:close()
		arg0.TitleGlow1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CE2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

