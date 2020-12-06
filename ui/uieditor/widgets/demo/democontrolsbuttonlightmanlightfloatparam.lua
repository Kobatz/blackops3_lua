-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1E2_(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.DemoUtility.GetEditingLightmanMarker()
	if not registerVal4 then
		return 
	end
	registerVal4 = CoD.DemoUtility.GetRoundedLightFloatParam(Engine.GetModelValue(arg3))
	arg0.value:setText(registerVal4)
end

local function __FUNC_336_(arg0, arg1, arg2)
	local function __FUNC_4A6_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 then
			if registerVal1 == "lightmanlightintensity" then
				local registerVal7 = Engine.GetGlobalModel()
				__FUNC_1E2_(arg0, arg1, registerVal1, Engine.GetModel(registerVal7, "demo.currentLightmanMarkerLightIntensity"))
			else
				if registerVal1 == "lightmanlightrange" then
					registerVal7 = Engine.GetGlobalModel()
					__FUNC_1E2_(arg0, arg1, registerVal1, Engine.GetModel(registerVal7, "demo.currentLightmanMarkerLightRange"))
				end
			end
		end
	end

	arg0.value:linkToElementModel(arg0, "btnId", true, __FUNC_4A6_)
	local function __FUNC_671_(arg2)
		if arg0.btnId ~= "lightmanlightintensity" then
			return 
		end
		__FUNC_1E2_(arg0, arg1, arg0.btnId, arg2)
	end

	arg0.value:subscribeToGlobalModel(arg1, "Demo", "currentLightmanMarkerLightIntensity", __FUNC_671_)
	local function __FUNC_70B_(arg1)
		if arg0.btnId ~= "lightmanlightrange" then
			return 
		end
		local registerVal1 = CoD.DemoUtility.GetRoundedLightFloatParam(Engine.GetModelValue(arg1))
		arg0.value:setText(registerVal1)
	end

	arg0.value:subscribeToGlobalModel(arg1, "Demo", "currentLightmanMarkerLightRange", __FUNC_70B_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.DemoControlsButtonLightmanLightFloatParam = registerVal3
local function __FUNC_85B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoControlsButtonLightmanLightFloatParam)
	registerVal2.id = "DemoControlsButtonLightmanLightFloatParam"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -40.000000, 40.000000)
	registerVal3:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal3:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal2:addElement(registerVal3)
	registerVal2.border = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -38.000000, 38.000000)
	registerVal4:setTopBottom(false, false, -10.500000, 10.500000)
	registerVal4:setRGB(0.180000, 0.180000, 0.180000)
	registerVal2:addElement(registerVal4)
	registerVal2.imagebg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -30.000000, -10.000000)
	registerVal5:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.icon = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal6:setTopBottom(false, false, -22.500000, -12.500000)
	registerVal6:setZRot(180.000000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.uparrow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -8.000000, 8.000000)
	registerVal7:setTopBottom(false, false, 12.500000, 22.500000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.downarrow = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, -8.000000, 10.000000)
	registerVal8:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal8:setText(Engine.Localize("x"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.x = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, 8.000000, 35.000000)
	registerVal9:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal9:setText(Engine.Localize("5.0"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.value = registerVal9
	local function __FUNC_15A0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.icon:linkToElementModel(registerVal2, "icon", true, __FUNC_15A0_)
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1654_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.border:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.icon:setYRot(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.DefaultClip = __FUNC_1654_
	local function __FUNC_1907_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.border:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.Focus = __FUNC_1907_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1B51_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.icon:setRGB(ColorSet.Disabled.r, ColorSet.Disabled.g, ColorSet.Disabled.b)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal11.DefaultClip = __FUNC_1B51_
	registerVal10.Disabled = registerVal11
	registerVal11 = {}
	local function __FUNC_1D45_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.border:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.icon:setYRot(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.DefaultClip = __FUNC_1D45_
	local function __FUNC_1FF7_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.border:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.Focus = __FUNC_1FF7_
	registerVal10.ShowOnlyUpArrow = registerVal11
	registerVal11 = {}
	local function __FUNC_2246_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.border:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.icon:setYRot(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.DefaultClip = __FUNC_2246_
	local function __FUNC_24F7_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.border:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.uparrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.downarrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.Focus = __FUNC_24F7_
	registerVal10.ShowOnlyDownArrow = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_2746_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal13.condition = __FUNC_2746_
	local registerVal14 = {}
	registerVal14.stateName = "ShowOnlyUpArrow"
	local function __FUNC_2798_(arg0, arg2, arg3)
		return ReachedLowestLightmanFloatParamValue(arg2, arg1)
	end

	registerVal14.condition = __FUNC_2798_
	local registerVal15 = {}
	registerVal15.stateName = "ShowOnlyDownArrow"
	local function __FUNC_2806_(arg0, arg2, arg3)
		return ReachedHighestLightmanFloatParamValue(arg2, arg1)
	end

	registerVal15.condition = __FUNC_2806_
	registerVal12 = {registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_2873_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_2873_)
	local function __FUNC_298E_(arg0, arg1, arg2, arg3)
		UpdateLightmanFloatParam(arg0, arg2, "1")
		return true
	end

	local function __FUNC_2A01_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_UP, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_UP, nil, __FUNC_298E_, __FUNC_2A01_, false)
	local function __FUNC_2AEA_(arg0, arg1, arg2, arg3)
		UpdateLightmanFloatParam(arg0, arg2, "-1")
		return true
	end

	local function __FUNC_2B5E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_DOWN, "")
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_DOWN, nil, __FUNC_2AEA_, __FUNC_2B5E_, false)
	local function __FUNC_2C48_(arg0)
		arg0.icon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2C48_)
	if __FUNC_336_ then
		__FUNC_336_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.DemoControlsButtonLightmanLightFloatParam.new = __FUNC_85B_
