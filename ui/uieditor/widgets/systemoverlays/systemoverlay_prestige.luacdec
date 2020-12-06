-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_GenericForeground_Full")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_supportWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Prestige = registerVal1
function CoD.systemOverlay_Prestige.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Prestige)
	registerVal2.id = "systemOverlay_Prestige"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.systemOverlay_Layout_GenericForeground_Full.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_864_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_864_)
	registerVal2:addElement(registerVal3)
	registerVal2.foreground = registerVal3
	local registerVal4 = CoD.systemOverlay_supportWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 85.400000, 359.400000)
	registerVal4:setTopBottom(false, true, -52.000000, -28.000000)
	local function __FUNC_8B6_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_8B6_)
	registerVal2:addElement(registerVal4)
	registerVal2.supportInfo = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 85.400000, 359.400000)
	registerVal5:setTopBottom(true, true, 18.000000, -52.000000)
	registerVal5:setAlpha(0.900000)
	registerVal5:setScale(0.900000)
	local function __FUNC_906_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_906_)
	registerVal2:addElement(registerVal5)
	registerVal2.largeImage = registerVal5
	registerVal3.id = "foreground"
	local function __FUNC_9B8_(arg0, arg1)
		local registerVal2 = arg0.foreground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_9B8_)
	local function __FUNC_ABE_(arg0)
		arg0.foreground:close()
		arg0.supportInfo:close()
		arg0.largeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_ABE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

