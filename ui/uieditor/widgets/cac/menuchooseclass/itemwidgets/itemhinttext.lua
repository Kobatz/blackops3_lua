-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.NewBreadcrumb")
local function __FUNC_209_(arg0, arg1, arg2)
	local function __FUNC_315_(arg3)
		local registerVal3 = {}
		registerVal3.name = "update_state"
		registerVal3.controller = arg1
		registerVal3.menu = arg2
		arg0:processEvent(registerVal3)
		arg0:completeAnimation()
		local registerVal1 = Engine.GetModelValue(arg3)
		if registerVal1 then
			arg0.textCenterAlign:setText(registerVal1)
		end
	end

	arg0:linkToElementModel(arg0, "hintText", true, __FUNC_315_)
	local function __FUNC_474_(arg1, arg2)
		local registerVal2 = arg1:getTextWidth()
		if arg0.currentState == "RightHasNew" then
			arg0:setLeftRight(false, true, (-(registerVal2 + 14.000000) - 8.000000), 8.000000)
		else
			if arg0.currentState == "CenterHasNew" then
				arg0:setLeftRight(false, false, ((-((registerVal2 + 14.000000) + 14.000000) / 2.000000) - 8.000000), ((((registerVal2 + 14.000000) + 14.000000) / 2.000000) + 8.000000))
			else
				if arg0.currentState == "LeftAlign" then
					arg0:setLeftRight(true, false, -8.000000, (((registerVal2 + 14.000000) + 14.000000) + 8.000000))
				else
					if arg0.currentState == "RightAlign" then
						arg0:setLeftRight(false, true, (-((registerVal2 + 14.000000) + 14.000000) - 8.000000), 8.000000)
					else
						if arg0.currentState == "CenterAlign" then
							arg0:setLeftRight(false, false, ((-((registerVal2 + 14.000000) + 14.000000) / 2.000000) - 8.000000), ((((registerVal2 + 14.000000) + 14.000000) / 2.000000) + 8.000000))
						end
					end
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0.textCenterAlign, "setText", __FUNC_474_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ItemHintText = registerVal2
local function __FUNC_6A0_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ItemHintText)
	registerVal2.id = "ItemHintText"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 188.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 2.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.black = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.024390, 0.133333, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.cachitBG0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal5:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal5:setText(Engine.Localize("MPUI_REQUIRES_DANGER_CLOSE"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLetterSpacing(0.500000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.textCenterAlign = registerVal5
	local registerVal6 = CoD.NewBreadcrumb.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -16.000000, -4.000000)
	registerVal6:setTopBottom(false, false, -5.500000, 6.500000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.newIcon = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_1175_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_1175_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_11D6_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.black:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.textCenterAlign:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_11D6_
	registerVal7.NoHintText = registerVal8
	registerVal8 = {}
	local function __FUNC_13DA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.textCenterAlign:setLeftRight(true, true, 0.000000, -20.000000)
		registerVal2.textCenterAlign:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.textCenterAlign:setAlpha(1.000000)
		registerVal2.textCenterAlign:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.newIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_13DA_
	registerVal7.RightHasNew = registerVal8
	registerVal8 = {}
	local function __FUNC_16F9_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.textCenterAlign:setLeftRight(true, true, 4.000000, -16.000000)
		registerVal2.textCenterAlign:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.textCenterAlign:setAlpha(1.000000)
		registerVal2.textCenterAlign:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.newIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_16F9_
	registerVal7.CenterHasNew = registerVal8
	registerVal8 = {}
	local function __FUNC_1A15_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.textCenterAlign:setLeftRight(true, true, 8.000000, 0.000000)
		registerVal2.textCenterAlign:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.textCenterAlign:setAlpha(1.000000)
		registerVal2.textCenterAlign:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1A15_
	registerVal7.LeftAlign = registerVal8
	registerVal8 = {}
	local function __FUNC_1D2F_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.textCenterAlign:setLeftRight(true, true, 0.000000, -8.000000)
		registerVal2.textCenterAlign:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.textCenterAlign:setAlpha(1.000000)
		registerVal2.textCenterAlign:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1D2F_
	registerVal7.RightAlign = registerVal8
	registerVal8 = {}
	local function __FUNC_2048_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.black:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.cachitBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.textCenterAlign:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.textCenterAlign:setTopBottom(false, false, -8.000000, 8.000000)
		registerVal2.textCenterAlign:setAlpha(1.000000)
		registerVal2.textCenterAlign:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_2048_
	registerVal7.CenterAlign = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NoHintText"
	local function __FUNC_236A_(arg0, arg1, arg2)
		local registerVal3 = HasHintText(arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_236A_
	local registerVal11 = {}
	registerVal11.stateName = "RightHasNew"
	local function __FUNC_23BD_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_23BD_
	local registerVal12 = {}
	registerVal12.stateName = "CenterHasNew"
	local function __FUNC_2409_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_2409_
	local registerVal13 = {}
	registerVal13.stateName = "LeftAlign"
	local function __FUNC_2455_(arg0, arg2, arg3)
		return IsHintTextLeftAlign(arg2, arg1)
	end

	registerVal13.condition = __FUNC_2455_
	local registerVal14 = {}
	registerVal14.stateName = "RightAlign"
	local function __FUNC_24B1_(arg0, arg2, arg3)
		return IsHintTextRightAlign(arg2, arg1)
	end

	registerVal14.condition = __FUNC_24B1_
	local registerVal15 = {}
	registerVal15.stateName = "CenterAlign"
	local function __FUNC_250E_(arg0, arg1, arg2)
		return true
	end

	registerVal15.condition = __FUNC_250E_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_2540_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, nil, true, __FUNC_2540_)
	local function __FUNC_264D_(arg0)
		arg0.newIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_264D_)
	if __FUNC_209_ then
		__FUNC_209_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ItemHintText.new = __FUNC_6A0_
