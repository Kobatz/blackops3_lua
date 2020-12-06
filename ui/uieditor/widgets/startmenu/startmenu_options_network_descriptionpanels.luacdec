-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.verticalScrollingTextBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_Network_DescriptionPanels = registerVal1
function CoD.StartMenu_Options_Network_DescriptionPanels.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_Network_DescriptionPanels)
	registerVal2.id = "StartMenu_Options_Network_DescriptionPanels"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 520.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 485.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.NetworkBox4 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 12.660000, -11.400000)
	registerVal4:setTopBottom(true, true, 9.940000, -9.900000)
	registerVal4:setRGB(0.240000, 0.240000, 0.260000)
	registerVal4:setAlpha(0.300000)
	registerVal2:addElement(registerVal4)
	registerVal2.NetworkPanel = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 25.000000, 495.000000)
	registerVal5:setTopBottom(true, false, 20.000000, 45.750000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_A03_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "aboutTitle", true, __FUNC_A03_)
	registerVal2:addElement(registerVal5)
	registerVal2.aboutTitle = registerVal5
	local registerVal6 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 25.000000, 495.000000)
	registerVal6:setTopBottom(true, false, 49.000000, 465.000000)
	registerVal6.textBox:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_ABA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "desc", true, __FUNC_ABA_)
	registerVal2:addElement(registerVal6)
	registerVal2.description = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B8F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_B8F_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_BEE_(arg0)
		arg0.NetworkBox4:close()
		arg0.NetworkPanel:close()
		arg0.description:close()
		arg0.aboutTitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BEE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

