-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.BlackMarket.NextKeyProgress")
require("ui.uieditor.widgets.BlackMarket.DoubleLoot_small")
local function __FUNC_297_(arg0, arg1)
	CoD.AARUtility.SetupUIModels(arg1)
end

local function __FUNC_31C_(arg0, arg1)
	CoD.BlackMarketUtility.DoAARCryptoKeyAnimation(arg0.NextKeyProgress, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.Pregame")
	registerVal3 = Engine.CreateModel(registerVal2, "closeAAR")
	local function __FUNC_4BF_(arg1)
		arg0:close()
	end

	arg0:subscribeToModel(registerVal3, __FUNC_4BF_, false)
end

local function __FUNC_503_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MPAAR")
	if __FUNC_297_ then
		__FUNC_297_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MPAAR.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.CategoryListPanel = registerVal4
	local registerVal5 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 125.000000, 651.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.TabFrame = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -647.000000, 647.000000)
	registerVal6:setTopBottom(false, false, -360.000000, -237.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.TitleBacking = registerVal6
	local registerVal7 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 0.000000, 2496.000000)
	registerVal7:setTopBottom(true, false, 84.000000, 125.000000)
	registerVal7.Tabs.grid:setDataSource("AARTabs")
	registerVal1:addElement(registerVal7)
	registerVal1.tabBar = registerVal7
	local registerVal8 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8.titleLabel:setText(Engine.Localize("MPUI_AAR_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_AAR_CAPS"))
	registerVal1:addElement(registerVal8)
	registerVal1.MenuFrame = registerVal8
	local registerVal9 = CoD.NextKeyProgress.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, true, -406.000000, -64.000000)
	registerVal9:setTopBottom(true, false, 29.000000, 79.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.NextKeyProgress = registerVal9
	local registerVal10 = CoD.DoubleLoot_small.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 800.000000, 860.000000)
	registerVal10:setTopBottom(true, false, 25.500000, 85.500000)
	registerVal1:addElement(registerVal10)
	registerVal1.DoubleLootsmall = registerVal10
	local function __FUNC_1427_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:changeFrameWidget(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal7.Tabs.grid, "tabWidget", true, __FUNC_1427_)
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_14C2_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal1.NextKeyProgress:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_14C2_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_15C2_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal9:completeAnimation()
		registerVal1.NextKeyProgress:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_15C2_
	registerVal11.Offline = registerVal12
	registerVal1.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Offline"
	local function __FUNC_16C7_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualToEitherValue(arg0, "aarType", "public", "league")
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_16C7_
	registerVal13 = {registerVal14}
	registerVal1:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetModelForController(arg0)
	registerVal13 = Engine.GetModel(registerVal14, "aarType")
	local function __FUNC_1769_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "aarType"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal13, __FUNC_1769_)
	local function __FUNC_1885_(arg0, arg1, arg2, arg3)
		GoBackAndShowMatchSurveyIfNecessary(arg1, arg2)
		return true
	end

	local function __FUNC_18F5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1885_, __FUNC_18F5_, false)
	local function __FUNC_19F1_(arg0, arg1, arg2, arg3)
		GoBackAndShowMatchSurveyIfNecessary(arg1, arg2)
		return true
	end

	local function __FUNC_1A61_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_19F1_, __FUNC_1A61_, false)
	local function __FUNC_1B60_(arg0, arg1, arg2, arg3)
		GoBackAndShowMatchSurveyIfNecessary(arg1, arg2)
		return true
	end

	local function __FUNC_1BD1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_BACK, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_BACK, "TAB", __FUNC_1B60_, __FUNC_1BD1_, false)
	local function __FUNC_1CBC_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRecentGameBookmarked(arg2)
		if not registerVal4 then
			FileshareBookmarkRecentGame(arg2)
			UpdateAllMenuButtonPrompts(arg1, arg2)
			return true
		end
	end

	local function __FUNC_1D89_(arg0, arg1, arg2)
		local registerVal3 = IsRecentGameBookmarked(arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_BOOKMARK_GAME")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "B", __FUNC_1CBC_, __FUNC_1D89_, false)
	local function __FUNC_1ECA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsStarterPack(arg2)
		if registerVal4 then
			StarterParckPurchase(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_1F59_(arg0, arg1, arg2)
		local registerVal3 = IsStarterPack(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "PLATFORM_STARTER_PACK_UPGRADE_TITLE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LTRIG, "U", __FUNC_1ECA_, __FUNC_1F59_, false)
	registerVal5.id = "TabFrame"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	registerVal13 = {}
	registerVal13.name = "menu_loaded"
	registerVal13.controller = arg0
	registerVal1:processEvent(registerVal13)
	registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = registerVal1
	registerVal1:processEvent(registerVal13)
	registerVal11 = registerVal1:restoreState()
	if not registerVal11 then
		registerVal13 = {}
		registerVal13.name = "gain_focus"
		registerVal13.controller = arg0
		registerVal1.TabFrame:processEvent(registerVal13)
	end
	local function __FUNC_209B_(arg1)
		arg1.tabBar:close()
		arg1.MenuFrame:close()
		arg1.NextKeyProgress:close()
		arg1.DoubleLootsmall:close()
		arg1.TabFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MPAAR.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_209B_)
	if __FUNC_31C_ then
		__FUNC_31C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.MPAAR = __FUNC_503_
