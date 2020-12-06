-- Decompiled with CoDLUIDecompiler by JariK

if not CoD.StarterPackUtil then
	CoD.StarterPackUtil = {}
end
function CoD.StarterPackUtil.UpgradeNotice(arg0, arg1, arg2)
	OpenSystemOverlay(arg0, arg2, arg1, "StarterPack_Upgrade", nil)
end

local registerVal2 = {}
local registerVal3 = CoD.OverlayUtility.AutoSizeMenuFromDescription("StarterPack_Upgrade")
registerVal2.menuName = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal2.image = "starterpack_purchase_dialog_pc"
registerVal3 = Engine.Localize("PLATFORM_STARTER_PACK_UPGRADE_TITLE")
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("PLATFORM_STARTER_PACK_UPGRADE_DESC")
registerVal2.description = registerVal3
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_4F8_(arg0)
	local function __FUNC_5BE_(arg0)
		local function __FUNC_703_(arg0, arg1)
			local registerVal2 = {}
			local registerVal3 = {}
			registerVal3.displayText = arg0
			registerVal2.models = registerVal3
			registerVal3 = {}
			registerVal3.action = arg1
			registerVal2.properties = registerVal3
			return registerVal2
		end

		local function __FUNC_795_(arg0, arg1, arg2, arg3, arg4)
			OpenSteamStore(arg0, arg1, arg2, 437351.000000, previousMenu)
			GoBack(arg4, arg2)
		end

		table.insert({}, __FUNC_703_("PLATFORM_STARTER_PACK_UPGRADE_TITLE", __FUNC_795_))
		table.insert({}, __FUNC_703_("MENU_CANCEL", CoD.OverlayUtility.DefaultButtonAction))
		return {}
	end

	local registerVal2 = DataSourceHelpers.ListSetup("StarterPack_UpgradeButtonList", __FUNC_5BE_, true)
	DataSources.StarterPack_UpgradeButtonList = registerVal2
	return "StarterPack_UpgradeButtonList"
end

registerVal2.listDatasource = __FUNC_4F8_
CoD.OverlayUtility.AddSystemOverlay("StarterPack_Upgrade", registerVal2)
