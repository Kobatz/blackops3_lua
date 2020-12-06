-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.PC.Utility.TitleTextWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.OptionInfoWidget = registerVal1
function CoD.OptionInfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.OptionInfoWidget)
	registerVal2.id = "OptionInfoWidget"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 300.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 10.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 45.000000, 70.000000)
	registerVal3:setRGB(0.740000, 0.740000, 0.740000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_86C_(arg0, arg1)
		SetStateFromText(registerVal2, arg0, "DefaultState", "Hidden")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_86C_)
	registerVal2:addElement(registerVal3)
	registerVal2.description = registerVal3
	local registerVal4 = CoD.TitleTextWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal4.itemName:setText(Engine.Localize("MENU_NEW"))
	registerVal2:addElement(registerVal4)
	registerVal2.title = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8F0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.description:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8F0_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A46_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.description:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A46_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_B9A_(arg0)
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B9A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

