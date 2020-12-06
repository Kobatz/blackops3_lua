-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1CE_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "GametypeSettings.Update")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GameSettings_ChangedIndicator = registerVal2
local function __FUNC_282_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1CE_ then
		__FUNC_1CE_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_ChangedIndicator)
	registerVal2.id = "GameSettings_ChangedIndicator"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 30.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 5.500000, -5.500000)
	registerVal3:setTopBottom(true, true, 5.500000, -5.500000)
	registerVal3:setImage(RegisterImage("uie_t7_gamesettings_asteriskicon"))
	registerVal2:addElement(registerVal3)
	registerVal2.ChangedIndicator = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_icontoken_cp"))
	registerVal2:addElement(registerVal4)
	registerVal2.ChangedIndicatorCP = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_898_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChangedIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_898_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9A0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ChangedIndicator:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ChangedIndicatorCP:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9A0_
	registerVal5.Visible = registerVal6
	registerVal6 = {}
	local function __FUNC_B0D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ChangedIndicator:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ChangedIndicatorCP:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B0D_
	registerVal5.VisibleCP = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_C79_(arg0, arg1, arg2)
		local registerVal3 = IsGametypeItemSettingDefault(arg1)
		if not registerVal3 then
			registerVal3 = IsCampaign()
		else
		end
		return true
	end

	registerVal8.condition = __FUNC_C79_
	local registerVal9 = {}
	registerVal9.stateName = "VisibleCP"
	local function __FUNC_D0E_(arg0, arg1, arg2)
		local registerVal3 = IsGametypeItemSettingDefault(arg1)
		if not registerVal3 then
			registerVal3 = IsCampaign()
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_D0E_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "GametypeSettings.Update")
	local function __FUNC_D9E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GametypeSettings.Update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_D9E_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.lobbyNav")
	local function __FUNC_EC9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_EC9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GameSettings_ChangedIndicator.new = __FUNC_282_
