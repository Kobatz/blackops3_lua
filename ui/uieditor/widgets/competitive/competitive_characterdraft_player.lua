-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Competitive.Competitive_CharacterDraft_StateIcon")
require("ui.uieditor.widgets.Competitive.Competitive_CharacterDraft_CharacterSelection")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Competitive_CharacterDraft_Player = registerVal1
function CoD.Competitive_CharacterDraft_Player.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Competitive_CharacterDraft_Player)
	registerVal2.id = "Competitive_CharacterDraft_Player"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 425.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 71.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 111.000000, 373.790000)
	registerVal3:setTopBottom(true, false, 0.000000, 70.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.260000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel1 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 50.210000, 108.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 70.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.260000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEButtonPanel2 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 124.440000, 372.590000)
	registerVal5:setTopBottom(true, false, 11.500000, 31.500000)
	registerVal5:setRGB(1.000000, 0.950000, 0.280000)
	registerVal5:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_139D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "gamertag", true, __FUNC_139D_)
	registerVal2:addElement(registerVal5)
	registerVal2.Name = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 124.440000, 224.590000)
	registerVal6:setTopBottom(true, false, 36.000000, 55.000000)
	registerVal6:setTTF("fonts/UnitedSansSmCdBd_0.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1456_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "characterName", true, __FUNC_1456_)
	registerVal2:addElement(registerVal6)
	registerVal2.CharacterName = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 224.590000, 324.730000)
	registerVal7:setTopBottom(true, false, 36.000000, 55.000000)
	registerVal7:setTTF("fonts/UnitedSansSmCdBd_0.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_150E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "characterLoadoutName", true, __FUNC_150E_)
	registerVal2:addElement(registerVal7)
	registerVal2.CharacterAbility = registerVal7
	local registerVal8 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 50.210000, 108.000000)
	registerVal8:setTopBottom(true, false, 50.000000, 71.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.260000)
	registerVal2:addElement(registerVal8)
	registerVal2.RankBackground = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 50.000000, 72.900000)
	registerVal9:setTopBottom(true, false, 52.000000, 71.000000)
	registerVal9:setTTF("fonts/UnitedSansSmCdBd_0.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_15C6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "rank", true, __FUNC_15C6_)
	registerVal2:addElement(registerVal9)
	registerVal2.Rank = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 78.900000, 96.900000)
	registerVal10:setTopBottom(true, false, 51.500000, 69.500000)
	registerVal10:setupUIStreamedImage(0.000000)
	local function __FUNC_167E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_167E_)
	registerVal2:addElement(registerVal10)
	registerVal2.RankIcon = registerVal10
	local registerVal11 = CoD.Competitive_CharacterDraft_StateIcon.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 0.000000, 27.000000)
	registerVal11:setTopBottom(true, false, 21.500000, 48.500000)
	local function __FUNC_1730_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, nil, false, __FUNC_1730_)
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Choosing"
	local function __FUNC_1782_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "team", 2.000000)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_1782_
	local registerVal16 = {}
	registerVal16.stateName = "Complete"
	local function __FUNC_18CB_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "team", 2.000000)
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_18CB_
	local registerVal17 = {}
	registerVal17.stateName = "Forced"
	local function __FUNC_1A12_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_FORCED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "team", 2.000000)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_1A12_
	registerVal14 = {registerVal15, registerVal16, registerVal17}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_1B62_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientState"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "clientState", true, __FUNC_1B62_)
	local function __FUNC_1C81_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "team"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "team", true, __FUNC_1C81_)
	registerVal2:addElement(registerVal11)
	registerVal2.StateLeft = registerVal11
	local registerVal12 = CoD.Competitive_CharacterDraft_StateIcon.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 398.000000, 425.000000)
	registerVal12:setTopBottom(true, false, 22.000000, 49.000000)
	local function __FUNC_1D9A_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, nil, false, __FUNC_1D9A_)
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "Choosing"
	local function __FUNC_1DEA_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "team", 1.000000)
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_1DEA_
	registerVal17 = {}
	registerVal17.stateName = "Complete"
	local function __FUNC_1F33_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "team", 1.000000)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_1F33_
	local registerVal18 = {}
	registerVal18.stateName = "Forced"
	local function __FUNC_207A_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_FORCED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "team", 1.000000)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_207A_
	registerVal15 = {registerVal16, registerVal17, registerVal18}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_21CA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientState"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "clientState", true, __FUNC_21CA_)
	local function __FUNC_22E9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "team"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "team", true, __FUNC_22E9_)
	registerVal2:addElement(registerVal12)
	registerVal2.StateRight = registerVal12
	local registerVal13 = CoD.Competitive_CharacterDraft_CharacterSelection.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 53.900000, 103.900000)
	registerVal13:setTopBottom(true, false, 0.000000, 50.000000)
	local function __FUNC_2402_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_2402_)
	registerVal16 = {}
	registerVal17 = {}
	registerVal17.stateName = "Selected"
	local function __FUNC_2452_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED_CHARACTER)
	end

	registerVal17.condition = __FUNC_2452_
	registerVal18 = {}
	registerVal18.stateName = "Forced"
	local function __FUNC_2550_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_CHARACTER_SELECTION_FORCED)
	end

	registerVal18.condition = __FUNC_2550_
	registerVal16 = {registerVal17, registerVal18}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_2658_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientState"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "clientState", true, __FUNC_2658_)
	registerVal2:addElement(registerVal13)
	registerVal2.CharacterRender = registerVal13
	registerVal14 = {}
	registerVal15 = {}
	local function __FUNC_2779_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal15.DefaultClip = __FUNC_2779_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_27DA_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 50.210000, 373.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 21.500000, 49.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonPanel2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 124.440000, 372.590000)
		registerVal2.Name:setTopBottom(true, false, 25.000000, 45.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CharacterName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CharacterAbility:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 50.000000, 72.900000)
		registerVal2.Rank:setTopBottom(true, false, 27.000000, 46.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 78.900000, 96.900000)
		registerVal2.RankIcon:setTopBottom(true, false, 26.500000, 44.500000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal2.CharacterRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_27DA_
	registerVal14.ItemRestriction = registerVal15
	registerVal15 = {}
	local function __FUNC_2CF2_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel1:setLeftRight(true, false, 111.000000, 373.790000)
		registerVal2.FEButtonPanel1:setTopBottom(true, false, 0.000000, 70.000000)
		registerVal2.FEButtonPanel1:setAlpha(0.260000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonPanel2:setLeftRight(true, false, 50.210000, 108.000000)
		registerVal2.FEButtonPanel2:setTopBottom(true, false, 0.000000, 70.000000)
		registerVal2.FEButtonPanel2:setAlpha(0.260000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Name:setLeftRight(true, false, 124.440000, 372.590000)
		registerVal2.Name:setTopBottom(true, false, 11.500000, 31.500000)
		registerVal2.Name:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CharacterName:setLeftRight(true, false, 124.440000, 224.590000)
		registerVal2.CharacterName:setTopBottom(true, false, 36.000000, 55.000000)
		registerVal2.CharacterName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CharacterAbility:setLeftRight(true, false, 224.590000, 324.730000)
		registerVal2.CharacterAbility:setTopBottom(true, false, 36.000000, 55.000000)
		registerVal2.CharacterAbility:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.RankBackground:setLeftRight(true, false, 50.210000, 108.000000)
		registerVal2.RankBackground:setTopBottom(true, false, 50.000000, 71.000000)
		registerVal2.RankBackground:setAlpha(0.260000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Rank:setLeftRight(true, false, 50.000000, 72.900000)
		registerVal2.Rank:setTopBottom(true, false, 52.000000, 71.000000)
		registerVal2.Rank:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.RankIcon:setLeftRight(true, false, 78.900000, 96.900000)
		registerVal2.RankIcon:setTopBottom(true, false, 51.500000, 69.500000)
		registerVal2.RankIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.StateLeft:setLeftRight(true, false, 0.000000, 27.000000)
		registerVal2.StateLeft:setTopBottom(true, false, 21.500000, 48.500000)
		registerVal2.StateLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StateRight:setLeftRight(true, false, 398.000000, 425.000000)
		registerVal2.StateRight:setTopBottom(true, false, 22.000000, 49.000000)
		registerVal2.StateRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CharacterRender:setLeftRight(true, false, 53.900000, 103.900000)
		registerVal2.CharacterRender:setTopBottom(true, false, 0.000000, 50.000000)
		registerVal2.CharacterRender:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2CF2_
	registerVal14.SpecialistDraft = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_35A9_(arg0)
		arg0.FEButtonPanel1:close()
		arg0.FEButtonPanel2:close()
		arg0.RankBackground:close()
		arg0.StateLeft:close()
		arg0.StateRight:close()
		arg0.CharacterRender:close()
		arg0.Name:close()
		arg0.CharacterName:close()
		arg0.CharacterAbility:close()
		arg0.Rank:close()
		arg0.RankIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_35A9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

