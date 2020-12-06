-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_PlayersListButton_Joinable = registerVal1
function CoD.Social_PlayersListButton_Joinable.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_PlayersListButton_Joinable)
	registerVal2.id = "Social_PlayersListButton_Joinable"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -16.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal3:setRGB(0.870000, 0.900000, 0.900000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_iconjoinable"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.joinableIcon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_7DF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.joinableIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7DF_
	local function __FUNC_8E0_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.GainFocus = __FUNC_8E0_
	local function __FUNC_942_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Focusx = __FUNC_942_
	local function __FUNC_9A2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.LoseFocus = __FUNC_9A2_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_A02_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.joinableIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A02_
	registerVal4.Joinable = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Joinable"
	local function __FUNC_AFF_(arg0, arg2, arg3)
		return IsJoinable(registerVal2, arg1)
	end

	registerVal7.condition = __FUNC_AFF_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_B50_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "joinable"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "joinable", true, __FUNC_B50_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_C6E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyLockedIn"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_C6E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

