-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.LoadingScreenHeroListWidgetPlayerName")
require("ui.uieditor.widgets.StartGameFlow.LoadingScreenTeamBoxFactionColor")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenHeroListWidget = registerVal1
function CoD.LoadingScreenHeroListWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenHeroListWidget)
	registerVal2.id = "LoadingScreenHeroListWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 170.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal3:setTopBottom(true, true, 13.500000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal3:setShaderVector(0.000000, 0.010000, 0.010000, 0.010000, 0.010000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -80.000000, 80.000000)
	registerVal4:setTopBottom(false, false, -89.000000, 84.000000)
	registerVal4:setScale(0.980000)
	registerVal2:addElement(registerVal4)
	registerVal2.HeroLobbyClientExtraCamRender = registerVal4
	local registerVal5 = CoD.LoadingScreenHeroListWidgetPlayerName.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, 32.000000, 62.000000)
	registerVal5.FEButtonPanel00:setAlpha(0.800000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Coloured"
	local function __FUNC_EDC_(arg0, arg2, arg3)
		return IsSelfPlayerName(arg2, arg1)
	end

	registerVal9.condition = __FUNC_EDC_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.LoadingScreenHeroListWidgetPlayerName = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, true, -26.000000, -2.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.HeroLoadoutItem = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -14.000000, 2.000000)
	registerVal7:setTopBottom(false, true, -41.500000, -26.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.VOIPImageByXUID = registerVal7
	registerVal8 = CoD.LoadingScreenTeamBoxFactionColor.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal8:setTopBottom(false, true, -4.000000, 0.000000)
	local function __FUNC_F36_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_F36_)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "FactionAxis"
	local function __FUNC_F86_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "team", Enum.team_t.TEAM_AXIS)
	end

	registerVal12.condition = __FUNC_F86_
	local registerVal13 = {}
	registerVal13.stateName = "FactionAllie"
	local function __FUNC_1048_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "team", Enum.team_t.TEAM_ALLIES)
	end

	registerVal13.condition = __FUNC_1048_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_110E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "team"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "team", true, __FUNC_110E_)
	registerVal2:addElement(registerVal8)
	registerVal2.LoadingScreenTeamBoxFactionColor = registerVal8
	local function __FUNC_1226_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupCharacterExtraCamRenderForLobbyClient(registerVal1)
		end
	end

	registerVal2.HeroLobbyClientExtraCamRender:linkToElementModel(registerVal2, "playerxuid", true, __FUNC_1226_)
	local function __FUNC_12DB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.PlayerName:setText(registerVal1)
		end
	end

	registerVal2.LoadingScreenHeroListWidgetPlayerName:linkToElementModel(registerVal2, "playerName", true, __FUNC_12DB_)
	local function __FUNC_138C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.WpnName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.LoadingScreenHeroListWidgetPlayerName:linkToElementModel(registerVal2, "playerHeroLoadoutItem", true, __FUNC_138C_)
	local function __FUNC_1463_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.HeroLoadoutItem:linkToElementModel(registerVal2, "playerHeroLoadoutItem", true, __FUNC_1463_)
	local function __FUNC_151A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setupVoipImageByXUID(registerVal1)
		end
	end

	registerVal2.VOIPImageByXUID:linkToElementModel(registerVal2, "playerxuid", true, __FUNC_151A_)
	registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_15B9_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal6:completeAnimation()
		registerVal2.HeroLoadoutItem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.LoadingScreenTeamBoxFactionColor:setLeftRight(true, true, 1.560000, -2.000000)
		registerVal2.LoadingScreenTeamBoxFactionColor:setTopBottom(false, true, -4.000000, 0.000000)
		registerVal2.LoadingScreenTeamBoxFactionColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_15B9_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_17BD_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.LoadingScreenHeroListWidgetPlayerName:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.LoadingScreenHeroListWidgetPlayerName:setTopBottom(false, false, 33.000000, 63.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.HeroLoadoutItem:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.HeroLoadoutItem:setTopBottom(false, true, -31.000000, -7.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.VOIPImageByXUID:setLeftRight(false, true, -14.000000, 2.000000)
		registerVal2.VOIPImageByXUID:setTopBottom(false, true, -40.500000, -25.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LoadingScreenTeamBoxFactionColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_17BD_
	registerVal9.FFA = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "FFA"
	local function __FUNC_1AF1_(arg0, arg2, arg3)
		local registerVal3 = IsTeamBasedGame(arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_1AF1_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "MapVote.mapVoteMapPreviousGametype")
	local function __FUNC_1B49_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MapVote.mapVoteMapPreviousGametype"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_1B49_)
	local function __FUNC_1C80_(arg0)
		arg0.LoadingScreenHeroListWidgetPlayerName:close()
		arg0.LoadingScreenTeamBoxFactionColor:close()
		arg0.HeroLobbyClientExtraCamRender:close()
		arg0.HeroLoadoutItem:close()
		arg0.VOIPImageByXUID:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C80_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

