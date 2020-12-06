-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.MatchStartWarningContainer")
local function __FUNC_225_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "lobbyRoot.lobbyTimeRemaining")
	registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "lobbyRoot.lobbyMenuOccluded")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MatchStartWarning = registerVal2
local function __FUNC_330_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_225_ then
		__FUNC_225_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MatchStartWarning)
	registerVal2.id = "MatchStartWarning"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.MatchStartWarningContainer.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal3:setTopBottom(true, false, 31.000000, 81.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.MatchStartWarningContainer0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_900_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.MatchStartWarningContainer0:setLeftRight(false, false, -100.000000, 100.000000)
		registerVal2.MatchStartWarningContainer0:setTopBottom(true, false, -66.000000, -16.000000)
		registerVal2.MatchStartWarningContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_900_
	local function __FUNC_AA3_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_C29_(arg0, arg1)
			local function __FUNC_DDB_(arg0, arg1)
				local function __FUNC_F68_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 90.000000, false, true, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -100.000000, 100.000000)
					arg0:setTopBottom(true, false, 31.000000, 81.000000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_F68_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, true, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 25.000000, 75.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F68_)
			end

			if arg1.interrupted then
				__FUNC_DDB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 46.000000, 96.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDB_)
		end

		registerVal3:completeAnimation()
		registerVal2.MatchStartWarningContainer0:setLeftRight(false, false, -100.000000, 100.000000)
		registerVal2.MatchStartWarningContainer0:setTopBottom(true, false, -66.000000, -16.000000)
		registerVal2.MatchStartWarningContainer0:setAlpha(0.000000)
		__FUNC_C29_(registerVal3, {})
	end

	registerVal5.Visible = __FUNC_AA3_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_118D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.MatchStartWarningContainer0:setLeftRight(false, false, -100.000000, 100.000000)
		registerVal2.MatchStartWarningContainer0:setTopBottom(true, false, 31.000000, 81.000000)
		registerVal2.MatchStartWarningContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_118D_
	local function __FUNC_132A_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_14AC_(arg0, arg1)
			local function __FUNC_163C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -100.000000, 100.000000)
				arg0:setTopBottom(true, false, -66.000000, -16.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_163C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 45.000000, 95.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_163C_)
		end

		registerVal3:completeAnimation()
		registerVal2.MatchStartWarningContainer0:setLeftRight(false, false, -100.000000, 100.000000)
		registerVal2.MatchStartWarningContainer0:setTopBottom(true, false, 31.000000, 81.000000)
		registerVal2.MatchStartWarningContainer0:setAlpha(1.000000)
		__FUNC_14AC_(registerVal3, {})
	end

	registerVal5.DefaultState = __FUNC_132A_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_1861_(arg0, arg2, arg3)
		local registerVal3 = IsMultiplayer()
		registerVal3 = IsGlobalModelValueGreaterThan(arg1, "lobbyRoot.lobbyTimeRemaining", 0.000000)
		if registerVal3 and registerVal3 then
			registerVal3 = IsGlobalModelValueTrue(arg2, arg1, "lobbyRoot.lobbyMenuOccluded")
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_1861_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_197E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_197E_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyTimeRemaining")
	local function __FUNC_1AA4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyTimeRemaining"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1AA4_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyMenuOccluded")
	local function __FUNC_1BD6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyMenuOccluded"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1BD6_)
	local function __FUNC_1D05_(arg0)
		arg0.MatchStartWarningContainer0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D05_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MatchStartWarning.new = __FUNC_330_
