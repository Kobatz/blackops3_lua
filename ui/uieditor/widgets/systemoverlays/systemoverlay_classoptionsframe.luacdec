-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ClassOptions")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_supportWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_ClassOptionsFrame = registerVal1
function CoD.systemOverlay_ClassOptionsFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_ClassOptionsFrame)
	registerVal2.id = "systemOverlay_ClassOptionsFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_80B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_80B_)
	registerVal2:addElement(registerVal3)
	registerVal2.largeImage = registerVal3
	local registerVal4 = CoD.systemOverlay_Layout_ClassOptions.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_8BC_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_8BC_)
	registerVal2:addElement(registerVal4)
	registerVal2.foreground = registerVal4
	local registerVal5 = CoD.systemOverlay_supportWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 352.000000)
	registerVal5:setTopBottom(false, true, -24.000000, 0.000000)
	local function __FUNC_90E_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_90E_)
	registerVal2:addElement(registerVal5)
	registerVal2.supportInfo = registerVal5
	registerVal4.id = "foreground"
	local function __FUNC_95E_(arg0, arg1)
		local registerVal2 = arg0.foreground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_95E_)
	local function __FUNC_A62_(arg0)
		arg0.foreground:close()
		arg0.supportInfo:close()
		arg0.largeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A62_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

