-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_288_(arg0, arg1)
	local registerVal2, registerVal3, registerVal4, registerVal5 = arg0.sliderBack:getLocalRect()
	arg0.sliderBar:setLeftRight(true, false, (registerVal2 + ((arg1 * (registerVal4 - registerVal2)) - arg0.m_markerHalfWidth)), (registerVal2 + ((arg1 * (registerVal4 - registerVal2)) + arg0.m_markerHalfWidth)))
	arg0.sliderFill:setLeftRight(true, false, registerVal2, (registerVal2 + (arg1 * (registerVal4 - registerVal2))))
end

local function __FUNC_3BA_(arg0, arg1)
	local registerVal2 = type(arg0.updateAction)
	if registerVal2 == "function" then
		arg0.updateAction(arg0.m_menu, arg0, arg1)
	end
	__FUNC_288_(arg0, arg1)
end

local function __FUNC_47A_(arg0, arg1)
	local registerVal2, registerVal3, registerVal4, registerVal5 = arg0.sliderBack:getRect()
	local registerVal7 = CoD.ClampColor((arg1.x - registerVal2), 0.000000, (registerVal4 - registerVal2))
	__FUNC_3BA_(arg0, (registerVal7 / (registerVal4 - registerVal2)))
end

local function __FUNC_552_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	arg0.m_forceMouseEventDispatch = true
	arg0.m_menu = arg2
	local registerVal3, registerVal4, registerVal5, registerVal6 = arg0.sliderBar:getLocalRect()
	arg0.m_markerHalfWidth = ((registerVal5 - registerVal3) / 2.000000)
	local function __FUNC_727_(arg0, arg1)
		__FUNC_47A_(arg0, arg1)
		return true
	end

	arg0:registerEventHandler("leftmouseup", __FUNC_727_)
	local function __FUNC_768_(arg0, arg1)
		__FUNC_47A_(arg0, arg1)
	end

	arg0:registerEventHandler("mousedrag", __FUNC_768_)
	local function __FUNC_7A4_(arg0, arg2)
		local registerVal4 = {}
		registerVal4 = {"actionName", "perControllerValueModel", "perControllerStatusModel", "lowValue", "highValue", "getStatusTable"}
		local registerVal2 = CoD.PCUtil.GetModelValues(arg2, registerVal4)
		if registerVal2 then
			if registerVal2.perControllerValueModel and registerVal2.lowValue and registerVal2.highValue then
				local registerVal6 = Engine.GetModelForController(arg1)
				local registerVal5 = Engine.GetModel(registerVal6, registerVal2.perControllerValueModel)
				local function __FUNC_A2C_(arg1)
					local registerVal1 = Engine.GetModelValue(arg1)
					__FUNC_288_(arg0, (registerVal1 / (registerVal2.highValue - registerVal2.lowValue)))
				end

				arg0:subscribeToModel(registerVal5, __FUNC_A2C_)
			end
			if registerVal2.perControllerStatusModel then
				registerVal6 = Engine.GetModelForController(arg1)
				registerVal5 = Engine.GetModel(registerVal6, registerVal2.perControllerStatusModel)
				local function __FUNC_AF4_(arg1)
					local registerVal1 = Engine.GetModelValue(arg1)
					if registerVal2.getStatusTable then
						local registerVal2 = registerVal2.getStatusTable()
						if registerVal2[registerVal1] then
							arg0.disabled = registerVal2[registerVal1].disabled
						else
							arg0.disabled = nil
						end
						local registerVal6 = {}
						registerVal6.name = "update_state"
						registerVal6.menu = arg0.m_menu
						arg0:processEvent(registerVal6)
					end
				end

				arg0:subscribeToModel(registerVal5, __FUNC_AF4_)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setModel", __FUNC_7A4_)
end

local function __FUNC_C72_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_552_(arg0, arg1, arg2)
	end
end

local registerVal6 = InheritFrom(LUI.UIElement)
CoD.CraftActionSlider = registerVal6
local function __FUNC_CE3_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CraftActionSlider)
	registerVal2.id = "CraftActionSlider"
	registerVal2.soundSet = "SelectColor"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.100000, 0.100000, 0.100000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.fullBackground = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 25.000000, 250.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.actionName = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 4.000000, 20.000000)
	registerVal5:setTopBottom(true, false, 2.000000, 18.000000)
	local function __FUNC_1719_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_1719_)
	registerVal2:addElement(registerVal5)
	registerVal2.icon = registerVal5
	local registerVal6 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 7.000000, 237.000000)
	registerVal6:setTopBottom(true, false, 24.000000, 32.250000)
	registerVal2:addElement(registerVal6)
	registerVal2.sliderBack = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 8.900000, 130.900000)
	registerVal7:setTopBottom(false, false, 5.850000, 10.250000)
	registerVal2:addElement(registerVal7)
	registerVal2.sliderFill = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 130.900000, 134.900000)
	registerVal8:setTopBottom(true, false, 24.000000, 32.250000)
	registerVal2:addElement(registerVal8)
	registerVal2.sliderBar = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal9:setTopBottom(true, false, -2.000000, 2.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(false, true, -2.750000, 2.750000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarB = registerVal10
	local function __FUNC_17CC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.actionName:linkToElementModel(registerVal2, "actionName", true, __FUNC_17CC_)
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1886_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.actionName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.sliderFill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.sliderFill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.sliderBar:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.sliderBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1886_
	local function __FUNC_1B40_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal7:completeAnimation()
		registerVal2.sliderFill:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.sliderBar:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -1.000000, 1.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -2.000000, 2.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -1.000000, 1.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -2.750000, 2.750000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Over = __FUNC_1B40_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1E5B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.actionName:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal2.sliderFill:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.sliderBar:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal12.DefaultClip = __FUNC_1E5B_
	registerVal11.Disabled = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Disabled"
	local function __FUNC_2009_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal14.condition = __FUNC_2009_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_205C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_205C_)
	local function __FUNC_217A_(arg0)
		arg0.sliderBack:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.actionName:close()
		arg0.icon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_217A_)
	if __FUNC_C72_ then
		__FUNC_C72_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CraftActionSlider.new = __FUNC_CE3_
