-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemEditorFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Generic_Frame_Pop_up = registerVal1
function CoD.Generic_Frame_Pop_up.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Generic_Frame_Pop_up)
	registerVal2.id = "Generic_Frame_Pop_up"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 134.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 129.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.EmblemEditorFrame.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.EmblemEditorFrame0 = registerVal3
	local function __FUNC_5D4_(arg0, arg1)
		local registerVal2 = arg0.EmblemEditorFrame0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_5D4_)
	local function __FUNC_6E2_(arg0)
		arg0.EmblemEditorFrame0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6E2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

