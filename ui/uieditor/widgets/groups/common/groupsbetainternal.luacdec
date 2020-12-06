-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.Common.GroupsBetaBacking")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsBetaInternal = registerVal1
function CoD.GroupsBetaInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsBetaInternal)
	registerVal2.id = "GroupsBetaInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GroupsBetaBacking.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GroupsBetaBacking = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 5.000000, -7.000000)
	registerVal4:setTopBottom(false, false, -9.000000, 11.000000)
	registerVal4:setText(LocalizeToUpperString("GROUPS_BETA"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_763_(arg0, arg1)
		ScaleWidgetToLabelRightAligned(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_763_)
	registerVal2:addElement(registerVal4)
	registerVal2.Label = registerVal4
	local function __FUNC_7CD_(arg0)
		arg0.GroupsBetaBacking:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7CD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

