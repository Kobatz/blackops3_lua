-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Social.JoinButtonPrompt")
local function __FUNC_211_(arg0, arg1, arg2)
	if CoD.isPC then
		arg0:setHandleMouse(true)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Social_JoinBtn = registerVal2
local function __FUNC_293_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_JoinBtn)
	registerVal2.id = "Social_JoinBtn"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 196.000000, 200.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 26.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.spacer = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 168.000000, 200.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 24.000000)
	registerVal4:setText(Engine.Localize("MENU_JOIN_SERVER_CAPS"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.joinLabel = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 164.000000, 168.000000)
	registerVal5:setTopBottom(true, false, 6.000000, 20.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Image0 = registerVal5
	local registerVal6 = CoD.JoinButtonPrompt.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 138.000000, 164.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 26.000000)
	registerVal6.KMprompt:setText(Engine.Localize("J"))
	local function __FUNC_C02_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.GpadButtonImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "alt1_button_image", __FUNC_C02_)
	registerVal2:addElement(registerVal6)
	registerVal2.JoinButtonPrompt = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_CD9_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.joinLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.joinLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.JoinButtonPrompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_CD9_
	local function __FUNC_E6B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.joinLabel:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.Over = __FUNC_E6B_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_FF5_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.joinLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.JoinButtonPrompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_FF5_
	registerVal7.NotJoinable = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NotJoinable"
	local function __FUNC_1153_(arg0, arg2, arg3)
		local registerVal3 = IsJoinable(registerVal2, arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1153_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_11A8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "joinable"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "joinable", true, __FUNC_11A8_)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_12C6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyLockedIn"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_12C6_)
	local function __FUNC_13F1_(arg0)
		arg0.JoinButtonPrompt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13F1_)
	if __FUNC_211_ then
		__FUNC_211_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Social_JoinBtn.new = __FUNC_293_
