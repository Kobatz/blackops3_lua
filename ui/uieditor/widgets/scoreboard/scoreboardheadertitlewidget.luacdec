-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreboardHeaderTitleWidget = registerVal1
function CoD.ScoreboardHeaderTitleWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreboardHeaderTitleWidget)
	registerVal2.id = "ScoreboardHeaderTitleWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 294.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 495.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal3:setRGB(0.880000, 0.890000, 0.930000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setText(Engine.Localize("MENU_SCOREBOARD_HEADER"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLetterSpacing(2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.gametype = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_681_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.gametype:setText(Engine.Localize("MENU_SCOREBOARD_HEADER"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_681_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7D0_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.gametype:setText(Engine.Localize("MENU_SCOREBOARD_HEADER_SPECIAL"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7D0_
	registerVal4.Special = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Special"
	local function __FUNC_928_(arg0, arg1, arg2)
		return LobbyConnectedToDedicatedHost()
	end

	registerVal7.condition = __FUNC_928_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

