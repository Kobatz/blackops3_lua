-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
require("ui.uieditor.widgets.CAC.NewBreadcrumb")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_ListButtonLabel = registerVal1
function CoD.cac_ListButtonLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_ListButtonLabel)
	registerVal2.id = "cac_ListButtonLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 7.000000, 0.000000)
	local registerVal9 = LanguageOverrideNumber("polish", -16.500000, -19.500000)
	registerVal4:setTopBottom(false, true, registerVal9, LanguageOverrideNumber("polish", -1.500000, -0.500000))
	registerVal4:setRGB(0.820000, 0.850000, 0.880000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_BOTTOM)
	local function __FUNC_A9D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "name", true, __FUNC_A9D_)
	local function __FUNC_B56_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_B56_)
	local function __FUNC_BF9_(arg0, arg1)
		ScaleWidgetToLabelWrappedUp(registerVal2, arg0, 0.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_BF9_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemName = registerVal4
	local registerVal5 = CoD.NewBreadcrumb.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, 3.000000, 15.000000)
	registerVal5:setTopBottom(false, false, -5.000000, 7.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.newIcon = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_C66_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.Panel:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Panel:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C66_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_E92_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.Panel:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Panel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.newIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_E92_
	registerVal6.Hidden = registerVal7
	registerVal7 = {}
	local function __FUNC_10B4_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setLeftRight(true, true, 0.000000, 15.000000)
		registerVal2.Panel:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.Panel:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.itemName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.newIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_10B4_
	registerVal6.HasNew = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "Hidden"
	local function __FUNC_12E7_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_12E7_
	local registerVal10 = {}
	registerVal10.stateName = "HasNew"
	local function __FUNC_1331_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_1331_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_137D_(arg0)
		arg0.Panel:close()
		arg0.newIcon:close()
		arg0.itemName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_137D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

