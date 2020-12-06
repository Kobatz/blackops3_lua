-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.featureOverlay_frameVLayout_Buttons = registerVal1
function CoD.featureOverlay_frameVLayout_Buttons.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.featureOverlay_frameVLayout_Buttons)
	registerVal2.id = "featureOverlay_frameVLayout_Buttons"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.130000, 0.110000, 0.120000)
	registerVal2:addElement(registerVal3)
	registerVal2.buttonBacking = registerVal3
	local registerVal4 = CoD.fe_LeftContainer_NOTLobby.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 64.000000, -784.000000)
	registerVal4:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.buttons = registerVal4
	local function __FUNC_633_(arg0)
		arg0.buttons:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_633_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

