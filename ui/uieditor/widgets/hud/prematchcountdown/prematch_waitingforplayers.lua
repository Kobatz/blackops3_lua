-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Prematch_WaitingForPlayers = registerVal1
function CoD.Prematch_WaitingForPlayers.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Prematch_WaitingForPlayers)
	registerVal2.id = "Prematch_WaitingForPlayers"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal3:setTopBottom(false, false, -70.000000, -10.000000)
	registerVal3:setText(Engine.Localize("MP_WAITING_FOR_PLAYERS_SHOUTCASTER"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.waitingForPlayersLabel = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_599_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6B6_(arg0, arg1)
			local function __FUNC_82F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_82F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.750000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82F_)
		end

		registerVal3:completeAnimation()
		registerVal2.waitingForPlayersLabel:setAlpha(1.000000)
		__FUNC_6B6_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_599_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

