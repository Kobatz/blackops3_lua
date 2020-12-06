-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameTypeAndMapNameWidgetTitle = registerVal1
function CoD.GameTypeAndMapNameWidgetTitle.new(arg0, arg1)
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
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameTypeAndMapNameWidgetTitle)
	registerVal2.id = "GameTypeAndMapNameWidgetTitle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -640.000000, -244.000000)
	registerVal3:setTopBottom(false, false, -17.810000, 24.190000)
	registerVal3:setRGB(0.870000, 0.900000, 0.900000)
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal3:setLetterSpacing(-1.000000)
	local function __FUNC_708_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(AppendStringIfRefExists("_SHORT", registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "gameType", __FUNC_708_)
	registerVal2:addElement(registerVal3)
	registerVal2.GameType = registerVal3
	local function __FUNC_7FF_(arg0)
		arg0.GameType:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7FF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

