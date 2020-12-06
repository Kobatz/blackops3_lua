-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Paintshop.PaintshopChooseSide")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorColorTypeHeader = registerVal1
function CoD.EmblemEditorColorTypeHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorColorTypeHeader)
	registerVal2.id = "EmblemEditorColorTypeHeader"
	registerVal2.soundSet = "SelectColor"
	registerVal2:setLeftRight(true, false, 0.000000, 681.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = CoD.PaintshopChooseSide.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.text:setText(Engine.Localize("MENU_EMBLEM_SOLID_COLOR"))
	registerVal3.text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal2:addElement(registerVal3)
	registerVal2.colorTypeHeader = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_727_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.text:completeAnimation()
		registerVal2.colorTypeHeader.text:setText(Engine.Localize("MENU_EMBLEM_GRADIENT"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_727_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_8AB_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.text:completeAnimation()
		registerVal2.colorTypeHeader.text:setText(Engine.Localize("MENU_EMBLEM_GRADIENT"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8AB_
	registerVal4.Gradient = registerVal5
	registerVal5 = {}
	local function __FUNC_A2F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.text:completeAnimation()
		registerVal2.colorTypeHeader.text:setText(Engine.Localize("MENU_EMBLEM_SOLID_COLOR"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A2F_
	registerVal4.Solid = registerVal5
	registerVal5 = {}
	local function __FUNC_BB6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.text:completeAnimation()
		registerVal2.colorTypeHeader.text:setText(Engine.Localize("MENU_EMBLEM_COLOR_MIXER"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_BB6_
	registerVal4.Mixer = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_D3E_(arg0)
		arg0.colorTypeHeader:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D3E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

