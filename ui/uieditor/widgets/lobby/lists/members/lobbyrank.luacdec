-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyRank = registerVal1
function CoD.LobbyRank.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyRank)
	registerVal2.id = "LobbyRank"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 27.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 2.000000, -2.000000)
	local function __FUNC_C4B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_C4B_)
	registerVal2:addElement(registerVal3)
	registerVal2.rankIcon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, -1.000000, -23.000000)
	registerVal4:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_CFC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(SetToParagonColorIfPrestigeMasterByRank(188.000000, 198.000000, 201.000000, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "rank", true, __FUNC_CFC_)
	local function __FUNC_DE3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "rank", true, __FUNC_DE3_)
	registerVal2:addElement(registerVal4)
	registerVal2.rankText = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 27.000000, -2.000000)
	registerVal5:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_E74_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetArenaRankIcon(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "arenaPoints", true, __FUNC_E74_)
	registerVal2:addElement(registerVal5)
	registerVal2.arenaRankIcon = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, -1.000000, -23.000000)
	registerVal6:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal6:setRGB(0.740000, 0.780000, 0.790000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setLetterSpacing(0.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_F4A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(GetArenaRank(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "arenaPoints", true, __FUNC_F4A_)
	registerVal2:addElement(registerVal6)
	registerVal2.arenaRankText = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_FFA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setLeftRight(true, true, 27.000000, -2.000000)
		registerVal2.rankIcon:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.rankIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setLeftRight(true, true, -1.000000, -23.000000)
		registerVal2.rankText:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.rankText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.arenaRankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.arenaRankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_FFA_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_12EE_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.arenaRankIcon:setLeftRight(true, true, 27.000000, -2.000000)
		registerVal2.arenaRankIcon:setTopBottom(true, true, 2.000000, -2.000000)
		registerVal2.arenaRankIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.arenaRankText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_12EE_
	registerVal7.ArenaRank = registerVal8
	registerVal8 = {}
	local function __FUNC_1588_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_1588_
	registerVal7.RankHidden = registerVal8
	registerVal8 = {}
	local function __FUNC_16DE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_16DE_
	registerVal7.FreeRun = registerVal8
	registerVal8 = {}
	local function __FUNC_1832_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_1832_
	registerVal7.Custom = registerVal8
	registerVal8 = {}
	local function __FUNC_1986_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.rankIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rankText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_1986_
	registerVal7.Theater = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "ArenaRank"
	local function __FUNC_1ADA_(arg0, arg1, arg2)
		return IsArenaMode()
	end

	registerVal10.condition = __FUNC_1ADA_
	local registerVal11 = {}
	registerVal11.stateName = "RankHidden"
	local function __FUNC_1B25_(arg0, arg1, arg2)
		return ShouldHideLobbyMemberRank()
	end

	registerVal11.condition = __FUNC_1B25_
	local registerVal12 = {}
	registerVal12.stateName = "FreeRun"
	local function __FUNC_1B7F_(arg0, arg1, arg2)
		return IsFreeRunLobby()
	end

	registerVal12.condition = __FUNC_1B7F_
	local registerVal13 = {}
	registerVal13.stateName = "Custom"
	local function __FUNC_1BCC_(arg0, arg1, arg2)
		return IsCustomMPLobby()
	end

	registerVal13.condition = __FUNC_1BCC_
	local registerVal14 = {}
	registerVal14.stateName = "Theater"
	local function __FUNC_1C1D_(arg0, arg1, arg2)
		return LobbyModeTheater()
	end

	registerVal14.condition = __FUNC_1C1D_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyNav")
	local function __FUNC_1C6E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1C6E_)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyMainMode")
	local function __FUNC_1D94_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyMainMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1D94_)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_1EC1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1EC1_)
	local function __FUNC_1FF0_(arg0)
		arg0.rankIcon:close()
		arg0.rankText:close()
		arg0.arenaRankIcon:close()
		arg0.arenaRankText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1FF0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

