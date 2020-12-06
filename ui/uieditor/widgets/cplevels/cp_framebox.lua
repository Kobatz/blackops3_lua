-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CP_FrameBox = registerVal1
function CoD.CP_FrameBox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CP_FrameBox)
	registerVal2.id = "CP_FrameBox"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 196.000000)
	local registerVal3 = CoD.FE_FeaturedFrame.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEFeaturedFrame = registerVal3
	local function __FUNC_535_(arg0)
		arg0.FEFeaturedFrame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_535_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

