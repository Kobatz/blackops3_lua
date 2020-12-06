-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Competitive.Competitive_CharacterDraft_StateIcon_Right")
require("ui.uieditor.widgets.Competitive.Competitive_CharacterDraft_StateIcon")
require("ui.uieditor.widgets.Pregame.Pregame_PlayerName")
require("ui.uieditor.widgets.Lobby.Lists.Members.IconControllerContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_Client_Small = registerVal1
function CoD.Pregame_Client_Small.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_Client_Small)
	registerVal2.id = "Pregame_Client_Small"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 425.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 72.000000, 339.790000)
	registerVal3:setTopBottom(true, false, 1.750000, 29.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel1 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 46.000000, 74.900000)
	registerVal4:setTopBottom(true, false, 9.270000, 33.250000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_151B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "rank", true, __FUNC_151B_)
	registerVal2:addElement(registerVal4)
	registerVal2.Rank = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 78.900000, 102.400000)
	registerVal5:setTopBottom(true, false, 9.750000, 33.250000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_arena_rank_1"))
	registerVal5:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.RankIcon = registerVal5
	local registerVal6 = CoD.Competitive_CharacterDraft_StateIcon_Right.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 27.000000)
	registerVal6:setTopBottom(true, false, 0.500000, 27.500000)
	local function __FUNC_15D2_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_15D2_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Choosing"
	local function __FUNC_1622_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1622_
	local registerVal11 = {}
	registerVal11.stateName = "Complete"
	local function __FUNC_176E_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_176E_
	local registerVal12 = {}
	registerVal12.stateName = "Forced"
	local function __FUNC_18B9_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_FORCED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_18B9_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_1A0D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientState"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "clientState", true, __FUNC_1A0D_)
	local function __FUNC_1B2D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "team"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "team", true, __FUNC_1B2D_)
	registerVal2:addElement(registerVal6)
	registerVal2.StateLeft = registerVal6
	local registerVal7 = CoD.Competitive_CharacterDraft_StateIcon.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 378.000000, 405.000000)
	registerVal7:setTopBottom(true, false, 0.500000, 27.500000)
	local function __FUNC_1C46_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_1C46_)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Choosing"
	local function __FUNC_1C96_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTING)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_1C96_
	registerVal12 = {}
	registerVal12.stateName = "Complete"
	local function __FUNC_1DDE_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_1DDE_
	local registerVal13 = {}
	registerVal13.stateName = "Forced"
	local function __FUNC_1F25_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "clientState", Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_SELECTION_FORCED)
		if registerVal3 then
			registerVal3 = IsSelfModelValueEqualToSelfTeam(arg2, arg1, "team")
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_1F25_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_2075_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientState"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "clientState", true, __FUNC_2075_)
	local function __FUNC_2195_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "team"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "team", true, __FUNC_2195_)
	registerVal2:addElement(registerVal7)
	registerVal2.StateRight = registerVal7
	local registerVal8 = CoD.Pregame_PlayerName.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 78.100000, 326.100000)
	registerVal8:setTopBottom(true, false, 4.000000, 24.000000)
	local function __FUNC_22AE_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_22AE_)
	local function __FUNC_22FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ListHeader.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "gamertag", true, __FUNC_22FE_)
	local function __FUNC_2400_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "gamertag", true, __FUNC_2400_)
	registerVal2:addElement(registerVal8)
	registerVal2.PregamePlayerName0 = registerVal8
	registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 333.000000, 369.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 3.500000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.pixelA0 = registerVal9
	registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 333.000000, 369.000000)
	registerVal10:setTopBottom(true, false, 27.000000, 30.500000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.pixelA00 = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 72.000000, 346.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.LineB1 = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 72.000000, 346.000000)
	registerVal12:setTopBottom(true, false, 27.000000, 31.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.LineB00 = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 44.000000, 80.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 3.500000)
	registerVal13:setZRot(180.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.pixelA01 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 44.000000, 80.000000)
	registerVal14:setTopBottom(true, false, 26.000000, 29.500000)
	registerVal14:setZRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.pixelA000 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 0.000000, 425.000000)
	registerVal15:setTopBottom(true, false, 1.500000, 35.500000)
	registerVal15:setAlpha(0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.SizeElement = registerVal15
	local registerVal16 = CoD.IconControllerContainer.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 14.450000, 71.450000)
	registerVal16:setTopBottom(true, false, 0.380000, 32.380000)
	registerVal16:setRGB(0.740000, 0.780000, 0.790000)
	local function __FUNC_24E4_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_24E4_)
	registerVal2:addElement(registerVal16)
	registerVal2.IconControllerContainer = registerVal16
	local function __FUNC_2536_(arg0)
		arg0.FEButtonPanel1:close()
		arg0.StateLeft:close()
		arg0.StateRight:close()
		arg0.PregamePlayerName0:close()
		arg0.IconControllerContainer:close()
		arg0.Rank:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2536_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

