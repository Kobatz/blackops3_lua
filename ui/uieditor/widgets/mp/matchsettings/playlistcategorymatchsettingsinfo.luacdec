-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MP.MatchSettings.matchSettingsInfo")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.playlistCategoryMatchSettingsInfo = registerVal1
function CoD.playlistCategoryMatchSettingsInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.playlistCategoryMatchSettingsInfo)
	registerVal2.id = "playlistCategoryMatchSettingsInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.matchSettingsInfo.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 450.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal3.FRBestTime.BestTimeValueText:setText(Engine.Localize("--:--:--"))
	local function __FUNC_828_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_828_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "AspectRatio_1x1"
	local function __FUNC_87A_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal7.condition = __FUNC_87A_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.categoryInfo = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 1.000000, 446.000000)
	registerVal4:setTopBottom(true, false, -22.000000, -2.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_8C4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "playlistCount", true, __FUNC_8C4_)
	registerVal2:addElement(registerVal4)
	registerVal2.playlistCount = registerVal4
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_97E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_97E_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_9DE_(arg0)
		arg0.categoryInfo:close()
		arg0.playlistCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9DE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

