-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1CC_(arg0, arg1)
	local registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_GAME_ENDED)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	registerVal2 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
	if not registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 then
		registerVal2 = CoD.IsShoutcaster(arg1.controller)
		registerVal2 = CoD.ShoutcasterProfileVarBool(arg1.controller, "shoutcaster_playernotifications")
		if registerVal2 and registerVal2 then
			arg0:setAlpha(0.000000)
		end
	else
		arg0:setAlpha(1.000000)
	end
end

local function __FUNC_4D3_(arg0, arg1)
	local function __FUNC_825_(arg2)
		local registerVal3 = {}
		registerVal3.controller = arg1
		__FUNC_1CC_(arg0, registerVal3)
	end

	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	arg0:subscribeToModel(registerVal6, __FUNC_825_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_KILLCAM))
	arg0:subscribeToModel(registerVal6, __FUNC_825_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	arg0:subscribeToModel(registerVal6, __FUNC_825_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	arg0:subscribeToModel(registerVal6, __FUNC_825_)
	local registerVal4 = IsMultiplayer()
	if registerVal4 then
		registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
		arg0:subscribeToModel(registerVal6, __FUNC_825_)
		registerVal6 = Engine.GetModel(registerVal3, "CodCaster.profileSettingsUpdated")
		arg0:subscribeToModel(registerVal6, __FUNC_825_)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.Notification_Medals = registerVal3
local function __FUNC_87C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Notification_Medals)
	registerVal2.id = "Notification_Medals"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 512.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 178.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -64.000000, 64.000000)
	registerVal3:setTopBottom(false, false, -89.000000, 39.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_hud_medals_headshot"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, 39.000000, 64.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("MEDAL_HEADSHOT"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Text = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, 64.000000, 89.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("MEDAL_HEADSHOT"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.SubText = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_EF2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_EF2_
	local function __FUNC_F52_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_115D_(arg0, arg1)
			local function __FUNC_12D7_(arg0, arg1)
				local function __FUNC_142C_(arg0, arg1)
					local function __FUNC_15A7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 192.000000, 320.000000)
						arg0:setTopBottom(true, false, 0.000000, 128.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_15A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A7_)
				end

				if arg1.interrupted then
					__FUNC_142C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142C_)
			end

			if arg1.interrupted then
				__FUNC_12D7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D7_)
		end

		registerVal3:completeAnimation()
		registerVal2.Image:setLeftRight(true, false, 192.000000, 320.000000)
		registerVal2.Image:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.Image:setAlpha(0.000000)
		__FUNC_115D_(registerVal3, {})
		local function __FUNC_17C4_(arg0, arg1)
			local function __FUNC_193F_(arg0, arg1)
				local function __FUNC_1A94_(arg0, arg1)
					local function __FUNC_1C0F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1C0F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C0F_)
				end

				if arg1.interrupted then
					__FUNC_1A94_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A94_)
			end

			if arg1.interrupted then
				__FUNC_193F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_193F_)
		end

		registerVal4:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		__FUNC_17C4_(registerVal4, {})
		local function __FUNC_1DC1_(arg0, arg1)
			local function __FUNC_1F3B_(arg0, arg1)
				local function __FUNC_2090_(arg0, arg1)
					local function __FUNC_220B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_220B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_220B_)
				end

				if arg1.interrupted then
					__FUNC_2090_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2090_)
			end

			if arg1.interrupted then
				__FUNC_1F3B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F3B_)
		end

		registerVal5:completeAnimation()
		registerVal2.SubText:setAlpha(0.000000)
		__FUNC_1DC1_(registerVal5, {})
	end

	registerVal7.medal_received = __FUNC_F52_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if __FUNC_4D3_ then
		__FUNC_4D3_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Notification_Medals.new = __FUNC_87C_
