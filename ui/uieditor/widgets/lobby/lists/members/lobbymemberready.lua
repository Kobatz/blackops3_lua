-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberReady = registerVal1
function CoD.LobbyMemberReady.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberReady)
	registerVal2.id = "LobbyMemberReady"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 25.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 3.000000, 22.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 22.000000)
	registerVal3:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_zm_ready_go"))
	registerVal2:addElement(registerVal3)
	registerVal2.readyImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 3.000000, 22.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 22.000000)
	registerVal4:setRGB(1.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.150000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_zm_ready_go"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.readyImage0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 1.000000, 24.000000)
	registerVal5:setTopBottom(true, false, 1.000000, 24.000000)
	registerVal5:setAlpha(0.600000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_zm_ready_go_ring"))
	registerVal2:addElement(registerVal5)
	registerVal2.readyRing = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_943_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_943_
	local function __FUNC_9A2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.Focus = __FUNC_9A2_
	local function __FUNC_A02_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.GainFocus = __FUNC_A02_
	local function __FUNC_A62_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.LoseFocus = __FUNC_A62_
	local function __FUNC_AC2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.Intro = __FUNC_AC2_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_B22_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.readyImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.readyImage0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.readyRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B22_
	registerVal6.Invisible = registerVal7
	registerVal7 = {}
	local function __FUNC_CD2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.readyImage:setRGB(0.000000, 0.870000, 0.100000)
		registerVal2.readyImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.readyImage0:setRGB(0.000000, 0.870000, 0.100000)
		registerVal2.readyImage0:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.readyRing:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.readyRing:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_CD2_
	registerVal6.IsReady = registerVal7
	registerVal7 = {}
	local function __FUNC_F17_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.readyImage:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.readyImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.readyImage0:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.readyImage0:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.readyRing:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.readyRing:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_F17_
	registerVal6.Ready = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Invisible"
	local function __FUNC_1151_(arg0, arg1, arg2)
		return true
	end

	registerVal9.condition = __FUNC_1151_
	local registerVal10 = {}
	registerVal10.stateName = "IsReady"
	local function __FUNC_1184_(arg0, arg2, arg3)
		return PlayerIsReady(arg2, arg0, arg1)
	end

	registerVal10.condition = __FUNC_1184_
	local registerVal11 = {}
	registerVal11.stateName = "Ready"
	local function __FUNC_11DF_(arg0, arg1, arg2)
		return true
	end

	registerVal11.condition = __FUNC_11DF_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1210_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isReady"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "isReady", true, __FUNC_1210_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

