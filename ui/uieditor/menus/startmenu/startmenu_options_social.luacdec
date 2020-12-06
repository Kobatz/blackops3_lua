-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
local function __FUNC_2D7_()
	local registerVal0 = {}
	local registerVal1 = {}
	local registerVal2 = Engine.Localize("MENU_LINK_TO_YOUTUBE")
	registerVal1.name = registerVal2
	registerVal2 = Engine.Localize("MENU_LINK_YOUTUBE_DESC")
	registerVal1.desc = registerVal2
	registerVal2 = RegisterMaterial("")
	registerVal1.image = registerVal2
	registerVal0.models = registerVal1
	registerVal1 = {}
	registerVal1.disabled = true
	local function __FUNC_516_(arg0)
		local registerVal1 = Engine.IsYouTubeAccountChecked(arg0)
		registerVal1 = Engine.IsYouTubeAccountRegistered(arg0)
		if arg0 or not registerVal1 then
			self:openPopup("YouTube_Connect", arg0)
		else
			self:openPopup("YouTube_UnRegister", arg0)
		end
	end

	registerVal1.action = __FUNC_516_
	registerVal0.properties = registerVal1
	registerVal1 = Engine.IsPlayerUnderage(controller)
	if registerVal1 then
		registerVal2 = Engine.Localize("MENU_GENERIC_UNDERAGE_MESSAGE")
		listinfo.models.desc = registerVal2
	end
	return registerVal0
end

local function __FUNC_657_()
	local registerVal0 = {}
	local registerVal1 = {}
	local registerVal2 = Engine.Localize("MENU_LINK_TO_TWITTER")
	registerVal1.name = registerVal2
	registerVal2 = Engine.Localize("MENU_LINK_TWITTER_DESC")
	registerVal1.desc = registerVal2
	registerVal2 = RegisterMaterial("")
	registerVal1.image = registerVal2
	registerVal0.models = registerVal1
	registerVal1 = {}
	registerVal1.disabled = true
	local function __FUNC_8A6_(arg0)
		local registerVal1 = Engine.IsTwitterAccountChecked(arg0)
		registerVal1 = Engine.IsTwitterAccountRegistered(arg0)
		if arg0 or not registerVal1 then
			self:openPopup("Twitter_Connect", arg0)
		else
			self:openPopup("Twitter_UnRegister", arg0)
		end
	end

	registerVal1.action = __FUNC_8A6_
	registerVal0.properties = registerVal1
	registerVal1 = Engine.IsPlayerUnderage(controller)
	if registerVal1 then
		registerVal2 = Engine.Localize("MENU_GENERIC_UNDERAGE_MESSAGE")
		listinfo.models.desc = registerVal2
		registerVal0.properties.disabled = true
	end
	return registerVal0
end

local function __FUNC_9E7_()
	local registerVal0 = {}
	local registerVal1 = {}
	local registerVal2 = Engine.Localize("MENU_LINK_TO_TWITCH")
	registerVal1.name = registerVal2
	registerVal2 = Engine.Localize("MENU_LINK_TWITCH_DESC")
	registerVal1.desc = registerVal2
	registerVal2 = RegisterMaterial("")
	registerVal1.image = registerVal2
	registerVal0.models = registerVal1
	registerVal1 = {}
	registerVal1.disabled = true
	local function __FUNC_C34_(arg0)
		local registerVal1 = Engine.IsTwitchAccountRegistered(arg0)
		if not registerVal1 then
			self:openPopup("Twitch_Connect", arg0)
		else
			self:openPopup("Twitch_UnRegister", arg0)
		end
	end

	registerVal1.action = __FUNC_C34_
	registerVal0.properties = registerVal1
	registerVal1 = Engine.IsPlayerUnderage(controller)
	if registerVal1 then
		registerVal2 = Engine.Localize("MENU_GENERIC_UNDERAGE_MESSAGE")
		listinfo.models.desc = registerVal2
		registerVal0.properties.disabled = true
	end
	return registerVal0
end

local function __FUNC_D33_(arg0)
	table.insert({}, __FUNC_2D7_())
	table.insert({}, __FUNC_657_())
	table.insert({}, __FUNC_9E7_())
	return {}
end

local registerVal5 = DataSourceHelpers.ListSetup("OptionSocialList ", __FUNC_D33_, true)
DataSources.OptionSocialList = registerVal5
function LUI.createMenu.StartMenu_Options_Social(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Social")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Social.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.060000, 0.060000, 0.060000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 64.000000, 734.000000)
	registerVal4:setTopBottom(true, false, 107.500000, 675.500000)
	registerVal4:setDataSource("OptionSocialList")
	registerVal4:setWidgetType(CoD.StartMenu_Options_Slider)
	registerVal4:setVerticalCount(10.000000)
	local function __FUNC_1C32_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_1C32_)
	local function __FUNC_1DC3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1DC3_)
	local function __FUNC_1E92_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1EF3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1E92_, __FUNC_1EF3_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.ButtonList = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 706.390000, 830.390000)
	registerVal5:setTopBottom(true, false, 109.210000, 233.210000)
	registerVal1:addElement(registerVal5)
	registerVal1.Image = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 845.250000, 1216.000000)
	registerVal6:setTopBottom(true, false, 108.210000, 141.000000)
	registerVal6:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.DescTitle = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 845.250000, 1216.000000)
	registerVal7:setTopBottom(true, false, 141.000000, 162.000000)
	registerVal7:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.Desc = registerVal7
	local registerVal8 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8.titleLabel:setText(Engine.Localize("MENU_SOCIAL_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_SOCIAL_CAPS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal8)
	registerVal1.MenuFrame = registerVal8
	local function __FUNC_1FEE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal4, "image", true, __FUNC_1FEE_)
	local function __FUNC_20A0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal4, "name", true, __FUNC_20A0_)
	local function __FUNC_215A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal4, "desc", true, __FUNC_215A_)
	local function __FUNC_2212_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2212_)
	local function __FUNC_22A5_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_22F8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_22A5_, __FUNC_22F8_, false)
	registerVal4.id = "ButtonList"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	local registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	local registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal11)
	end
	local function __FUNC_23F5_(arg1)
		arg1.ButtonList:close()
		arg1.MenuFrame:close()
		arg1.Image:close()
		arg1.DescTitle:close()
		arg1.Desc:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Social.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_23F5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

