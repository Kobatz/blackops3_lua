-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_226_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	local function __FUNC_32E_(arg2, arg3)
		if arg0.m_button then
			arg0:playClip("Flash")
			if arg0.m_isDpad then
				CoD.PCUtil.SimulateDPadButtonPress(arg1, arg0.m_button)
			else
				CoD.PCUtil.SimulateButtonPress(arg1, arg0.m_button)
			end
		end
	end

	arg0:registerEventHandler("leftmouseup", __FUNC_32E_)
	local function __FUNC_4A4_(arg0, arg2)
		local registerVal4 = {}
		registerVal4 = {"perControllerStatusModel", "getStatusTable"}
		local registerVal2 = CoD.PCUtil.GetModelValues(arg2, registerVal4)
		if registerVal2 and registerVal2.perControllerStatusModel then
			local registerVal6 = Engine.GetModelForController(arg1)
			local registerVal5 = Engine.GetModel(registerVal6, registerVal2.perControllerStatusModel)
			local function __FUNC_636_(arg1)
				local registerVal1 = Engine.GetModelValue(arg1)
				local registerVal2 = registerVal2.getStatusTable()
				if registerVal2.getStatusTable and registerVal2[registerVal1] and registerVal2[registerVal1].label then
					arg0.actionName:setText(Engine.Localize(registerVal2[registerVal1].label))
				end
			end

			arg0:subscribeToModel(registerVal5, __FUNC_636_)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setModel", __FUNC_4A4_)
end

local function __FUNC_789_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_226_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.CraftActionButton = registerVal3
local function __FUNC_7FB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CraftActionButton)
	registerVal2.id = "CraftActionButton"
	registerVal2.soundSet = "SelectColor"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.100000, 0.100000, 0.100000)
	registerVal2:addElement(registerVal3)
	registerVal2.fullBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(1.000000, 0.470000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.flash = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 25.000000, 250.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.actionName = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 4.000000, 20.000000)
	registerVal6:setTopBottom(true, false, 2.000000, 18.000000)
	local function __FUNC_104D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "image", true, __FUNC_104D_)
	registerVal2:addElement(registerVal6)
	registerVal2.icon = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, true, -2.750000, 2.750000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarB = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal8:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarT = registerVal8
	local function __FUNC_1100_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.actionName:linkToElementModel(registerVal2, "actionName", true, __FUNC_1100_)
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_11BA_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.fullBackground:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_11BA_
	local function __FUNC_1371_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.fullBackground:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -1.000000, 1.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -2.750000, 2.750000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -1.000000, 1.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -2.000000, 2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.Over = __FUNC_1371_
	local function __FUNC_160E_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_16EF_(arg0, arg1)
			local function __FUNC_1867_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1867_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1867_)
		end

		registerVal4:completeAnimation()
		registerVal2.flash:setAlpha(0.000000)
		__FUNC_16EF_(registerVal4, {})
	end

	registerVal10.Flash = __FUNC_160E_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_1A19_(arg0)
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.actionName:close()
		arg0.icon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A19_)
	if __FUNC_789_ then
		__FUNC_789_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CraftActionButton.new = __FUNC_7FB_
