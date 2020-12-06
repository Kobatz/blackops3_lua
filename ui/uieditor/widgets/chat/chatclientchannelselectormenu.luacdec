-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Chat.ChannelSelectorButton")
local function __FUNC_223_(arg0, arg1, arg2)
	arg0.ChannelSelectorButtonParty.id = "ChannelSelectorButtonParty"
	arg0.ChannelSelectorButtonTeam.id = "ChannelSelectorButtonTeam"
	arg0.ChannelSelectorButtonAll.id = "ChannelSelectorButtonAll"
	local function __FUNC_3FB_(arg2, arg3)
		ChatClientInputChannelSelectorHide(arg0, arg2, arg1)
		ChatClientInputStart(arg0, arg2, arg1, arg2.inputChannelToStart)
	end

	arg0.ChannelSelectorButtonParty.inputChannelToStart = "Party"
	arg0.ChannelSelectorButtonTeam.inputChannelToStart = "Team"
	arg0.ChannelSelectorButtonAll.inputChannelToStart = "All"
	arg0.ChannelSelectorButtonParty:registerEventHandler("leftmouseup", __FUNC_3FB_)
	arg0.ChannelSelectorButtonTeam:registerEventHandler("leftmouseup", __FUNC_3FB_)
	arg0.ChannelSelectorButtonAll:registerEventHandler("leftmouseup", __FUNC_3FB_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ChatClientChannelSelectorMenu = registerVal2
local function __FUNC_4BF_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChatClientChannelSelectorMenu)
	registerVal2.id = "ChatClientChannelSelectorMenu"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 110.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 76.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 3.000000, 106.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 71.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.greyBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 3.000000, -4.000000)
	registerVal4:setTopBottom(true, true, 1.000000, -59.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BackGroundImage = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 4.000000, 60.000000)
	registerVal5:setTopBottom(true, false, 1.000000, 15.000000)
	registerVal5:setText(Engine.Localize("PLATFORM_CHAT_CHANNELS_CAP"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.ChannelsLabel = registerVal5
	local registerVal6 = CoD.ChannelSelectorButton.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 3.000000, 106.000000)
	registerVal6:setTopBottom(true, false, 56.500000, 70.500000)
	registerVal6.ChannelLabel:setText(Engine.Localize("PLATFORM_CHAT_CHANNEL_SELECT_PARTY"))
	local function __FUNC_FC2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.ChannelLabel:setRGB(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "partyChannel.color", true, __FUNC_FC2_)
	registerVal2:addElement(registerVal6)
	registerVal2.ChannelSelectorButtonParty = registerVal6
	local registerVal7 = CoD.ChannelSelectorButton.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 3.000000, 106.000000)
	registerVal7:setTopBottom(true, false, 38.000000, 52.000000)
	registerVal7.ChannelLabel:setText(Engine.Localize("PLATFORM_CHAT_CHANNEL_SELECT_TEAM"))
	local function __FUNC_1075_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.ChannelLabel:setRGB(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "teamChannel.color", true, __FUNC_1075_)
	registerVal2:addElement(registerVal7)
	registerVal2.ChannelSelectorButtonTeam = registerVal7
	local registerVal8 = CoD.ChannelSelectorButton.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 3.000000, 106.000000)
	registerVal8:setTopBottom(true, false, 19.500000, 33.500000)
	registerVal8.ChannelLabel:setText(Engine.Localize("PLATFORM_CHAT_CHANNEL_SELECT_ALL"))
	local function __FUNC_1129_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ChannelLabel:setRGB(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "allChannel.color", true, __FUNC_1129_)
	registerVal2:addElement(registerVal8)
	registerVal2.ChannelSelectorButtonAll = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 3.000000, -4.000000)
	registerVal9:setTopBottom(false, true, -76.000000, -72.000000)
	registerVal9:setAlpha(0.550000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.whiteline = registerVal9
	local function __FUNC_11DD_(arg0)
		arg0.ChannelSelectorButtonParty:close()
		arg0.ChannelSelectorButtonTeam:close()
		arg0.ChannelSelectorButtonAll:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11DD_)
	if __FUNC_223_ then
		__FUNC_223_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChatClientChannelSelectorMenu.new = __FUNC_4BF_
