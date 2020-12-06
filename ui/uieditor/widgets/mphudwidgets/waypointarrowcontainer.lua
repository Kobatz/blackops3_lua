-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.WaypointArrowWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WaypointArrowContainer = registerVal1
function CoD.WaypointArrowContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WaypointArrowContainer)
	registerVal2.id = "WaypointArrowContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WaypointArrowWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal3:setTopBottom(false, false, 8.000000, 40.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.WaypointArrowWidget = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5FF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.WaypointArrowWidget:setLeftRight(false, false, -16.000000, 16.000000)
		registerVal2.WaypointArrowWidget:setTopBottom(false, false, 8.000000, 40.000000)
		registerVal2.WaypointArrowWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5FF_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_792_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.WaypointArrowWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_792_
	registerVal4.Invisible = registerVal5
	registerVal5 = {}
	local function __FUNC_89B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.WaypointArrowWidget:setLeftRight(false, false, -16.000000, 16.000000)
		registerVal2.WaypointArrowWidget:setTopBottom(false, false, 15.000000, 47.000000)
		registerVal2.WaypointArrowWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_89B_
	registerVal4.Progress = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_A2E_(arg0)
		arg0.WaypointArrowWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A2E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

