-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.MenuSpecificWidgets.AARMedalsListWidget")
local function __FUNC_25D_(arg0)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AARPlayerSummaryListWidget = registerVal2
local function __FUNC_288_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AARPlayerSummaryListWidget)
	registerVal2.id = "AARPlayerSummaryListWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 400.000000)
	local registerVal3 = CoD.Border.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.border = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 240.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 400.000000)
	registerVal4:setRGB(0.510000, 0.510000, 0.510000)
	registerVal2:addElement(registerVal4)
	registerVal2.background = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.rankIcon = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, false, -114.000000, -93.000000)
	registerVal6:setTopBottom(true, false, 32.000000, 57.000000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.rankLabel = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 38.000000, 133.000000)
	registerVal7:setTopBottom(true, false, 3.500000, 28.500000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.playerGamerTagLabel = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 57.000000, 140.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.killsAssistsBg = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(false, false, -79.000000, -40.000000)
	registerVal9:setTopBottom(true, false, 64.000000, 89.000000)
	registerVal9:setText(Engine.Localize("MPUI_KILLS_CAPS"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.killsLabel = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, true, 42.000000, -161.000000)
	registerVal10:setTopBottom(true, false, 88.000000, 136.000000)
	registerVal10:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal10)
	registerVal2.numKills = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(true, true, 145.000000, -32.000000)
	registerVal11:setTopBottom(true, false, 64.000000, 89.000000)
	registerVal11:setText(Engine.Localize("MPUI_ASSISTS_CAPS"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal11)
	registerVal2.assistsLabel = registerVal11
	local registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(true, true, 158.500000, -45.500000)
	registerVal12:setTopBottom(true, false, 88.000000, 136.000000)
	registerVal12:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal12)
	registerVal2.numAssists = registerVal12
	local registerVal13 = LUI.UITightText.new()
	registerVal13:setLeftRight(true, true, 73.500000, -73.500000)
	registerVal13:setTopBottom(true, false, 140.000000, 165.000000)
	registerVal13:setText(Engine.Localize("KEY ACTIONS"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal13)
	registerVal2.keyActionsLabel = registerVal13
	local registerVal14 = CoD.AARMedalsListWidget.new(arg0, arg1)
	registerVal14:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal14:setTopBottom(true, false, 171.000000, 246.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.AARMedalsListWidget1 = registerVal14
	local registerVal15 = CoD.AARMedalsListWidget.new(arg0, arg1)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(true, false, 246.000000, 321.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.AARMedalsListWidget2 = registerVal15
	local registerVal16 = CoD.AARMedalsListWidget.new(arg0, arg1)
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(true, false, 325.000000, 400.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.AARMedalsListWidget3 = registerVal16
	local function __FUNC_10D7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.rankIcon:linkToElementModel(registerVal2, "playerRankIcon", true, __FUNC_10D7_)
	local function __FUNC_1188_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.rankLabel:linkToElementModel(registerVal2, "playerRank", true, __FUNC_1188_)
	local function __FUNC_1242_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.playerGamerTagLabel:linkToElementModel(registerVal2, "playerName", true, __FUNC_1242_)
	local function __FUNC_12FA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.numKills:linkToElementModel(registerVal2, "playerKills", true, __FUNC_12FA_)
	local function __FUNC_13B2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.numAssists:linkToElementModel(registerVal2, "playerAssists", true, __FUNC_13B2_)
	local function __FUNC_146A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.medalIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.AARMedalsListWidget1:linkToElementModel(registerVal2, "medalImage1", true, __FUNC_146A_)
	local function __FUNC_153B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.medalNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.AARMedalsListWidget1:linkToElementModel(registerVal2, "medalName1", true, __FUNC_153B_)
	local function __FUNC_1616_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.medalIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.AARMedalsListWidget2:linkToElementModel(registerVal2, "medalImage2", true, __FUNC_1616_)
	local function __FUNC_16E7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15.medalNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.AARMedalsListWidget2:linkToElementModel(registerVal2, "medalName2", true, __FUNC_16E7_)
	local function __FUNC_17C2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.medalIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.AARMedalsListWidget3:linkToElementModel(registerVal2, "medalImage3", true, __FUNC_17C2_)
	local function __FUNC_1893_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.medalNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.AARMedalsListWidget3:linkToElementModel(registerVal2, "medalName3", true, __FUNC_1893_)
	local function __FUNC_196E_(arg0)
		arg0.border:close()
		arg0.AARMedalsListWidget1:close()
		arg0.AARMedalsListWidget2:close()
		arg0.AARMedalsListWidget3:close()
		arg0.rankIcon:close()
		arg0.rankLabel:close()
		arg0.playerGamerTagLabel:close()
		arg0.numKills:close()
		arg0.numAssists:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_196E_)
	if __FUNC_25D_ then
		__FUNC_25D_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AARPlayerSummaryListWidget.new = __FUNC_288_
