-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.LiveEventViewerFooter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LiveEventViewerFooterContainer = registerVal1
function CoD.LiveEventViewerFooterContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LiveEventViewerFooterContainer)
	registerVal2.id = "LiveEventViewerFooterContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LiveEventViewerFooter.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_5F5_(arg0, arg2)
		SizeToSafeArea(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_5F5_)
	registerVal2:addElement(registerVal3)
	registerVal2.LiveEventViewerFooter0 = registerVal3
	registerVal3:setModel(arg0.buttonModel, arg1)
	local function __FUNC_689_(arg0)
		arg0.LiveEventViewerFooter0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_689_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

