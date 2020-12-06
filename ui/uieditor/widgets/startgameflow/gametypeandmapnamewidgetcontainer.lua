-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.GameTypeAndMapNameWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameTypeAndMapNameWidgetContainer = registerVal1
function CoD.GameTypeAndMapNameWidgetContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameTypeAndMapNameWidgetContainer)
	registerVal2.id = "GameTypeAndMapNameWidgetContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	local registerVal3 = CoD.GameTypeAndMapNameWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 1112.000000)
	registerVal3:setTopBottom(true, false, 11.290000, 59.290000)
	registerVal2:addElement(registerVal3)
	registerVal2.GameTypeAndMapNameWidget = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 759.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 22.580000)
	registerVal4:setRGB(1.000000, 0.350000, 0.000000)
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setLetterSpacing(-1.000000)
	local function __FUNC_6D3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "mapName", __FUNC_6D3_)
	registerVal2:addElement(registerVal4)
	registerVal2.Label0 = registerVal4
	local function __FUNC_78A_(arg0)
		arg0.GameTypeAndMapNameWidget:close()
		arg0.Label0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_78A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

