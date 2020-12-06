-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.LocalServerPlayerListRow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LANServerBrowserDetails = registerVal1
function CoD.LANServerBrowserDetails.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.LANServerBrowserDetails)
	registerVal2.id = "LANServerBrowserDetails"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 452.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 560.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 4.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 3.000000, 453.000000)
	registerVal3:setTopBottom(true, false, 230.000000, 487.000000)
	registerVal3:setWidgetType(CoD.LocalServerPlayerListRow)
	registerVal3:setHorizontalCount(2.000000)
	registerVal3:setVerticalCount(9.000000)
	registerVal3:setSpacing(4.000000)
	registerVal3:setDataSource("LocalServerPlayer")
	registerVal2:addElement(registerVal3)
	registerVal2.PlayerList = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 9.000000, 156.000000)
	registerVal4:setTopBottom(true, false, 203.000000, 225.000000)
	registerVal4:setText(Engine.Localize("MENU_PLAYERS_IN_GAME"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.PlayerListTitle = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 1.000000, 447.000000)
	registerVal5:setTopBottom(true, false, 10.270000, 199.660000)
	registerVal2:addElement(registerVal5)
	registerVal2.MapImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 1.000000, 447.000000)
	registerVal6:setTopBottom(true, false, 150.250000, 200.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.MapBackImage = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 9.000000, 123.000000)
	registerVal7:setTopBottom(true, false, 177.250000, 197.250000)
	registerVal7:setRGB(1.000000, 0.840000, 0.000000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.GameType = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 7.000000, 177.000000)
	registerVal8:setTopBottom(true, false, 153.250000, 183.250000)
	registerVal8:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.MapName = registerVal8
	local function __FUNC_CBA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(MapNameToMapImage(registerVal1)))
		end
	end

	registerVal2.MapImage:linkToElementModel(registerVal2, "mapName", true, __FUNC_CBA_)
	local function __FUNC_D8F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(GameTypeToLocalizedGameType(registerVal1))
		end
	end

	registerVal2.GameType:linkToElementModel(registerVal2, "gameType", true, __FUNC_D8F_)
	local function __FUNC_E4D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(MapNameToLocalizedMapName(registerVal1))
		end
	end

	registerVal2.MapName:linkToElementModel(registerVal2, "mapName", true, __FUNC_E4D_)
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_F0B_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.PlayerList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PlayerListTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapBackImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GameType:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_F0B_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_11C7_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.PlayerList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PlayerListTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.MapImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.MapBackImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.GameType:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.MapName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_11C7_
	registerVal9.Invisible = registerVal10
	registerVal10 = {}
	local function __FUNC_147E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.MapBackImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultClip = __FUNC_147E_
	registerVal9.SixAndUp = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal3.id = "PlayerList"
	local function __FUNC_1580_(arg0, arg1)
		local registerVal2 = arg0.PlayerList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1580_)
	local function __FUNC_1686_(arg0)
		arg0.PlayerList:close()
		arg0.MapImage:close()
		arg0.GameType:close()
		arg0.MapName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1686_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

