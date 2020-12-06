-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberGamertag = registerVal1
function CoD.LobbyMemberGamertag.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberGamertag)
	registerVal2.id = "LobbyMemberGamertag"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 271.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 271.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setRGB(0.870000, 0.900000, 0.900000)
	registerVal3:setAlpha(0.250000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_898_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "clanTagAndGamertag", true, __FUNC_898_)
	registerVal2:addElement(registerVal3)
	registerVal2.gamertag = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_92C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.gamertag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_92C_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_A97_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.gamertag:setRGB(0.960000, 1.000000, 0.330000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A97_
	local function __FUNC_BFF_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Focus = __FUNC_BFF_
	local function __FUNC_C5E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.GainFocus = __FUNC_C5E_
	local function __FUNC_CBE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LoseFocus = __FUNC_CBE_
	registerVal4.IsSelf = registerVal5
	registerVal5 = {}
	local function __FUNC_D1E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.gamertag:setRGB(1.000000, 0.360000, 0.360000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_D1E_
	local function __FUNC_E82_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Focus = __FUNC_E82_
	local function __FUNC_EE2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.GainFocus = __FUNC_EE2_
	local function __FUNC_F42_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LoseFocus = __FUNC_F42_
	registerVal4.IsLackingDLC = registerVal5
	registerVal5 = {}
	local function __FUNC_FA2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.gamertag:setRGB(0.870000, 0.900000, 0.900000)
		registerVal2.gamertag:setAlpha(1.000000)
		registerVal2.gamertag:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_FA2_
	local function __FUNC_110B_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Focus = __FUNC_110B_
	local function __FUNC_116A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.GainFocus = __FUNC_116A_
	local function __FUNC_11CA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LoseFocus = __FUNC_11CA_
	registerVal4.IsPartyMember = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "IsSelf"
	local function __FUNC_122A_(arg0, arg2, arg3)
		return IsSelfItem(arg2, arg1)
	end

	registerVal7.condition = __FUNC_122A_
	local registerVal8 = {}
	registerVal8.stateName = "IsLackingDLC"
	local function __FUNC_127C_(arg0, arg2, arg3)
		return ShowClientInRedForMissingDLC(arg2, arg1)
	end

	registerVal8.condition = __FUNC_127C_
	local registerVal9 = {}
	registerVal9.stateName = "IsPartyMember"
	local function __FUNC_12E2_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal9.condition = __FUNC_12E2_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_132C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "dlcBits"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "dlcBits", true, __FUNC_132C_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "MapVote.mapVoteMapNext")
	local function __FUNC_1449_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MapVote.mapVoteMapNext"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1449_)
	local function __FUNC_1574_(arg0)
		arg0.gamertag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1574_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

