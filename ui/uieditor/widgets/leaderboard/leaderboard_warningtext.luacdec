-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C8_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "leaderboard")
	if not registerVal3 then
		return 
	end
	local registerVal6 = Engine.GetModel(registerVal3, "isUpdating")
	local function __FUNC_2D9_(arg2)
		if not CoD.perController[arg1].leaderboardDurationFilter then
		end
		if Enum.LbTrackType.LB_TRK_ALLTIME == Enum.LbTrackType.LB_TRK_ALLTIME then
		else
			if Enum.LbTrackType.LB_TRK_ALLTIME == Enum.LbTrackType.LB_TRK_MONTHLY then
			end
		end
		arg0.Text:setText(Engine.Localize("MENU_LEADERBOARD_GAMES_REQUIRED", LuaEnums.LB_MP_GAMES_NEEDED.MONTHLY))
	end

	arg0:subscribeToModel(registerVal6, __FUNC_2D9_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Leaderboard_WarningText = registerVal2
local function __FUNC_58C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Leaderboard_WarningText)
	registerVal2.id = "Leaderboard_WarningText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 444.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, true, -444.000000, -34.000000)
	registerVal3:setTopBottom(false, true, -30.000000, -10.000000)
	registerVal3:setRGB(1.000000, 0.400000, 0.000000)
	registerVal3:setText(Engine.Localize(""))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Text = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_A48_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_A48_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_AAA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_AAA_
	registerVal4.Visible = registerVal5
	registerVal5 = {}
	local function __FUNC_B9F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B9F_
	registerVal4.Hidden = registerVal5
	registerVal2.clipsPerState = registerVal4
	if __FUNC_1C8_ then
		__FUNC_1C8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Leaderboard_WarningText.new = __FUNC_58C_
