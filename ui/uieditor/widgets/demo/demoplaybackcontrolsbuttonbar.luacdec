-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Demo.DemoPlaybackControlsButtons")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DemoPlaybackControlsButtonBar = registerVal1
function CoD.DemoPlaybackControlsButtonBar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DemoPlaybackControlsButtonBar)
	registerVal2.id = "DemoPlaybackControlsButtonBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -32.000000, 80.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.black = registerVal3
	local registerVal4 = CoD.DemoPlaybackControlsButtons.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 47.000000, -144.000000)
	registerVal4:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.DemoPlaybackControlsButtons = registerVal4
	registerVal4:setModel(arg0.buttonModel, arg1)
	local function __FUNC_665_(arg0)
		arg0.DemoPlaybackControlsButtons:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_665_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

