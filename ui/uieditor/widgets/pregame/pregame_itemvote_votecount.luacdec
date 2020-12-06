-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_ItemVote_VoteCount = registerVal1
function CoD.Pregame_ItemVote_VoteCount.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_ItemVote_VoteCount)
	registerVal2.id = "Pregame_ItemVote_VoteCount"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 191.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 101.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 190.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 68.900000)
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_99E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Pregame", "remainingVotes", __FUNC_99E_)
	registerVal2:addElement(registerVal3)
	registerVal2.VoteCount = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 190.500000)
	registerVal4:setTopBottom(true, false, 68.900000, 101.210000)
	registerVal4:setText(Engine.Localize("MENU_VOTES_CAPS"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.VoteTitle = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A56_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.VoteCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.VoteTitle:setAlpha(0.000000)
		registerVal2.VoteTitle:setText(Engine.Localize("MENU_VOTES_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A56_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_C28_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.VoteCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.VoteTitle:setAlpha(1.000000)
		registerVal2.VoteTitle:setText(Engine.Localize("MENU_VOTES_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C28_
	registerVal5.Visible = registerVal6
	registerVal6 = {}
	local function __FUNC_DFC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.VoteCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.VoteTitle:setAlpha(1.000000)
		registerVal2.VoteTitle:setText(Engine.Localize("MENU_VOTE_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_DFC_
	registerVal5.OneVoteVisible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_FCF_(arg0, arg2, arg3)
		return IsModelValueGreaterThan(arg1, "Pregame.remainingVotes", 1.000000)
	end

	registerVal8.condition = __FUNC_FCF_
	local registerVal9 = {}
	registerVal9.stateName = "OneVoteVisible"
	local function __FUNC_1056_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "Pregame.remainingVotes", 1.000000)
		if registerVal3 then
			registerVal3 = IsModelValueGreaterThan(arg1, "Pregame.maxVotes", 1.000000)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_1056_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "Pregame.remainingVotes")
	local function __FUNC_1131_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Pregame.remainingVotes"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1131_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "Pregame.maxVotes")
	local function __FUNC_125C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Pregame.maxVotes"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_125C_)
	local function __FUNC_1382_(arg0)
		arg0.VoteCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1382_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

