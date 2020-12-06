-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_Title_Small = registerVal1
function CoD.Pregame_Title_Small.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_Title_Small)
	registerVal2.id = "Pregame_Title_Small"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -108.000000, 101.000000)
	registerVal3:setTopBottom(true, false, -123.000000, 50.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.HeaderImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 62.170000, 116.170000)
	registerVal4:setTopBottom(true, false, -4.500000, 49.500000)
	local function __FUNC_878_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "MapInfo", "gameTypeIcon", __FUNC_878_)
	registerVal2:addElement(registerVal4)
	registerVal2.GameModeIcon = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 121.340000, 543.340000)
	registerVal5:setTopBottom(true, false, 17.000000, 51.000000)
	registerVal5:setAlpha(0.850000)
	registerVal5:setText(LocalizeToUpperString(GetGameMode("TEAM DEATHMATCH")))
	registerVal5:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal5:setLetterSpacing(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.GameMode = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 121.170000, 543.340000)
	registerVal6:setTopBottom(true, false, -0.500000, 21.500000)
	registerVal6:setRGB(1.000000, 0.350000, 0.000000)
	registerVal6:setAlpha(0.850000)
	registerVal6:setText(LocalizeToUpperString(GetMapName("REDWOOD")))
	registerVal6:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.MapName = registerVal6
	local function __FUNC_92C_(arg0)
		arg0.GameModeIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_92C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

