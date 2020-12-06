-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
require("ui.uieditor.widgets.AAR.ScoreboardTab.NemesisScoreWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.NemesisWidget = registerVal1
function CoD.NemesisWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.NemesisWidget)
	registerVal2.id = "NemesisWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 228.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 102.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 19.000000, 170.000000)
	registerVal3:setTopBottom(true, false, -10.500000, 12.500000)
	registerVal3:setRGB(0.700000, 0.070000, 0.070000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEListHeaderGlow0 = registerVal3
	local registerVal4 = CoD.NemesisScoreWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 95.000000, 170.000000)
	registerVal4:setTopBottom(true, false, 13.500000, 66.500000)
	registerVal4.ScoreTitle:setText(Engine.Localize("MPUI_KILLED_BY_PRE_CAPS"))
	local function __FUNC_E5C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Score:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Scoreboard", "nemesisKilledBy", __FUNC_E5C_)
	registerVal2:addElement(registerVal4)
	registerVal2.KilledBy = registerVal4
	local registerVal5 = CoD.NemesisScoreWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 20.000000, 95.000000)
	registerVal5:setTopBottom(true, false, 13.500000, 66.500000)
	registerVal5.ScoreTitle:setText(Engine.Localize("MENU_KILLED_CAPS"))
	local function __FUNC_F31_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.Score:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Scoreboard", "nemesisKills", __FUNC_F31_)
	registerVal2:addElement(registerVal5)
	registerVal2.Killed = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -5.500000, 194.500000)
	registerVal6:setTopBottom(true, false, -32.000000, 40.000000)
	registerVal6:setRGB(1.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.210000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Glow = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 28.000000, 125.500000)
	registerVal7:setTopBottom(true, false, -8.000000, 11.500000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setText(Engine.Localize("MPUI_NEMESIS_TITLE_CAPS"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setLetterSpacing(0.400000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.TextBox0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -1.000000, 20.000000)
	registerVal8:setTopBottom(true, false, -10.500000, 10.500000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_aar_redarrow"))
	registerVal2:addElement(registerVal8)
	registerVal2.Arrow = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 125.500000, 170.500000)
	registerVal9:setTopBottom(true, false, -30.500000, 14.500000)
	registerVal9:setImage(RegisterImage("uie_t7_headicon_dead"))
	registerVal2:addElement(registerVal9)
	registerVal2.Skull2 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1005_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_1005_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1066_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal7:completeAnimation()
		registerVal2.TextBox0:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.DefaultClip = __FUNC_1066_
	registerVal10.DefaultStateArabic = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "DefaultStateArabic"
	local function __FUNC_11BC_(arg0, arg1, arg2)
		return IsCurrentLanguageArabic()
	end

	registerVal13.condition = __FUNC_11BC_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_1215_(arg0)
		arg0.FEListHeaderGlow0:close()
		arg0.KilledBy:close()
		arg0.Killed:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1215_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

