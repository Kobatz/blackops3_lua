-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Prestige.Prestige_ParagonMilestoneIcon")
local function __FUNC_2A7_(arg0)
	for index2=1.000000, CoD.PrestigeUtility.PRESTIGE_MASTER_MAX_TIERS, 1.000000 do
		local registerVal8 = {}
		local registerVal9 = {}
		registerVal9.id = index2
		registerVal8.models = registerVal9
		table.insert({}, registerVal8)
	end
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("PrestigeMasterTiers", __FUNC_2A7_)
DataSources.PrestigeMasterTiers = registerVal1
registerVal1 = InheritFrom(LUI.UIElement)
CoD.Prestige_MasterTierWidget = registerVal1
function CoD.Prestige_MasterTierWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Prestige_MasterTierWidget)
	registerVal2.id = "Prestige_MasterTierWidget"
	registerVal2.soundSet = "AAR"
	registerVal2:setLeftRight(true, false, 0.000000, 256.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal3:setRGB(0.920000, 0.640000, 0.150000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal3:setShaderVector(0.000000, 0.000000, 0.400000, 0.000000, 0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.Bar = registerVal3
	local registerVal4 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 3.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:setLeftRight(true, false, 6.000000, 193.000000)
	registerVal4:setTopBottom(false, true, -22.000000, -6.000000)
	registerVal4:setWidgetType(CoD.Prestige_ParagonMilestoneIcon)
	registerVal4:setHorizontalCount(10.000000)
	registerVal4:setSpacing(3.000000)
	registerVal4:setDataSource("PrestigeMasterTiers")
	local function __FUNC_BBF_(arg0, arg2)
		UpdateDataSource(registerVal2, arg0, arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setState", __FUNC_BBF_)
	registerVal2:addElement(registerVal4)
	registerVal2.ParagonStars = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, -2.120000, 8.120000)
	registerVal5:setRGB(1.000000, 0.750000, 0.300000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_mp_masterprestige_rankbar"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal5:setShaderVector(0.000000, 0.000000, 0.400000, 0.000000, 0.400000)
	registerVal2:addElement(registerVal5)
	registerVal2.Bar2 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_C16_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Bar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ParagonStars:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Bar2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C16_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_DBB_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Bar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ParagonStars:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Bar2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_DBB_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_F5F_(arg0)
		arg0.ParagonStars:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F5F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

