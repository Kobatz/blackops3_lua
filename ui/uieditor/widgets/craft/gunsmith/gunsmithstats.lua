-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithStatsColumn")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithStatsVariantName")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithStats = registerVal1
function CoD.GunsmithStats.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithStats)
	registerVal2.id = "GunsmithStats"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 566.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:setLeftRight(false, true, -406.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal3:setWidgetType(CoD.GunsmithStatsColumn)
	registerVal3:setHorizontalCount(4.000000)
	registerVal3:setDataSource("GunsmithSnapshotStatsList")
	local function __FUNC_9C1_(arg0)
		UpdateDataSource(registerVal2, registerVal3, arg1)
		PlaySoundAlias("uin_paint_decal_nav")
	end

	registerVal3:subscribeToGlobalModel(arg1, "GunsmithSnapshot", "SessionMode", __FUNC_9C1_)
	registerVal2:addElement(registerVal3)
	registerVal2.stats = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 147.000000, 160.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.spacer = registerVal4
	local registerVal5 = CoD.GunsmithStatsVariantName.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -62.000000, 147.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 76.000000)
	local function __FUNC_A5F_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_A5F_)
	registerVal2:addElement(registerVal5)
	registerVal2.statsname = registerVal5
	local function __FUNC_AAE_(arg0)
		arg0.stats:close()
		arg0.statsname:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AAE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

