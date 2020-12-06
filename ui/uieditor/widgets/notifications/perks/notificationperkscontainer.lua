-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Perks.Notification_Perks")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.NotificationPerksContainer = registerVal1
function CoD.NotificationPerksContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.NotificationPerksContainer)
	registerVal2.id = "NotificationPerksContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 170.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Notification_Perks.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -500.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -170.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setYRot(-20.000000)
	local function __FUNC_9DB_(arg0, arg2)
		local registerVal3 = IsInPrematchPeriod()
		if registerVal3 then
			PlayClip(registerVal2, "hud_start", arg1)
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("hud_boot", __FUNC_9DB_)
	local function __FUNC_AAA_(arg0)
		local registerVal2 = IsParamModelEqualToString(arg0, "show_perk_notification")
		registerVal2 = IsInPrematchPeriod()
		if registerVal2 and not registerVal2 then
			PlayClip(registerVal2, "hud_start", arg1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "PerController", "scriptNotify", __FUNC_AAA_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Perk0"
	local function __FUNC_B98_(arg0, arg2, arg3)
		local registerVal3 = HasPerksInSlot0(arg1)
		if registerVal3 then
			registerVal3 = HasPerksInSlot1(arg1)
			if not registerVal3 then
				registerVal3 = HasPerksInSlot2(arg1)
			else
			end
		end
		return true
	end

	registerVal7.condition = __FUNC_B98_
	local registerVal8 = {}
	registerVal8.stateName = "Perk0_Perk1_Perk2"
	local function __FUNC_C57_(arg0, arg2, arg3)
		local registerVal3 = HasPerksInSlot0(arg1)
		registerVal3 = HasPerksInSlot1(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = HasPerksInSlot2(arg1)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_C57_
	local registerVal9 = {}
	registerVal9.stateName = "Perk0_Perk1"
	local function __FUNC_D03_(arg0, arg2, arg3)
		local registerVal3 = HasPerksInSlot0(arg1)
		registerVal3 = HasPerksInSlot1(arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = HasPerksInSlot2(arg1)
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_D03_
	local registerVal10 = {}
	registerVal10.stateName = "Perk0_Perk2"
	local function __FUNC_DB3_(arg0, arg2, arg3)
		local registerVal3 = HasPerksInSlot0(arg1)
		if registerVal3 then
			registerVal3 = HasPerksInSlot1(arg1)
			if not registerVal3 then
				registerVal3 = HasPerksInSlot2(arg1)
			else
			end
		end
		return true
	end

	registerVal10.condition = __FUNC_DB3_
	local registerVal11 = {}
	registerVal11.stateName = "Perk1"
	local function __FUNC_E6B_(arg0, arg2, arg3)
		local registerVal3 = HasPerksInSlot0(arg1)
		if not registerVal3 then
			registerVal3 = HasPerksInSlot1(arg1)
			if registerVal3 then
				registerVal3 = HasPerksInSlot2(arg1)
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_E6B_
	local registerVal12 = {}
	registerVal12.stateName = "Perk1_Perk2"
	local function __FUNC_F27_(arg0, arg2, arg3)
		local registerVal3 = HasPerksInSlot0(arg1)
		if not registerVal3 then
			registerVal3 = HasPerksInSlot1(arg1)
			if registerVal3 then
				registerVal3 = HasPerksInSlot2(arg1)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_F27_
	local registerVal13 = {}
	registerVal13.stateName = "Perk2"
	local function __FUNC_FDF_(arg0, arg2, arg3)
		local registerVal3 = HasPerksInSlot0(arg1)
		registerVal3 = HasPerksInSlot1(arg1)
		if not registerVal3 and not registerVal3 then
			registerVal3 = HasPerksInSlot2(arg1)
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_FDF_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "perks.perk0_count")
	local function __FUNC_1097_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk0_count"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1097_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "perks.perk1_count")
	local function __FUNC_11BB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk1_count"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_11BB_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "perks.perk2_count")
	local function __FUNC_12DF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk2_count"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_12DF_)
	registerVal2:addElement(registerVal3)
	registerVal2.Perks = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_1403_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Perks:setAlpha(0.000000)
		registerVal2.Perks:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1403_
	local function __FUNC_152A_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1638_(arg0, arg1)
			local function __FUNC_17B3_(arg0, arg1)
				local function __FUNC_1908_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 690.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					arg0:setZoom(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1908_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1908_)
			end

			if arg1.interrupted then
				__FUNC_17B3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17B3_)
		end

		registerVal3:completeAnimation()
		registerVal2.Perks:setAlpha(0.000000)
		registerVal2.Perks:setZoom(0.000000)
		__FUNC_1638_(registerVal3, {})
	end

	registerVal5.hud_start = __FUNC_152A_
	local function __FUNC_1ADA_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1BE8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Perks:setAlpha(1.000000)
		registerVal2.Perks:setZoom(0.000000)
		__FUNC_1BE8_(registerVal3, {})
	end

	registerVal5.hud_stop = __FUNC_1ADA_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_1DBA_(arg0)
		arg0.Perks:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1DBA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

