-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ListButtonLabel_Right")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_ListButtonLabelCount = registerVal1
function CoD.cac_ListButtonLabelCount.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_ListButtonLabelCount)
	registerVal2.id = "cac_ListButtonLabelCount"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 30.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -1.000000, 10.640000)
	registerVal3:setTopBottom(false, false, -5.820000, 5.820000)
	registerVal3:setAlpha(0.600000)
	registerVal3:setScale(0.800000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_gunsmith_arrow"))
	registerVal2:addElement(registerVal3)
	registerVal2.Arrow = registerVal3
	local registerVal4 = CoD.cac_ListButtonLabel_Right.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -104.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal4.itemName:setText(Engine.Localize("3"))
	registerVal4.itemName:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal2:addElement(registerVal4)
	registerVal2.ButtonLabelCount = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_828_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ButtonLabelCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_828_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_983_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Arrow:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_983_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A7D_(arg0)
		arg0.ButtonLabelCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A7D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

