-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CategoryButton")
CoD.PlaylistButton = {}
function CoD.PlaylistButton.Action(arg0, arg1)
	if arg0.actionEventName ~= nil then
		local registerVal2 = Engine.IsChunkInstalledByFileName(arg0.itemInfo.loadName)
		if arg0.itemInfo.loadName == nil or registerVal2 then
			local registerVal4 = {}
			registerVal4.name = arg0.actionEventName
			registerVal4.controller = arg1.controller
			registerVal4.itemInfo = arg0.itemInfo
			registerVal4.listIndex = arg0.listIndex
			registerVal4.category = arg0.category
			arg0:dispatchEventToParent(registerVal4)
		else
			Engine.PrefetchByFileName(arg0.itemInfo.loadName)
		end
	end
end

function CoD.PlaylistButton.new(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = CoD.CategoryButton.new(arg0, arg1, arg2, arg3, arg4)
	registerVal7.id = ("CoD9Button.PlaylistButton." .. arg4.name)
	registerVal7.listIndex = arg5
	registerVal7.category = arg6
	registerVal7:registerEventHandler("button_action", CoD.PlaylistButton.Action)
	registerVal7:registerEventHandler("partylobby_update", CoD.PlaylistButton.Refresh)
	registerVal7:registerEventHandler("gamelobby_update", CoD.PlaylistButton.Refresh)
	return registerVal7
end

function CoD.PlaylistButton.Refresh(arg0, arg1)
	local registerVal2 = Engine.IsPlaylistLocked(arg1.controller, arg0.itemInfo.index)
	if arg0.itemInfo.index ~= nil and registerVal2 then
		arg0:disable()
	else
		arg0:enable()
	end
end

