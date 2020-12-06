-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CPSystems.Loadout.BlueCoreBacking")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MultiCoreTitle = registerVal1
function CoD.MultiCoreTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MultiCoreTitle)
	registerVal2.id = "MultiCoreTitle"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 291.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 23.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BlueCoreBacking.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 291.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 23.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlueCoreBacking = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 6.000000, 128.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 23.000000)
	registerVal4:setText(Engine.Localize(GetItemNameFromIndex(GetCybercoreItemIndex(arg1, "Care Package"))))
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_7DE_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_7DE_)
	registerVal2:addElement(registerVal4)
	registerVal2.subheaderText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_83D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_83D_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_89E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_89E_
	registerVal5.Multicore = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Multicore"
	local function __FUNC_8FE_(arg0, arg2, arg3)
		return IsMulticoreActivated(arg1)
	end

	registerVal8.condition = __FUNC_8FE_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_956_(arg0)
		arg0.BlueCoreBacking:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_956_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

