-- Decompiled with CoDLUIDecompiler by JariK

if not CoD.ModsUtility then
	CoD.ModsUtility = {}
end
function CoD.ModsUtility.Mods_Lists_Refresh(arg0)
	if arg0 == LuaEnums.MODS_BASE_PATH then
		Engine.Mods_Lists_UpdateMods()
	else
		if arg0 == LuaEnums.USERMAP_BASE_PATH then
			Engine.Mods_Lists_UpdateUsermaps()
		end
	end
end

function CoD.ModsUtility.NeedToUnload(arg0, arg1, arg2)
	OpenSystemOverlay(arg0, arg2, arg1, "Mods_NeedToUnload", nil)
end

local registerVal2 = {}
local registerVal3 = CoD.OverlayUtility.AutoSizeMenuFromDescription("Mods_NeedToUnload")
registerVal2.menuName = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal3 = Engine.Localize("PLATFORM_MODS_NEED_TO_UNLOAD")
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("PLATFORM_MODS_NEED_TO_UNLOAD_DESC", Mods_UsingModsUgcName())
registerVal2.description = registerVal3
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_622_(arg0)
	local function __FUNC_6E4_(arg0)
		local function __FUNC_81C_(arg0, arg1)
			local registerVal2 = {}
			local registerVal3 = {}
			registerVal3.displayText = arg0
			registerVal2.models = registerVal3
			registerVal3 = {}
			registerVal3.action = arg1
			registerVal2.properties = registerVal3
			return registerVal2
		end

		local function __FUNC_8B1_(arg0, arg1, arg2, arg3, arg4)
			Mods_Unload(arg2, arg1)
			GoBack(arg4, arg2)
		end

		table.insert({}, __FUNC_81C_("PLATFORM_MODS_UNLOAD", __FUNC_8B1_))
		table.insert({}, __FUNC_81C_("MENU_CANCEL", CoD.OverlayUtility.DefaultButtonAction))
		return {}
	end

	local registerVal2 = DataSourceHelpers.ListSetup("Mods_NeedToUnloadButtonList", __FUNC_6E4_, true)
	DataSources.Mods_NeedToUnloadButtonList = registerVal2
	return "Mods_NeedToUnloadButtonList"
end

registerVal2.listDatasource = __FUNC_622_
CoD.OverlayUtility.AddSystemOverlay("Mods_NeedToUnload", registerVal2)
