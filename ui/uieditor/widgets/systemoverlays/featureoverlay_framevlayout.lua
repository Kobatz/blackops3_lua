-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.featureOverlay_frameVLayout_Buttons")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.featureOverlay_frameVLayout = registerVal1
function CoD.featureOverlay_frameVLayout.new(arg0, arg1)
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
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.featureOverlay_frameVLayout)
	registerVal2.id = "featureOverlay_frameVLayout"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, true)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 466.000000)
	local function __FUNC_829_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_829_)
	local function __FUNC_87A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:changeFrameWidget(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "frameWidget", true, __FUNC_87A_)
	registerVal2:addElement(registerVal3)
	registerVal2.frame = registerVal3
	local registerVal4 = CoD.featureOverlay_frameVLayout_Buttons.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 466.000000, 502.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.buttons = registerVal4
	registerVal3.id = "frame"
	local function __FUNC_916_(arg0, arg1)
		local registerVal2 = arg0.frame:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_916_)
	local function __FUNC_A15_(arg0)
		arg0.buttons:close()
		arg0.frame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A15_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

