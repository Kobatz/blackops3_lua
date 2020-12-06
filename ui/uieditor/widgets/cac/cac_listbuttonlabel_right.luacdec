-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_ListButtonLabel_Right = registerVal1
function CoD.cac_ListButtonLabel_Right.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_ListButtonLabel_Right)
	registerVal2.id = "cac_ListButtonLabel_Right"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 104.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal4:setTopBottom(false, true, -20.000000, -1.000000)
	registerVal4:setRGB(0.820000, 0.850000, 0.880000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_BOTTOM)
	local function __FUNC_925_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "name", true, __FUNC_925_)
	local function __FUNC_9DE_(arg0, arg1)
		ScaleWidgetToLabelWrappedRightAlign(registerVal2, arg0, 1.000000, 1.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_9DE_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemName = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_A52_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A52_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_BA8_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BA8_
	registerVal5.Hidden = registerVal6
	registerVal6 = {}
	local function __FUNC_CFB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.itemName:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CFB_
	registerVal5.Arabic = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_EDB_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_EDB_
	local registerVal9 = {}
	registerVal9.stateName = "Arabic"
	local function __FUNC_F25_(arg0, arg1, arg2)
		return IsCurrentLanguageArabic()
	end

	registerVal9.condition = __FUNC_F25_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_F7D_(arg0)
		arg0.Panel:close()
		arg0.itemName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F7D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

