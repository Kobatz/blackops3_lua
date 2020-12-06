-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1E1_(arg0)
	local function __FUNC_267_(arg0, arg1)
		local registerVal2 = IsCurrentLanguageReversed()
		if registerVal2 then
			if (arg1 & Enum.LUIAlignment.LUI_ALIGNMENT_LEFT) ~= 0.000000 then
			else
				if (((arg1 & Enum.LUIAlignment.LUI_ALIGNMENT_VERTICAL_MASK) | Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT) & Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT) ~= 0.000000 then
				end
			end
		end
		arg0.defaultText.setAlignment(arg0, ((((arg1 & Enum.LUIAlignment.LUI_ALIGNMENT_VERTICAL_MASK) | Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT) & Enum.LUIAlignment.LUI_ALIGNMENT_VERTICAL_MASK) | Enum.LUIAlignment.LUI_ALIGNMENT_LEFT))
	end

	arg0.defaultText.setAlignment = __FUNC_267_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_Controls_GenericControllerItem = registerVal2
local function __FUNC_42E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_Controls_GenericControllerItem)
	registerVal2.id = "StartMenu_Options_Controls_GenericControllerItem"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_980_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "text", true, __FUNC_980_)
	registerVal2:addElement(registerVal3)
	registerVal2.defaultText = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_A3A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.defaultText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.defaultText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A3A_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_B6A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.defaultText:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B6A_
	registerVal4.NonDefault = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "NonDefault"
	local function __FUNC_CF7_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isDefault")
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_CF7_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_D6D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isDefault"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isDefault", true, __FUNC_D6D_)
	local function __FUNC_E8B_(arg0)
		arg0.defaultText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E8B_)
	if __FUNC_1E1_ then
		__FUNC_1E1_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_Controls_GenericControllerItem.new = __FUNC_42E_
