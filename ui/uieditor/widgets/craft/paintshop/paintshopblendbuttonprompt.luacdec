-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PaintshopBlendButtonPrompt = registerVal1
function CoD.PaintshopBlendButtonPrompt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.PaintshopBlendButtonPrompt)
	registerVal2.id = "PaintshopBlendButtonPrompt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	local function __FUNC_7FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_7FE_)
	registerVal2:addElement(registerVal3)
	registerVal2.buttonPromptImage = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 41.000000, 131.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 21.000000)
	registerVal4:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_TO_BLEND"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.label = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8B0_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.label:setAlpha(1.000000)
		registerVal2.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_TO_STICKER"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8B0_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A32_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_TO_BLEND"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A32_
	registerVal5.Blend = registerVal6
	registerVal6 = {}
	local function __FUNC_B82_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.label:setText(Engine.Localize("MENU_EMBLEM_TOGGLE_TO_STICKER"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B82_
	registerVal5.Sticker = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Blend"
	local function __FUNC_CD4_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "blend", 0.000000)
	end

	registerVal8.condition = __FUNC_CD4_
	local registerVal9 = {}
	registerVal9.stateName = "Sticker"
	local function __FUNC_D51_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "blend", 1.000000)
	end

	registerVal9.condition = __FUNC_D51_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_DCD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "blend"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "blend", true, __FUNC_DCD_)
	local function __FUNC_EE7_(arg0)
		arg0.buttonPromptImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EE7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

