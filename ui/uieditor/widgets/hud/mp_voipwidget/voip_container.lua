-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.MP_VoipWidget.Voip_Entry")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Voip_Container = registerVal1
function CoD.Voip_Container.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Voip_Container)
	registerVal2.id = "Voip_Container"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 273.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Voip_Entry.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 273.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_DB2_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "HUDItems", "voipInfo.voip1", __FUNC_DB2_)
	registerVal2:addElement(registerVal3)
	registerVal2.VoipEntry0 = registerVal3
	local registerVal4 = CoD.Voip_Entry.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 273.000000)
	registerVal4:setTopBottom(true, false, 18.000000, 36.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_E02_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "HUDItems", "voipInfo.voip2", __FUNC_E02_)
	registerVal2:addElement(registerVal4)
	registerVal2.VoipEntry1 = registerVal4
	local registerVal5 = CoD.Voip_Entry.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 273.000000)
	registerVal5:setTopBottom(true, false, 36.000000, 54.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_E52_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "HUDItems", "voipInfo.voip3", __FUNC_E52_)
	registerVal2:addElement(registerVal5)
	registerVal2.VoipEntry2 = registerVal5
	local registerVal6 = CoD.Voip_Entry.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 273.000000)
	registerVal6:setTopBottom(true, false, 54.000000, 72.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_EA2_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "HUDItems", "voipInfo.voip4", __FUNC_EA2_)
	registerVal2:addElement(registerVal6)
	registerVal2.VoipEntry3 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_EF2_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.VoipEntry0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.VoipEntry1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.VoipEntry2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.VoipEntry3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_EF2_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_10FA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.VoipEntry0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.VoipEntry1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.VoipEntry2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.VoipEntry3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_10FA_
	registerVal7.HudStart = registerVal8
	registerVal8 = {}
	local function __FUNC_1302_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.VoipEntry0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.VoipEntry1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.VoipEntry2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.VoipEntry3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1302_
	registerVal7.ShowForCodCaster = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "HudStart"
	local function __FUNC_150A_(arg0, arg1, arg2)
		return true
	end

	registerVal10.condition = __FUNC_150A_
	local registerVal11 = {}
	registerVal11.stateName = "ShowForCodCaster"
	local function __FUNC_153C_(arg0, arg2, arg3)
		local registerVal3 = IsCodCaster(arg1)
		if registerVal3 then
			registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_voipdock", 1.000000)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_153C_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "factions.isCoDCaster")
	local function __FUNC_15F4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "factions.isCoDCaster"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_15F4_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "CodCaster.profileSettingsUpdated")
	local function __FUNC_171E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_171E_)
	local function __FUNC_1852_(arg0)
		arg0.VoipEntry0:close()
		arg0.VoipEntry1:close()
		arg0.VoipEntry2:close()
		arg0.VoipEntry3:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1852_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

