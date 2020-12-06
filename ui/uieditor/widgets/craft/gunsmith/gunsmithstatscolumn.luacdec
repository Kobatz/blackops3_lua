-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithStatElement")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithStatsColumn = registerVal1
function CoD.GunsmithStatsColumn.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithStatsColumn)
	registerVal2.id = "GunsmithStatsColumn"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal3:setWidgetType(CoD.GunsmithStatElement)
	registerVal3:setVerticalCount(3.000000)
	local function __FUNC_638_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setDataSource(registerVal1)
		end
	end

	registerVal3:linkToElementModel(registerVal2, "SnapshotStatsColumn", true, __FUNC_638_)
	registerVal2:addElement(registerVal3)
	registerVal2.stats = registerVal3
	local function __FUNC_6D2_(arg0)
		arg0.stats:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6D2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

