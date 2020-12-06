-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.CAC.NewBreadcrumb")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Identity_SubTitle = registerVal1
function CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Identity_SubTitle)
	registerVal2.id = "StartMenu_Identity_SubTitle"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 448.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 2.000000, -1.950000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 7.000000, -7.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal4:setText(Engine.Localize("SOMETHING"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_9F3_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_9F3_)
	registerVal2:addElement(registerVal4)
	registerVal2.SubTitle = registerVal4
	local registerVal5 = CoD.NewBreadcrumb.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, 0.000000, 12.000000)
	registerVal5:setTopBottom(false, false, -6.000000, 6.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.newIcon = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A51_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonPanel0:setTopBottom(true, true, 2.000000, -1.950000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A51_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_C10_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel0:setLeftRight(true, true, 0.000000, 14.000000)
		registerVal2.FEButtonPanel0:setTopBottom(true, true, 2.000000, -1.950000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.newIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C10_
	registerVal6.HasNew = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "HasNew"
	local function __FUNC_DDA_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_DDA_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_E25_(arg0)
		arg0.FEButtonPanel0:close()
		arg0.newIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E25_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

