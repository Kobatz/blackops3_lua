-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C6_(arg0, arg1)
	local registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_GAME_ENDED)
	if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
		registerVal3 = CoD.IsShoutcaster(arg1.controller)
		registerVal3 = CoD.ShoutcasterProfileVarBool(arg1.controller, "shoutcaster_teamscore")
		if arg1 or registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
			registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
			registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
			registerVal3 = CoD.FSM_VISIBILITY(arg1.controller)
			if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and CoD.isCampaign ~= true and registerVal3 == 0.000000 then
				arg0:setAlpha(1.000000)
				arg0.visible = true
				if not arg0.visible and arg0.visible then
					arg0:setAlpha(0.000000)
					arg0.visible = nil
				end
			end
		end
	end
end

local function __FUNC_819_(arg0, arg1)
	arg0:setAlpha(0.000000)
	local function __FUNC_E56_(arg2)
		local registerVal3 = {}
		registerVal3.controller = arg1
		__FUNC_1C6_(arg0, registerVal3)
	end

	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SELECTING_LOCATION))
	arg0:subscribeToModel(registerVal6, __FUNC_E56_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.EMP_ScoreInfo = registerVal3
local function __FUNC_EAC_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EMP_ScoreInfo)
	registerVal2.id = "EMP_ScoreInfo"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 341.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 171.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 342.000000)
	registerVal3:setTopBottom(false, true, -171.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_hud_t7_emp_factionblackops"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_emp"))
	registerVal3:setShaderVector(0.000000, 26.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.EMPScoreInfoBlackOps = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 342.000000)
	registerVal4:setTopBottom(false, true, -171.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_hud_t7_emp_factioncdp"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_emp"))
	registerVal4:setShaderVector(0.000000, 26.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.EMPScoreInfoCDP = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_160D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.EMPScoreInfoBlackOps:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EMPScoreInfoCDP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_160D_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_1775_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.EMPScoreInfoBlackOps:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EMPScoreInfoCDP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1775_
	registerVal5.axis = registerVal6
	registerVal6 = {}
	local function __FUNC_18E2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.EMPScoreInfoBlackOps:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EMPScoreInfoCDP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_18E2_
	registerVal5.allies = registerVal6
	registerVal6 = {}
	local function __FUNC_1A4E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.EMPScoreInfoBlackOps:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EMPScoreInfoCDP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1A4E_
	registerVal5.emblem = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "axis"
	local function __FUNC_1BBA_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "factions.playerFactionName", "axis")
	end

	registerVal8.condition = __FUNC_1BBA_
	local registerVal9 = {}
	registerVal9.stateName = "allies"
	local function __FUNC_1C4B_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "factions.playerFactionName", "allies")
	end

	registerVal9.condition = __FUNC_1C4B_
	local registerVal10 = {}
	registerVal10.stateName = "emblem"
	local function __FUNC_1CDD_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "factions.playerFactionName", "free")
	end

	registerVal10.condition = __FUNC_1CDD_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "factions.playerFactionName")
	local function __FUNC_1D6F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.playerFactionName"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1D6F_)
	if __FUNC_819_ then
		__FUNC_819_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.EMP_ScoreInfo.new = __FUNC_EAC_
