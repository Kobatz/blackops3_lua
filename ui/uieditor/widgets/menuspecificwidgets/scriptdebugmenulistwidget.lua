-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScriptDebugMenuListWidget = registerVal1
function CoD.ScriptDebugMenuListWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScriptDebugMenuListWidget)
	registerVal2.id = "ScriptDebugMenuListWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -600.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(1.000000, 0.640000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.selectedImage = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 15.000000, 185.000000)
	registerVal4:setTopBottom(false, false, -12.000000, 8.000000)
	registerVal4:setZoom(10.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.listItemName = registerVal4
	local function __FUNC_780_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(registerVal1)
		end
	end

	registerVal2.listItemName:linkToElementModel(registerVal2, "color", true, __FUNC_780_)
	local function __FUNC_813_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.listItemName:linkToElementModel(registerVal2, "name", true, __FUNC_813_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8CA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.selectedImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.listItemName:setLeftRight(true, false, 1.000000, 157.000000)
		registerVal2.listItemName:setTopBottom(false, false, -12.000000, 8.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8CA_
	local function __FUNC_A9B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.selectedImage:setLeftRight(true, true, 0.000000, -592.000000)
		registerVal2.selectedImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.selectedImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.listItemName:setLeftRight(true, false, 15.000000, 171.000000)
		registerVal2.listItemName:setTopBottom(false, false, -12.000000, 8.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Focus = __FUNC_A9B_
	local function __FUNC_CC5_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_EE8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, -592.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.selectedImage:setLeftRight(true, true, 0.000000, -600.000000)
		registerVal2.selectedImage:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.selectedImage:setAlpha(0.000000)
		__FUNC_EE8_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.listItemName:setLeftRight(true, false, 15.000000, 171.000000)
		registerVal2.listItemName:setTopBottom(false, false, -12.000000, 8.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.GainFocus = __FUNC_CC5_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1103_(arg0)
		arg0.listItemName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1103_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

