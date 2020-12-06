-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Chat.CheckboxWithLabel")
require("ui.uieditor.widgets.ChannelFilterOptionsContainer")
local function __FUNC_25F_(arg0, arg1, arg2)
	arg0.ShowTimestamps.id = "ShowTimestamps"
	arg0.ShowChannels.id = "ShowChannels"
	arg0.ChannelFilterOptionsContainerParty.id = "ChannelFilterOptionsContainerParty"
	arg0.ChannelFilterOptionsContainerTeam.id = "ChannelFilterOptionsContainerTeam"
	arg0.ChannelFilterOptionsContainerAll.id = "ChannelFilterOptionsContainerAll"
	local function __FUNC_456_(arg0, arg1)
		ToggleSelfModelBoolean(arg0, arg0, arg1.controller, "checked")
	end

	arg0.ShowTimestamps:registerEventHandler("leftmouseup", __FUNC_456_)
	arg0.ShowChannels:registerEventHandler("leftmouseup", __FUNC_456_)
	arg0.ChannelFilterOptionsContainerParty:registerEventHandler("leftmouseup", __FUNC_456_)
	arg0.ChannelFilterOptionsContainerTeam:registerEventHandler("leftmouseup", __FUNC_456_)
	arg0.ChannelFilterOptionsContainerAll:registerEventHandler("leftmouseup", __FUNC_456_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ChatClientSettingsMenu = registerVal2
local function __FUNC_4E5_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChatClientSettingsMenu)
	registerVal2.id = "ChatClientSettingsMenu"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 110.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 123.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 4.000000, 106.500000)
	registerVal3:setTopBottom(true, false, 1.000000, 120.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.greyBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 3.000000, 107.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 18.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.900000)
	registerVal2:addElement(registerVal4)
	registerVal2.BackGroundImageTop = registerVal4
	local registerVal5 = CoD.CheckboxWithLabel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 3.000000, 107.000000)
	registerVal5:setTopBottom(true, false, 106.000000, 120.000000)
	registerVal5.label:setText(Engine.Localize("PLATFORM_CHAT_SHOW_CHANNEL"))
	local function __FUNC_17A7_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChatClientGlobal", "showChannel", __FUNC_17A7_)
	local function __FUNC_17F6_(arg0)
		ChatClientShowChannelSet(registerVal2, registerVal5, arg1, arg0)
	end

	registerVal5:subscribeToGlobalModel(arg1, "ChatClientGlobal", "showChannel.checked", __FUNC_17F6_)
	registerVal2:addElement(registerVal5)
	registerVal2.ShowChannels = registerVal5
	local registerVal6 = CoD.CheckboxWithLabel.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 3.000000, 107.000000)
	registerVal6:setTopBottom(true, false, 89.000000, 103.000000)
	registerVal6.label:setText(Engine.Localize("PLATFORM_CHAT_SHOW_TIMESTAMP"))
	local function __FUNC_185E_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChatClientGlobal", "showTimestamps", __FUNC_185E_)
	local function __FUNC_18AE_(arg0)
		ChatClientShowTimestampsSet(registerVal2, registerVal6, arg1, arg0)
	end

	registerVal6:subscribeToGlobalModel(arg1, "ChatClientGlobal", "showTimestamps.checked", __FUNC_18AE_)
	registerVal2:addElement(registerVal6)
	registerVal2.ShowTimestamps = registerVal6
	local registerVal7 = CoD.ChannelFilterOptionsContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 3.000000, 107.000000)
	registerVal7:setTopBottom(true, false, 54.000000, 68.000000)
	registerVal7.label:setText(Engine.Localize("PLATFORM_CHAT_PARTY"))
	local function __FUNC_1919_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChatClientGlobal", "partyChannel", __FUNC_1919_)
	local function __FUNC_196A_(arg0)
		ChatClientFilterChannelSet(registerVal2, registerVal7, arg1, "Party", arg0)
	end

	registerVal7:subscribeToGlobalModel(arg1, "ChatClientGlobal", "partyChannel.checked", __FUNC_196A_)
	registerVal2:addElement(registerVal7)
	registerVal2.ChannelFilterOptionsContainerParty = registerVal7
	local registerVal8 = CoD.ChannelFilterOptionsContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 3.000000, 107.000000)
	registerVal8:setTopBottom(true, false, 37.000000, 51.000000)
	registerVal8.label:setText(Engine.Localize("PLATFORM_CHAT_TEAM"))
	local function __FUNC_19E7_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:subscribeToGlobalModel(arg1, "ChatClientGlobal", "teamChannel", __FUNC_19E7_)
	local function __FUNC_1A36_(arg0)
		ChatClientFilterChannelSet(registerVal2, registerVal8, arg1, "Team", arg0)
	end

	registerVal8:subscribeToGlobalModel(arg1, "ChatClientGlobal", "teamChannel.checked", __FUNC_1A36_)
	registerVal2:addElement(registerVal8)
	registerVal2.ChannelFilterOptionsContainerTeam = registerVal8
	local registerVal9 = CoD.ChannelFilterOptionsContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 3.000000, 107.000000)
	registerVal9:setTopBottom(true, false, 20.000000, 34.000000)
	registerVal9.label:setText(Engine.Localize("PLATFORM_CHAT_ALL"))
	local function __FUNC_1AB2_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:subscribeToGlobalModel(arg1, "ChatClientGlobal", "allChannel", __FUNC_1AB2_)
	local function __FUNC_1B02_(arg0)
		ChatClientFilterChannelSet(registerVal2, registerVal9, arg1, "All", arg0)
	end

	registerVal9:subscribeToGlobalModel(arg1, "ChatClientGlobal", "allChannel.checked", __FUNC_1B02_)
	registerVal2:addElement(registerVal9)
	registerVal2.ChannelFilterOptionsContainerAll = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 51.000000, 106.000000)
	registerVal10:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setText(Engine.Localize("PLATFORM_CHAT_COLOR_CAPS"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.ColorsLabel = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 4.000000, 60.000000)
	registerVal11:setTopBottom(true, false, 2.000000, 16.000000)
	registerVal11:setText(Engine.Localize("PLATFORM_CHAT_CHANNEL_CAPS"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.ChannelsLabel = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 3.000000, 107.000000)
	registerVal12:setTopBottom(true, false, 72.000000, 87.000000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.900000)
	registerVal2:addElement(registerVal12)
	registerVal2.BlackBGBottom = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 4.000000, 61.000000)
	registerVal13:setTopBottom(true, false, 72.000000, 86.000000)
	registerVal13:setText(Engine.Localize("PLATFORM_CHAT_PREFIX_CAPS"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.SwitchesLabel = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 4.000000, -3.000000)
	registerVal14:setTopBottom(false, true, -123.000000, -119.000000)
	registerVal14:setAlpha(0.550000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.whiteLineTop = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, 4.000000, -3.000000)
	registerVal15:setTopBottom(false, true, -53.000000, -49.000000)
	registerVal15:setAlpha(0.550000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.whitelineMid = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1B7D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.BackGroundImageTop:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal17.DefaultClip = __FUNC_1B7D_
	registerVal16.DefaultState = registerVal17
	registerVal2.clipsPerState = registerVal16
	local function __FUNC_1C86_(arg0)
		arg0.ShowChannels:close()
		arg0.ShowTimestamps:close()
		arg0.ChannelFilterOptionsContainerParty:close()
		arg0.ChannelFilterOptionsContainerTeam:close()
		arg0.ChannelFilterOptionsContainerAll:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C86_)
	if __FUNC_25F_ then
		__FUNC_25F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChatClientSettingsMenu.new = __FUNC_4E5_
