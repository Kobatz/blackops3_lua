-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_3dTitleHardcoreKicker = registerVal1
function CoD.FE_3dTitleHardcoreKicker.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_3dTitleHardcoreKicker)
	registerVal2.id = "FE_3dTitleHardcoreKicker"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 117.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 116.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	local function __FUNC_771_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "LobbyPlaylistName", "kickerText", __FUNC_771_)
	registerVal2:addElement(registerVal3)
	registerVal2.Kickertxt2 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_82A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Kickertxt2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_82A_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_92A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Kickertxt2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_92A_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_A25_(arg0, arg2, arg3)
		local registerVal3 = IsGlobalModelValueNonEmptyString(arg2, arg1, "lobbyRoot.lobbyTitle")
		if registerVal3 then
			registerVal3 = ShouldShowPlaylistName()
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_A25_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyTitle")
	local function __FUNC_AE0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyTitle"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_AE0_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_C0A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_C0A_)
	local function __FUNC_D30_(arg0)
		arg0.Kickertxt2:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D30_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

