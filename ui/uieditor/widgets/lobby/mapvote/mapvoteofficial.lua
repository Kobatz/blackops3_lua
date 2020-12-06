-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_Subtitle_BG")
local function __FUNC_223_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "GametypeSettings.Update")
	if arg0.gametypeSettingsUpdateSubscription then
		arg0:removeSubscription(arg0.gametypeSettingsUpdateSubscription)
	end
	local function __FUNC_378_()
		local registerVal1 = Engine.GetGlobalModel()
		local registerVal0 = Engine.GetModel(registerVal1, "MapVote")
		Engine.LobbyHost_SetOfficialCustomGame(false)
		Engine.LobbyHost_SetCustomGameName("")
	end

	registerVal3 = arg0:subscribeToModel(registerVal2, __FUNC_378_, false)
	arg0.gametypeSettingsUpdateSubscription = registerVal3
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MapVoteOfficial = registerVal2
local function __FUNC_4A3_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MapVoteOfficial)
	registerVal2.id = "MapVoteOfficial"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 130.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_Identity_Subtitle_BG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -7.000000, 8.000000)
	registerVal3:setTopBottom(true, false, -2.000000, 22.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.550000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hidden"
	local function __FUNC_D8A_(arg0, arg1, arg2)
		return IsFreeRunLobby()
	end

	registerVal7.condition = __FUNC_D8A_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_DD8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_DD8_)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuIdentitySubtitleBG00 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 7.000000, 23.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 18.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_shield_official"))
	registerVal2:addElement(registerVal4)
	registerVal2.officialIcon = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 28.000000, 0.000000)
	registerVal5:setTopBottom(true, false, -1.000000, 20.000000)
	registerVal5:setText(Engine.Localize("MENU_OFFICIAL_CAPS"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.Official = registerVal5
	registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_F00_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuIdentitySubtitleBG00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.officialIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Official:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_F00_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_10C5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuIdentitySubtitleBG00:setAlpha(0.550000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.officialIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Official:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_10C5_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_128E_(arg0, arg2, arg3)
		local registerVal3 = IsCustomMPLobby()
		if registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "MapVote.isOfficialVariant")
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_128E_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNav")
	local function __FUNC_133C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_133C_)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "MapVote.isOfficialVariant")
	local function __FUNC_1464_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MapVote.isOfficialVariant"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_1464_)
	local function __FUNC_1593_(arg0)
		arg0.StartMenuIdentitySubtitleBG00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1593_)
	if __FUNC_223_ then
		__FUNC_223_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MapVoteOfficial.new = __FUNC_4A3_
