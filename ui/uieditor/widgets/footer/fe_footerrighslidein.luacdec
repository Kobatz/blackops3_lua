-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.fe_footerRighSlideIn = registerVal1
function CoD.fe_footerRighSlideIn.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_footerRighSlideIn)
	registerVal2.id = "fe_footerRighSlideIn"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 433.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.fe_LeftContainer_NOTLobby.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -297.000000, 135.000000)
	registerVal3:setTopBottom(false, true, -32.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.buttons = registerVal3
	local function __FUNC_558_(arg0)
		arg0.buttons:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_558_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

