-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D0_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "gameScore.playerScore")
	local registerVal4 = Engine.GetModelForController(arg1)
	registerVal3 = Engine.GetModel(registerVal4, "gameScore.enemyScore")
	if registerVal2 then
		registerVal4 = Engine.GetModelValue(registerVal2)
	end
	if registerVal3 then
		registerVal4 = Engine.GetModelValue(registerVal3)
	end
	if registerVal4 ~= nil and registerVal4 ~= nil then
		if registerVal4 < registerVal4 then
			arg0.PrimaryStatus:setText(Engine.Localize("MENU_WINNING_CAPS"))
		else
			if registerVal4 < registerVal4 then
				arg0.PrimaryStatus:setText(Engine.Localize("MENU_LOSING_CAPS"))
			else
				arg0.PrimaryStatus:setText(Engine.Localize("MENU_TIED_CAPS"))
			else
				arg0.PrimaryStatus:setText(Engine.Localize("MENU_TIED_CAPS"))
			end
		end
	end
end

local function __FUNC_49D_()
	local registerVal0 = Engine.DvarString(nil, "g_gametype")
	if registerVal0 ~= "dom" then
	end
	return true
end

local function __FUNC_53D_(arg0, arg1)
	local function __FUNC_A68_(arg1, arg2)
		arg0.PrimaryStatus:beginAnimation("show_primary_status", 500.000000)
		arg0.PrimaryStatus:setAlpha(1.000000)
	end

	local function __FUNC_B38_(arg1, arg2)
		arg0.PrimaryStatus:beginAnimation("hide_primary_status", 500.000000)
		arg0.PrimaryStatus:setAlpha(0.000000)
		local function __FUNC_C77_(arg0, arg1)
			local registerVal4 = {}
			registerVal4.name = "show_secondary_status"
			arg0:dispatchEventToParent(registerVal4)
		end

		arg0.PrimaryStatus:registerEventHandler("transition_complete_hide_primary_status", __FUNC_C77_)
	end

	local function __FUNC_CFC_(arg1, arg2)
		arg0.SecondaryStatus:beginAnimation("show_secondary_status", 500.000000)
		arg0.SecondaryStatus:setAlpha(1.000000)
	end

	local function __FUNC_DD0_(arg1, arg2)
		arg0.SecondaryStatus:beginAnimation("hide_secondary_statuss", 500.000000)
		arg0.SecondaryStatus:setAlpha(0.000000)
		local function __FUNC_F17_(arg0, arg1)
			local registerVal4 = {}
			registerVal4.name = "show_primary_status"
			arg0:dispatchEventToParent(registerVal4)
		end

		arg0.SecondaryStatus:registerEventHandler("transition_complete_hide_secondary_statuss", __FUNC_F17_)
	end

	local function __FUNC_F9A_(arg2, arg3)
		if arg0.doNotCycle then
			return 
		end
		local registerVal2 = CoD.IsInOvertime(arg1)
		if registerVal2 then
			return 
		end
		registerVal2 = IsInPrematchPeriod()
		if arg0.showPrimaryStatus and not registerVal2 then
			local registerVal4 = {}
			registerVal4.name = "hide_secondary_status"
			arg0:processEvent(registerVal4)
			arg0.showPrimaryStatus = false
		else
			registerVal4 = {}
			registerVal4.name = "hide_primary_status"
			arg0:processEvent(registerVal4)
			arg0.showPrimaryStatus = true
		end
	end

	local registerVal7 = Engine.GetGametypeSetting("scoreLimit")
	local registerVal8 = Engine.GetGametypeSetting("roundLimit")
	local registerVal9 = Engine.GetGametypeSetting("roundScoreLimit")
	if 0.000000 < registerVal7 then
		if registerVal7 == 1.000000 then
			arg0.SecondaryStatus:setText(Engine.Localize("MPUI_1_POINT_TO_WIN_CAPS"))
		else
			arg0.SecondaryStatus:setText(Engine.Localize("MPUI_X_POINTS_TO_WIN_CAPS", registerVal7))
		else
			local registerVal10 = __FUNC_49D_()
			if registerVal10 then
				arg0.SecondaryStatus:setText(Engine.Localize("MPUI_X_POINTS_TO_WIN_CAPS", (registerVal8 * registerVal9)))
			else
				arg0.SecondaryStatus:setText("")
			end
		end
	end
	arg0:registerEventHandler("hide_primary_status", __FUNC_B38_)
	arg0:registerEventHandler("show_secondary_status", __FUNC_CFC_)
	arg0:registerEventHandler("show_primary_status", __FUNC_A68_)
	arg0:registerEventHandler("hide_secondary_status", __FUNC_DD0_)
	arg0:registerEventHandler("toggle_status", __FUNC_F9A_)
	local registerVal13 = Engine.GetModelForController(arg1)
	local registerVal12 = Engine.GetModel(registerVal13, "gameScore.playerScore")
	local function __FUNC_113A_(arg2)
		__FUNC_1D0_(arg0, arg1)
	end

	arg0:subscribeToModel(registerVal12, __FUNC_113A_)
	registerVal13 = Engine.GetModelForController(arg1)
	registerVal12 = Engine.GetModel(registerVal13, "gameScore.enemyScore")
	local function __FUNC_1174_(arg2)
		__FUNC_1D0_(arg0, arg1)
	end

	arg0:subscribeToModel(registerVal12, __FUNC_1174_)
	__FUNC_F9A_()
	arg0:addElement(LUI.UITimer.new(9000.000000, "toggle_status", false, arg0))
	arg0.showPrimaryStatus = false
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.StatusContainer = registerVal4
local function __FUNC_11B0_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StatusContainer)
	registerVal2.id = "StatusContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 290.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, -11.000000, 302.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3:setText(Engine.Localize(" WINNING"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.PrimaryStatus = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 291.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 13.510000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("75 POINTS TO WIN"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.SecondaryStatus = registerVal4
	if __FUNC_53D_ then
		__FUNC_53D_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StatusContainer.new = __FUNC_11B0_
