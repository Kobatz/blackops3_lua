-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsTooltip = registerVal1
function CoD.GroupsTooltip.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsTooltip)
	registerVal2.id = "GroupsTooltip"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 338.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 195.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderBakedSolid00 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 12.000000, 326.000000)
	registerVal4:setTopBottom(true, false, 8.000000, 33.000000)
	registerVal4:setRGB(1.000000, 0.600000, 0.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_841_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CreateGroup", "tooltip_title", __FUNC_841_)
	registerVal2:addElement(registerVal4)
	registerVal2.TooltipTitle = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 12.000000, 326.000000)
	registerVal5:setTopBottom(true, false, 34.000000, 54.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8FA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CreateGroup", "tooltip_description", __FUNC_8FA_)
	registerVal2:addElement(registerVal5)
	registerVal2.TooltipDescription = registerVal5
	local function __FUNC_9B2_(arg0)
		arg0.BorderBakedSolid00:close()
		arg0.TooltipTitle:close()
		arg0.TooltipDescription:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9B2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

