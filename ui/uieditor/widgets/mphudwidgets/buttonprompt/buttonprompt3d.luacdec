-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D7_(arg0)
	local registerVal1 = arg0.nameLabel:getTextWidth()
	local registerVal2, registerVal3, registerVal4, registerVal5 = arg0.nameLabel:getLocalRect()
	local registerVal6 = arg0.requirementLabel:getTextWidth()
	local registerVal7 = math.max(registerVal1, registerVal6)
	arg0:setLeftRight(false, false, (-((registerVal2 + registerVal7) + 7.000000) / 2.000000), (((registerVal2 + registerVal7) + 7.000000) / 2.000000))
end

local function __FUNC_310_(arg0, arg1)
	if arg1.objId then
		arg0.objIndex = arg1.objId
		arg0:setLeftRight(false, false, -128.000000, 128.000000)
		arg0:setTopBottom(false, false, -32.000000, 32.000000)
		arg0:setupInteractivePrompt(arg0.objIndex, 0.000000, 0.000000, arg0.objective.3d_prompt_z_offset)
		arg0:setupInterPromptObjectiveType(true)
		arg0:setupInterPromptHideOutRange(true)
		if arg0.objective.3d_prompt_text ~= nil then
			arg0.nameLabel:setText(Engine.Localize(arg0.objective.3d_prompt_text))
		else
			arg0.nameLabel:setText("")
		end
		arg0.iconImage:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		arg0.iconImage:setImage(RegisterImage(arg0.objective.3d_prompt_image))
	end
end

local function __FUNC_6FD_(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal2, "interactivePrompt")
	Engine.CreateModel(registerVal3, "activeActionEntityText")
	Engine.CreateModel(registerVal3, "activeObjectiveID")
	Engine.CreateModel(registerVal3, "objectiveTextColor")
end

local function __FUNC_866_(arg0)
	arg0.setupEntity = __FUNC_310_
	arg0.progressMeter:setShaderVector(0.000000, -0.050000, 0.000000, 0.000000, 0.000000)
	arg0.recenter = __FUNC_1D7_
end

local registerVal5 = InheritFrom(LUI.UIElement)
CoD.ButtonPrompt3d = registerVal5
local function __FUNC_929_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_6FD_ then
		__FUNC_6FD_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ButtonPrompt3d)
	registerVal2.id = "ButtonPrompt3d"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 256.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 64.000000, 319.000000)
	registerVal3:setTopBottom(true, false, 32.000000, 57.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setTTF("fonts/default.ttf")
	local function __FUNC_1352_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "InteractivePrompt", "activeActionEntityText", __FUNC_1352_)
	registerVal2:addElement(registerVal3)
	registerVal2.requirementLabel = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 64.000000, 172.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 32.000000)
	registerVal4:setText(Engine.Localize("Bio-Cache"))
	registerVal4:setTTF("fonts/default.ttf")
	local function __FUNC_140A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "InteractivePrompt", "objectiveTextColor", __FUNC_140A_)
	registerVal2:addElement(registerVal4)
	registerVal2.nameLabel = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal5:setImage(RegisterImage("uie_menu_sfmap_war_hl"))
	registerVal2:addElement(registerVal5)
	registerVal2.iconImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 2.500000, 61.500000)
	registerVal6:setTopBottom(true, false, 2.500000, 61.500000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_interact_meter_thick"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal6:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_149B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal6:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "progress", true, __FUNC_149B_)
	registerVal2:addElement(registerVal6)
	registerVal2.progressMeter = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_15F0_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.requirementLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.iconImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.progressMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_15F0_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1801_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.requirementLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.iconImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.progressMeter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1801_
	registerVal7.Hidden = registerVal8
	registerVal8 = {}
	local function __FUNC_1A11_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.requirementLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.nameLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.iconImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.progressMeter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1A11_
	registerVal7.HideRequirementLabel = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Hidden"
	local function __FUNC_1C26_(arg0, arg2, arg3)
		return IsObjectiveHidden(arg2, arg1)
	end

	registerVal10.condition = __FUNC_1C26_
	local registerVal11 = {}
	registerVal11.stateName = "HideRequirementLabel"
	local function __FUNC_1C7F_(arg0, arg2, arg3)
		return IsObjectiveRequirementLabelHidden(arg2, arg1)
	end

	registerVal11.condition = __FUNC_1C7F_
	registerVal9 = {registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_1CE7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "state"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "state", true, __FUNC_1CE7_)
	local function __FUNC_1DFF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clientUseMask"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "clientUseMask", true, __FUNC_1DFF_)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "interactivePrompt.activeObjectiveID")
	local function __FUNC_1F1F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "interactivePrompt.activeObjectiveID"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1F1F_)
	local function __FUNC_2055_(arg0)
		arg0.requirementLabel:close()
		arg0.nameLabel:close()
		arg0.progressMeter:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2055_)
	if __FUNC_866_ then
		__FUNC_866_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ButtonPrompt3d.new = __FUNC_929_
