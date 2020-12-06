-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HelperWidgets.TextWithBg")
require("ui.uieditor.widgets.CodCaster.CodCasterPlayerListHeaderObjectiveColumn")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterPlayerListHeaderWidget = registerVal1
function CoD.CodCasterPlayerListHeaderWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterPlayerListHeaderWidget)
	registerVal2.id = "CodCasterPlayerListHeaderWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 308.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.whiteBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.whiteBGAccent2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.700000)
	registerVal5:setImage(RegisterImage("uie_t7_codcaster_playlist_accent"))
	registerVal2:addElement(registerVal5)
	registerVal2.whiteBGcolor = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 8.090000, 200.410000)
	registerVal6:setTopBottom(true, false, 5.000000, 23.000000)
	registerVal6:setText(Engine.Localize("Team Name"))
	registerVal6:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.TeamName = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 3.000000, -0.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.TeamColor = registerVal7
	local registerVal8 = CoD.TextWithBg.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -74.090000, -49.090000)
	registerVal8:setTopBottom(false, false, -15.000000, 17.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8.Bg:setRGB(0.310000, 0.310000, 0.310000)
	registerVal8.Bg:setAlpha(0.000000)
	registerVal8.Text:setRGB(0.880000, 0.890000, 0.930000)
	registerVal8.Text:setAlpha(0.700000)
	registerVal8.Text:setText(Engine.Localize(GetScoreboardColumnName(arg1, 1.000000, "Score")))
	registerVal8.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal8)
	registerVal2.TEMPScoreColumn2Header = registerVal8
	local registerVal9 = CoD.TextWithBg.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, -40.080000, -0.080000)
	registerVal9:setTopBottom(false, false, -15.000000, 17.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9.Bg:setRGB(0.310000, 0.310000, 0.310000)
	registerVal9.Bg:setAlpha(0.000000)
	registerVal9.Text:setRGB(0.880000, 0.890000, 0.930000)
	registerVal9.Text:setAlpha(0.700000)
	registerVal9.Text:setText(Engine.Localize(GetScoreboardColumnName(arg1, 2.000000, "Score")))
	registerVal9.Text:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal9)
	registerVal2.TEMPScoreColumn3Header = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, true, -112.590000, -66.590000)
	registerVal10:setTopBottom(true, false, 7.500000, 23.500000)
	registerVal10:setText(Engine.Localize("MENU_KD_SHORT"))
	registerVal10:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal10:setLetterSpacing(2.000000)
	registerVal10:setLineSpacing(5.000000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.KD = registerVal10
	local registerVal11 = CoD.CodCasterPlayerListHeaderObjectiveColumn.new(arg0, arg1)
	registerVal11:setLeftRight(false, true, -31.000000, -11.000000)
	registerVal11:setTopBottom(true, false, 3.000000, 23.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.ScoreColumn3Header = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -63.590000, -39.590000)
	registerVal12:setTopBottom(true, false, 2.000000, 26.000000)
	registerVal12:setImage(RegisterImage("uie_t7_codcaster_gamemode_killstreak"))
	registerVal2:addElement(registerVal12)
	registerVal2.Killstreak = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_11A5_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal2.TeamName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TeamColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal14.DefaultClip = __FUNC_11A5_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_12FB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal2.TeamName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TeamColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal14.DefaultClip = __FUNC_12FB_
	registerVal13.NonTeamBased = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "NonTeamBased"
	local function __FUNC_144F_(arg0, arg1, arg2)
		local registerVal3 = IsGametypeTeambased()
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_144F_
	registerVal15 = {registerVal16}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_14A5_(arg0)
		arg0.TEMPScoreColumn2Header:close()
		arg0.TEMPScoreColumn3Header:close()
		arg0.ScoreColumn3Header:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_14A5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

