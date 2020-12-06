-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Groups.GroupsListButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.hintText")
require("ui.uieditor.widgets.Groups.LeaderboardMakerProgressBar")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Challenges.Challenges_Title")
function LUI.createMenu.LeaderboardMaker(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LeaderboardMaker")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "HUD"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LeaderboardMaker.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 64.000000, 395.000000)
	registerVal4:setTopBottom(true, false, 85.000000, 675.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.BlackTint00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal5:setTopBottom(false, false, -275.000000, -243.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.700000)
	registerVal1:addElement(registerVal5)
	registerVal1.CategoryListPanel = registerVal5
	local registerVal6 = CoD.StartMenu_frame_noBG.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 112.000000, 1188.000000)
	registerVal6:setTopBottom(true, false, 154.000000, 639.000000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.StartMenuframenoBG000 = registerVal6
	local registerVal7 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7.titleLabel:setText(Engine.Localize("GROUPS_LEADERBOARD_MAKER"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("GROUPS_LEADERBOARD_MAKER"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal7)
	registerVal1.MenuFrame = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 421.500000, -513.500000)
	registerVal8:setTopBottom(true, true, 172.380000, -233.460000)
	registerVal8:setAlpha(0.430000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal8:setShaderVector(0.000000, 0.011594, 0.012732, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(4.000000, 4.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.Border = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 91.000000, 371.000000)
	registerVal9:setTopBottom(true, false, 133.500000, 157.500000)
	registerVal9:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.SubTitle = registerVal9
	local registerVal10 = LUI.UIList.new(registerVal1, arg0, 6.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 91.000000, 371.000000)
	registerVal10:setTopBottom(true, false, 172.080000, 614.080000)
	registerVal10:setWidgetType(CoD.GroupsListButton)
	registerVal10:setVerticalCount(8.000000)
	registerVal10:setSpacing(6.000000)
	registerVal10:setVerticalCounter(CoD.verticalCounter)
	registerVal10:setDataSource("LeaderboardMakerButtonList")
	local function __FUNC_1BD0_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal10:registerEventHandler("gain_focus", __FUNC_1BD0_)
	local function __FUNC_1D63_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_1D63_)
	local function __FUNC_1E32_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		ListElementSelectFirstItemIfPossible(registerVal1, "ButtonList")
		return true
	end

	local function __FUNC_1EE5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_1E32_, __FUNC_1EE5_, false)
	registerVal1:addElement(registerVal10)
	registerVal1.ButtonList = registerVal10
	local registerVal11 = CoD.hintText.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 421.500000, 766.500000)
	registerVal11:setTopBottom(true, false, 541.830000, 493.670000)
	registerVal11:setAlpha(0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.HintText = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 421.500000, 766.500000)
	registerVal12:setTopBottom(true, false, 493.670000, 512.670000)
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal12)
	registerVal1.Description = registerVal12
	local registerVal13 = CoD.LeaderboardMakerProgressBar.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 66.000000, 371.000000)
	registerVal13:setTopBottom(true, false, 88.500000, 113.500000)
	registerVal1:addElement(registerVal13)
	registerVal1.LeaderboardMakerProgressBar = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 448.250000, 739.750000)
	registerVal14:setTopBottom(true, false, 188.790000, 470.120000)
	registerVal1:addElement(registerVal14)
	registerVal1.Icon = registerVal14
	local registerVal15 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal15:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal15)
	registerVal1.FEMenuLeftGraphics = registerVal15
	local registerVal16 = CoD.Challenges_Title.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 423.500000, 570.500000)
	registerVal16:setTopBottom(true, false, 129.380000, 161.630000)
	registerVal1:addElement(registerVal16)
	registerVal1.GroupInvitesTitle = registerVal16
	local function __FUNC_1FE2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal10, "titleText", true, __FUNC_1FE2_)
	local function __FUNC_209A_(arg1)
		registerVal11:setModel(arg1, arg0)
	end

	registerVal11:linkToElementModel(registerVal10, nil, false, __FUNC_209A_)
	local function __FUNC_20EA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal10, "hintText", true, __FUNC_20EA_)
	local function __FUNC_21A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal10, "icon", true, __FUNC_21A2_)
	local function __FUNC_2254_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal10, "displayText", true, __FUNC_2254_)
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_2333_()
		registerVal1:setupElementClipCounter(7.000000)
		registerVal8:completeAnimation()
		registerVal1.Border:setAlpha(0.430000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.SubTitle:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.ButtonList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.HintText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.Description:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.LeaderboardMakerProgressBar:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.Icon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal18.DefaultClip = __FUNC_2333_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_264B_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal1.BlackTint00:setAlpha(0.300000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal11:completeAnimation()
		registerVal1.HintText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.Description:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.LeaderboardMakerProgressBar:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.Icon:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
	end

	registerVal18.DefaultClip = __FUNC_264B_
	registerVal17.Customizing = registerVal18
	registerVal1.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Customizing"
	local function __FUNC_28BF_(arg1, arg2, arg3)
		local registerVal3 = IsGroupLeaderboardMakerState(arg0, "SelectAction")
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_28BF_
	registerVal19 = {registerVal20}
	registerVal1:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetModelForController(arg0)
	registerVal19 = Engine.GetModel(registerVal20, "groups.leaderboardmaker.state")
	local function __FUNC_293C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.leaderboardmaker.state"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal19, __FUNC_293C_)
	local function __FUNC_2A6F_(arg1, arg2)
		SetHintText(registerVal1, arg1, arg0)
		return nil
	end

	registerVal1:registerEventHandler("list_item_gain_focus", __FUNC_2A6F_)
	local function __FUNC_2AC9_(arg0, arg1, arg2, arg3)
		ProcessLeaderboardMakerBack(registerVal1, arg0, arg2)
		ListElementSelectFirstItemIfPossible(registerVal1, "ButtonList")
		return true
	end

	local function __FUNC_2B87_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2AC9_, __FUNC_2B87_, false)
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal10.id = "ButtonList"
	registerVal19 = {}
	registerVal19.name = "menu_loaded"
	registerVal19.controller = arg0
	registerVal1:processEvent(registerVal19)
	registerVal19 = {}
	registerVal19.name = "update_state"
	registerVal19.menu = registerVal1
	registerVal1:processEvent(registerVal19)
	registerVal17 = registerVal1:restoreState()
	if not registerVal17 then
		registerVal19 = {}
		registerVal19.name = "gain_focus"
		registerVal19.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal19)
	end
	local function __FUNC_2C81_(arg1)
		arg1.StartMenuframenoBG000:close()
		arg1.MenuFrame:close()
		arg1.ButtonList:close()
		arg1.HintText:close()
		arg1.LeaderboardMakerProgressBar:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.GroupInvitesTitle:close()
		arg1.SubTitle:close()
		arg1.Description:close()
		arg1.Icon:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LeaderboardMaker.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2C81_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

