-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideArenaMasterPowerRating = registerVal1
function CoD.LobbySlideArenaMasterPowerRating.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideArenaMasterPowerRating)
	registerVal2.id = "LobbySlideArenaMasterPowerRating"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 185.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3:setImage(RegisterImage("uie_t7_arena_powerrating_shield"))
	registerVal2:addElement(registerVal3)
	registerVal2.MasterShieldIcon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 28.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 21.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_933_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(GetArenaPowerRating(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "arenaSkill", true, __FUNC_933_)
	registerVal2:addElement(registerVal4)
	registerVal2.MasterPowerRating = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A0F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.MasterShieldIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MasterPowerRating:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A0F_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B73_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.MasterShieldIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MasterPowerRating:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B73_
	registerVal5.IsMaster = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "IsMaster"
	local function __FUNC_CD7_(arg0, arg2, arg3)
		return SelectedPlayerIsArenaMaster(arg2, arg1)
	end

	registerVal8.condition = __FUNC_CD7_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "Arena.selectedPlayerPoints")
	local function __FUNC_D39_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Arena.selectedPlayerPoints"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_D39_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "Arena.selectedPlayerSkill")
	local function __FUNC_E68_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "Arena.selectedPlayerSkill"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_E68_)
	local function __FUNC_F97_(arg0)
		arg0.MasterPowerRating:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F97_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

