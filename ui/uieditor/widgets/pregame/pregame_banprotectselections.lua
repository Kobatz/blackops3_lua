-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.Pregame.Pregame_BanProtectFrame")
require("ui.uieditor.widgets.Pregame.Pregame_VoteItem")
require("ui.uieditor.widgets.Scrollbars.horizontalCounter")
local function __FUNC_2F4_(arg0, arg1, arg2)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Pregame_BanProtectSelections = registerVal2
local function __FUNC_320_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_BanProtectSelections)
	registerVal2.id = "Pregame_BanProtectSelections"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1146.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 167.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -196.500000, 1317.500000)
	registerVal3:setTopBottom(true, false, -262.000000, 212.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_menu_startflow_vignette"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal2:addElement(registerVal3)
	registerVal2.Team2Vignette0 = registerVal3
	local registerVal4 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -103.290000, 1230.500000)
	registerVal4:setTopBottom(true, false, 39.840000, 144.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.650000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEButtonPanel1 = registerVal4
	local registerVal5 = CoD.Pregame_BanProtectFrame.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal5:setTopBottom(true, false, 38.000000, 146.000000)
	registerVal5:setAlpha(0.350000)
	registerVal2:addElement(registerVal5)
	registerVal2.PregameBanProtectFrame = registerVal5
	local registerVal6 = CoD.Pregame_BanProtectFrame.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 113.000000, 221.000000)
	registerVal6:setTopBottom(true, false, 38.000000, 146.000000)
	registerVal6:setAlpha(0.350000)
	registerVal2:addElement(registerVal6)
	registerVal2.PregameBanProtectFrame0 = registerVal6
	local registerVal7 = CoD.Pregame_BanProtectFrame.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 226.000000, 334.000000)
	registerVal7:setTopBottom(true, false, 38.000000, 146.000000)
	registerVal7:setAlpha(0.350000)
	registerVal2:addElement(registerVal7)
	registerVal2.PregameBanProtectFrame1 = registerVal7
	local registerVal8 = CoD.Pregame_BanProtectFrame.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 339.000000, 447.000000)
	registerVal8:setTopBottom(true, false, 38.000000, 146.000000)
	registerVal8:setAlpha(0.350000)
	registerVal2:addElement(registerVal8)
	registerVal2.PregameBanProtectFrame00 = registerVal8
	local registerVal9 = CoD.Pregame_BanProtectFrame.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 452.500000, 560.500000)
	registerVal9:setTopBottom(true, false, 38.000000, 146.000000)
	registerVal9:setAlpha(0.350000)
	registerVal2:addElement(registerVal9)
	registerVal2.PregameBanProtectFrame2 = registerVal9
	local registerVal10 = CoD.Pregame_BanProtectFrame.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 565.500000, 673.500000)
	registerVal10:setTopBottom(true, false, 38.000000, 146.000000)
	registerVal10:setAlpha(0.350000)
	registerVal2:addElement(registerVal10)
	registerVal2.PregameBanProtectFrame01 = registerVal10
	local registerVal11 = CoD.Pregame_BanProtectFrame.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 678.500000, 786.500000)
	registerVal11:setTopBottom(true, false, 38.000000, 146.000000)
	registerVal11:setAlpha(0.350000)
	registerVal2:addElement(registerVal11)
	registerVal2.PregameBanProtectFrame10 = registerVal11
	local registerVal12 = CoD.Pregame_BanProtectFrame.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 791.500000, 899.500000)
	registerVal12:setTopBottom(true, false, 38.000000, 146.000000)
	registerVal12:setAlpha(0.350000)
	registerVal2:addElement(registerVal12)
	registerVal2.PregameBanProtectFrame000 = registerVal12
	local registerVal13 = CoD.Pregame_BanProtectFrame.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 904.500000, 1012.500000)
	registerVal13:setTopBottom(true, false, 38.000000, 146.000000)
	registerVal13:setAlpha(0.350000)
	registerVal2:addElement(registerVal13)
	registerVal2.PregameBanProtectFrame100 = registerVal13
	local registerVal14 = CoD.Pregame_BanProtectFrame.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 1017.500000, 1125.500000)
	registerVal14:setTopBottom(true, false, 38.000000, 146.000000)
	registerVal14:setAlpha(0.350000)
	registerVal2:addElement(registerVal14)
	registerVal2.PregameBanProtectFrame0000 = registerVal14
	local registerVal15 = LUI.UIList.new(arg0, arg1, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal15:makeFocusable()
	registerVal15:setLeftRight(true, false, 0.000000, 1125.000000)
	registerVal15:setTopBottom(true, false, 38.000000, 146.000000)
	registerVal15:setWidgetType(CoD.Pregame_VoteItem)
	registerVal15:setHorizontalCount(10.000000)
	registerVal15:setSpacing(5.000000)
	registerVal15:setDataSource("PregameItemVotes")
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "ShowHeader"
	local function __FUNC_169D_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal19.condition = __FUNC_169D_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal2:addElement(registerVal15)
	registerVal2.VoteList = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, -208.000000, 1387.000000)
	registerVal16:setTopBottom(true, false, 34.500000, 42.500000)
	registerVal16:setAlpha(0.200000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Team1Line = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, -208.000000, 1387.000000)
	registerVal17:setTopBottom(true, false, 141.500000, 149.500000)
	registerVal17:setAlpha(0.200000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Team1Line0 = registerVal17
	registerVal18 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 0.000000, 167.000000)
	registerVal18:setTopBottom(true, false, -24.830000, 2.830000)
	registerVal18:setRGB(0.000000, 0.000000, 0.000000)
	registerVal18:setAlpha(0.350000)
	registerVal2:addElement(registerVal18)
	registerVal2.FEButtonPanel10 = registerVal18
	registerVal19 = LUI.UITightText.new()
	registerVal19:setLeftRight(true, false, 4.000000, 108.000000)
	registerVal19:setTopBottom(true, false, -22.170000, 2.830000)
	registerVal19:setText(Engine.Localize("MENU_BANS_PROTECTS_CAPS"))
	registerVal19:setTTF("fonts/default.ttf")
	registerVal19:setLetterSpacing(1.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.Text = registerVal19
	local registerVal20 = CoD.horizontalCounter.new(arg0, arg1)
	registerVal20:setLeftRight(false, false, -110.400000, 89.600000)
	registerVal20:setTopBottom(true, false, 156.500000, 181.500000)
	local function __FUNC_16E8_(arg0, arg1)
		SetAsListHorizontalCounter(registerVal2, arg0, "VoteList")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal20, "setModel", __FUNC_16E8_)
	registerVal2:addElement(registerVal20)
	registerVal2.horizontalCounter0 = registerVal20
	local function __FUNC_175E_(arg0)
		registerVal20:setModel(arg0, arg1)
	end

	registerVal20:linkToElementModel(registerVal15, nil, false, __FUNC_175E_)
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_17AE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal22.DefaultClip = __FUNC_17AE_
	registerVal21.DefaultState = registerVal22
	registerVal2.clipsPerState = registerVal21
	registerVal15.id = "VoteList"
	local function __FUNC_180E_(arg0, arg1)
		local registerVal2 = arg0.VoteList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_180E_)
	local function __FUNC_1910_(arg0)
		arg0.FEButtonPanel1:close()
		arg0.PregameBanProtectFrame:close()
		arg0.PregameBanProtectFrame0:close()
		arg0.PregameBanProtectFrame1:close()
		arg0.PregameBanProtectFrame00:close()
		arg0.PregameBanProtectFrame2:close()
		arg0.PregameBanProtectFrame01:close()
		arg0.PregameBanProtectFrame10:close()
		arg0.PregameBanProtectFrame000:close()
		arg0.PregameBanProtectFrame100:close()
		arg0.PregameBanProtectFrame0000:close()
		arg0.VoteList:close()
		arg0.FEButtonPanel10:close()
		arg0.horizontalCounter0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1910_)
	if __FUNC_2F4_ then
		__FUNC_2F4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Pregame_BanProtectSelections.new = __FUNC_320_
