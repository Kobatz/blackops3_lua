-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FeaturedOfflineText = registerVal1
function CoD.FeaturedOfflineText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FeaturedOfflineText)
	registerVal2.id = "FeaturedOfflineText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 293.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 293.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.OfflineNotice = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_85D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.OfflineNotice:setAlpha(0.000000)
		registerVal2.OfflineNotice:setText(Engine.Localize(""))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_85D_
	local function __FUNC_9CE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.FeaturedCardsVisible = __FUNC_9CE_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_A2E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.OfflineNotice:setAlpha(1.000000)
		registerVal2.OfflineNotice:setText(Engine.Localize("MENU_FEATURED_OFFLINE"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A2E_
	registerVal4.OfflineNormal = registerVal5
	registerVal5 = {}
	local function __FUNC_BAE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.OfflineNotice:setAlpha(1.000000)
		registerVal2.OfflineNotice:setText(Engine.Localize("MENU_FEATURED_OFFLINE_ERROR"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_BAE_
	registerVal4.OfflineError = registerVal5
	registerVal5 = {}
	local function __FUNC_D34_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.OfflineNotice:setAlpha(1.000000)
		registerVal2.OfflineNotice:setText(Engine.Localize("MENU_FEATURED_OFFLINE_CARRY_WARNING"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_D34_
	registerVal4.OfflineVoluntary = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "OfflineNormal"
	local function __FUNC_EC4_(arg0, arg2, arg3)
		local registerVal3 = ShouldShowOfflineNormalMessage(arg1)
		if registerVal3 then
			registerVal3 = ShouldShowOfflineVoluntaryMessage(arg1)
		end
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_EC4_
	local registerVal8 = {}
	registerVal8.stateName = "OfflineError"
	local function __FUNC_F6B_(arg0, arg2, arg3)
		return ShouldShowOfflineNetworkErrorMessage(arg1)
	end

	registerVal8.condition = __FUNC_F6B_
	local registerVal9 = {}
	registerVal9.stateName = "OfflineVoluntary"
	local function __FUNC_FD2_(arg0, arg2, arg3)
		local registerVal3 = ShouldShowOfflineVoluntaryMessage(arg1)
		if registerVal3 then
			registerVal3 = ShouldShowOfflineNormalMessage(arg1)
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_FD2_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_1077_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNetworkMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_1077_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_11A4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_11A4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

