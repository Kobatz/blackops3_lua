-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.CAC_varientTitlePanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadoutCoreTiles = registerVal1
function CoD.LoadoutCoreTiles.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadoutCoreTiles)
	registerVal2.id = "LoadoutCoreTiles"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 208.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = CoD.CAC_varientTitlePanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.CACvarientTitlePanel0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 4.000000, 208.000000)
	registerVal4:setTopBottom(false, true, -22.000000, 0.000000)
	registerVal4:setTTF("fonts/default.ttf")
	local function __FUNC_80C_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_80C_)
	registerVal2:addElement(registerVal4)
	registerVal2.itemName = registerVal4
	local function __FUNC_86D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(LocalizeIntoString("CPUI_VAL1_CORE", registerVal1)))
		end
	end

	registerVal2.itemName:linkToElementModel(registerVal2, "name", true, __FUNC_86D_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_966_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_966_
	local function __FUNC_9C6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_9C6_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A26_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_A26_
	local function __FUNC_A86_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_A86_
	registerVal5.Equipped = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Equipped"
	local function __FUNC_AE6_(arg0, arg2, arg3)
		return IsCybercoreItemEquipped(arg0, arg2, arg1)
	end

	registerVal8.condition = __FUNC_AE6_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_B49_(arg0)
		arg0.CACvarientTitlePanel0:close()
		arg0.itemName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B49_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

