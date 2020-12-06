-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_BeginsIn")
local function __FUNC_227_(arg0, arg1)
	local function __FUNC_509_(arg0, arg1)
		arg0.currentNotification = arg1
		arg0.Title.MatchText:setText(arg1.title)
		arg0.Description:setText(arg1.description)
		arg0:playClip("ShowNotification")
	end

	arg0.playNotification = __FUNC_509_
	local function __FUNC_645_()
		local registerVal1 = DataSources.PerController.getModel(arg1)
		local registerVal0 = Engine.GetModel(registerVal1, "vehicle.vehicleType")
		registerVal1 = Engine.GetModelValue(registerVal0)
		if registerVal1 == "" then
		end
		return true
	end

	local function __FUNC_77E_()
		local registerVal0 = IsGameTypeEqualToString("ball")
		if registerVal0 then
			registerVal0 = IsCurrentWeaponReference(arg1, "ball")
		end
		return registerVal0
	end

	local function __FUNC_821_(arg0, arg1)
		if LUI.DEVHideButtonPrompts then
			return 
		end
		local registerVal2 = __FUNC_77E_()
		if registerVal2 then
			if arg0.secondAttempt then
				arg0.secondAttempt = nil
			else
				arg0.secondAttempt = true
				registerVal2 = LUI.UITimer.new(500.000000, "appendNotificationSecondCheck", true, arg0)
				local function __FUNC_B78_(arg2, arg3)
					arg0.appendNotification(arg0, arg1)
				end

				arg0:registerEventHandler("appendNotificationSecondCheck", __FUNC_B78_)
				arg0:addElement(registerVal2)
			end
			return 
		end
		local function __FUNC_BDC_(arg1)
			local registerVal1 = LUI.ShallowCopy(arg1)
			if arg0.nextNotification == nil then
				arg0.nextNotification = registerVal1
			else
				if arg0.nextNotification then
					registerVal1.next = arg0.nextNotification.next
					arg0.nextNotification.next = registerVal1
				else
					arg0.nextNotification = registerVal1
					registerVal1.next = arg0.nextNotification.next
				end
			end
		end

		local registerVal3 = __FUNC_645_()
		if registerVal3 then
			__FUNC_BDC_(arg1)
		else
			if arg0.currentNotification ~= nil then
				registerVal3 = Engine.milliseconds()
				if 0.000000 < (registerVal3 - arg0.notificationStartTime) and (registerVal3 - arg0.notificationStartTime) < 30.000000 and arg0.currentNotification.priority < arg1.priority then
					arg0.nextNotification = arg0.currentNotification
					arg0:playNotification(LUI.ShallowCopy(arg1))
				else
					__FUNC_BDC_(arg1)
				else
					arg0:playNotification(LUI.ShallowCopy(arg1))
				end
			end
		end
	end

	arg0.appendNotification = __FUNC_821_
	arg0.notificationStartTime = -1.000000
	arg0.currentNotification = nil
	arg0.nextNotification = nil
	local function __FUNC_D1D_(arg0)
		local registerVal1 = Engine.milliseconds()
		arg0.notificationStartTime = registerVal1
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "playClip", __FUNC_D1D_)
	local function __FUNC_DA5_(arg1, arg2)
		arg0.notificationStartTime = -1.000000
		arg0.currentNotification = nil
		local registerVal2 = __FUNC_645_()
		if arg0.nextNotification ~= nil and not registerVal2 then
			arg0:playNotification(arg0.nextNotification)
			arg0.nextNotification = arg0.nextNotification.next
		end
	end

	arg0:registerEventHandler("clip_over", __FUNC_DA5_)
	local function __FUNC_ECC_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 == "" then
			local registerVal3 = {}
			registerVal3.name = "clip_over"
			arg0:processEvent(registerVal3)
		end
	end

	arg0:subscribeToGlobalModel(arg1, "PerController", "vehicle.vehicleType", __FUNC_ECC_)
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.equippedWeaponReference")
	local function __FUNC_F94_(arg1)
		local registerVal1 = __FUNC_77E_()
		if registerVal1 then
			arg0.nextNotification = nil
			arg0:playClip("DefaultClip")
			local registerVal3 = {}
			registerVal3.name = "clip_over"
			arg0:processEvent(registerVal3)
		end
	end

	arg0:subscribeToModel(registerVal6, __FUNC_F94_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ReadyEvents = registerVal2
local function __FUNC_1075_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ReadyEvents)
	registerVal2.id = "ReadyEvents"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal2:addElement(registerVal3)
	registerVal2.DarkenBG = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -200.000000, 200.000000)
	registerVal4:setTopBottom(false, false, 8.000000, 28.000000)
	registerVal4:setText(Engine.Localize("MENU_NEW"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Description = registerVal4
	local registerVal5 = CoD.PrematchCountdown_BeginsIn.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -142.000000, 142.000000)
	registerVal5:setTopBottom(false, false, -28.000000, 8.000000)
	registerVal5.FEButtonPanel0:setRGB(1.000000, 0.840000, 0.000000)
	registerVal5.FEButtonPanel0:setAlpha(0.800000)
	registerVal5.FEButtonPanel0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal5.Glow:setAlpha(0.440000)
	registerVal5.MatchText:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5.MatchText:setAlpha(1.000000)
	registerVal5.MatchText:setText(Engine.Localize("MENU_READY"))
	registerVal5.MatchText:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_18C1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.Description:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_18C1_
	local function __FUNC_1A16_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1B4C_(arg0, arg1)
			local function __FUNC_1CC7_(arg0, arg1)
				local function __FUNC_1E1C_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1E1C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 2750.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E1C_)
			end

			if arg1.interrupted then
				__FUNC_1CC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CC7_)
		end

		registerVal4:completeAnimation()
		registerVal2.Description:setAlpha(0.000000)
		__FUNC_1B4C_(registerVal4, {})
		local function __FUNC_1FD1_(arg0, arg1)
			local function __FUNC_214B_(arg0, arg1)
				local function __FUNC_22A0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_22A0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 2529.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22A0_)
			end

			if arg1.interrupted then
				__FUNC_214B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_214B_)
		end

		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		__FUNC_1FD1_(registerVal5, {})
	end

	registerVal7.ShowNotification = __FUNC_1A16_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_2455_(arg0)
		arg0.Title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2455_)
	if __FUNC_227_ then
		__FUNC_227_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ReadyEvents.new = __FUNC_1075_
