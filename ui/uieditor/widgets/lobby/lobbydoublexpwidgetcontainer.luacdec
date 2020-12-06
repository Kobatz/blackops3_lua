-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZMPromotional.ZM_PromoIconList")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyDoubleXPWidgetContainer = registerVal1
function CoD.LobbyDoubleXPWidgetContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyDoubleXPWidgetContainer)
	registerVal2.id = "LobbyDoubleXPWidgetContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 520.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ZM_PromoIconList.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 58.000000, 260.000000)
	registerVal3:setTopBottom(true, false, 420.010000, 475.010000)
	registerVal3:setYRot(25.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ZMPromoIconList = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_7EC_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ZMPromoIconList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7EC_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_8F3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ZMPromoIconList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8F3_
	registerVal4.ZMTheaterLobby = registerVal5
	registerVal5 = {}
	local function __FUNC_9F7_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_B71_(arg0, arg1)
			local function __FUNC_CC8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 58.000000, 260.000000)
				arg0:setTopBottom(true, false, 265.010000, 320.010000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC8_)
		end

		registerVal3:completeAnimation()
		registerVal2.ZMPromoIconList:setLeftRight(true, false, 58.000000, 260.000000)
		registerVal2.ZMPromoIconList:setTopBottom(true, false, 265.010000, 320.010000)
		registerVal2.ZMPromoIconList:setAlpha(0.000000)
		__FUNC_B71_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9F7_
	registerVal4.ZMMainLobby = registerVal5
	registerVal5 = {}
	local function __FUNC_EED_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ZMPromoIconList:setLeftRight(true, false, 58.000000, 260.000000)
		registerVal2.ZMPromoIconList:setTopBottom(true, false, 405.010000, 460.010000)
		registerVal2.ZMPromoIconList:setScale(0.800000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_EED_
	registerVal4.ZMPrivateLobby = registerVal5
	registerVal5 = {}
	local function __FUNC_1083_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ZMPromoIconList:setLeftRight(true, false, 58.000000, 260.000000)
		registerVal2.ZMPromoIconList:setTopBottom(true, false, 369.010000, 424.010000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1083_
	registerVal4.ZMPublicLobby = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "ZMTheaterLobby"
	local function __FUNC_11E4_(arg0, arg1, arg2)
		local registerVal3 = IsZombies()
		if registerVal3 then
			registerVal3 = IsInTheaterMode()
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_11E4_
	local registerVal8 = {}
	registerVal8.stateName = "ZMMainLobby"
	local function __FUNC_1258_(arg0, arg1, arg2)
		local registerVal3 = IsZombies()
		if registerVal3 then
			registerVal3 = IsCustomLobby()
			if not registerVal3 then
				registerVal3 = IsPublicLobby()
			else
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_1258_
	local registerVal9 = {}
	registerVal9.stateName = "ZMPrivateLobby"
	local function __FUNC_1301_(arg0, arg1, arg2)
		local registerVal3 = IsZombies()
		if registerVal3 then
			registerVal3 = IsCustomLobby()
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_1301_
	local registerVal10 = {}
	registerVal10.stateName = "ZMPublicLobby"
	local function __FUNC_1372_(arg0, arg1, arg2)
		local registerVal3 = IsZombies()
		if registerVal3 then
			registerVal3 = IsPublicLobby()
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_1372_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_13E2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_13E2_)
	local function __FUNC_1508_(arg0)
		arg0.ZMPromoIconList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1508_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

