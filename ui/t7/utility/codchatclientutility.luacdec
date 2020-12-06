-- Decompiled with CoDLUIDecompiler by JariK

CoD.ChatClientUtility = {}
CoD.ChatClientUtility.Properties = {}
function CoD.ChatClientUtility.GetChannelFromString(arg0)
	if arg0 ~= nil then
		if arg0 == "All" then
		else
			if arg0 == "Team" then
			else
				if arg0 == "Party" then
				end
			end
		end
		if Enum.chatChannel_e.CHAT_CHANNEL_PARTY ~= nil and Enum.chatChannel_e.CHAT_CHANNEL_PARTY ~= "" then
			return Enum.chatChannel_e.CHAT_CHANNEL_PARTY
		end
	end
end

function CoD.ChatClientUtility.ChannelStringGet(arg0)
	return Engine.ChatClient_ChannelStringGet(arg0)
end

function CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "ChatClientGlobal")
	return registerVal0
end

function CoD.ChatClientUtility.GetUpdateModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "update")
	return registerVal0
end

function CoD.ChatClientUtility.GetChatEntriesListModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "ChatClientEntriesList")
	return registerVal0
end

function CoD.ChatClientUtility.GetInputChannelModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "inputChannel")
	return registerVal0
end

function CoD.ChatClientUtility.GetFilterChannelModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "filterChannel")
	return registerVal0
end

function CoD.ChatClientUtility.GetInputTextModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "inputText")
	return registerVal0
end

function CoD.ChatClientUtility.GetInputChannelTextModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "inputChannelText")
	return registerVal0
end

function CoD.ChatClientUtility.GetInputChannelColorModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "inputChannelColor")
	return registerVal0
end

function CoD.ChatClientUtility.GetAllChannelModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "allChannel")
	return registerVal0
end

function CoD.ChatClientUtility.GetTeamChannelColorModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "teamChannelColor")
	return registerVal0
end

function CoD.ChatClientUtility.GetPartyChannelColorModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "partyChannelColor")
	return registerVal0
end

function CoD.ChatClientUtility.GetMenuInputChannelShowModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "menuInputChannelShow")
	return registerVal0
end

function CoD.ChatClientUtility.GetMenuSettingsShowModel()
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "menuSettingsShow")
	return registerVal0
end

function CoD.ChatClientUtility.ResetInputChannelSelectorMenu()
	local registerVal1 = CoD.ChatClientUtility.GetMenuInputChannelShowModel()
	Engine.SetModelValue(registerVal1, 0.000000)
end

function CoD.ChatClientUtility.ResetSettingsMenu()
	local registerVal1 = CoD.ChatClientUtility.GetMenuSettingsShowModel()
	Engine.SetModelValue(registerVal1, 0.000000)
end

function CoD.ChatClientUtility.ResetMenuShow()
	CoD.ChatClientUtility.ResetInputChannelSelectorMenu()
	CoD.ChatClientUtility.ResetSettingsMenu()
end

function CoD.ChatClientUtility.ResetFilterChannelModels(arg0)
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal1, "allChannel")
	local registerVal4 = Engine.CreateModel(registerVal3, "type")
	Engine.SetModelValue(registerVal4, Enum.chatChannel_e.CHAT_CHANNEL_ALL)
	registerVal4 = Engine.CreateModel(registerVal3, "checked")
	local registerVal5 = Engine.ChatClient_FilterChannelGet(arg0, Enum.chatChannel_e.CHAT_CHANNEL_ALL)
	if 0.000000 >= registerVal5 then
	end
	Engine.SetModelValue(registerVal4, true)
	registerVal4 = Engine.CreateModel(registerVal3, "color")
	Engine.SetModelValue(registerVal4, Engine.ChatClient_ChannelColorGet(arg0, Enum.chatChannel_e.CHAT_CHANNEL_ALL))
	registerVal3 = Engine.CreateModel(registerVal1, "teamChannel")
	registerVal4 = Engine.CreateModel(registerVal3, "type")
	Engine.SetModelValue(registerVal4, Enum.chatChannel_e.CHAT_CHANNEL_TEAM)
	registerVal4 = Engine.CreateModel(registerVal3, "checked")
	registerVal5 = Engine.ChatClient_FilterChannelGet(arg0, Enum.chatChannel_e.CHAT_CHANNEL_TEAM)
	if 0.000000 >= registerVal5 then
	end
	Engine.SetModelValue(registerVal4, true)
	registerVal4 = Engine.CreateModel(registerVal3, "color")
	Engine.SetModelValue(registerVal4, Engine.ChatClient_ChannelColorGet(arg0, Enum.chatChannel_e.CHAT_CHANNEL_TEAM))
	registerVal3 = Engine.CreateModel(registerVal1, "partyChannel")
	registerVal4 = Engine.CreateModel(registerVal3, "type")
	Engine.SetModelValue(registerVal4, Enum.chatChannel_e.CHAT_CHANNEL_PARTY)
	registerVal4 = Engine.CreateModel(registerVal3, "checked")
	registerVal5 = Engine.ChatClient_FilterChannelGet(arg0, Enum.chatChannel_e.CHAT_CHANNEL_PARTY)
	if 0.000000 >= registerVal5 then
	end
	Engine.SetModelValue(registerVal4, true)
	registerVal4 = Engine.CreateModel(registerVal3, "color")
	Engine.SetModelValue(registerVal4, Engine.ChatClient_ChannelColorGet(arg0, Enum.chatChannel_e.CHAT_CHANNEL_PARTY))
end

function CoD.ChatClientUtility.ResetSettingsModels(arg0)
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal1, "showTimestamps")
	local registerVal4 = Engine.CreateModel(registerVal3, "checked")
	Engine.SetModelValue(registerVal4, Engine.ChatClient_ShowTimestampsGet(arg0))
	registerVal3 = Engine.CreateModel(registerVal1, "showChannel")
	registerVal4 = Engine.CreateModel(registerVal3, "checked")
	Engine.SetModelValue(registerVal4, Engine.ChatClient_ShowChannelGet(arg0))
end

function CoD.ChatClientUtility.ResetAllModels(arg0)
	local registerVal1 = CoD.ChatClientUtility.GetChatClientGlobalModel()
	local registerVal2 = Engine.ChatClient_InputChannelGet(arg0)
	local registerVal4 = CoD.ChatClientUtility.GetInputChannelModel()
	Engine.SetModelValue(registerVal4, registerVal2)
	registerVal4 = CoD.ChatClientUtility.GetFilterChannelModel()
	Engine.SetModelValue(registerVal4, Engine.ChatClient_FilterChannelGet(arg0, Enum.chatChannel_e.CHAT_CHANNEL_COUNT))
	registerVal4 = CoD.ChatClientUtility.GetInputTextModel()
	Engine.SetModelValue(registerVal4, "")
	registerVal4 = CoD.ChatClientUtility.GetInputChannelTextModel()
	Engine.SetModelValue(registerVal4, "")
	local registerVal3 = Engine.ChatClient_ChannelColorGet(arg0, registerVal2)
	local registerVal5 = CoD.ChatClientUtility.GetInputChannelColorModel()
	Engine.SetModelValue(registerVal5, registerVal3)
	CoD.ChatClientUtility.ResetMenuShow()
	CoD.ChatClientUtility.ResetFilterChannelModels(arg0)
	CoD.ChatClientUtility.ResetSettingsModels(arg0)
	return registerVal1
end

function CoD.ChatClientUtility.UpdateOptionsModels(arg0)
	local registerVal2 = CoD.ChatClientUtility.GetFilterChannelModel()
	Engine.SetModelValue(registerVal2, Engine.ChatClient_FilterChannelGet(arg0, Enum.chatChannel_e.CHAT_CHANNEL_COUNT))
	CoD.ChatClientUtility.ResetMenuShow()
	CoD.ChatClientUtility.ResetFilterChannelModels(arg0)
	CoD.ChatClientUtility.ResetSettingsModels(arg0)
	Engine.Exec(arg0, "chatClientUpdate")
end

