-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MOTD_Legal = registerVal1
function CoD.MOTD_Legal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.MOTD_Legal)
	registerVal2.id = "MOTD_Legal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 429.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.black = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 3.000000, 426.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal4:setText(Engine.Localize("MOTD_LEGAL"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_6A2_(arg0, arg1)
		ScaleWidgetToLabelWrapped(registerVal2, arg0, 0.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_6A2_)
	registerVal2:addElement(registerVal4)
	registerVal2.TxtLegal = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

