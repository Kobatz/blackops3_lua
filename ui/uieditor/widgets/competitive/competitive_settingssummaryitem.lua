-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_MemberBlurPanelContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Competitive_SettingsSummaryItem = registerVal1
function CoD.Competitive_SettingsSummaryItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Competitive_SettingsSummaryItem)
	registerVal2.id = "Competitive_SettingsSummaryItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 275.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 70.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -1.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBack = registerVal3
	local registerVal4 = CoD.FE_MemberBlurPanelContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal4.FEMemberBlurPanel0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEMemberBlurPanelContainer0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 7.000000, 272.000000)
	registerVal5:setTopBottom(true, false, 6.000000, 24.000000)
	registerVal5:setText(Engine.Localize("MENU_BAN_PROTECT_ACTIVE_CAPS"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(0.500000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 7.000000, 272.000000)
	registerVal6:setTopBottom(true, false, 23.500000, 43.500000)
	registerVal6:setText(Engine.Localize("MENU_BAN_PROTECT_ACTIVE_DESC"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setLineSpacing(-3.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.Description = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_BD0_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_BD0_
	local function __FUNC_C32_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.FadeIn = __FUNC_C32_
	local function __FUNC_C92_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.HideForGameStart = __FUNC_C92_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_CF2_(arg0)
		arg0.FEMemberBlurPanelContainer0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CF2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

