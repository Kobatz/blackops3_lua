-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.GameTypeAndMapNameWidgetTitle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameTypeAndMapNameWidget = registerVal1
function CoD.GameTypeAndMapNameWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameTypeAndMapNameWidget)
	registerVal2.id = "GameTypeAndMapNameWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	local registerVal3 = CoD.GameTypeAndMapNameWidgetTitle.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 48.000000)
	local function __FUNC_5BA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.GameType:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "gameType", __FUNC_5BA_)
	registerVal2:addElement(registerVal3)
	registerVal2.GameTypeAndMapNameWidgetTitle0 = registerVal3
	local function __FUNC_690_(arg0)
		arg0.GameTypeAndMapNameWidgetTitle0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_690_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

