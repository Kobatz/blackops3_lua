-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterLoadoutListItem")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CodCaster.CodCasterLoadoutItemHintText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterLoadoutItem = registerVal1
function CoD.CodCasterLoadoutItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterLoadoutItem)
	registerVal2.id = "CodCasterLoadoutItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 0.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:setLeftRight(true, false, 0.000000, 360.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal3:setWidgetType(CoD.CodCasterLoadoutListItem)
	registerVal3:setHorizontalCount(6.000000)
	registerVal3:setSpacing(0.000000)
	local function __FUNC_ABE_(arg0, arg1)
		local registerVal2 = IsWidthZero(arg1)
		registerVal2 = IsElementInState(arg0, "Shown")
		if registerVal2 and registerVal2 then
			SetState(registerVal2, "DefaultState")
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setWidth", __FUNC_ABE_)
	registerVal2:addElement(registerVal3)
	registerVal2.CodCasterLoadoutSubGrid = registerVal3
	local registerVal4 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 10.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FocusTop = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 66.000000, 74.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusBottom = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -1.000000, 3.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.spacer = registerVal6
	local registerVal7 = CoD.CodCasterLoadoutItemHintText.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -230.500000, 230.500000)
	registerVal7:setTopBottom(false, true, -99.000000, -79.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.CodCasterLoadoutItemHintText = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_B8A_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterLoadoutSubGrid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.spacer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CodCasterLoadoutItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_B8A_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_E04_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterLoadoutSubGrid:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBottom:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.spacer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CodCasterLoadoutItemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_E04_
	local function __FUNC_1085_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.CodCasterLoadoutItemHintText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.Active = __FUNC_1085_
	registerVal8.Shown = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_1247_(arg0, arg2)
		local registerVal2 = PropertyIsTrue(registerVal2, "m_active")
		registerVal2 = IsElementInState(arg0, "Shown")
		if registerVal2 and registerVal2 then
			PlayClip(registerVal2, "Active", arg1)
			RestoreWidgetWidth(registerVal2)
		else
			registerVal2 = IsElementInState(arg0, "Shown")
			if registerVal2 then
				RestoreWidgetWidth(registerVal2)
			else
				SetWidth(registerVal2, "0")
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_1247_)
	local function __FUNC_13AA_(arg0)
		arg0.CodCasterLoadoutSubGrid:close()
		arg0.FocusTop:close()
		arg0.FocusBottom:close()
		arg0.CodCasterLoadoutItemHintText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13AA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

