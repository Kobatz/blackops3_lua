-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.PlayerCard.PlayerCard")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PlayerCard_Callout = registerVal1
function CoD.PlayerCard_Callout.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PlayerCard_Callout)
	registerVal2.id = "PlayerCard_Callout"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 276.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 59.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PlayerCard.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 276.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 59.000000)
	local function __FUNC_A3F_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "PlayerCallout", nil, __FUNC_A3F_)
	local function __FUNC_A8E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.CalloutHeading:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "heading", true, __FUNC_A8E_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Emblem"
	local function __FUNC_B6A_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal7.condition = __FUNC_B6A_
	local registerVal8 = {}
	registerVal8.stateName = "Calingcard"
	local function __FUNC_BB5_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal8.condition = __FUNC_BB5_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.PlayerCard = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_C00_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.PlayerCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C00_
	local function __FUNC_D02_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_E73_(arg0, arg1)
			local function __FUNC_1023_(arg0, arg1)
				local function __FUNC_1178_(arg0, arg1)
					local function __FUNC_12F3_(arg0, arg1)
						local function __FUNC_146B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 0.000000, 276.000000)
							arg0:setTopBottom(true, false, 0.000000, 59.000000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_146B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_146B_)
					end

					if arg1.interrupted then
						__FUNC_12F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, true, true, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F3_)
				end

				if arg1.interrupted then
					__FUNC_1178_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 2279.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1178_)
			end

			if arg1.interrupted then
				__FUNC_1023_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, true, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 0.000000, 276.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1023_)
		end

		registerVal3:completeAnimation()
		registerVal2.PlayerCard:setLeftRight(true, false, -232.000000, 44.000000)
		registerVal2.PlayerCard:setTopBottom(true, false, 0.000000, 59.000000)
		registerVal2.PlayerCard:setAlpha(0.000000)
		__FUNC_E73_(registerVal3, {})
	end

	registerVal5.Side = __FUNC_D02_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_1683_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.PlayerCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1683_
	registerVal4.HideForCodCaster = registerVal5
	registerVal5 = {}
	local function __FUNC_1782_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.PlayerCard:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1782_
	registerVal4.Hidden = registerVal5
	registerVal2.clipsPerState = registerVal4
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.stateName = "HideForCodCaster"
	local function __FUNC_1882_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_calloutcards", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_1882_
	registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_1940_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		if not registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_1940_
	registerVal6 = {registerVal7, registerVal8}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "factions.isCoDCaster")
	local function __FUNC_1A80_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1A80_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "CodCaster.profileSettingsUpdated")
	local function __FUNC_1BAA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1BAA_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_1CDE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1CDE_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_1E73_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1E73_)
	local function __FUNC_2008_(arg0)
		local registerVal2 = IsParamModelEqualToString(arg0, "player_callout")
		if registerVal2 then
			ProcessPlayerCallout(registerVal2, arg1, arg0)
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "scriptNotify", __FUNC_2008_)
	local function __FUNC_20BD_(arg0)
		arg0.PlayerCard:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_20BD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

