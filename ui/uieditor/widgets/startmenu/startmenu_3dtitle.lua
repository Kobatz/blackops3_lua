-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleLine")
require("ui.uieditor.widgets.StartMenu.StartMenu_3dTitleLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_3dTitle = registerVal1
function CoD.StartMenu_3dTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_3dTitle)
	registerVal2.id = "StartMenu_3dTitle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1011.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 51.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 1.000000, -31.000000)
	registerVal3:setTopBottom(false, false, 23.000000, 27.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FETitleLineL = registerVal3
	local registerVal4 = CoD.FE_TitleLine.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 1.000000, -31.000000)
	registerVal4:setTopBottom(false, false, -25.000000, -21.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETitleLineU = registerVal4
	local registerVal5 = CoD.StartMenu_3dTitleLabel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 1.000000, 1011.000000)
	registerVal5:setTopBottom(true, false, -0.500000, 50.500000)
	registerVal5.Label0:setText(Engine.Localize("WILDCARDS"))
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenu3dTitleLabel = registerVal5
	local function __FUNC_74D_(arg0)
		arg0.FETitleLineL:close()
		arg0.FETitleLineU:close()
		arg0.StartMenu3dTitleLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_74D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

