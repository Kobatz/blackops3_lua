-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.SafeAreaContainers.T7Hud_MP_SafeAreaContainer")
require("ui.uieditor.widgets.MPHudWidgets.ReadyEvents.ReadyEvents")
require("ui.uieditor.widgets.MPHudWidgets.ScorePopup.MPScr")
require("ui.uieditor.widgets.DynamicContainerWidget")
require("ui.uieditor.widgets.MP.MPDamageFeedback")
require("ui.uieditor.widgets.HUD.Outcome.Outcome")
require("ui.uieditor.widgets.EndGameFlow.Top3PlayersScreenWidget")
require("ui.uieditor.widgets.Scoreboard.ScoreboardWidget")
require("ui.uieditor.widgets.Chat.inGame.IngameChatClientContainer")
require("ui.uieditor.widgets.Scorestreaks.CallingScorestreaks.ArmDeviceWidget")
require("ui.uieditor.widgets.Scorestreaks.CallingScorestreaks.GenericProjectedTablet")
local function __FUNC_4CA_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "hudItems.combat_efficiency_enabled")
end

local function __FUNC_594_(arg0, arg1)
	local function __FUNC_FB9_(arg0, arg1)
		arg0.SafeAreaContainer.ScrStkContainer.ScrStkButtons:processEvent(arg1)
	end

	arg0:registerEventHandler("gain_focus", __FUNC_FB9_)
	local function __FUNC_1075_(arg0, arg1)
		if arg0.ScoreboardWidget.m_inputDisabled ~= false then
			arg0.SafeAreaContainer.ScrStkContainer.ScrStkButtons:processEvent(arg1)
		else
			arg0.ScoreboardWidget:processEvent(arg1)
		end
	end

	arg0:registerEventHandler("gamepad_button", __FUNC_1075_)
	local registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
	if registerVal2 then
		local function __FUNC_11A2_(arg2, arg3)
			local registerVal4 = Engine.GetModelForController(arg1)
			local registerVal3 = CoD.SafeGetModelValue(registerVal4, ("killstreaks.killstreak" .. ((CoD.CACUtility.maxScorestreaks - 1.000000) - arg2.gridInfoTable.zeroBasedIndex) .. ".rewardName"))
			if arg2.gridInfoTable.zeroBasedIndex ~= nil and registerVal3 ~= nil and registerVal3 ~= "" then
				arg0.SafeAreaContainer.MPHardcoreInventoryWidget.HardcoreScorestreakWidget.text:setText(registerVal3)
				arg0.SafeAreaContainer.MPHardcoreInventoryWidget.HardcoreScorestreakWidget:playClip("Show")
			end
		end

		arg0.SafeAreaContainer.ScrStkContainer.ScrStkButtons:registerEventHandler("list_item_gain_focus", __FUNC_11A2_)
	end
	local function __FUNC_1468_(arg0, arg1, arg2, arg3)
		if arg0.ScoreboardWidget.m_inputDisabled ~= false then
			if not arg0.SafeAreaContainer.ScrStkContainer.ScrStkButtons.m_disableNavigation then
				local registerVal6 = {}
				registerVal6.name = "gain_focus"
				registerVal6.controller = arg1
				arg0.SafeAreaContainer.ScrStkContainer:processEvent(registerVal6)
			end
			if not arg0.handlingScrStkPress then
				arg0.handlingScrStkPress = true
				CoD.Menu.HandleButtonPress(arg0, arg1, arg3, arg2)
				arg0.handlingScrStkPress = nil
			end
		end
	end

	local function __FUNC_16A3_(arg0, arg1, arg2, arg3)
		__FUNC_1468_(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_RIGHT)
		return true
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT, nil, __FUNC_16A3_, AlwaysFalse, false)
	local function __FUNC_173C_(arg0, arg1, arg2, arg3)
		__FUNC_1468_(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_UP)
		return true
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_173C_, AlwaysFalse, false)
	local function __FUNC_17D5_(arg0, arg1, arg2, arg3)
		__FUNC_1468_(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_DOWN)
		return true
	end

	arg0:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_17D5_, AlwaysFalse, false)
	local function __FUNC_186F_()
		local registerVal1 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT)
		if not registerVal1 then
			registerVal1 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		end
		arg0.SafeAreaContainer.ScrStkContainer.ScrStkButtons.m_disableNavigation = registerVal1
	end

	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT))
	local function __FUNC_1A26_(arg0)
		__FUNC_186F_()
	end

	arg0:subscribeToModel(registerVal6, __FUNC_1A26_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_1A58_(arg0)
		__FUNC_186F_()
	end

	arg0:subscribeToModel(registerVal6, __FUNC_1A58_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.CreateModel(registerVal7, "hudItems.rejack.activationWindowEntered")
	local function __FUNC_1A8C_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if arg1 and registerVal1 == 0.000000 and arg0.rejackWidget then
			arg0.rejackWidget:close()
			arg0.rejackWidget = nil
		end
	end

	arg0:subscribeToModel(registerVal6, __FUNC_1A8C_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.CreateModel(registerVal7, "hudItems.rejack.rejackActivated")
	local function __FUNC_1B6A_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if arg2 and registerVal1 == 1.000000 and arg0.rejackWidget then
			arg0.rejackWidget.RejackInternal:startRejackAnimation(arg1)
		end
	end

	arg0:subscribeToModel(registerVal6, __FUNC_1B6A_)
	local function __FUNC_1C74_(arg2)
		local registerVal1 = IsParamModelEqualToString(arg2, "create_rejack_timer")
		if registerVal1 then
			CreateRejackTimer(arg0, arg1, arg2)
		end
	end

	arg0:subscribeToGlobalModel(arg1, "PerController", "scriptNotify", __FUNC_1C74_)
	local registerVal4 = DataSources.CurrentWeapon.getModel(arg1)
	if registerVal4 then
		Engine.CreateModel(registerVal4, "weaponPrestigeUI3DText")
	end
	local function __FUNC_1D27_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 and registerVal1 ~= "" then
			local registerVal3 = CoD.prestigeRewardWidget_v2.new(arg0, arg1)
			arg0.weaponPrestigeWidget = registerVal3
			arg0:addElement(arg0.weaponPrestigeWidget)
			if not arg0.weaponPrestigeWidget and arg0.weaponPrestigeWidget then
				arg0.weaponPrestigeWidget:close()
				arg0.weaponPrestigeWidget = nil
			end
		end
	end

	arg0:subscribeToGlobalModel(arg1, "CurrentWeapon", "weaponPrestigeUI3DText", __FUNC_1D27_)
	local registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.CreateModel(registerVal8, "hudItems.killstreakActivated")
	local function __FUNC_1EC6_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == 1.000000 and not arg0.ArmDeviceWidget then
			local function __FUNC_211D_()
				arg0.delayUI3DTimer = nil
				local registerVal1 = CoD.ArmDeviceWidget.new(arg0, arg1)
				arg0.ArmDeviceWidget = registerVal1
				arg0:addElement(arg0.ArmDeviceWidget)
				arg0.ArmDeviceWidget.ArmDeviceWidgetInternal:playClip("Activate")
			end

			local registerVal3 = LUI.UITimer.newElementTimer(0.000000, true, __FUNC_211D_)
			arg0.delayUI3DTimer = registerVal3
			arg0:addElement(arg0.delayUI3DTimer)
		else
			if arg0.ArmDeviceWidget then
				arg0.ArmDeviceWidget.ArmDeviceWidgetInternal:playClip("Deactivate")
				local function __FUNC_2269_(arg1, arg2)
					arg0.ArmDeviceWidget:close()
					arg0.ArmDeviceWidget = nil
				end

				arg0.ArmDeviceWidget.ArmDeviceWidgetInternal:registerEventHandler("clip_over", __FUNC_2269_)
			end
		end
	end

	arg0:subscribeToModel(registerVal7, __FUNC_1EC6_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.CreateModel(registerVal8, "hudItems.remoteKillstreakActivated")
	local function __FUNC_22DD_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		registerVal1 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SELECTING_LOCATION)
		if registerVal1 == 1.000000 and not registerVal1 then
			local registerVal2 = CoD.GenericProjectedTablet.new(arg0, arg1)
			arg0.genericProjectedTablet = registerVal2
			arg0.genericProjectedTablet.GenericProjectedTabletInternal:setState("DefaultState")
			arg0:addElement(arg0.genericProjectedTablet)
		else
			if arg0.genericProjectedTablet then
				arg0.genericProjectedTablet:close()
				arg0.genericProjectedTablet = nil
			end
		end
	end

	arg0:subscribeToModel(registerVal7, __FUNC_22DD_)
	registerVal6 = Engine.GetCurrentTeamCount()
	if 1.000000 < registerVal6 then
		registerVal8 = Engine.GetScoreboardTeamClientCount(Enum.team_t.TEAM_ALLIES)
		registerVal7 = math.max(registerVal8, Engine.GetScoreboardTeamClientCount(Enum.team_t.TEAM_AXIS))
	end
	if 6.000000 >= registerVal7 then
	end
	if true then
		arg0.ScoreboardWidget:setTopBottom(true, false, 120.000000, 684.000000)
	end
	local registerVal11 = Engine.GetModelForController(arg1)
	local registerVal10 = Engine.CreateModel(registerVal11, "updateScoreboard")
	local function __FUNC_2571_(arg0)
		CoD.ScoreboardUtility.UpdateScoreboardTeamScores(arg1)
	end

	arg0:subscribeToModel(registerVal10, __FUNC_2571_)
	arg0.SafeAreaContainer.navigation = nil
	arg0.ScoreboardWidget.navigation = nil
	local function __FUNC_260C_(arg2)
		if arg0.armbladeOpenSubscription then
			arg0:removeSubscription(arg0.armbladeOpenSubscription)
			arg0.armbladeOpenSubscription = nil
		end
		arg0:removeSubscription(arg0.armbladeCloseSubscription)
		arg0.armbladeCloseSubscription = nil
		if arg0.armbladeCloseSubscription and arg0.armbladeReticles then
			local registerVal1, registerVal2, registerVal3 = ipairs(arg0.armbladeReticles)
			for index4,value5 in registerVal1, registerVal2, registerVal3 do
				value5:close()
			end
			arg0.armbladeReticles = nil
		end
		registerVal1 = Engine.GetModelValue(arg2)
		if arg2 and registerVal1 == "WEAPON_HERO_ARMBLADE" then
			local function __FUNC_28F4_(arg2)
				local registerVal1 = Engine.GetModelValue(arg2)
				registerVal1, registerVal2, registerVal3 = ipairs(arg0.armbladeReticles)
				:close()
				arg0.armbladeReticles = nil
				registerVal2 = Engine.GetModelForController(arg1)
				registerVal1 = Engine.GetModel(registerVal2, "ArmbladeReticles")
				if not registerVal1 and arg0.armbladeReticles and registerVal1 then
					Engine.UnsubscribeAndFreeModel(registerVal1)
				end
			end

			registerVal2 = arg0:subscribeToGlobalModel(arg1, "PerController", "playerAbilities.playerGadget3.isInUse", __FUNC_28F4_)
			arg0.armbladeCloseSubscription = registerVal2
			local function __FUNC_2AA9_(arg2)
				local registerVal1 = Engine.GetModelValue(arg2)
				local registerVal2 = Engine.GetModelForController(arg1)
				registerVal1 = Engine.CreateModel(registerVal2, "ArmbladeReticles")
				arg0.armbladeReticles = {}
				local registerVal4 = CoD.RipperLockReticle.new(arg0, arg1)
				local registerVal5 = Engine.CreateModel(registerVal1, #arg0.armbladeReticles)
				local registerVal8 = {}
				registerVal8.status = 0.000000
				LUI.CreateModelsAndInitialize(registerVal5, registerVal8)
				registerVal4:setModel(registerVal5)
				registerVal8 = {}
				registerVal8.name = "update_state"
				registerVal8.controller = arg1
				registerVal8.menu = arg0
				registerVal4:processEvent(registerVal8)
				local registerVal6 = registerVal4:setupArmBladeTarget(arg1, #arg0.armbladeReticles)
				table.insert(arg0.armbladeReticles, registerVal4)
				arg0.fullscreenContainer:addElement(registerVal4)
			end

			registerVal2 = arg0:subscribeToGlobalModel(arg1, "PerController", "playerAbilities.playerGadget3.powerRatio", __FUNC_2AA9_)
			arg0.armbladeOpenSubscription = registerVal2
		end
	end

	arg0:subscribeToGlobalModel(arg1, "PerController", "playerAbilities.playerGadget3.name", __FUNC_260C_)
end

local function __FUNC_2E4D_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("T7Hud_MP")
	if __FUNC_4CA_ then
		__FUNC_4CA_(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "T7Hud_MP.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.T7Hud_MP_SafeAreaContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	local function __FUNC_4038_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_4038_)
	registerVal1:addElement(registerVal3)
	registerVal1.SafeAreaContainer = registerVal3
	local registerVal4 = CoD.ReadyEvents.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, false, -200.000000, 200.000000)
	registerVal4:setTopBottom(false, true, -178.000000, -58.000000)
	local function __FUNC_40CD_(arg1)
		local registerVal2 = IsParamModelEqualToString(arg1, "hero_weapon_received")
		if registerVal2 then
			AddHeroAbilityReceivedNotification(registerVal1, registerVal4, arg0, arg1)
		else
			registerVal2 = IsParamModelEqualToString(arg1, "killstreak_received")
			if registerVal2 then
				AddKillstreakReceivedNotification(registerVal1, registerVal4, arg0, arg1)
			end
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "PerController", "scriptNotify", __FUNC_40CD_)
	registerVal1:addElement(registerVal4)
	registerVal1.ReadyEvents = registerVal4
	local registerVal5 = CoD.MPScr.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, false, -50.000000, 50.000000)
	registerVal5:setTopBottom(true, false, 233.500000, 258.500000)
	local function __FUNC_4215_(arg1)
		local registerVal2 = IsParamModelEqualToString(arg1, "score_event")
		registerVal2 = HasPerk(arg0, "specialty_combat_efficiency")
		if registerVal2 and registerVal2 then
			local registerVal4 = {}
			registerVal4.elementName = "MPScore"
			registerVal4.clipName = "CombatEfficiencyScore"
			PlayClipOnElement(registerVal1, registerVal4, arg0)
			SetMPScoreText(registerVal1, registerVal5, arg0, arg1)
		else
			registerVal2 = IsParamModelEqualToString(arg1, "score_event")
			if registerVal2 then
				registerVal4 = {}
				registerVal4.elementName = "MPScore"
				registerVal4.clipName = "NormalScore"
				PlayClipOnElement(registerVal1, registerVal4, arg0)
				SetMPScoreText(registerVal1, registerVal5, arg0, arg1)
			end
		end
	end

	registerVal5:subscribeToGlobalModel(arg0, "PerController", "scriptNotify", __FUNC_4215_)
	registerVal1:addElement(registerVal5)
	registerVal1.MPScore = registerVal5
	local registerVal6 = CoD.DynamicContainerWidget.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.fullscreenContainer = registerVal6
	local registerVal7 = CoD.MPDamageFeedback.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -20.000000, 20.000000)
	registerVal7:setTopBottom(false, false, -20.000000, 20.000000)
	local function __FUNC_4405_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "CurrentWeapon", nil, __FUNC_4405_)
	registerVal1:addElement(registerVal7)
	registerVal1.MPDamageFeedback0 = registerVal7
	local registerVal8 = CoD.Outcome.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.Outcome = registerVal8
	local registerVal9 = CoD.Top3PlayersScreenWidget.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.Top3PlayersScreenWidget = registerVal9
	local registerVal10 = CoD.ScoreboardWidget.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -518.000000, 488.000000)
	registerVal10:setTopBottom(true, false, 163.500000, 806.500000)
	registerVal1:addElement(registerVal10)
	registerVal1.ScoreboardWidget = registerVal10
	local registerVal11 = CoD.IngameChatClientContainer.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 0.000000, 360.000000)
	registerVal11:setTopBottom(true, false, -2.500000, 717.500000)
	registerVal1:addElement(registerVal11)
	registerVal1.IngameChatClientContainer = registerVal11
	local registerVal12 = {}
	registerVal12.left = registerVal10
	registerVal12.down = registerVal10
	registerVal3.navigation = registerVal12
	registerVal12 = {}
	registerVal12.left = registerVal10
	registerVal12.down = registerVal10
	registerVal9.navigation = registerVal12
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13 = {registerVal3, registerVal9}
	registerVal12.up = registerVal13
	registerVal13 = {}
	registerVal13 = {registerVal3, registerVal9}
	registerVal12.right = registerVal13
	registerVal10.navigation = registerVal12
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_4456_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal1.ReadyEvents:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.MPScore:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
	end

	registerVal13.DefaultClip = __FUNC_4456_
	local function __FUNC_45AC_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal13.SpeedBoost = __FUNC_45AC_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_460E_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal1.ReadyEvents:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.MPScore:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
	end

	registerVal13.DefaultClip = __FUNC_460E_
	registerVal12.HideAllButScoreboard = registerVal13
	registerVal13 = {}
	local function __FUNC_4764_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultClip = __FUNC_4764_
	local function __FUNC_47C6_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal13.DefaultState = __FUNC_47C6_
	registerVal12.SpeedBoost = registerVal13
	registerVal13 = {}
	local function __FUNC_4826_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal1.MPScore:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
	end

	registerVal13.DefaultClip = __FUNC_4826_
	registerVal12.HideForCodCaster = registerVal13
	registerVal1.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "HideAllButScoreboard"
	local function __FUNC_4923_(arg1, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_GAME_ENDED)
		if not registerVal3 and not registerVal3 and not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_4923_
	local registerVal16 = {}
	registerVal16.stateName = "SpeedBoost"
	local function __FUNC_4AF5_(arg1, arg2, arg3)
		local registerVal3 = IsHeroWeaponOrGadgetInUse(arg1, arg0)
		if registerVal3 then
			registerVal3 = IsHeroWeaponSpeedBurst(arg1, arg0)
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_4AF5_
	local registerVal17 = {}
	registerVal17.stateName = "HideForCodCaster"
	local function __FUNC_4B8F_(arg1, arg2, arg3)
		local registerVal3 = IsCodCaster(arg0)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg0, "shoutcaster_qs_playerhud", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_4B8F_
	registerVal14 = {registerVal15, registerVal16, registerVal17}
	registerVal1:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	local function __FUNC_4C4C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_4C4C_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	local function __FUNC_4DD8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_4DD8_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_4F68_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_4F68_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	local function __FUNC_50F1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM)
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_50F1_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "currentWeapon.weapon")
	local function __FUNC_5279_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_5279_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_53A2_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_53A2_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "playerAbilities.playerGadget3.name")
	local function __FUNC_54DB_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_54DB_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "factions.isCoDCaster")
	local function __FUNC_5610_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_5610_)
	registerVal15 = Engine.GetModelForController(arg0)
	registerVal14 = Engine.GetModel(registerVal15, "CodCaster.profileSettingsUpdated")
	local function __FUNC_573A_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_573A_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	registerVal3.id = "SafeAreaContainer"
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	registerVal9.id = "Top3PlayersScreenWidget"
	registerVal10:setModel(registerVal1.buttonModel, arg0)
	registerVal10.id = "ScoreboardWidget"
	registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.SafeAreaContainer:processEvent(registerVal14)
	end
	local function __FUNC_586E_(arg1)
		arg1.SafeAreaContainer:close()
		arg1.ReadyEvents:close()
		arg1.MPScore:close()
		arg1.fullscreenContainer:close()
		arg1.MPDamageFeedback0:close()
		arg1.Outcome:close()
		arg1.Top3PlayersScreenWidget:close()
		arg1.ScoreboardWidget:close()
		arg1.IngameChatClientContainer:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "T7Hud_MP.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_586E_)
	if __FUNC_594_ then
		__FUNC_594_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.T7Hud_MP = __FUNC_2E4D_
