-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.FractureTimer.FractureTimer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FractureOverlay = registerVal1
function CoD.FractureOverlay.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FractureOverlay)
	registerVal2.id = "FractureOverlay"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FractureTimer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 37.000000, 344.000000)
	registerVal3:setTopBottom(true, false, 192.000000, 224.000000)
	registerVal3:setYRot(21.000000)
	local function __FUNC_869_(arg2, arg3)
		local registerVal3 = ShouldBootUpHUD(arg0)
		if registerVal3 then
			local registerVal5 = {}
			registerVal5.elementName = "DepositStatus"
			registerVal5.clipName = "DefaultClip"
			PlayClipOnElement(registerVal2, registerVal5, arg1)
			SetHudHasBooted(registerVal2)
		end
		if not nil then
			registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("hud_boot", __FUNC_869_)
	registerVal2:addElement(registerVal3)
	registerVal2.DepositStatus = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_9B1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DepositStatus:setLeftRight(true, false, 37.000000, 344.000000)
		registerVal2.DepositStatus:setTopBottom(true, false, 192.000000, 224.000000)
		registerVal2.DepositStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9B1_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_B40_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DepositStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B40_
	registerVal4.HideForCodCaster = registerVal5
	registerVal5 = {}
	local function __FUNC_C45_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DepositStatus:setLeftRight(true, false, 37.000000, 344.000000)
		registerVal2.DepositStatus:setTopBottom(true, false, 245.000000, 277.000000)
		registerVal2.DepositStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_C45_
	registerVal4.CodCasterLargeMinimap = registerVal5
	registerVal5 = {}
	local function __FUNC_DD4_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DepositStatus:setLeftRight(true, false, 37.000000, 344.000000)
		registerVal2.DepositStatus:setTopBottom(true, false, 192.000000, 224.000000)
		registerVal2.DepositStatus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_DD4_
	registerVal4.CodCaster = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "HideForCodCaster"
	local function __FUNC_F64_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_qs_playerhud", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_F64_
	local registerVal8 = {}
	registerVal8.stateName = "CodCasterLargeMinimap"
	local function __FUNC_1024_(arg0, arg2, arg3)
		local registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_minimap", Enum.ShoutcasterSettingMinimapMode.SHOUTCASTER_SETTING_MINIMAP_MODE_FULL)
		if registerVal3 then
			registerVal3 = IsCodCaster(arg1)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_1024_
	local registerVal9 = {}
	registerVal9.stateName = "CodCaster"
	local function __FUNC_1152_(arg0, arg2, arg3)
		return IsCodCaster(arg1)
	end

	registerVal9.condition = __FUNC_1152_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "factions.isCoDCaster")
	local function __FUNC_11A1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_11A1_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "CodCaster.profileSettingsUpdated")
	local function __FUNC_12CA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_12CA_)
	local function __FUNC_13FE_(arg0)
		arg0.DepositStatus:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13FE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

