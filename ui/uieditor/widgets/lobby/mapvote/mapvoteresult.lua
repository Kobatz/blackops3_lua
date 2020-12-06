-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_MemberBlurPanelContainer")
require("ui.uieditor.widgets.Lobby.MapVote.MapVoteLabelLower")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MapVoteResult = registerVal1
function CoD.MapVoteResult.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.MapVoteResult)
	registerVal2.id = "MapVoteResult"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 303.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 151.000000)
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
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage(GetPostMatchMapImage(arg1, "uie_img_t7_menu_mp_preview_sector")))
	registerVal2:addElement(registerVal5)
	registerVal2.MapImage = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 127.000000, 298.000000)
	registerVal6:setTopBottom(true, false, 39.500000, 79.500000)
	registerVal6:setRGB(0.500000, 0.500000, 0.500000)
	registerVal6:setAlpha(0.700000)
	registerVal6:setText(Engine.Localize("MP_DEFEAT_CAPS"))
	registerVal6:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal6:setLetterSpacing(-1.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.OutcomeGrey = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 127.000000, 296.000000)
	registerVal7:setTopBottom(true, false, 39.500000, 79.500000)
	registerVal7:setRGB(1.000000, 0.000000, 0.000000)
	registerVal7:setText(Engine.Localize("MP_DEFEAT_CAPS"))
	registerVal7:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal7:setLetterSpacing(-1.000000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.OutcomeColor = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 127.000000)
	registerVal8:setTopBottom(true, false, 12.000000, 139.000000)
	registerVal8:setImage(RegisterImage(GetPostMatchGameTypeImage(arg1, "uie_t7_menu_mp_icons_gamemode_graphic_default")))
	registerVal2:addElement(registerVal8)
	registerVal2.GameModeIcon = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, true, 129.000000, -7.000000)
	registerVal9:setTopBottom(true, false, 70.500000, 110.500000)
	registerVal9:setText(Engine.Localize(GetPostMatchScore(arg1, "115 - 200")))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal9:setShaderVector(0.000000, 0.090000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setLetterSpacing(2.500000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.Score = registerVal9
	local registerVal10 = CoD.MapVoteLabelLower.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 13.000000, 200.000000)
	registerVal10:setTopBottom(false, true, -26.500000, -8.500000)
	registerVal10.StartMenuIdentitySubtitleBG00:setAlpha(0.420000)
	registerVal10.SubTitle:setText(Engine.Localize(LocalizeToUpperString(GetPostMatchGameType(arg1, "Hardpoint"))))
	registerVal10.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal10)
	registerVal2.GameModeNew = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1209_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.OutcomeGrey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OutcomeColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GameModeIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Score:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_1209_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1468_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.OutcomeGrey:setText(Engine.Localize("MP_VICTORY_CAPS"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OutcomeColor:setRGB(0.360000, 1.000000, 0.150000)
		registerVal2.OutcomeColor:setAlpha(0.700000)
		registerVal2.OutcomeColor:setText(Engine.Localize("MP_VICTORY_CAPS"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GameModeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Score:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_1468_
	registerVal11.Victory = registerVal12
	registerVal12 = {}
	local function __FUNC_1745_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.OutcomeGrey:setText(Engine.Localize("MP_DEFEAT_CAPS"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OutcomeColor:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.OutcomeColor:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GameModeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Score:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_1745_
	registerVal11.Defeat = registerVal12
	registerVal12 = {}
	local function __FUNC_19EB_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.OutcomeGrey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.OutcomeColor:setRGB(0.800000, 0.800000, 0.800000)
		registerVal2.OutcomeColor:setText(Engine.Localize("MP_DRAW_CAPS"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.GameModeIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Score:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_19EB_
	registerVal11.Draw = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Victory"
	local function __FUNC_1C8D_(arg0, arg2, arg3)
		return WonLastTeamBasedMatch(arg1)
	end

	registerVal14.condition = __FUNC_1C8D_
	local registerVal15 = {}
	registerVal15.stateName = "Defeat"
	local function __FUNC_1CE7_(arg0, arg2, arg3)
		return LostLastTeamBasedMatch(arg1)
	end

	registerVal15.condition = __FUNC_1CE7_
	local registerVal16 = {}
	registerVal16.stateName = "Draw"
	local function __FUNC_1D40_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal16.condition = __FUNC_1D40_
	registerVal13 = {registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_1D8C_(arg0)
		arg0.FEMemberBlurPanelContainer0:close()
		arg0.GameModeNew:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D8C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

