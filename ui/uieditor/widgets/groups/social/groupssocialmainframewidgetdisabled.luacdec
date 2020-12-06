-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.Social.GroupsSocialBackgroundWidget")
require("ui.uieditor.widgets.Groups.GroupsNoConentDetail")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSocialMainFrameWidgetDisabled = registerVal1
function CoD.GroupsSocialMainFrameWidgetDisabled.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSocialMainFrameWidgetDisabled)
	registerVal2.id = "GroupsSocialMainFrameWidgetDisabled"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1152.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 629.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GroupsSocialBackgroundWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 413.000000, 940.320000)
	registerVal3:setTopBottom(true, false, -15.000000, 533.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GroupsSocialBackgroundWidget = registerVal3
	local registerVal4 = CoD.GroupsNoConentDetail.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 13.000000, 494.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 274.000000)
	registerVal4.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
	registerVal4.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
	registerVal4.Header:setText(Engine.Localize("GROUPS_NOT_AVAILABLE"))
	registerVal4.Desc:setText(Engine.Localize("GROUPS_NOT_AVAILABLE_DURANGO_DESC"))
	registerVal4.Glow2:setRGB(ColorSet.SelectedGreen.r, ColorSet.SelectedGreen.g, ColorSet.SelectedGreen.b)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_B45_(arg0, arg1, arg2)
		local registerVal3 = IsDurango()
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_B45_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupsDisabledDurango = registerVal4
	local registerVal5 = CoD.GroupsNoConentDetail.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 13.000000, 494.000000)
	registerVal5:setTopBottom(true, false, 4.000000, 274.000000)
	registerVal5.HeaderBkgd:setRGB(0.870000, 0.300000, 0.190000)
	registerVal5.HeaderIcon:setImage(RegisterImage("uie_t7_icon_menu_simple_customgames"))
	registerVal5.Header:setText(Engine.Localize("GROUPS_NOT_AVAILABLE"))
	registerVal5.Desc:setText(Engine.Localize("GROUPS_NOT_AVAILABLE_ORBIS_DESC"))
	registerVal5.Glow2:setRGB(ColorSet.SelectedGreen.r, ColorSet.SelectedGreen.g, ColorSet.SelectedGreen.b)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Hidden"
	local function __FUNC_B93_(arg0, arg1, arg2)
		local registerVal3 = IsOrbis()
		if not registerVal3 then
			registerVal3 = IsPC()
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_B93_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.GroupsDisabledOrbis = registerVal5
	local function __FUNC_C07_(arg0)
		arg0.GroupsSocialBackgroundWidget:close()
		arg0.GroupsDisabledDurango:close()
		arg0.GroupsDisabledOrbis:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C07_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

