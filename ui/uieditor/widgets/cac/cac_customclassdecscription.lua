-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.CAC_varientTitlePanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_CustomClassDecscription = registerVal1
function CoD.cac_CustomClassDecscription.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_CustomClassDecscription)
	registerVal2.id = "cac_CustomClassDecscription"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 336.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = CoD.CAC_varientTitlePanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.250000)
	registerVal2:addElement(registerVal3)
	registerVal2.CACvarientTitlePanel0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 3.000000, 336.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal4:setRGB(0.740000, 0.740000, 0.740000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_81F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "desc", true, __FUNC_81F_)
	local function __FUNC_8D6_(arg0, arg1)
		ScaleWidgetToLabelWrapped(registerVal2, arg0, 1.000000, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_8D6_)
	registerVal2:addElement(registerVal4)
	registerVal2.weaponDescTextBox = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_940_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_940_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_9A2_(arg0)
		arg0.CACvarientTitlePanel0:close()
		arg0.weaponDescTextBox:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9A2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

