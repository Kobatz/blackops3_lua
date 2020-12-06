-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterLoadoutListContainer")
require("ui.uieditor.widgets.CodCaster.CodCasterLoadoutItem")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterLoadoutListContainerContainer = registerVal1
function CoD.CodCasterLoadoutListContainerContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterLoadoutListContainerContainer)
	registerVal2.id = "CodCasterLoadoutListContainerContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 721.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CodCasterLoadoutListContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -100.000000, 1081.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 92.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CodCasterLoadoutListContainer = registerVal3
	local registerVal4 = CoD.CodCasterLoadoutItem.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 1.000000, 121.000000)
	registerVal4:setTopBottom(true, false, 20.000000, 92.000000)
	registerVal4.CodCasterLoadoutSubGrid:setDataSource("CodCasterLoadoutPerks")
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Shown"
	local function __FUNC_C34_(arg0, arg2, arg3)
		local registerVal3 = HasPerksInAnySlot(arg1)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_perks", Enum.ShoutcasterSettingShowPerks.SHOUTCASTER_SETTING_SHOW_PERKS_ALWAYS)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_C34_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "lobbyRoot.platformUpdate")
	local function __FUNC_D64_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.platformUpdate"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_D64_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "perks.perk0_count")
	local function __FUNC_E92_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk0_count"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_E92_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "perks.perk1_count")
	local function __FUNC_FB7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk1_count"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_FB7_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "perks.perk2_count")
	local function __FUNC_10DB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "perks.perk2_count"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_10DB_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "CodCaster.profileSettingsUpdated")
	local function __FUNC_11FF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_11FF_)
	registerVal2:addElement(registerVal4)
	registerVal2.PerksAlways = registerVal4
	local registerVal5 = CoD.CodCasterLoadoutItem.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 1.000000, 121.000000)
	registerVal5:setTopBottom(true, false, 20.000000, 92.000000)
	registerVal5.CodCasterLoadoutSubGrid:setDataSource("CodCasterLoadoutPerks")
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Shown"
	local function __FUNC_1332_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal9.condition = __FUNC_1332_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.PerksOnSpawn = registerVal5
	local registerVal6 = {}
	registerVal7 = {}
	local function __FUNC_137C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterLoadoutListContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerksAlways:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PerksOnSpawn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_137C_
	local function __FUNC_1549_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_1797_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -100.000000, 1043.000000)
			arg0:setTopBottom(true, false, 0.000000, 97.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.CodCasterLoadoutListContainer:setLeftRight(true, false, -100.000000, 0.000000)
		registerVal2.CodCasterLoadoutListContainer:setTopBottom(true, false, 0.000000, 97.000000)
		registerVal2.CodCasterLoadoutListContainer:setAlpha(1.000000)
		__FUNC_1797_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerksAlways:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PerksOnSpawn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Visible = __FUNC_1549_
	local function __FUNC_19B9_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1B5A_(arg0, arg1)
			local function __FUNC_1CD3_(arg0, arg1)
				local function __FUNC_1E28_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Bounce)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1E28_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 2419.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E28_)
			end

			if arg1.interrupted then
				__FUNC_1CD3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD3_)
		end

		registerVal5:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
		registerVal2.PerksOnSpawn:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_1B5A_)
	end

	registerVal7.ShowPerksOnSpawn = __FUNC_19B9_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1FDD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterLoadoutListContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PerksAlways:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PerksOnSpawn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1FDD_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_21A9_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "CodCaster.showLoadout")
	end

	registerVal9.condition = __FUNC_21A9_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "CodCaster.showLoadout")
	local function __FUNC_2221_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.showLoadout"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_2221_)
	local function __FUNC_234B_(arg0)
		local registerVal2 = IsParamModelEqualToString(arg0, "player_spawned")
		registerVal2 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_perks", Enum.ShoutcasterSettingShowPerks.SHOUTCASTER_SETTING_SHOW_PERKS_ON)
		if registerVal2 and registerVal2 then
			PlayClip(registerVal2, "ShowPerksOnSpawn", arg1)
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "scriptNotify", __FUNC_234B_)
	local function __FUNC_24E0_(arg0)
		arg0.CodCasterLoadoutListContainer:close()
		arg0.PerksAlways:close()
		arg0.PerksOnSpawn:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_24E0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

