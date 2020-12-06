-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterTeamIdentityInformation")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterTeamIdentityInformationPanel = registerVal1
function CoD.CodCasterTeamIdentityInformationPanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterTeamIdentityInformationPanel)
	registerVal2.id = "CodCasterTeamIdentityInformationPanel"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 456.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 360.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CodCasterTeamIdentityInformation.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 456.000000)
	registerVal3:setTopBottom(true, false, -1.000000, 179.000000)
	registerVal3.TeamLogoTitle:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM1_LOGO")))
	registerVal3.TeamNameTitle:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM1_NAME")))
	registerVal3.TeamColorTitle:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM1_COLOR")))
	local function __FUNC_A42_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "TeamIdentity", "team1", __FUNC_A42_)
	registerVal2:addElement(registerVal3)
	registerVal2.CodCasterTeam1Information = registerVal3
	local registerVal4 = CoD.CodCasterTeamIdentityInformation.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 456.000000)
	registerVal4:setTopBottom(true, false, 188.000000, 373.000000)
	registerVal4.TeamLogoTitle:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM2_LOGO")))
	registerVal4.TeamNameTitle:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM2_NAME")))
	registerVal4.TeamColorTitle:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM2_COLOR")))
	local function __FUNC_A92_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "TeamIdentity", "team2", __FUNC_A92_)
	registerVal2:addElement(registerVal4)
	registerVal2.CodCasterTeam2Information = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_AE2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterTeam1Information:setLeftRight(true, false, 0.000000, 456.000000)
		registerVal2.CodCasterTeam1Information:setTopBottom(true, false, -1.000000, 179.000000)
		registerVal2.CodCasterTeam1Information:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CodCasterTeam2Information:setLeftRight(true, false, 0.000000, 456.000000)
		registerVal2.CodCasterTeam2Information:setTopBottom(true, false, 188.000000, 373.000000)
		registerVal2.CodCasterTeam2Information:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AE2_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_D3D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterTeam1Information:setLeftRight(true, false, 0.000000, 456.000000)
		registerVal2.CodCasterTeam1Information:setTopBottom(true, false, -1.000000, 179.000000)
		registerVal2.CodCasterTeam1Information:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CodCasterTeam2Information:setLeftRight(true, false, 0.000000, 456.000000)
		registerVal2.CodCasterTeam2Information:setTopBottom(true, false, 188.000000, 373.000000)
		registerVal2.CodCasterTeam2Information:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D3D_
	registerVal5.ShowBoth = registerVal6
	registerVal6 = {}
	local function __FUNC_F9E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterTeam1Information:setLeftRight(true, false, 0.000000, 456.000000)
		registerVal2.CodCasterTeam1Information:setTopBottom(true, false, -1.000000, 179.000000)
		registerVal2.CodCasterTeam1Information:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CodCasterTeam2Information:setLeftRight(true, false, 0.000000, 456.000000)
		registerVal2.CodCasterTeam2Information:setTopBottom(true, false, 188.000000, 373.000000)
		registerVal2.CodCasterTeam2Information:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_F9E_
	registerVal5.ShowTeam1Only = registerVal6
	registerVal6 = {}
	local function __FUNC_11FE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterTeam1Information:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CodCasterTeam2Information:setLeftRight(true, false, 0.000000, 456.000000)
		registerVal2.CodCasterTeam2Information:setTopBottom(true, false, -1.000000, 179.000000)
		registerVal2.CodCasterTeam2Information:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_11FE_
	registerVal5.ShowTeam2Only = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1404_(arg0)
		arg0.CodCasterTeam1Information:close()
		arg0.CodCasterTeam2Information:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1404_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

