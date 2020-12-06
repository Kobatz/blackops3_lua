-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CoDBase")
require("ui.T6.CoDMenu")
CoD.Migration = {}
function LUI.createMenu.migration_ingame(arg0, arg1)
	local registerVal2 = CoD.Menu.New("migration_ingame")
	local registerVal3 = Engine.IsInGame()
	registerVal3 = Engine.IsSplitscreen()
	if registerVal3 and registerVal3 then
		registerVal2:sizeToSafeArea(arg0)
	end
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -1280.000000, 1280.000000)
	registerVal3:setTopBottom(false, false, -720.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7 = {0.000000, 0.000000, 0.000000, 0.000000}
	registerVal6.shaderVector0 = registerVal7
	local registerVal5 = LUI.UIImage.new(registerVal6)
	registerVal5:setLeftRight(false, false, (-64.000000 / 2.000000), (64.000000 / 2.000000))
	registerVal5:setTopBottom(false, false, (-64.000000 / 2.000000), (64.000000 / 2.000000))
	registerVal5:setImage(RegisterMaterial("lui_loader"))
	registerVal2:addElement(registerVal5)
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, false, ((64.000000 / 2.000000) + 10.000000), (((64.000000 / 2.000000) + 10.000000) + CoD.textSize.Condensed))
	registerVal8:setFont(CoD.fonts.Condensed)
	registerVal8:setAlignment(LUI.Alignment.Center)
	registerVal8:setRGB(CoD.offWhite.r, CoD.offWhite.g, CoD.offWhite.b)
	registerVal8:setText(Engine.Localize("MP_MIGRATINGHOSTS_CAPS"))
	registerVal2:addElement(registerVal8)
	local registerVal10 = Engine.GetModelForController(arg0)
	local registerVal9 = Engine.CreateModel(registerVal10, "Migration.buttonPrompts")
	registerVal2.buttonModel = registerVal9
	if CoD.isMultiplayer then
		registerVal9 = CoD.Voip_Container.new(registerVal2, arg0)
		registerVal9:setLeftRight(true, false, 64.000000, 337.000000)
		registerVal9:setTopBottom(true, false, 36.000000, 108.000000)
		local registerVal12 = {}
		local registerVal13 = {}
		registerVal13.stateName = "HudStart"
		local function __FUNC_BB2_(arg0, arg1, arg2)
			return AlwaysTrue()
		end

		registerVal13.condition = __FUNC_BB2_
		local registerVal14 = {}
		registerVal14.stateName = "ShowForCodCaster"
		local function __FUNC_BFC_(arg0, arg1, arg2)
			return AlwaysFalse()
		end

		registerVal14.condition = __FUNC_BFC_
		registerVal12 = {registerVal13, registerVal14}
		registerVal9:mergeStateConditions(registerVal12)
		registerVal2:addElement(registerVal9)
		registerVal2.VoipContainer = registerVal9
	else
		registerVal9 = LUI.UIList.new(registerVal2, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
		registerVal9:makeFocusable()
		registerVal9:setLeftRight(false, false, -576.000000, -386.000000)
		registerVal9:setTopBottom(true, false, 36.000000, 123.000000)
		registerVal9:setDataSource("LoadingScreenPlayerListTeam1")
		registerVal9:setWidgetType(CoD.LoadingScreenTalkerWidgetCPZM)
		registerVal9:setVerticalCount(4.000000)
		registerVal9:setSpacing(5.000000)
		registerVal2:addElement(registerVal9)
		registerVal2.Team1PlayerList = registerVal9
	end
	local function __FUNC_C49_(arg1)
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Migration.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C49_)
	return registerVal2
end

