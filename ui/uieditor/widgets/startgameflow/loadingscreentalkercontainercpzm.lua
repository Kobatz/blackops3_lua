-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenTalkerContainerCPZM = registerVal1
function CoD.LoadingScreenTalkerContainerCPZM.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenTalkerContainerCPZM)
	registerVal2.id = "LoadingScreenTalkerContainerCPZM"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 17.000000)
	local registerVal3 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -16.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 17.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.VOIPImageByXUID = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 177.250000)
	registerVal5:setTopBottom(true, false, 0.000000, 17.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLetterSpacing(0.500000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_89D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "playerName", true, __FUNC_89D_)
	local function __FUNC_956_(arg0, arg1)
		ScaleWidgetToLabelLeftJustify(registerVal2, arg0, 20.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_956_)
	registerVal2:addElement(registerVal5)
	registerVal2.WpnName = registerVal5
	local function __FUNC_9C0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupVoipImageByXUID(registerVal1)
		end
	end

	registerVal2.VOIPImageByXUID:linkToElementModel(registerVal2, "playerxuid", true, __FUNC_9C0_)
	local function __FUNC_A61_(arg0)
		arg0.Panel:close()
		arg0.VOIPImageByXUID:close()
		arg0.WpnName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A61_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

