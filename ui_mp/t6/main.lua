-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CoDBase")
require("ui.T6.lobby.friends")
require("ui.T6.lobby.lobbybase")
require("ui.T6.lobby.lobbymenus")
require("ui.T6.lobby.presence")
require("ui.uieditor.menus.Core_UI_require")
require("ui.uieditor.menus.core_patch_require")
require("ui.uieditor.menus.Core_Frontend_require")
require("ui.uieditor.menus.core_frontend_patch_require")
if CoD.isPC then
	require("ui.uieditor.menus.core_patch_pc_require")
end
function LUI.createMenu.main()
	local registerVal0 = Engine.GetMaxControllerCount()
	for index1=0.000000, (registerVal0 - 1.000000), 1.000000 do
		Engine.LockInput(index1, true)
		Engine.SetUIActive(index1, true)
	end
	local registerVal2 = {}
	local registerVal3 = Dvar.currentLiveEvent:get()
	registerVal2.liveEventStreamerIndex = registerVal3
	CoD.StartLiveEventFromData(registerVal2)
	LUI.roots.UIRootFull:addElement(CoD.SetupSafeAreaOverlay())
	local registerVal1 = CoD.Menu.NewForUIEditor("main")
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1.anyChildUsesUpdateState = true
	Engine.Exec(nil, "checkforinvites")
	registerVal1:setPriority(9999.000000)
	registerVal3 = Engine.GetGlobalModel()
	registerVal2 = Engine.CreateModel(registerVal3, "MapVote", true)
	Engine.CreateModel(registerVal2, "mapVoteMapNext", true)
	local function __FUNC_950_(arg0, arg1)
		local registerVal2 = CoD.ToastNotification.new(arg0, arg1)
		arg0.toastNotification = registerVal2
		arg0.toastNotification:setState("DefaultState")
		arg0:addElement(arg0.toastNotification)
		if CoD.MatchStartWarning then
			registerVal2 = CoD.MatchStartWarning.new(arg0, arg1)
			arg0.matchStartWarning = registerVal2
			arg0.matchStartWarning:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:addElement(arg0.matchStartWarning)
			local registerVal4 = {}
			registerVal4.name = "update_state"
			registerVal4.menu = arg0
			registerVal4.controller = arg1
			arg0.matchStartWarning:processEvent(registerVal4)
		end
		registerVal2 = LUI.UIImage.new()
		registerVal2:setAlpha(0.000000)
		registerVal2:setupUIStreamedImage(0.000000)
		local function __FUNC_CCC_(arg0)
			local registerVal1 = Engine.GetModelValue(arg0)
			if registerVal1 then
				registerVal2:setImage(RegisterImage(MapNameToMapLoadingImage(registerVal1)))
			end
		end

		registerVal2:subscribeToGlobalModel(arg1, "MapVote", "mapVoteMapNext", __FUNC_CCC_)
		arg0:addElement(registerVal2)
		arg0.LoadingScreenPreloadHidden = registerVal2
	end

	local registerVal4 = Engine.GetPrimaryController()
	__FUNC_950_(registerVal1, registerVal4)
	local function __FUNC_DAA_(arg0, arg1)
		local registerVal2 = Engine.GetMaxControllerCount()
		for index3=0.000000, (registerVal2 - 1.000000), 1.000000 do
			DataSources.CryptoKeyProgress.getModel(index3)
			DataSources.MegaChewTokens.getModel(index3)
			DataSources.GobbleGumDistills.getModel(index3)
		end
	end

	registerVal1:registerEventHandler("refresh_dw_inventory_menu", __FUNC_DAA_)
	local function __FUNC_F16_(arg0, arg1)
		if arg0.toastNotification ~= nil then
			arg0.toastNotification:close()
			arg0.toastNotification = nil
		end
		if registerVal1.matchStartWarning ~= nil then
			registerVal1.matchStartWarning:close()
			registerVal1.matchStartWarning = nil
		end
		if arg0.LoadingScreenPreloadHidden ~= nil then
			arg0.LoadingScreenPreloadHidden:close()
			arg0.LoadingScreenPreloadHidden = nil
		end
		arg0:removeAllChildren()
		__FUNC_950_(registerVal1, registerVal4)
	end

	registerVal1:registerEventHandler("debug_reload", __FUNC_F16_)
	local function __FUNC_106D_(arg0)
		arg0.toastNotification:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_106D_)
	return registerVal1
end

DisableGlobals()
Engine.StopEditingPresetClass()
