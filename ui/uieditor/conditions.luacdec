-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.conditions_helper")
function AlwaysFalse()
	return false
end

function AlwaysTrue()
	return true
end

function IsVisibilityBitSet(arg0, arg1)
	local registerVal2 = Engine.IsVisibilityBitSet(arg0, arg1)
	if registerVal2 then
		return true
	else
		return false
	end
end

function MediaManagerIsBuyMoreSlot()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "MediaManager", false)
	registerVal1 = Engine.CreateModel(registerVal0, "isBuyMoreSlot", false)
	local registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 == nil then
		return false
	end
	return registerVal2
end

function IsMediaManager()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "MediaManager", false)
	registerVal1 = Engine.GetModel(registerVal0, "isMediaManager")
	if registerVal1 then
		local registerVal2 = Engine.GetModelValue(registerVal1)
		if registerVal2 ~= 1.000000 then
		end
		return true
	end
	return false
end

function CanShowMediaManager()
	local registerVal0 = IsTu1Build()
	if registerVal0 == true then
		return false
	end
	if CoD.isSafehouse then
		return false
	end
	return true
end

function MediaManagerSlotsUsed(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "MediaManager", false)
	registerVal2 = Engine.CreateModel(registerVal1, "slotsUsed", false)
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if not registerVal3 then
	end
	if 0.000000 >= 0.000000 then
	end
	return true
end

function MediaManagerShouldHideItemPreview(arg0)
	local registerVal1 = MediaManagerIsBuyMoreSlot()
	if registerVal1 then
		return true
	end
	registerVal1 = MediaManagerSlotsUsed(arg0)
	if not registerVal1 then
		return true
	end
	return false
end

function FileshareIsDeleting()
	local registerVal0 = Engine.GetModelValue(CoD.FileshareUtility.GetDeletingModel())
	if registerVal0 == Enum.FileshareTaskUIState.FILESHARE_TASK_UI_WORKING then
		return true
	end
	return false
end

function FileshareIsDeletingInError()
	local registerVal0 = Engine.GetModelValue(CoD.FileshareUtility.GetDeletingModel())
	if registerVal0 == Enum.FileshareTaskUIState.FILESHARE_TASK_UI_ERROR then
		return true
	end
	return false
end

function FileshareIsPublishing()
	local registerVal0 = Engine.GetModelValue(CoD.FileshareUtility.GetPublishingModel())
	if registerVal0 == Enum.FileshareTaskUIState.FILESHARE_TASK_UI_WORKING then
		return true
	end
	return false
end

function FileshareIsPublishingInError()
	local registerVal0 = Engine.GetModelValue(CoD.FileshareUtility.GetPublishingModel())
	if registerVal0 == Enum.FileshareTaskUIState.FILESHARE_TASK_UI_ERROR then
		return true
	end
	return false
end

function FileshareIsPublishingInSuccess()
	local registerVal0 = Engine.GetModelValue(CoD.FileshareUtility.GetPublishingModel())
	if registerVal0 == Enum.FileshareTaskUIState.FILESHARE_TASK_UI_DONE then
		return true
	end
	return false
end

function FileshareIsUploading()
	local registerVal0 = Engine.GetModelValue(CoD.FileshareUtility.GetUploadingModel())
	if registerVal0 == Enum.FileshareTaskUIState.FILESHARE_TASK_UI_WORKING then
		return true
	end
	return false
end

function FileshareIsUploadingInError()
	local registerVal0 = Engine.GetModelValue(CoD.FileshareUtility.GetUploadingModel())
	if registerVal0 == Enum.FileshareTaskUIState.FILESHARE_TASK_UI_ERROR then
		return true
	end
	return false
end

function FileshareIsDownloading()
	local registerVal0 = Engine.GetModelValue(CoD.FileshareUtility.GetDownloadingModel())
	if registerVal0 == Enum.FileshareTaskUIState.FILESHARE_TASK_UI_WORKING then
		return true
	end
	return false
end

function FileshareIsDownloadingInError()
	local registerVal0 = Engine.GetModelValue(CoD.FileshareUtility.GetDownloadingModel())
	if registerVal0 == Enum.FileshareTaskUIState.FILESHARE_TASK_UI_ERROR then
		return true
	end
	return false
end

function FileshareIsSteamAgreed()
	return CoD.SteamWorkshopUtility.GetPublishSteamAgreement()
end

function FilesharePublishToSteamDisabled(arg0)
	local registerVal1 = FileshareIsSteamAgreed()
	if registerVal1 then
		registerVal1 = FileshareIsReady(arg0)
	end
	return true
end

function FileshareShouldAllowDownload()
	local registerVal0 = CoD.FileshareUtility.GetPublishAllowDownload()
	return registerVal0
end

function FileshareIsReady(arg0)
	local registerVal1 = CoD.FileshareUtility.IsFileshareReady(arg0)
	if registerVal1 == 0.000000 then
		return false
	end
	if registerVal1 ~= 1.000000 then
	end
	return true
end

function FileshareHasContent(arg0, arg1)
	local registerVal2 = FileshareIsReady(arg1)
	if registerVal2 and registerVal2 == true then
		local registerVal3 = CoD.FileshareUtility.GetItemsCount()
		if registerVal3 == 0.000000 then
			return false
		end
		return true
	end
	return false
end

function FileshareHasAtLeastThisManyItems(arg0, arg1, arg2)
	local registerVal3 = FileshareIsReady(arg1)
	if not registerVal3 then
		return false
	end
	registerVal3 = CoD.FileshareUtility.GetItemsCount()
	if arg2 > registerVal3 then
	end
	return true
end

function FileshareIsQuotaLineDim(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "isDim")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	return registerVal3
end

function FileshareIsPublicOrLeagueMatch(arg0, arg1)
	local registerVal3 = IsSelfModelValueNil(arg0, arg1, "matchmakingMode")
	if registerVal3 then
		return false
	end
	registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg1, "matchmakingMode", Enum.eGameModes.MODE_GAME_MATCHMAKING_PLAYLIST)
	registerVal3 = IsSelfModelValueEqualToEnum(arg0, arg1, "matchmakingMode", Enum.eGameModes.MODE_GAME_LEAGUE)
	if not arg1 or registerVal3 then
		return true
	end
	return false
end

function FileshareIsCommunityMode(arg0, arg1)
	return CoD.FileshareUtility.GetIsCommunityMode(arg1)
end

function FileshareIsCheckingPageFetchThreshold(arg0)
	local registerVal1 = CoD.FileshareUtility.GetIsCommunityMode(arg0)
	registerVal1 = CoD.FileshareUtility.GetIsGroupsMode(arg0)
	if not registerVal1 and not registerVal1 then
		registerVal1 = CoD.FileshareUtility.GetCurrentCategory()
		if registerVal1 ~= "recentgames" then
		end
	end
	return true
end

function FileshareShowNormalSizeIcons(arg0, arg1)
	local registerVal2 = CoD.FileshareUtility.GetRootModel()
	local registerVal3 = Engine.CreateModel(registerVal2, "isNormalSize", false)
	local registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil then
		return true
	end
	return registerVal4
end

function FileshareIsElementNormalSizeIcon(arg0, arg1, arg2)
	local registerVal3 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal3 ~= "recent" and registerVal3 == "favorites" or registerVal3 == "featured" then
		local registerVal5 = arg0:getModel()
		local registerVal4 = CoD.SafeGetModelValue(registerVal5, "fileCategory")
	end
	registerVal4 = CoD.FileshareUtility.ShouldSetPreviewIconSizeShort(registerVal4)
	if registerVal4 then
		return false
	end
	return true
end

function FileshareShowcaseIsPublishMode(arg0, arg1)
	local registerVal2 = FileshareGetShowcasePublishMode(arg1)
	if registerVal2 ~= true then
	end
	return true
end

function IsFileshareCategoryFilm(arg0, arg1, arg2)
	return CoD.FileshareUtility.IsCategoryFilm(arg2, arg1)
end

function IsFileshareCategoryClip(arg0, arg1, arg2)
	return CoD.FileshareUtility.IsCategoryClip(arg2, arg1)
end

function IsFileshareCategoryScreenshot(arg0, arg1, arg2)
	return CoD.FileshareUtility.IsCategoryScreenshot(arg2, arg1)
end

function FileshareHasCurrentScreenshot(arg0)
	if CoD.currentScreenshot == nil then
	end
	return true
end

function FilesshareCanShowVoteOptions(arg0)
	local registerVal1 = CoD.FileshareUtility.GetSelectedItemProperty("fileAuthorXuid")
	local registerVal2 = Engine.GetXUID64(arg0)
	if registerVal1 == registerVal2 then
		return false
	end
	return true
end

function FileshareCanDownloadItem(arg0)
	local registerVal1 = CoD.FileshareUtility.CanDownload(arg0)
	if registerVal1 == false then
		return false
	end
	registerVal1 = CoD.FileshareUtility.GetSelectedItemProperty("fileCategory")
	if registerVal1 == "clip" or registerVal1 == "screenshot" then
		return false
	end
	return CoD.FileshareUtility.SelectedItemReady()
end

function FileshareCanPublish(arg0)
	local registerVal1 = isFileshareFeatureEnabled()
	registerVal1 = IsUserContentRestricted(arg0)
	if arg0 or registerVal1 then
		return false
	end
	return true
end

function FileshareCanDeleteItem(arg0)
	local registerVal1 = CoD.FileshareUtility.GetIsCommunityMode(arg0)
	registerVal1 = CoD.FileshareUtility.GetIsGroupsMode(arg0)
	if not arg0 or registerVal1 then
		return false
	end
	registerVal1 = FileshareIsCurrentUserContext(arg0)
	if registerVal1 then
		return true
	end
	return false
end

function FileshareIsLocalCategory(arg0)
	local registerVal1 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal1 ~= "screenshot_private" and registerVal1 ~= "clip_private" then
	end
	return true
end

function FileshareCanEditNameAndDescription(arg0)
	local registerVal1 = CoD.FileshareUtility.GetCurrentCategory()
	local registerVal2 = FileshareIsLocalCategory(arg0)
	if not registerVal2 and registerVal1 ~= "clip" and registerVal1 == "screenshot" or registerVal1 == "customgame" then
		return false
	end
	return true
end

function FileshareCanPublishItem(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	if not registerVal4 then
		return false
	end
	local registerVal5 = Engine.GetModel(registerVal4, "readOnly")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal5 and registerVal6 and registerVal6 == 1.000000 then
	end
	return false
end

function FileshareCanShowShowcaseManager(arg0)
	local registerVal1 = CoD.FileshareUtility.GetIsFullscreenMode(arg0)
	if registerVal1 == true then
		return false
	end
	registerVal1 = CoD.FileshareUtility.GetIsCommunityMode(arg0)
	registerVal1 = CoD.FileshareUtility.GetIsGroupsMode(arg0)
	if not arg0 or registerVal1 then
		return false
	end
	registerVal1 = FileshareHasContent(nil, arg0)
	if registerVal1 == false then
		return false
	end
	registerVal1 = FileshareIsLocalCategory(arg0)
	if registerVal1 then
		return false
	end
	registerVal1 = FileshareIsCurrentUserContext(arg0)
	if registerVal1 then
		return true
	end
	return false
end

function FileshareCanShowOptionsMenu(arg0)
	local registerVal1 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal1 == "recentgames" then
		return false
	end
	local registerVal2 = FileshareHasContent(nil, arg0)
	if registerVal2 == false then
		return false
	end
	registerVal2 = FileshareIsReady(arg0)
	if registerVal2 == false then
		return false
	end
	return DoesHaveFileshareOptions(arg0)
end

function FileshareCanShowDownloadsStats(arg0)
	return CoD.FileshareUtility.CanDownload(arg0)
end

function FileshareCanOpenDetailsView(arg0, arg1)
	local registerVal2 = FileshareHasContent(nil, arg1)
	if registerVal2 == false then
		return false
	end
	return CoD.FileshareUtility.SelectedItemReady()
end

function isFileshareFeatureEnabled()
	local registerVal0 = IsTu1Build()
	if registerVal0 == true then
		return false
	end
	if CoD.isSafehouse then
		return false
	end
	registerVal0 = Dvar.fileshare_enabled:get()
	if Dvar.fileshare_enabled ~= nil and registerVal0 == true then
		return true
	end
	return false
end

function FileshareIsCurrentUserContext(arg0)
	local registerVal1 = Engine.GetXUID64(arg0)
	local registerVal2 = CoD.FileshareUtility.GetCurrentUser()
	if registerVal1 == registerVal2 then
		return true
	end
	return false
end

function IsRecentGameBookmarked(arg0)
	local registerVal1 = CoD.GetPlayerStats(arg0)
	local registerVal3 = registerVal1.AfterActionReportStats.demoFileID:get()
	if registerVal3 ~= nil and registerVal3 ~= "0" then
		return Engine.IsRecentGameBookmarked(arg0, registerVal3)
	else
		return true
	end
end

function FileshareCanShowPlayerDetails(arg0)
	local registerVal1 = CoD.FileshareUtility.GetIsCommunityMode(arg0)
	registerVal1 = CoD.FileshareUtility.GetIsGroupsMode(arg0)
	if not arg0 or registerVal1 then
		return true
	end
	return false
end

function FileshareShowcaseSlotsAvailable(arg0)
	local registerVal1 = CoD.FileshareUtility.GetCurrentQuota(arg0)
	if registerVal1 and registerVal1.categorySlotsAvailable then
		if 0.000000 >= registerVal1.categorySlotsAvailable then
		end
		return true
	end
	return false
end

function MediaManagerSlotsAvailable(arg0, arg1)
	local registerVal2 = MediaManagerGetQuotaForCategory(arg0, arg1)
	if registerVal2 and registerVal2.categorySlotsAvailable then
		if 0.000000 >= registerVal2.categorySlotsAvailable then
		end
		return true
	end
	return false
end

function FileshareIsReadyToUpload(arg0)
	local registerVal1 = FileshareIsReady(arg0)
	registerVal1 = FileshareIsUploading()
	if arg0 or registerVal1 then
		return false
	end
	return true
end

function FileshareIsReadyToPublish(arg0)
	local registerVal1 = FileshareIsReady(arg0)
	registerVal1 = FileshareIsPublishing()
	registerVal1 = Engine.FileshareIsReady(arg0)
	if registerVal1 and not arg0 or not registerVal1 then
		return false
	end
	return true
end

function FileshareIsCategory(arg0, arg1)
	local registerVal2 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal2 ~= arg1 then
	end
	return true
end

function FileshareIsSelectedItemCategory(arg0, arg1)
	local registerVal2 = CoD.FileshareUtility.GetSelectedItemProperty("fileCategory")
	if registerVal2 ~= arg1 then
	end
	return true
end

function FileshareCanBuyMoreSlots(arg0)
	local registerVal1 = DoesPlayerHaveExtraSlotsItem(arg0)
	if registerVal1 then
		return false
	end
	return AreCodPointsEnabled(arg0)
end

function IsInFileshare(arg0)
	if CoD.perController[arg0].inFileshare then
		if CoD.perController[arg0].inFileshare ~= true then
		end
		return true
	end
	return false
end

function IsTu1Build()
	local registerVal0 = Dvar.tu1_build:get()
	if Dvar.tu1_build and registerVal0 == true then
		return true
	end
	return false
end

function AllowGuestSplitScreenOnline()
	local registerVal0 = Dvar.allowGuestSplitScreenOnline:get()
	if Dvar.allowGuestSplitScreenOnline and registerVal0 == true then
		return true
	end
	return false
end

function FileshareIsDetailsViewHiddenMode(arg0)
	return FileshareGetDetailsHiddenMode(arg0)
end

function FileshareDetailsViewAreArrowsHidden(arg0)
	local registerVal1 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal1 ~= "favorites" and registerVal1 == "featured" or registerVal1 == "recent" then
		return true
	end
	return FileshareIsDetailsViewHiddenMode(arg0)
end

function FileshareDetailsViewCanMoveToNext(arg0)
	local registerVal1 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal1 ~= "favorites" and registerVal1 == "featured" or registerVal1 == "recent" then
		return false
	end
	local registerVal2 = CoD.FileshareUtility.GetSelectedItemProperty("codeIndex")
	local registerVal3 = CoD.FileshareUtility.GetItemsCount()
	if registerVal2 and registerVal2 ~= (registerVal3 - 1.000000) then
		return true
	end
	return false
end

function FileshareDetailsViewCanMoveToPrevious(arg0)
	local registerVal1 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal1 ~= "favorites" and registerVal1 == "featured" or registerVal1 == "recent" then
		return false
	end
	local registerVal2 = CoD.FileshareUtility.GetSelectedItemProperty("codeIndex")
	if registerVal2 and registerVal2 ~= 0.000000 then
		return true
	end
	return false
end

function IsCustomGameCommunityOption()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "CustomGamesRoot")
	registerVal1 = Engine.GetModelValue(Engine.CreateModel(registerVal0, "communityOption"))
	if registerVal1 == nil or registerVal1 == false then
	end
	return true
end

function IsInCustomGames()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "CustomGamesRoot")
	registerVal1 = Engine.GetModelValue(Engine.CreateModel(registerVal0, "inCustomGames"))
	if registerVal1 ~= 1.000000 then
	end
	return true
end

function CustomGamesSlotsAvailable(arg0, arg1)
	local registerVal2 = MediaManagerGetQuotaForCategory(arg1, "customgame")
	if 0.000000 >= registerVal2.categorySlotsAvailable then
	end
	return true
end

function ShouldOpenMessageDialog(arg0, arg1)
	local registerVal2 = arg0:getParent()
	if registerVal2 == nil then
		return 
	end
	local registerVal3 = Engine.GetGlobalModel()
	registerVal2 = Engine.GetModel(registerVal3, "messageDialog")
	if registerVal2 ~= nil then
		registerVal3 = Engine.GetModel(registerVal2, "controller")
		local registerVal4 = Engine.GetModelValue(registerVal3)
		if not CoD.isFrontend and registerVal3 ~= nil and registerVal4 ~= arg1 then
			return false
		end
		registerVal3 = Engine.GetModel(registerVal2, "messagePending")
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal3 ~= nil and 0.000000 < registerVal4 then
			return true
		end
	end
	return false
end

function IsLuaCodeVersionAtLeast(arg0)
	local registerVal1 = Engine.GetLuaCodeVersion()
	if arg0 > registerVal1 then
	end
	return true
end

function IsInDefaultState(arg0)
	if arg0.currentState ~= "DefaultState" then
	end
	return true
end

function IsInDefaultStateOrStateNotSet(arg0)
	if not arg0.currentState then
		return true
	end
	if arg0.currentState ~= "DefaultState" then
	end
	return true
end

function IsElementInState(arg0, arg1)
	if arg0.currentState ~= arg1 then
	end
	return true
end

function IsElementInAnyState(arg0, ...)
	local registerVal1 = {}
	local registerVal2 = select("#", ...)
	registerVal1.n = registerVal2
	registerVal1 = {}
	registerVal2, registerVal3, registerVal4 = ipairs(registerVal1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = IsElementInState(arg0, value6)
		if registerVal7 then
			return true
		end
	end
	return false
end

function IsChildElementInState(arg0, arg1, arg2)
	if arg0[arg1].currentState ~= arg2 then
	end
	return true
end

function IsMenuInState(arg0, arg1)
	if arg0.currentState ~= arg1 then
	end
	return true
end

function IsMenuModelValueEqualTo(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if arg1 ~= "" and registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg1)
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil or registerVal4 ~= arg2 then
	end
	return true
end

function IsSelfInState(arg0, arg1)
	if arg0.currentState ~= arg1 then
	end
	return true
end

function ShouldSwapCircleAndCross()
	return Engine.ShouldSwapCircleAndCross()
end

function IsWidthZero(arg0)
	if arg0 ~= 0.000000 then
	end
	return true
end

function InSafehouseOrFrontend()
	if not CoD.isSafehouse then
	end
	return CoD.isFrontend
end

function InFrontend()
	return CoD.isFrontend
end

function InSafehouse()
	return CoD.isSafehouse
end

function IsFirstListElement(arg0)
	return arg0:isFirstItem()
end

function IsLastListElement(arg0)
	return arg0:isLastItem()
end

function IsListAtStart(arg0, arg1, arg2)
	if arg0[arg1] and arg0[arg1].activeWidget then
		if arg2 and arg1 or arg2.list == arg0[arg1] then
			return arg0[arg1].activeWidget:isFirstItem()
		end
	end
	return false
end

function IsListAtEnd(arg0, arg1, arg2)
	if arg0[arg1] and arg0[arg1].activeWidget then
		if arg2 and arg1 or arg2.list == arg0[arg1] then
			return arg0[arg1].activeWidget:isLastItem()
		end
	end
	return false
end

function ListElementHasElements(arg0, arg1)
	local registerVal3 = arg0[arg1]:getDataSource()
	if arg0[arg1] and registerVal3 then
		local registerVal4 = registerVal3.getCount(arg0[arg1])
		if 0.000000 >= registerVal4 then
		end
		return true
	end
	return false
end

function ListHasElements(arg0)
	local registerVal2 = arg0.gridInfoTable.parentGrid:getDataSource()
	if arg0.gridInfoTable and registerVal2 then
		local registerVal3 = registerVal2.getCount(arg0.gridInfoTable.parentGrid)
		if 0.000000 >= registerVal3 then
		end
		return true
	end
	return false
end

function ListLoopEdgesEnabled(arg0, arg1)
	if arg0[arg1] then
		return arg0[arg1].loopEdges
	end
	return false
end

function HasListAction(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "action")
	return arg0.action
end

function IsElementInFocus(arg0)
	return arg0:isInFocus()
end

function isClientListSlideFocus(arg0, arg1, arg2, arg3)
	if not CoD.isPC then
		return IsWidgetInFocus(arg0, arg1, arg2)
	else
		local registerVal4 = IsWidgetInFocus(arg0, arg1, arg2)
		if arg0.defaultNav and arg0.defaultNav == "right" and registerVal4 then
			return true
		else
			registerVal4 = IsGamepad(arg3)
			if registerVal4 then
				registerVal4 = IsWidgetInFocus(arg0, arg1, arg2)
			end
			return registerVal4
		end
	end
end

function IsWidgetInFocus(arg0, arg1, arg2)
	if arg0[arg1] then
		if arg2.idStack then
			local registerVal4, registerVal5, registerVal6 = ipairs(arg2.idStack)
			if  == arg0[arg1].id then
				return true
			end
			return false
		end
		if arg2.id then
			return arg0[arg1]:hasChildWithID(arg2.id)
		end
		return arg0[arg1]:doesElementOrChildHaveFocus()
	end
	return false
end

function IsFirstTimeSetup(arg0, arg1)
	local registerVal2 = Dvar.livestats_skipFirstTime:get()
	if registerVal2 then
		return false
	end
	registerVal2 = Mods_IsUsingMods()
	if registerVal2 then
		return false
	end
	registerVal2 = Engine.IsMultiplayerGame()
	registerVal2 = IsLAN()
	if arg1 or not registerVal2 then
		registerVal2 = Engine.IsInGame()
		if registerVal2 then
			return false
		end
	end
	registerVal2 = Engine.IsFirstTimeComplete(arg0, arg1)
	return (not registerVal2)
end

function IsMainFirstTimeSetup(arg0)
	local registerVal1 = IsInGame()
	if registerVal1 then
		return false
	end
	if 0.000000 < arg0 then
		return false
	end
	registerVal1 = Dvar.livestats_skipFirstTime:get()
	if registerVal1 then
		return false
	end
	registerVal1 = Engine.GetProfileVarInt(arg0, "com_first_time")
	if registerVal1 == 0.000000 then
	end
	return true
end

function TestAndSetFirstTimeMenu(arg0, arg1)
	local registerVal2 = Engine.GetProfileVarInt(arg0, arg1)
	if registerVal2 == 0.000000 then
		SetProfileVar(arg0, arg1, 1.000000)
		return true
	end
end

function GrayOutReplayMissionButton(arg0)
	return false
end

function GrayOutMissionOverviewButton(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal3, "MapVote.mapVoteMapNext"))
	if arg0 or registerVal1 == "" then
		return true
	end
end

function IsBooleanDvarSet(arg0)
	if Dvar[arg0] then
		local registerVal1 = Dvar[arg0]:get()
		if registerVal1 ~= true then
		end
		return true
	end
	return false
end

function IsIntDvarNonZero(arg0)
	local registerVal1 = Engine.DvarInt(nil, arg0)
	if registerVal1 ~= 0.000000 then
		return true
	end
	return false
end

function IsNumberDvarGreaterThanOrEqualTo(arg0, arg1)
	local registerVal2 = Dvar[arg0]:get()
	local registerVal3 = type(registerVal2)
	registerVal3 = type(arg1)
	if Dvar[arg0] and registerVal3 == "number" and registerVal3 == "number" then
		if arg1 > registerVal2 then
		end
		return true
	end
	return false
end

function IsDvarValueEqualTo(arg0, arg1)
	if Dvar[arg0] then
		local registerVal2 = Dvar[arg0]:get()
		if registerVal2 ~= arg1 then
		end
		return true
	end
	return false
end

function IsInGame()
	return Engine.IsInGame()
end

function GameEnded(arg0)
	return IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_GAME_ENDED)
end

function IsCurrentMenu(arg0, arg1)
	if arg0.menuName == arg1 then
		return true
	end
	return false
end

function PropertyIsTrue(arg0, arg1)
	if arg0 == nil then
		return false
	end
	if arg0[arg1] ~= true then
	end
	return true
end

function IsElementPropertyValue(arg0, arg1, arg2)
	if arg0 == nil then
		return false
	end
	if arg0[arg1] ~= arg2 then
	end
	return true
end

function IsElementPropertyEnumValue(arg0, arg1, arg2)
	if arg0 == nil then
		return false
	end
	if arg0[arg1] ~= arg2 then
	end
	return true
end

function HasProperty(arg0, arg1)
	if arg0 == nil then
		return false
	end
	if arg0[arg1] == nil then
	end
	return true
end

function ParentPropertyIsTrue(arg0, arg1)
	local registerVal2 = arg0:getParent()
	if arg0 == nil or registerVal2 == nil then
		return false
	end
	registerVal2 = arg0:getParent()
	if registerVal2[arg1] ~= true then
	end
	return true
end

function IsPerControllerTablePropertyValue(arg0, arg1, arg2)
	if CoD.perController[arg0][arg1] ~= arg2 then
	end
	return true
end

function IsPerControllerTablePropertyEnumValue(arg0, arg1, arg2)
	if CoD.perController[arg0][arg1] ~= arg2 then
	end
	return true
end

function IsPerControllerTablePropertyEitherEnumValue(arg0, arg1, arg2, arg3)
	if CoD.perController[arg0][arg1] ~= arg2 and CoD.perController[arg0][arg1] ~= arg3 then
	end
	return true
end

function IsActiveLocalClientsCountEqualTo(arg0)
	local registerVal1 = Engine.GetActiveLocalClientsCount()
	if registerVal1 ~= arg0 then
	end
	return true
end

function IsTextWrapping(arg0, arg1)
	if arg1 == nil then
		return false
	end
	local registerVal2, registerVal3, registerVal4, registerVal5 = arg1:getLocalLeftRight()
	local registerVal7, registerVal8 = arg1:getTextWidthAndHeight()
	if (registerVal5 - registerVal4) >= registerVal7 then
	end
	return true
end

function IsCampaign()
	return CoD.isCampaign
end

function IsCampaignZombies()
	return Engine.IsCampaignModeZombies()
end

function IsMultiplayer()
	return CoD.isMultiplayer
end

function IsZombies()
	return CoD.isZombie
end

function IsGroupsEnabled()
	local registerVal0 = Dvar.groups_enabled:get()
	local registerVal1 = IsInGame()
	if registerVal0 ~= nil and registerVal0 == true and not registerVal1 then
		return true
	else
		return false
	end
end

function IsGroupsBeta()
	return Engine.DvarBool(nil, "tu10_groupsBetaTag")
end

function FetchingGroupPublicProfiles(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	Engine.GetModel(registerVal3, "groups.fetchGroupProfilesInProgress")
	return Engine.GetModelValue(Engine.GetModel)
end

function FetchingGroupInvitesInfo(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.fetchGroupInvitesInProgress"))
	if not registerVal1 then
		registerVal1 = FetchingGroupPublicProfiles(arg0)
	end
	return registerVal1
end

function FilteringGroupFriends(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	Engine.GetModel(registerVal3, "groups.filterGroupFriendsInProgress")
	return Engine.GetModelValue(Engine.GetModel)
end

function HideGroupInviteSummary(arg0, arg1)
	local registerVal2 = HasSelectedGroup(arg0, arg1)
	if registerVal2 then
		registerVal2 = FetchingGroupInvitesInfo(arg1)
	end
	return true
end

function HideGroupSummaryIfListEmpty(arg0, arg1, arg2)
	local registerVal3 = arg0:findSibling(arg2)
	local registerVal4 = HasSelectedGroup(arg0, arg1)
	if registerVal4 then
		registerVal4 = FetchingGroupPublicProfiles(arg1)
		if not registerVal4 then
			registerVal4 = ListHasElements(registerVal3)
		end
	end
	return true
end

function SelectingGroupEmblem(arg0)
	return CoD.perController[arg0].selectingGroupEmblem
end

function SelectingGroupEmblemForGroupCreation(arg0)
	return CoD.perController[arg0].selectingGroupEmblemForGroupCreation
end

function IsReadyUpVisible(arg0, arg1)
	local registerVal2 = IsGlobalModelValueEqualTo(arg0, arg1, "lobbyRoot.lobbyNav", LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id)
	registerVal2 = IsGlobalModelValueEqualTo(arg0, arg1, "lobbyRoot.lobbyNav", LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id)
	if not arg1 or registerVal2 then
		return true
	end
	return false
end

function ShouldOpenGroupAdminOptionsPopupForGroupMember(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModelValue(Engine.CreateModel(registerVal2, "Social.selectedFriendXUID"))
	local registerVal4 = Engine.GetXUID64(arg1)
	if registerVal3 ~= registerVal4 then
	end
	local registerVal6 = FetchGroupMembersResultsLoading(arg1)
	local registerVal7 = HasAdminPrivilege(arg1, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_REMOVE_MEMBERS)
	registerVal7 = HasAdminPrivilege(arg1, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_BAN_MEMBERS)
	if not registerVal7 and not registerVal7 then
		registerVal7 = HasAdminPrivilege(arg1, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_MANAGE_ADMINS)
	end
	local registerVal8 = IsGroupOwner(arg1, registerVal3)
	if registerVal7 and not true and not registerVal6 and not registerVal8 then
		return true
	end
end

function ShouldOpenGroupOptionsPopup(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "groups.grouphqtabname"))
	if registerVal2 ~= "overview" then
	end
	return true
end

function CheckSelectedAdminPrivilege(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "groups.currentAdminPrivileges"))
	if (registerVal2 & (1.000000 << arg1)) == 0.000000 then
	end
	return true
end

function IsGroupDataDirty(arg0, arg1)
	if CoD.perController[arg0].groupsDataDirty then
	end
	return CoD.perController[arg0].groupsDataDirty[arg1]
end

function HasAdminPrivilege(arg0, arg1)
	if CoD.perController[arg0].selectedGroup then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].selectedGroup, "groupId"))
		local registerVal4 = IsGroupOwner(arg0)
		if not registerVal4 then
			registerVal4 = Engine.GroupAdminHasPrivilege(arg0, registerVal3, arg1)
		end
		return registerVal4
	end
	return false
end

function HasNoJoinRequests(arg0)
	local registerVal1 = Engine.GetSelectedGroupApplicationsCount(arg0)
	if registerVal1 == 0.000000 then
		return true
	end
end

function IsGroupMemberFromElement(arg0, arg1)
	local registerVal2 = arg0:getModel()
	registerVal2 = arg0:getModel(arg1, "groupId")
	if arg1 or not registerVal2 then
		return false
	end
	registerVal2 = Engine.GetModelValue(arg0:getModel(arg1, "groupId"))
	local registerVal3 = Engine.GetGroupList(arg1, Enum.GroupBufferType.GROUP_BUFFER_TYPE_SELF)
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.groupId == registerVal2 then
			return true
		end
	end
end

function IsGroupMember(arg0, arg1)
	if CoD.perController[arg0].selectedGroup then
		local registerVal3 = Engine.GetXUID64(arg0)
		if arg1 then
		end
		local registerVal4 = Engine.GetSelectedGroupMemberStatus(arg0, arg1)
	end
	if registerVal4 ~= Enum.GroupMemberStatus.GROUP_MEMBER_STATUS_MEMBER and registerVal4 ~= Enum.GroupMemberStatus.GROUP_MEMBER_STATUS_ADMIN and registerVal4 ~= Enum.GroupMemberStatus.GROUP_MEMBER_STATUS_OWNER then
	end
	return true
end

function IsGroupAdmin(arg0, arg1)
	if CoD.perController[arg0].selectedGroup then
		local registerVal3 = Engine.GetXUID64(arg0)
		if arg1 then
		end
		local registerVal4 = Engine.GetSelectedGroupMemberStatus(arg0, arg1)
	end
	if registerVal4 ~= Enum.GroupMemberStatus.GROUP_MEMBER_STATUS_ADMIN then
	end
	return true
end

function IsGroupOwner(arg0, arg1)
	if CoD.perController[arg0].selectedGroup then
		local registerVal3 = Engine.GetXUID64(arg0)
		if arg1 then
		end
		local registerVal4 = Engine.GetSelectedGroupMemberStatus(arg0, arg1)
	end
	if registerVal4 ~= Enum.GroupMemberStatus.GROUP_MEMBER_STATUS_OWNER then
	end
	return true
end

function HasNoGroupAdmin(arg0)
	local registerVal1 = Engine.GetSelectedGroupAdminsCount(arg0)
	if registerVal1 == 0.000000 then
		return true
	end
end

function HasNoGroupBannedMembers(arg0)
	local registerVal1 = Engine.GetSelectedGroupBannedMembersCount(arg0)
	if registerVal1 == 0.000000 then
		return true
	end
end

function IsGroupListHeader(arg0)
	if arg0.type ~= "header" then
	end
	return true
end

function DoesGroupListHaveSelectedIcon(arg0)
	if arg0.showSelectedIcon == nil or arg0.showSelectedIcon ~= true then
	end
	return true
end

function IsProcessingGroupTask(arg0)
	local registerVal1 = GetProcessingGroupTaskModel(arg0)
	local registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 == nil or registerVal2 ~= true then
	end
	return true
end

function CloseGroupsNotifyPopupAutomaticallyAfterEvent(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	Engine.GetModel(registerVal3, "groups.closeAutomaticallyAfterEvent")
	return Engine.GetModelValue(Engine.GetModel)
end

function SearchGroupResultsLoading(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	Engine.GetModel(registerVal4, "groups.searchGroupsInProgress")
	return Engine.GetModelValue(Engine.GetModel)
end

function FetchGroupMembersResultsLoading(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	Engine.GetModel(registerVal3, "groups.fetchGroupMembersInProgress")
	return Engine.GetModelValue(Engine.GetModel)
end

function FetchGroupApplicationsResultsLoading(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	Engine.GetModel(registerVal3, "groups.fetchGroupApplicationsInProgress")
	return Engine.GetModelValue(Engine.GetModel)
end

function IsGroupEmblemEmpty(arg0, arg1)
	if CoD.perController[arg1].selectedGroup then
		local registerVal3 = Engine.GetModel(CoD.perController[arg1].selectedGroup, "groupId")
	else
		registerVal3 = arg0:getModel(arg1, "groupId")
	end
	registerVal3 = Engine.GetModelValue(registerVal3)
	if registerVal3 ~= nil and registerVal3 ~= nil then
		return Engine.IsGroupEmblemEmpty(arg1, registerVal3)
	end
	return true
end

function HasSelectedGroup(arg0, arg1)
	local registerVal2 = arg0:getModel()
	if registerVal2 then
		registerVal2 = arg0:getModel(arg1, "groupId")
	end
	return registerVal2
end

function HideGroupSummary(arg0, arg1)
	local registerVal2 = SearchGroupResultsLoading(arg0, arg1)
	if not registerVal2 then
		registerVal2 = HasSelectedGroup(arg0, arg1)
	end
	return (not registerVal2)
end

function CanSendGroupInvites(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "Social.selectedFriendXUID"))
	local registerVal2 = Engine.GetLuaCodeVersion()
	if 22.000000 <= registerVal2 then
		return Engine.CanSendGroupInvites(arg0, registerVal1)
	end
	return Engine.CanSendGroupInvites(arg0)
end

function HasPendingInvites(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal1, "groups")
	local registerVal3 = Engine.CreateModel(registerVal2, "inviteCount")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or 0.000000 >= registerVal4 then
	end
	return true
end

function IsMemberOfAnyGroup(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal1, "groups")
	local registerVal3 = Engine.CreateModel(registerVal2, "groupCount_self")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or 0.000000 >= registerVal4 then
	end
	return true
end

function IsGroupLeaderboardAvailable()
	local registerVal0, registerVal1, registerVal2, registerVal3, registerVal4, registerVal5 = Engine.GetGroupLeaderboardInfo()
	if registerVal5 == true and registerVal0 == nil or registerVal0 == "" then
	end
	return true
end

function IsLeaderboardUpdating()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "leaderboard")
	registerVal1 = Engine.CreateModel(registerVal0, "isUpdating")
	local registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 == nil or registerVal2 ~= true then
	end
	return true
end

function IsLeaderboardEmpty()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "leaderboard")
	registerVal1 = Engine.GetModelValue(Engine.CreateModel(registerVal0, "totalResults"))
	if registerVal1 ~= nil and registerVal1 ~= 0.000000 then
	end
	return true
end

function IsGroupLeaderboardMakerState(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.CreateModel(registerVal2, "groups")
	local registerVal4 = Engine.CreateModel(registerVal3, "leaderboardmaker")
	local registerVal5 = Engine.CreateModel(registerVal4, "state")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal6 ~= arg1 then
	end
	return true
end

function LeaderboardsDownForMaintanence()
	return Engine.DvarBool(nil, "dw_lbMaintanence")
end

function IsLobbyLeaderboard(arg0)
	if CoD.perController[arg0].isInLobbyLeaderboard ~= true then
	end
	return true
end

function IsFreerunLeaderboard(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "leaderboardCategoryName")
	if not registerVal1 then
		return false
	end
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 ~= "freerun" then
	end
	return true
end

function IsZMMapsLeaderboard(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "leaderboardCategoryName")
	if not registerVal1 then
		return false
	end
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 ~= "zm_maps" then
	end
	return true
end

function IsDOALeaderboard(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "leaderboardCategoryName")
	if not registerVal1 then
		return false
	end
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 ~= "doa" then
	end
	return true
end

function IsCustomLeaderboard(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "leaderboardCategoryName")
	if not registerVal1 then
		return false
	end
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 ~= "custom" then
	end
	return true
end

function IsCustomLeaderboardTab(arg0, arg1, arg2)
	if CoD.perController[arg2].selectedLeaderboardTabId ~= "leaderboard_mp_custom" then
	end
	return true
end

function IsMPGameModeLeaderboard(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "leaderboardDef")
	if not registerVal1 then
		return false
	end
	registerVal2 = Engine.GetModelValue(registerVal1)
	local registerVal3 = string.sub(registerVal2, 1.000000, string.len("LB_MP_GM_"))
	if registerVal3 ~= "LB_MP_GM_" then
	end
	return true
end

function IsPlayerAGuest(arg0)
	return Engine.IsUserGuest(arg0)
end

function IsPlayerAllowedToPlayOnline(arg0)
	local registerVal1 = Engine.IsPlusAuthorized(arg0)
	if registerVal1 == false then
		return false
	end
	return true
end

function IsOutOfBounds(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "hudItems.outOfBoundsEndTime"))
	local registerVal3 = Engine.CurrentGameTime()
	if registerVal3 == nil then
		return false
	end
	if registerVal2 == nil then
		return false
	end
	local registerVal5 = Engine.GetModelForController(arg0)
	local registerVal4 = CoD.SafeGetModelValue(registerVal5, "displayTop3Players")
	if registerVal4 == 1.000000 then
		return false
	end
	if registerVal3 >= registerVal2 then
	end
	return true
end

function IsEnemyDetected(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "hudItems.sixthsense"))
	if registerVal4 == nil then
		return false
	end
	if arg2 == nil or arg2 == "" then
	end
	if "far" == "close" then
	end
	if arg1 == "front" then
	else
		if arg1 == "back" then
		else
			if arg1 == "left" then
			else
				if arg1 == "right" then
				end
			end
		end
	end
	if (registerVal4 & (16.000000 << 3.000000)) == 0.000000 then
	end
	return true
end

function HidePersonalizePrompt(arg0)
	local registerVal1 = IsGamepad(arg0)
	if arg0 or registerVal1 then
		registerVal1 = Dvar.ui_execdemo_gamescom:get()
	end
	return true
end

function CACShowSelectPrompt(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal3, "weaponSlot")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 == nil or arg2 == nil then
		return false
	end
	local registerVal7 = LUI.startswith(registerVal5, "primarygadgetattachment")
	registerVal7 = CoD.CACUtility.SearchForBonusCard("bonuscard_danger_close", arg2)
	registerVal7 = CoD.CACUtility.SearchForBonusCard("bonuscard_two_tacticals", arg2)
	if registerVal7 and registerVal7 ~= "" or (not registerVal7) ~= "" then
		registerVal7 = CoD.CACUtility.SearchForBonusCard("bonuscard_perk_1_greed", arg2)
		if registerVal5 ~= "specialty4" or registerVal7 ~= "" then
			registerVal7 = CoD.CACUtility.SearchForBonusCard("bonuscard_perk_2_greed", arg2)
			if registerVal5 ~= "specialty5" or registerVal7 ~= "" then
				registerVal7 = CoD.CACUtility.SearchForBonusCard("bonuscard_perk_3_greed", arg2)
				if registerVal5 ~= "specialty6" or registerVal7 ~= "" then
					registerVal7 = CoD.CACUtility.SearchForBonusCard("bonuscard_secondary_gunfighter", arg2)
					if registerVal5 ~= "secondaryattachment3" or registerVal7 ~= "" then
						registerVal7 = CoD.CACUtility.PrimaryGunfighterEquippedCount(CoD.perController[arg2].classModel)
						if registerVal5 ~= "primaryattachment4" or registerVal7 ~= 0.000000 then
							registerVal7 = CoD.CACUtility.PrimaryGunfighterEquippedCount(CoD.perController[arg2].classModel)
							if registerVal5 ~= "primaryattachment5" or registerVal7 > 1.000000 then
								registerVal7 = CoD.CACUtility.PrimaryGunfighterEquippedCount(CoD.perController[arg2].classModel)
								if registerVal5 ~= "primaryattachment6" or registerVal7 > 2.000000 then
									registerVal7 = LUI.startswith(registerVal5, "primaryattachment")
									registerVal7 = CoD.CACUtility.ItemEquippedInSlot("primary", arg2, CoD.perController[arg2].classModel)
									if arg1 or registerVal7 then
										registerVal7 = LUI.startswith(registerVal5, "secondaryattachment")
										if registerVal7 then
											registerVal7 = CoD.CACUtility.ItemEquippedInSlot("secondary", arg2, CoD.perController[arg2].classModel)
											registerVal7 = CoD.CACUtility.DoesWeaponHaveAnyAttachments("secondary", arg2, CoD.perController[arg2].classModel)
											if registerVal7 and registerVal7 then
												registerVal7 = LUI.startswith(registerVal5, "secondarygadgetattachment")
												registerVal7 = CoD.CACUtility.ItemEquippedInSlot("secondarygadget", arg2, CoD.perController[arg2].classModel)
												if registerVal7 and not registerVal7 then
													registerVal7, registerVal8, registerVal9 = CoD.CACUtility.GetCACSlotStatus(arg2, CoD.perController[arg2].classModel, registerVal5)
													local registerVal10 = IsElementInState(arg1, "NotVisible")
													if registerVal7 == CoD.CACUtility.CACStatusAvailable.REQUIRES_WILDCARD and not registerVal10 then
														return true
													end
													return false
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		else
			return true
		end
	end

function CACShowRemovePrompt(arg0, arg1)
	local registerVal2 = arg1:getModel()
	local registerVal3 = Engine.GetModel(registerVal2, "itemIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.IsCampaignGame()
	if registerVal5 then
		registerVal5 = Engine.GetModel(registerVal2, "weaponSlot")
		local registerVal6 = Engine.GetModelValue(registerVal5)
		if registerVal6 == "primary" or registerVal6 == "secondary" then
			return false
		end
	end
	if registerVal4 ~= nil and CoD.CACUtility.EmptyItemIndex < registerVal4 then
		return true
	end
end

function CACShowRotatePrompt(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal3, "weaponSlot")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 == nil then
		local registerVal6 = CoD.SafeGetModelValue(registerVal3, "itemIndex")
		if registerVal6 == nil or 0.000000 >= registerVal6 then
		end
		return true
	end
	registerVal6 = CACShowRemovePrompt(arg0, arg1)
	if registerVal6 then
		return true
	end
	registerVal6 = CACShowSelectPrompt(arg0, arg1, arg2)
	registerVal6 = LUI.startswith(registerVal5, "primaryattachment")
	if registerVal6 and not registerVal6 then
		registerVal6 = LUI.startswith(registerVal5, "secondaryattachment")
	end
	return registerVal6
end

function IsCACCustomClassCountDefault(arg0)
	local registerVal1 = Engine.GetCustomClassCount(arg0)
	if registerVal1 ~= CoD.CACUtility.defaultCustomClassCount then
	end
	return true
end

function IsCACClassSetsCountDefault(arg0)
	local registerVal2 = Engine.GetNumberOfClassSetsOwned(arg0)
	if registerVal2 ~= 1.000000 then
	end
	return true
end

function ShowCACExtraClassBreadcrumb(arg0)
	local registerVal1 = IsClassSetsAvailableForCurrentGameMode()
	registerVal1 = DoesPlayerHaveExtraSlotsItem(arg0)
	registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal1 and not registerVal1 and registerVal1 then
		local registerVal2 = registerVal1.extraBools[0.000000]:get()
		if registerVal2 ~= 0.000000 then
		end
		return true
	end
	return false
end

function IsCACSlotOvercapacity2by1AspectRatio(arg0)
	local registerVal1 = arg0:getModel()
	local registerVal2 = Engine.GetModel(registerVal1, "itemSlot")
	if registerVal1 and registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 ~= "primary" and registerVal3 ~= "secondary" then
		end
		return true
	end
	return false
end

function IsCACSlotOvercapacityWildcard(arg0)
	local registerVal1 = arg0:getModel()
	local registerVal2 = Engine.GetModel(registerVal1, "itemSlot")
	if registerVal1 and registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		local registerVal4 = LUI.startswith(registerVal3, "bonuscard")
		return registerVal4
	end
	return false
end

function IsCACContextualWildcardOpen(arg0)
	local registerVal1 = IsInPermanentUnlockMenu(arg0)
	if CoD.perController[arg0].CACWildcardContextualMenu and not registerVal1 then
		return true
	end
	return false
end

function IsCACCategoryWeapon(arg0)
	if CoD.perController[arg0].weaponCategory ~= "primary" and CoD.perController[arg0].weaponCategory ~= "secondary" then
	end
	return true
end

function IsCACSlot2by1AspectRatio(arg0)
	local registerVal1 = arg0:getModel()
	local registerVal2 = Engine.GetModel(registerVal1, "weaponSlot")
	if registerVal1 and registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 ~= "primary" and registerVal3 ~= "secondary" then
		end
		return true
	end
	return false
end

function IsCACSlotInfopane2by1AspectRatio(arg0)
	local registerVal1 = arg0:getModel()
	local registerVal2 = Engine.GetModel(registerVal1, "weaponSlot")
	if registerVal1 and registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 ~= "primary" and registerVal3 ~= "secondary" then
			local registerVal4 = LUI.startswith(registerVal3, "primaryattachment")
			if not registerVal4 then
				registerVal4 = LUI.startswith(registerVal3, "secondaryattachment")
			end
		end
		return true
	end
	return false
end

function IsCACItemBubbleGum(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal3, "itemIndex")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal7 = Engine.GetItemGroup(registerVal5, registerVal6)
	local registerVal8 = LuaUtils.FindItemInArray(CoD.CACUtility.BGBBuffGroups, registerVal7)
	if registerVal3 and registerVal4 and registerVal8 then
		return true
	end
	return false
end

function IsCACItemConsumable(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal3, "itemIndex")
	if registerVal3 and registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
		return CoD.CACUtility.IsItemConsumable(registerVal5)
	end
	return false
end

function DoesCACItemHaveConsumablesRemaining(arg0, arg1, arg2)
	local registerVal3 = IsCACItemConsumable(arg0, arg1, arg2)
	if not registerVal3 then
		return true
	end
	registerVal3 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal3, "itemIndex")
	if registerVal3 and registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
		local registerVal6 = GetConsumableCountFromIndex(arg2, registerVal5)
		if 0.000000 >= registerVal6 then
		end
		return true
	end
	return false
end

function IsCACItemFromDLC(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "dlcIndex")
		if not registerVal4 then
			return false
		end
		local registerVal5 = Engine.GetModelValue(registerVal4)
		if CoD.CONTENT_DLCZM0_INDEX >= registerVal5 then
		end
		return true
	end
	return false
end

function IsCACItemDLCPurchased(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "dlcIndex")
		if not registerVal4 then
			return false
		end
		local registerVal5 = Engine.GetModelValue(registerVal4)
		if arg1 or registerVal5 < CoD.CONTENT_DLC1_INDEX then
			return true
		end
		return Engine.HasEntitlementByOwnership(arg2, ("dlc" .. (registerVal5 - CoD.CONTENT_DLCZM0_INDEX)))
	end
	return false
end

function IsCACItemContractLocked(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "ref")
	if registerVal2 and CoD.ContractWeaponTiers[registerVal2] then
		registerVal3 = IsThermometerUnlockIndexGreaterThanorEqualTo(CoD.ContractWeaponTiers[registerVal2])
		return (not registerVal3)
	end
	return false
end

function IsCACItemEquipped(arg0, arg1, arg2)
	local registerVal4 = LuaUtils.FindItemInArray(CoD.CACUtility.BGBBuffGroups, CoD.perController[arg2].weaponCategory)
	if registerVal4 then
		return IsBubbleGumBuffEquipped(arg0, arg1, arg2)
	end
	registerVal4 = CoD.CACUtility.GetSlotListWithSlot(CoD.perController[arg2].weaponCategory)
	local registerVal5 = arg1:getModel()
	local registerVal6 = Engine.GetModel(registerVal5, "itemIndex")
	local registerVal7 = Engine.GetModel(registerVal5, "upgradeItemIndex")
	local registerVal9 = IsCACItemUpgraded(arg0, arg1, arg2)
	if registerVal7 and registerVal9 then
	end
	registerVal9 = Engine.GetModelValue(registerVal7)
	local registerVal10, registerVal11, registerVal12 = ipairs(registerVal4)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		local registerVal15 = CoD.CACUtility.GetItemEquippedInSlot(value14, arg2)
		if registerVal15 == registerVal9 then
			return true
		end
	end
	return false
end

function IsBubbleGumType(arg0, arg1, arg2)
	local registerVal4 = arg0:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "itemIndex")
	local registerVal6 = Engine.TableLookup(arg1, "gamedata/stats/zm/zm_statsTable.csv", 0.000000, registerVal3, 20.000000)
	if registerVal3 and registerVal6 then
		if arg2 ~= registerVal6 then
		end
		return true
	end
	return false
end

function IsCACWildcardEquipped(arg0, arg1, arg2)
	local registerVal4 = CoD.CACUtility.GetSlotListWithSlot(CoD.perController[arg2].weaponCategory)
	local registerVal5 = arg1:getModel()
	local registerVal6 = Engine.GetModel(registerVal5, "itemIndex")
	local registerVal7 = Engine.GetModelValue(registerVal6)
	local registerVal8, registerVal9, registerVal10 = ipairs(registerVal4)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		local registerVal13 = CoD.CACUtility.GetItemEquippedInSlot(value12, arg2)
		if registerVal13 == registerVal7 then
			return true
		end
	end
	return false
end

function IsCACWeaponEquippedForSlot(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel(arg2, "itemIndex")
	local registerVal5 = arg0:getModel()
	local registerVal6 = Engine.GetModel(registerVal5, (arg3 .. ".itemIndex"))
	local registerVal7 = Engine.GetModelValue(registerVal6)
	local registerVal8 = Engine.GetModelValue(registerVal4)
	local registerVal9 = Engine.GetAttachmentRef(registerVal7, registerVal8)
	if registerVal4 and registerVal6 and CoD.CACUtility.EmptyItemIndex < registerVal8 then
		return true
	end
	return false
end

function IsCACCustomizationReticleAttachmentItemEquipped(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel(arg2, "itemIndex")
	local registerVal5 = arg0:getModel()
	local registerVal6 = Engine.GetModel(registerVal5, (arg3 .. ".itemIndex"))
	local registerVal7 = Engine.GetModelValue(registerVal6)
	local registerVal8 = Engine.GetModelValue(registerVal4)
	local registerVal9 = Engine.GetAttachmentRef(registerVal7, registerVal8)
	if registerVal4 and registerVal6 and CoD.CACUtility.EmptyItemIndex < registerVal8 then
		return CoD.CACUtility.attachmentsWithCustReticle[registerVal9]
	end
	return false
end

function IsCACCustomizationDWAttachmentItemEquipped(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemIndex")
	local registerVal5 = arg1:getModel()
	local registerVal4 = CoD.SafeGetModelValue(registerVal5, "weaponSlot")
	registerVal5 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(registerVal4)
	local registerVal6 = arg0:getModel()
	local registerVal7 = Engine.GetModel(registerVal6, (registerVal5 .. ".itemIndex"))
	local registerVal8 = Engine.GetModelValue(registerVal7)
	local registerVal9 = Engine.GetModelValue(registerVal3)
	local registerVal10 = Engine.GetAttachmentRef(registerVal8, registerVal9)
	if registerVal5 and registerVal3 and registerVal7 and CoD.CACUtility.EmptyItemIndex < registerVal9 then
		if registerVal10 ~= "dw" then
		end
		return true
	end
	return false
end

function IsCACWeaponVariantEquipped(arg0, arg1, arg2, arg3)
	local registerVal4 = Gunsmith_IsEnabled(arg2, arg3)
	if not registerVal4 then
		return false
	end
	registerVal4 = arg0:getModel()
	local registerVal6 = arg1:getModel()
	local registerVal7 = CoD.SafeGetModelValue(registerVal6, "weaponItemIndex")
	local registerVal8 = CoD.SafeGetModelValue(registerVal6, "cacVariantIndex")
	return CoD.CACUtility.IsVariantEquippedToClass(registerVal4, CoD.perController[arg3].weaponCategory, registerVal7, registerVal8)
end

function IsSpecialContractCamo(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal2, "weaponOptionTypeName")
	if registerVal3 ~= "camo" then
		return false
	end
	registerVal3 = CoD.SafeGetModelValue(registerVal2, "itemIndex")
	local registerVal4 = Engine.TableLookup(arg1, CoD.attachmentTable, 0.000000, registerVal3, 1.000000, "camo", 22.000000)
	if registerVal4 == nil or registerVal4 == "" then
	end
	return true
end

function ShouldHideClassifiedDescription(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal2, "isBMClassified")
	if not registerVal3 then
		return true
	end
	registerVal3 = CoD.SafeGetModelValue(registerVal2, "ref")
	return CoD.BlackMarketUtility.IsLimitedEditionCamoBundleItem(registerVal3)
end

function ShouldHideClassifiedLimitedEditionCamoDescription(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal2, "isBMClassified")
	if not registerVal3 then
		return true
	end
	registerVal3 = CoD.SafeGetModelValue(registerVal2, "ref")
	local registerVal4 = CoD.BlackMarketUtility.IsLimitedEditionCamoBundleItem(registerVal3)
	return (not registerVal4)
end

function IsCACItemNew(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg1)
	if not registerVal2 then
		return false
	end
	registerVal2 = arg0:getModel(arg1, "itemIndex")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	if registerVal2 and CoD.CACUtility.EmptyItemIndex < registerVal3 then
		return Engine.IsItemNew(arg1, registerVal3, registerVal4)
	end
	return false
end

function IsCACAttachmentNew(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg2)
	if not registerVal3 then
		return false
	end
	local registerVal4 = arg1:getModel(arg2, "itemIndex")
	local registerVal5 = arg0:getModel()
	if registerVal4 then
		local registerVal7 = LUI.startswith(CoD.perController[arg2].weaponCategory, "secondaryattachment")
		if registerVal7 then
		end
		registerVal7 = Engine.GetModel(registerVal5, ("secondary" .. ".itemIndex"))
		if registerVal7 then
			local registerVal8 = Engine.GetModelValue(registerVal7)
			local registerVal9 = Engine.GetModelValue(registerVal4)
			return Engine.IsAttachmentNew(arg2, registerVal8, registerVal9)
		end
	end
	return false
end

function IsSpecialistNew(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg2)
	if not registerVal3 then
		return false
	end
	registerVal3 = Engine.GetModelValue(arg0:getModel(arg2, "heroIndex"))
	local registerVal4 = Engine.CurrentSessionMode()
	local registerVal5 = Engine.GetLoadoutItemIndexForHero(registerVal4, registerVal3, Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_WEAPON)
	if registerVal3 and CoD.CACUtility.EmptyItemIndex < registerVal5 then
		return Engine.IsItemNew(arg2, registerVal5)
	end
	return false
end

function IsCACAnyLoadoutSlotNew(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg1)
	if not registerVal2 then
		return false
	end
	registerVal2 = arg0:getModel(arg1, "weaponSlot")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		local registerVal4 = CoD.CACUtility.IsBonusCardEquipped("bonuscard_two_tacticals", CoD.perController[arg1].classModel)
		if registerVal3 == "primarygadget" and registerVal4 then
			return false
		end
		return Engine.IsLoadoutSlotNew(arg1, registerVal3)
	end
	return false
end

function IsCACSpecificLoadoutSlotNew(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg1)
	if not registerVal3 then
		return false
	end
	registerVal3 = arg0:getModel(arg1, (arg2 .. ".weaponSlot"))
	if registerVal3 then
		Engine.GetModelValue(registerVal3)
		return Engine.IsLoadoutSlotNew(arg1, Engine.GetModelValue)
	end
	return false
end

function ShouldDisplayWeaponGroupBreadcrumbCount(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg1)
	if not registerVal2 then
		return false
	end
	registerVal2 = IsInPermanentUnlockMenu(arg1)
	if registerVal2 then
		return false
	end
	registerVal2 = arg0:getModel(arg1, "breadcrumbCount")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if 0.000000 >= registerVal3 then
		end
		return true
	end
	return false
end

function IsCACAnyOpticsNew(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg1)
	if not registerVal3 then
		return false
	end
	registerVal3 = arg0:getModel(arg1, (arg2 .. ".itemindex"))
	if registerVal3 then
		Engine.GetModelValue(registerVal3)
		return Engine.AreAnyOpticsNew(arg1, Engine.GetModelValue)
	end
	return false
end

function IsCACAnyAttachmentsNew(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg1)
	if not registerVal3 then
		return false
	end
	registerVal3 = arg0:getModel(arg1, (arg2 .. ".itemindex"))
	if registerVal3 then
		Engine.GetModelValue(registerVal3)
		return Engine.AreAnyNonOpticAttachmentsNew(arg1, Engine.GetModelValue)
	end
	return false
end

function IsCACAnythingInCACItemNew(arg0)
	local registerVal1 = IsProgressionEnabled(arg0)
	registerVal1 = Engine.IsAnythingInCACNew(arg0)
	if registerVal1 and registerVal1 then
		return true
	end
	registerVal1 = ShowCACExtraClassBreadcrumb(arg0)
	if registerVal1 then
		return true
	end
	return false
end

function IsCACAnyScorestreaksNew(arg0)
	local registerVal1 = IsProgressionEnabled(arg0)
	if not registerVal1 then
		return false
	end
	return Engine.WeaponGroupHasNewItem(arg0, "killstreak")
end

function IsCACAnySpecialistsNew(arg0)
	local registerVal1 = IsProgressionEnabled(arg0)
	if registerVal1 then
		registerVal1 = Engine.IsLoadoutSlotNew(arg0, "herogadget")
		registerVal1 = Engine.IsLoadoutSlotNew(arg0, "heroweapon")
		if not arg0 or registerVal1 then
			return true
		end
		registerVal1 = Engine.AreAnyCharacterCustomizationItemsNew(arg0)
		if registerVal1 then
			return true
		end
		registerVal1 = Engine.CurrentSessionMode()
		local registerVal2 = Engine.GetHeroList(registerVal1)
		for index3=0.000000, (# - 1.000000), 1.000000 do
			local registerVal7 = Engine.GetHeroBundleInfo(registerVal1, index3)
			local registerVal8 = CoD.CCUtility.GetTauntsAndGesturesNewCount(arg0, index3, registerVal7, registerVal1)
			if 0.000000 < registerVal8 then
				return true
			end
			local registerVal9 = CoD.CCUtility.GetTransmissionNewCount(arg0, index3, registerVal7)
			if 0.000000 < registerVal9 then
				return true
			end
		end
	end
	return false
end

function IsCACAnyPersonalizationOptionNew(arg0, arg1, arg2, arg3)
	local registerVal4 = IsProgressionEnabled(arg3)
	if not registerVal4 then
		return false
	end
	if arg0.menuName ~= "CustomClass" then
		return false
	end
	registerVal4 = arg1:getModel()
	local registerVal5 = CoD.SafeGetModelValue(registerVal4, "weaponSlot")
	local registerVal6 = CoD.SafeGetModelValue(registerVal4, "itemIndex")
	local registerVal7 = CoD.SafeGetModelValue(registerVal4, "attachmentIndex")
	local registerVal8 = CoD.SafeGetModelValue(registerVal4, "weaponIndex")
	if registerVal4 and registerVal5 then
		if registerVal6 and CoD.CACUtility.EmptyItemIndex < registerVal6 then
			if registerVal5 == "primary" or registerVal5 == "secondary" then
				return Engine.IsWeaponOptionGroupNew(arg3, registerVal6, Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO)
			else
			else
				if registerVal7 and CoD.CACUtility.EmptyItemIndex < registerVal7 then
					if registerVal5 == "primaryattachment1" or registerVal5 == "secondaryattachment1" then
						return Engine.IsWeaponOptionGroupNew(arg3, registerVal7, Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE)
					else
					else
						if registerVal6 and CoD.CACUtility.EmptyItemIndex < registerVal6 then
							local registerVal9 = LUI.startswith(registerVal5, "primaryattachment")
							registerVal9 = LUI.startswith(registerVal5, "secondaryattachment")
							if not arg1 or registerVal9 then
								registerVal9 = Engine.CurrentSessionMode()
								return Engine.IsAnyACVItemNew(arg3, registerVal8, registerVal7, registerVal9)
							end
						end
					end
				end
			end
		end
	end
	return false
end

function IsCACAnyCamoNew(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg1)
	if not registerVal2 then
		return false
	end
	if arg0.isCamo == true and CoD.CACUtility.EmptyItemIndex < arg0.weaponItemIndex then
		return Engine.IsWeaponOptionGroupNew(arg1, arg0.weaponItemIndex, Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO)
	end
	return false
end

function IsCACAnyBubblegumNew(arg0)
	local registerVal1 = IsProgressionEnabled(arg0)
	if not registerVal1 then
		return false
	end
	registerVal1, registerVal2, registerVal3 = ipairs(CoD.CACUtility.BGBBuffGroups)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6 = Engine.WeaponGroupHasNewItem(arg0, value5)
		if registerVal6 then
			return true
		end
	end
	return false
end

function IsCACItemPurchased(arg0, arg1)
	local registerVal2 = IsZombies()
	if arg1 or CoD.PrestigeUtility.isInPermanentUnlockMenu then
		registerVal2 = IsProgressionEnabled(arg1)
		if not registerVal2 then
			return true
		end
	end
	local registerVal4 = arg0:getModel(arg1, "itemIndex")
	if not arg0.itemIndex and registerVal4 then
		registerVal4 = Engine.GetModelValue(registerVal4)
	end
	if registerVal4 then
		registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
		return Engine.IsItemPurchased(arg1, registerVal4, registerVal4)
	end
	return false
end

function ShouldShowTokenIconOnItem(arg0, arg1, arg2)
	local registerVal3 = Engine.IsZombiesGame()
	if registerVal3 then
		return false
	end
	registerVal3 = IsCACItemLocked(arg0, arg1, arg2)
	registerVal3 = IsCACItemPurchased(arg1, arg2)
	if not registerVal3 and not registerVal3 then
		registerVal3 = IsCurrentMenuAttachmentMenu(arg0)
	else
	end
	local registerVal4 = Engine.IsCampaignGame()
	if registerVal4 and not true then
		registerVal4 = IsCACItemUpgradable(arg0, arg1, arg2)
	end
	return registerVal4
end

function IsCACItemUpgraded(arg0, arg1, arg2)
	local registerVal3 = IsCACItemLocked(arg0, arg1, arg2)
	if registerVal3 then
		return false
	end
	local registerVal4 = arg1:getModel(arg2, "upgradeItemIndex")
	if not arg1.upgradeItemIndex and registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
	end
	if not registerVal5 then
		return false
	end
	registerVal4 = IsProgressionEnabled(arg2)
	if not registerVal4 then
		return true
	end
	registerVal4 = Engine.IsItemPurchased(arg2, registerVal5)
	return registerVal4
end

function IsCACItemBanned(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemIndex")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = Engine.GetItemRestrictionState(registerVal4)
		if registerVal5 ~= Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_RESTRICTED then
		end
		return true
	end
	return false
end

function IsCACItemUpgradable(arg0, arg1, arg2)
	local registerVal3 = IsCACItemLocked(arg0, arg1, arg2)
	if registerVal3 then
		return false
	end
	local registerVal4 = arg1:getModel(arg2, "upgradeItemIndex")
	if not arg1.upgradeItemIndex and registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
	end
	if not registerVal5 then
		return false
	end
	registerVal4 = IsCACItemPurchased(arg1, arg2)
	if registerVal4 then
		registerVal4 = IsCACItemUpgraded(arg0, arg1, arg2)
	end
	return (not registerVal4)
end

function IsCACSlotUpgradable(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if not registerVal3 then
		return false
	end
	registerVal3 = GetUpgradableItemRef(arg0, arg1, arg2)
	if registerVal3 then
		local registerVal4 = LUI.endswith(registerVal3, "_pro")
		return (not registerVal4)
	end
	return false
end

function IsCACSlotUpgraded(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if not registerVal3 then
		return false
	end
	registerVal3 = GetUpgradableItemRef(arg0, arg1, arg2)
	if registerVal3 then
		return LUI.endswith(registerVal3, "_pro")
	end
	return false
end

function IsWeaponPrestigeLevelAtLeast(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = CoD.SafeGetModelValue(registerVal3, "itemIndex")
		local registerVal5 = CoD.CACUtility.GetWeaponPLevel(arg1, registerVal4)
		if arg2 > registerVal5 then
		end
		return true
	end
	return false
end

function IsCACHaveTokens(arg0)
	local registerVal2 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal3 = Engine.GetCurrentTokens(arg0, "weapon_smg", registerVal2)
	if 0.000000 >= registerVal3 then
	end
	return true
end

function ShouldCACDisplayTokens(arg0)
	local registerVal1 = IsMultiplayer()
	if registerVal1 then
		registerVal1 = IsLive()
		registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
		registerVal1 = IsInGame()
		registerVal1 = IsMaxPrestigeLevelForMode(arg0, Enum.eModes.MODE_MULTIPLAYER)
		if registerVal1 and not registerVal1 and not registerVal1 and not registerVal1 then
			return true
		else
			registerVal1 = IsCampaign()
			if registerVal1 then
				return true
				registerVal1 = IsFirstTimeSetup(arg0, Enum.eModes.MODE_MULTIPLAYER)
				if CoD.isSafehouse and not CoD.perController[arg0].everythingUnlocked and registerVal1 then
					return true
				end
			end
		end
	end
	return false
end

function IsCPAndInSafehouse()
	local registerVal0 = IsCampaign()
	if registerVal0 and CoD.isSafehouse then
		return true
	end
	return false
end

function IsProgressionEnabled(arg0)
	local registerVal1 = LobbyData.GetLobbyNav()
	local registerVal2 = LobbyData:UITargetFromId(registerVal1)
	local registerVal3 = IsMultiplayer()
	registerVal3 = IsLive()
	if registerVal3 and registerVal3 and registerVal2.lobbyMode == Enum.LobbyMode.LOBBY_MODE_PUBLIC then
		return true
	end
	registerVal3 = IsLive()
	registerVal3 = Engine.IsInGame()
	if CoD.PrestigeUtility.isInPermanentUnlockMenu and registerVal3 and not registerVal3 then
		return true
	end
	registerVal3 = IsCampaign()
	if registerVal3 and not CoD.perController[arg0].everythingUnlocked then
		return true
	end
	registerVal3 = IsZombies()
	registerVal3 = IsLive()
	registerVal3 = Engine.IsInGame()
	if registerVal3 and registerVal3 and not registerVal3 then
		return true
	end
	return false
end

function IsClassAllocationInState(arg0, arg1)
	local registerVal2 = Engine.GetMaxAllocation(arg0)
	if registerVal2 ~= arg1 then
	end
	return true
end

function IsProgressionElementItemLocked(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg2)
	if not registerVal3 then
		return false
	end
	return arg1.isLocked
end

function IsCACItemLocked(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg2)
	if not registerVal3 then
		return false
	end
	return IsCACItemLockedHelper(arg0, arg1, arg2)
end

function IsBGBItemLocked(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "dlcIndex")
	if arg1 or registerVal3 < CoD.CONTENT_DLC1_INDEX then
		registerVal4 = IsProgressionEnabled(arg2)
		if registerVal4 then
			registerVal4 = IsCACItemLockedHelper(arg0, arg1, arg2)
		end
		return registerVal4
	end
	registerVal4 = Engine.HasEntitlementByOwnership(arg2, ("dlc" .. (registerVal3 - CoD.CONTENT_DLCZM0_INDEX)))
	if not registerVal4 then
		if registerVal3 == CoD.CONTENT_DLC3_INDEX then
			registerVal4 = Engine.HasEntitlementByOwnership(arg2, "dlc3zm")
			return (not registerVal4)
		else
			if registerVal3 == CoD.CONTENT_DLC4_INDEX then
				registerVal4 = Engine.HasEntitlementByOwnership(arg2, "dlc4zm")
				return (not registerVal4)
			end
		end
		return true
	end
	return false
end

function IsCACItemLockedForGamesCom(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg2)
	registerVal3 = IsGamesComBuild()
	if not registerVal3 and not registerVal3 then
		return false
	end
	return IsCACItemLockedHelper(arg0, arg1, arg2)
end

function IsCACItemLockedForBeta(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg2)
	registerVal3 = LuaUtils.IsBetaBuild()
	if not registerVal3 and not registerVal3 then
		return false
	end
	return IsCACItemLockedHelper(arg0, arg1, arg2)
end

function IsCACItemLockedOrNotPurchased(arg0, arg1, arg2)
	local registerVal3 = IsCACItemLocked(arg0, arg1, arg2)
	if not registerVal3 then
		registerVal3 = IsCACItemPurchased(arg1, arg2)
	end
	return (not registerVal3)
end

function IsItemRefLocked(arg0, arg1)
	local registerVal2 = Engine.GetItemIndexFromReference(arg1)
	if registerVal2 then
		return Engine.IsItemLocked(arg0, registerVal2)
	else
		return true
	end
end

function IsNonAttachmentItemLocked(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg0)
	if not registerVal2 then
		return false
	end
	registerVal2 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal3 = Engine.GetItemIndexFromReference(arg1, registerVal2)
	if CoD.CACUtility.EmptyItemIndex < registerVal3 then
		return Engine.IsItemLocked(arg0, registerVal3, registerVal2)
	end
	return false
end

function IsCACItemMutuallyExclusiveWithSelection(arg0, arg1)
	local registerVal4 = arg0:getModel(arg1, "itemIndex")
	if registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
	end
	if not CoD.perController[arg1].weaponCategory then
		registerVal5 = Engine.GetLoadoutSlotForItem(registerVal5)
	end
	if registerVal5 then
		registerVal5 = CoD.CACUtility.GetMutuallyExclusiveSlotName(registerVal5, arg1, registerVal5)
		for index6=1.000000, #arg1, 1.000000 do
			if registerVal5[index6] ~= "" then
				return true
			end
		end
	end
	return false
end

function IsMenuPreviewImageSquare(arg0)
	if arg0.menuName ~= "PerkSelect" and arg0.menuName ~= "LethalEquipmentSelect" and arg0.menuName ~= "TacticalEquipmentSelect" and arg0.menuName == "TacticalRigSelect" or arg0.menuName == "WildcardSelect" then
		return true
	end
	return false
end

function IsCurrentMenuCybercoreOrRigMenu(arg0)
	if arg0.menuName == "TacticalRigSelect" then
		return true
	end
	return false
end

function IsCurrentMenuEquipmentMenu(arg0)
	if arg0.menuName ~= "PerkSelect" and arg0.menuName == "LethalEquipmentSelect" or arg0.menuName == "TacticalEquipmentSelect" then
		return true
	end
	return false
end

function IsCurrentMenuAttachmentMenu(arg0)
	if arg0.menuName ~= "PrimaryAttachmentSelect" and arg0.menuName ~= "PrimaryOpticSelect" and arg0.menuName == "SecondaryAttachmentSelect" or arg0.menuName == "SecondaryOpticSelect" then
		return true
	end
	return false
end

function IsCurrentMenuWeaponMenu(arg0)
	if arg0.menuName ~= "PrimaryWeaponSelect" and arg0.menuName ~= "SecondaryWeaponSelect" and arg0.menuName ~= "WeaponBuildKits" and arg0.menuName == "WeaponBuildKitsCustomizeVariant" or arg0.menuName == "WeaponBuildKitsCategorySelect" then
		return true
	end
	return false
end

function IsCurrentMenuWeaponType(arg0)
	local registerVal1 = IsCurrentMenuAttachmentMenu(arg0)
	registerVal1 = IsCurrentMenuWeaponMenu(arg0)
	if not arg0 or registerVal1 then
		return true
	end
	return false
end

function IsMulticoreActivated(arg0)
	local registerVal1 = Engine.IsCampaignGame()
	if registerVal1 then
		registerVal1 = IsInTrainingSim(arg0)
		local registerVal2 = Dvar.allItemsUnlocked:get()
		if not registerVal2 then
			registerVal2 = IsItemRefLocked(arg0, "feature_multicore")
		end
		return (not registerVal2)
	end
	return false
end

function IsInTrainingSim(arg0)
	local registerVal1 = Engine.IsCampaignGame()
	if registerVal1 then
		local registerVal2 = Engine.GetModelForController(arg0)
		registerVal1 = Engine.GetModel(registerVal2, "safehouse.inTrainingSim")
		if registerVal1 then
			local registerVal3 = Engine.GetModelValue(registerVal1)
			if 0.000000 >= registerVal3 then
			end
		end
		return true
	end
	return false
end

function IsCybercoreMenuDisabled(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = CoD.SafeGetModelValue(registerVal1, "hudItems.cybercoreSelectMenuDisabled")
	if registerVal2 ~= 1.000000 then
	end
	return true
end

function IsCybercoreItemEquipped(arg0, arg1, arg2)
	local registerVal3 = Engine.GetEquippedCybercore(arg2)
	local registerVal4 = arg1:getModel(arg2, "itemIndex")
	if registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
		if registerVal5 ~= registerVal3 then
		end
		return true
	else
		return false
	end
end

function IsCybercoreAbilityAvailable(arg0, arg1)
	local registerVal2 = arg0:getModel()
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal2, "baseItemIndex"))
		local registerVal4 = Engine.IsItemPurchased(arg1, registerVal3)
		if registerVal4 then
			return true
		end
		registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal2, "prereqItemIndex"))
		if registerVal4 ~= -1.000000 then
			return Engine.IsItemPurchased(arg1, registerVal4)
		end
	end
	return false
end

function IsCybercoreAbilityPurchasable(arg0, arg1)
	local registerVal2 = arg0:getModel()
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal2, "baseItemIndex"))
		local registerVal4 = Engine.IsItemPurchased(arg1, registerVal3)
		return (not registerVal4)
	end
	return false
end

function IsCybercoreAbilityUpgradable(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal2, "baseItemIndex"))
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal2, "upgradeItemIndex"))
	local registerVal5 = Engine.IsItemPurchased(arg1, registerVal3)
	if registerVal2 and registerVal5 and registerVal4 then
		local registerVal6 = Engine.IsItemPurchased(arg1, registerVal4)
		return (not arg1)
	end
	return false
end

function IsCybercoreAbilityUpgraded(arg0, arg1)
	local registerVal2 = arg0:getModel()
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal2, "upgradeItemIndex"))
		if registerVal3 then
			return Engine.IsItemPurchased(arg1, registerVal3)
		else
			return true
		end
	end
	return false
end

function IsBubbleGumPackClassSelectedBubbleGumPack(arg0, arg1)
	local registerVal2 = arg1:getModel()
	local registerVal3 = arg0:getModel()
	if registerVal2 and registerVal3 and registerVal2 == registerVal3 then
		return true
	end
	return false
end

function IsCurrentClassSelectedClass(arg0, arg1)
	local registerVal2 = arg1:getModel()
	local registerVal3 = arg0:getModel()
	if registerVal2 and registerVal3 and registerVal2 == registerVal3 then
		return true
	end
	return false
end

function IsCACSlotEquipped(arg0, arg1, arg2)
	if not arg2 then
		return false
	end
	local registerVal3 = arg1:getModel(arg2, "customWeaponSlot")
	if registerVal3 then
		local registerVal5 = Engine.GetModelValue(registerVal3)
	end
	if registerVal5 then
		registerVal5 = arg0:getModel(arg2, registerVal5)
		local registerVal6 = Engine.GetModel(registerVal5, "itemIndex")
		if registerVal5 and registerVal6 then
			local registerVal7 = Engine.GetModelValue(registerVal6)
			local registerVal8, registerVal9 = string.find(registerVal5, "%.")
			local registerVal10 = string.sub(registerVal5, 0.000000, (registerVal8 - 1.000000))
			local registerVal11 = CoD.CACUtility.GetAttachmentListForSlot(registerVal10)
			local registerVal13 = arg0:getModel()
			local registerVal12 = CoD.CACUtility.GetAttachedItemSlot(registerVal13, registerVal7, registerVal11)
			if registerVal12 == nil then
			end
			return true
		else
			registerVal5 = arg0:getModel()
			registerVal6 = GetWeaponSlotModel(arg0, arg1, arg2, registerVal5)
			if registerVal6 then
				registerVal7, registerVal8, registerVal9 = CoD.CACUtility.GetCACSlotStatus(arg2, registerVal5, registerVal6)
				return registerVal8
			end
		end
	end
	return false
end

function IsSecondaryAttachmentEquippedWithNoPersonalization(arg0, arg1, arg2)
	local registerVal3 = IsCACCustomizationDWAttachmentItemEquipped(arg0, arg1, arg2)
	if registerVal3 then
		return true
	else
		registerVal3 = IsLive()
		registerVal3 = IsCACSlotEquipped(arg0, arg1, arg2)
		if not registerVal3 and registerVal3 then
			return true
		end
	end
	return false
end

function IsCACSlotAvailable(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	local registerVal4 = GetWeaponSlotModel(arg0, arg1, arg2, registerVal3)
	if registerVal4 then
		local registerVal5, registerVal6, registerVal7 = CoD.CACUtility.GetCACSlotStatus(arg2, registerVal3, registerVal4)
		if registerVal5 ~= CoD.CACUtility.CACStatusAvailable.AVAILABLE then
		end
		return true
	end
	return false
end

function IsCACSecondLethalAvailable(arg0, arg1, arg2)
	local registerVal3 = IsCACSlotAvailable(arg0, arg1, arg2)
	if registerVal3 then
		registerVal3 = IsCACSpecificWildcardEquipped(arg0, "bonuscard_danger_close")
		if not registerVal3 then
			return true
		end
		registerVal3 = IsCACSpecificSlotEquipped(arg0, arg2, "primarygadget")
		if registerVal3 then
			return true
		end
	end
	return false
end

function IsCACSlotNeedWildcard(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	local registerVal4 = GetWeaponSlotModel(arg0, arg1, arg2, registerVal3)
	local registerVal5 = CoD.CACUtility.WildcardNeededForSlot(arg2, registerVal4)
	if registerVal4 and registerVal5 then
		return true
	end
	return false
end

function IsCACSlotCanEquipWildcard(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	local registerVal4 = GetWeaponSlotModel(arg0, arg1, arg2, registerVal3)
	local registerVal5, registerVal6 = CoD.CACUtility.WildcardNeededForSlot(arg2, registerVal4)
	if registerVal4 and registerVal5 then
		return registerVal6
	end
	return false
end

function IsCACSlotWildcardLocked(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	local registerVal4 = GetWeaponSlotModel(arg0, arg1, arg2, registerVal3)
	local registerVal5, registerVal6, registerVal7 = CoD.CACUtility.WildcardNeededForSlot(arg2, registerVal4)
	if registerVal4 and registerVal5 then
		return registerVal7
	end
	return false
end

function IsCACSlotWeaponForAttachmentEquipped(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = arg0:getModel()
	local registerVal5 = Engine.GetModel(registerVal3, "weaponSlot")
	if registerVal3 and registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal5)
		local registerVal7 = LUI.startswith(registerVal6, "primaryattachment")
		if registerVal7 then
			registerVal7, registerVal8, registerVal9 = CoD.CACUtility.GetCACSlotStatus(arg2, registerVal4, "primary")
			return registerVal8
		else
			registerVal7 = LUI.startswith(registerVal6, "secondaryattachment")
			if registerVal7 then
				registerVal7, registerVal8, registerVal9 = CoD.CACUtility.GetCACSlotStatus(arg2, registerVal4, "secondary")
				return registerVal8
			end
		end
	end
	return false
end

function IsCACSlotSpecificItemEquipped(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel(arg1, "itemIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.GetItemRef(registerVal4)
	if registerVal3 and CoD.CACUtility.EmptyItemIndex < registerVal4 and registerVal5 == arg2 then
		return true
	end
	return false
end

function IsCACEquippedWildcardItemCount(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	local registerVal4 = CoD.CACUtility.SpecificWildcardEquippedCount(registerVal3, arg1)
	if arg2 ~= registerVal4 then
	end
	return true
end

function IsCACCountGreaterThanEquippedWildcardItem(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	local registerVal4 = CoD.CACUtility.SpecificWildcardEquippedCount(registerVal3, arg1)
	if arg2 > registerVal4 then
	end
	return true
end

function IsCACPrimaryGunfighterCountEqualTo(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal3 = CoD.CACUtility.PrimaryGunfighterEquippedCount(registerVal2)
	if arg1 ~= registerVal3 then
	end
	return true
end

function IsCACPrimaryGunfighterCountGreaterThanOrEqualTo(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal3 = CoD.CACUtility.PrimaryGunfighterEquippedCount(registerVal2)
	if arg1 > registerVal3 then
	end
	return true
end

function IsCACPrimaryAttachmentSlotLockedByWildcard(arg0)
	local registerVal1 = IsNonAttachmentItemLocked(arg0, "bonuscard_primary_gunfighter")
	if registerVal1 then
		local registerVal2 = IsNonAttachmentItemLocked(arg0, "bonuscard_primary_gunfighter_2")
	end
	if registerVal2 then
		registerVal2 = IsNonAttachmentItemLocked(arg0, "bonuscard_primary_gunfighter_3")
	end
	return registerVal2
end

function IsCACAttachmentSlotVisible(arg0, arg1, arg2, arg3)
	local registerVal4 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg1, arg2)
	if registerVal4 then
		local registerVal5 = IsCACCountGreaterThanEquippedWildcardItem(arg0, "bonuscard_primary_gunfighter", arg3)
		return (not registerVal5)
	else
		return IsCACCountGreaterThanEquippedWildcardItem(arg0, "bonuscard_primary_gunfighter", 0.000000)
	end
end

function IsHintTextLeftAlign(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "weaponSlot")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = LUI.startswith(registerVal3, "primarygadget")
	if registerVal2 and registerVal4 then
		return true
	end
	return false
end

function IsHintTextRightAlign(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "weaponSlot")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 ~= "primaryattachment3" and registerVal3 ~= "primaryattachment6" and registerVal3 ~= "secondaryattachment3" and registerVal3 == "specialty3" or registerVal3 == "specialty6" then
			return true
		end
	end
	return false
end

function IsCACSpecificWildcardEquipped(arg0, arg1)
	local registerVal2 = arg0:getModel()
	if registerVal2 then
		return CoD.CACUtility.IsBonusCardEquipped(arg1, registerVal2)
	end
	return false
end

function IsCACSpecificSlotEquipped(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4, registerVal5, registerVal6 = CoD.CACUtility.GetCACSlotStatus(arg1, registerVal3, arg2)
		return registerVal5
	end
	return false
end

function IsCACGadgetModAvailable(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if arg1 or not registerVal3 then
		return false
	end
	local registerVal4 = arg1:getModel(arg2, "weaponSlot")
	if not registerVal4 then
		return false
	end
	local registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal7 = LUI.startswith(registerVal5, "primarygadgetattachment")
	if registerVal7 then
	else
		registerVal7 = LUI.startswith(registerVal5, "secondarygadgetattachment")
		if registerVal7 then
		end
	end
	registerVal7 = CoD.CACUtility.ItemEquippedInSlot("secondarygadget", arg2)
	registerVal7 = Engine.GetModel(registerVal3, ("secondarygadget" .. ".cust" .. registerVal5 .. ".itemIndex"))
	local registerVal8 = Engine.GetModelValue(registerVal7)
	if registerVal7 and registerVal7 and CoD.CACUtility.EmptyItemIndex < registerVal8 then
		return true
	end
	return false
end

function IsCACThirdPrimaryAttachmentAvailable(arg0)
	local registerVal2 = CoD.CACUtility.PrimaryGunfighterEquippedCount(CoD.perController[arg0].classModel)
	if 1.000000 > registerVal2 then
	end
	return true
end

function IsCACFifthPrimaryAttachmentAvailable(arg0)
	local registerVal2 = CoD.CACUtility.PrimaryGunfighterEquippedCount(CoD.perController[arg0].classModel)
	if 2.000000 > registerVal2 then
	end
	return true
end

function IsCACTakeTwoPrimaryGadgetAttachmentEquipped(arg0)
	local registerVal2 = arg0:getModel()
	return SearchForTakeTwoGadgetMod(registerVal2, CoD.CACUtility.PrimaryGadgetAttachmentSlotNameList)
end

function IsCACTakeTwoSecondaryGadgetAttachmentEquipped(arg0)
	local registerVal2 = arg0:getModel()
	return SearchForTakeTwoGadgetMod(registerVal2, CoD.CACUtility.SecondaryGadgetAttachmentSlotNameList)
end

function IsCACTakeTwoPrimaryGadgetAttachment(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal4 = arg1:getModel()
	return IsTakeTwoGadgetAttachmentForSlot(registerVal3, registerVal4, "primarygadget")
end

function IsCACTakeTwoSecondaryGadgetAttachment(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal4 = arg1:getModel()
	return IsTakeTwoGadgetAttachmentForSlot(registerVal3, registerVal4, "secondarygadget")
end

function IsPrimaryWeaponAttachmentAvailable(arg0)
	local registerVal1 = CoD.CACUtility.ItemEquippedInSlot("primary", arg0)
	if registerVal1 then
		registerVal1 = GetNumberOfAttachmentsForSlot("primary", arg0)
		if 0.000000 >= registerVal1 then
		end
	end
	return true
end

function IsSecondaryWeaponAttachmentAvailable(arg0)
	local registerVal1 = CoD.CACUtility.ItemEquippedInSlot("secondary", arg0)
	if registerVal1 then
		registerVal1 = GetNumberOfAttachmentsForSlot("secondary", arg0)
		if 0.000000 >= registerVal1 then
		end
	end
	return true
end

function IsCACWeaponVariantAvailable(arg0, arg1)
	local registerVal2 = Gunsmith_IsEnabled(arg0, arg1)
	if not registerVal2 then
		return false
	end
	registerVal2 = arg0:getModel()
	if registerVal2 then
		local registerVal3 = CoD.SafeGetModelValue(registerVal2, "loadoutSlot")
		if CoD.perController[arg1].weaponSlot and registerVal3 ~= CoD.perController[arg1].weaponSlot then
			return false
		end
		local registerVal4 = Engine.GetModel(registerVal2, "ref")
		local registerVal5 = Engine.GetModel(registerVal2, "itemIndex")
		if registerVal5 then
			local registerVal6 = Engine.GetModelValue(registerVal5)
			local registerVal7 = CoD.CraftUtility.Gunsmith.GetSortedWeaponVariantList(registerVal6)
			if 1.000000 >= #registerVal6 then
				local registerVal8 = CoD.CraftUtility.Gunsmith.AreMaxVariantSlotsUsed()
				if ##registerVal6 == 1.000000 and registerVal8 then
					CoD.perController[arg1].weaponIndexForVariant = registerVal6
					return true
				end
			end
		end
	end
	return false
end

function IsBaseWeaponVariantIndex(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "cacVariantIndex")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 ~= 0.000000 then
		end
		return true
	end
	return false
end

function IsCACSlotHasVariantName(arg0)
	local registerVal1 = arg0:getModel()
	local registerVal2 = Engine.GetModel(registerVal1, "variantName")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal1 and registerVal2 and registerVal3 ~= "" then
		return true
	end
	return false
end

function DoesWeaponVariantContainLockedItems(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg2)
	if registerVal3 and arg1.weaponVariantInfo then
		return arg1.weaponVariantInfo.hasLockedItems
	end
	return false
end

function DoesWeaponVariantContainLockedAttachments(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg2)
	if registerVal3 and arg1.weaponVariantInfo then
		return arg1.weaponVariantInfo.hasLockedAttachments
	end
	return false
end

function IsCACWeaponAttributeIncrease(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel(arg1, arg2)
	if registerVal3 then
		registerVal3 = Engine.GetModelValue(arg0:getModel(arg1, arg2))
		return WeaponAttributeCompare(registerVal3)
	end
	return false
end

function IsCACGunLevelMax(arg0, arg1, arg2)
	local registerVal3 = CoD.CACUtility.GetGunLevelWeaponIndex(arg2, arg1)
	if registerVal3 == CoD.CACUtility.EmptyItemIndex then
		return false
	end
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	return IsWeaponLevelMax(registerVal3, arg2, registerVal4)
end

function IsCACGunLevelExists(arg0, arg1, arg2)
	local registerVal3 = IsProgressionEnabled(arg2)
	if not registerVal3 then
		return false
	end
	registerVal3 = CoD.CACUtility.GetGunLevelWeaponIndex(arg2, arg1)
	local registerVal4 = Engine.IsCampaignGame()
	if registerVal4 then
		registerVal4 = CoD.GetAttachments(registerVal3)
		if registerVal4 then
			registerVal4 = CoD.GetAttachments(registerVal3)
			if 0.000000 >= #registerVal4 then
			end
		end
		if registerVal3 ~= CoD.CACUtility.EmptyItemIndex then
		else
		end
		return true
	end
	if registerVal3 == CoD.CACUtility.EmptyItemIndex then
	end
	return true
end

function AllowWeaponPrestige(arg0)
	local registerVal1 = IsMultiplayer()
	registerVal1 = IsProgressionEnabled(arg0)
	if arg0 or not registerVal1 then
		registerVal1 = Dvar.ui_allowWeaponPrestige:get()
	end
	return registerVal1
end

function CanPrestigeWeapon(arg0, arg1)
	local registerVal2 = IsArenaMode()
	if registerVal2 then
		return false
	end
	registerVal2 = AllowWeaponPrestige(arg1)
	if not registerVal2 then
		return false
	end
	local registerVal3 = Engine.GetGlobalModel()
	registerVal2 = CoD.SafeGetModelValue(registerVal3, "WGSV_Category")
	registerVal3 = arg0:getModel()
	if registerVal2 == CoD.WGSV_Category.WEAPON and registerVal3 then
		local registerVal4 = CoD.SafeGetModelValue(registerVal3, "itemIndex")
		local registerVal5 = IsWeaponLevelMax(registerVal4, arg1, Engine.CurrentSessionMode())
		if registerVal5 then
			registerVal5 = CoD.CACUtility.GetWeaponPLevel(arg1, registerVal4)
			if registerVal5 >= CoD.CACUtility.maxWeaponPrestige then
			end
		end
		return true
	end
	return false
end

function IsItemWeaponOptionNew(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg1)
	if not registerVal2 then
		return false
	end
	local registerVal4 = arg0:getModel()
	local registerVal5 = CoD.SafeGetModelValue(registerVal4, "weaponOptionSubIndex")
	local registerVal6 = CoD.SafeGetModelValue(registerVal4, "weaponOptionType")
	if registerVal5 and registerVal6 and registerVal6 ~= Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_PAINTJOB and CoD.CACUtility.EmptyItemIndex < registerVal5 then
		local registerVal7 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].classModel, (CoD.perController[arg1].weaponCategory .. ".itemIndex")))
		local registerVal8 = Engine.GetWeaponOptionGroupIndex(registerVal5, registerVal6)
		if registerVal6 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE then
			local registerVal9 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(CoD.perController[arg1].weaponCategory)
			local registerVal10 = CoD.SafeGetModelValue(CoD.perController[arg1].classModel, (registerVal9 .. ".itemIndex"))
			local registerVal11 = Engine.GetItemAttachment(registerVal10, registerVal7)
		end
		return Engine.IsWeaponOptionNew(arg1, registerVal11, registerVal8)
	end
	return false
end

function IsItemWeaponOptionEquipped(arg0, arg1)
	local registerVal3 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(CoD.perController[arg1].weaponCategory)
	local registerVal4 = arg0:getModel(arg1, "weaponOptionTypeName")
	local registerVal5 = arg0:getModel(arg1, "weaponOptionSubIndex")
	local registerVal6 = arg0:getModel(arg1, "weaponOptionType")
	if registerVal4 and registerVal5 and registerVal6 then
		local registerVal7 = Engine.GetModelValue(registerVal4)
		local registerVal8 = Engine.GetModelValue(registerVal5)
		local registerVal9 = Engine.GetModelValue(registerVal6)
		if registerVal9 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_PAINTJOB then
			local registerVal10 = Engine.GetModelValue(arg0:getModel(arg1, "paintjobIndex"))
			local registerVal11 = Engine.GetModelValue(arg0:getModel(arg1, "paintjobSlot"))
			local registerVal12 = CoD.CACUtility.GetItemEquippedInSlot((registerVal3 .. "paintjobIndex"), arg1, CoD.perController[arg1].classModel)
			registerVal12 = CoD.CACUtility.GetItemEquippedInSlot((registerVal3 .. "paintjobSlot"), arg1, CoD.perController[arg1].classModel)
			return true
			registerVal10 = CoD.CACUtility.GetItemEquippedInSlot((registerVal3 .. registerVal7), arg1)
			if registerVal12 == registerVal10 and registerVal12 == registerVal11 and registerVal10 == registerVal8 then
				return true
			end
		end
	end
	return false
end

function IsItemWeaponOptionLocked(arg0, arg1, arg2)
	local registerVal3 = IsCACPersonalizationProgressionEnabled(arg1, arg2)
	if not registerVal3 then
		return false
	end
	local registerVal5 = Engine.GetModel(CoD.perController[arg2].classModel, (CoD.perController[arg2].weaponCategory .. ".itemIndex"))
	local registerVal6 = arg1:getModel(arg2, "weaponOptionSubIndex")
	local registerVal7 = arg1:getModel(arg2, "weaponOptionType")
	if registerVal5 and registerVal6 and registerVal7 then
		local registerVal8 = Engine.GetModelValue(registerVal5)
		local registerVal9 = Engine.GetModelValue(registerVal6)
		local registerVal10 = Engine.GetModelValue(registerVal7)
		local registerVal11 = Engine.GetWeaponOptionGroupIndex(registerVal9, registerVal10)
		if registerVal10 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE then
			local registerVal12 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(CoD.perController[arg2].weaponCategory)
			local registerVal13 = CoD.SafeGetModelValue(CoD.perController[arg2].classModel, (registerVal12 .. ".itemIndex"))
			if not registerVal13 then
				return true
			end
			local registerVal14 = Engine.GetItemAttachment(registerVal13, registerVal8)
		end
		if Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO == registerVal10 or Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE == registerVal10 then
			if registerVal9 == 0.000000 then
				return false
			else
			else
				if registerVal10 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_INVALID then
					if registerVal9 == 0.000000 then
						return false
					end
					registerVal12 = Engine.GetAttachmentRef(registerVal14, registerVal9)
					registerVal13, registerVal14, registerVal15 = ipairs(CoD.CACUtility.mpPrestigeAttachments)
					if registerVal12 ==  then
						local registerVal18 = CoD.CACUtility.GetWeaponPLevel(arg2, registerVal14)
						if registerVal18 < registerVal8 then
							registerVal18 = Dvar.allItemsUnlocked:get()
						else
						end
						return true
					end
					return false
				end
			end
		end
		return Engine.IsItemOptionLocked(arg2, registerVal14, registerVal11)
	end
	return false
end

function GetUnlockSessionMode(arg0, arg1)
	if not arg0 then
		return Enum.eModes.MODE_COUNT
	end
	local registerVal3 = arg0:getModel(arg1, "unlockSessionMode")
	if not registerVal3 then
		local registerVal4 = arg0:getModel(arg1, "challengeInfo.unlockSessionMode")
	end
	if not registerVal4 then
		return Enum.eModes.MODE_COUNT
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	return registerVal4
end

function ShouldHideItemWeaponOptionInGunsmith(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "weaponOptionSubIndex")
	local registerVal3 = arg0:getModel(arg1, "weaponOptionType")
	if arg1 or not registerVal3 then
		return true
	end
	local registerVal4 = GetUnlockSessionMode(arg0, arg1)
	if registerVal4 == Enum.eModes.MODE_COUNT then
		return true
	end
	local registerVal5 = IsLive()
	if not registerVal5 then
		if registerVal4 == Enum.eModes.MODE_MULTIPLAYER or registerVal4 == Enum.eModes.MODE_ZOMBIES then
			return true
		end
	end
	registerVal5 = Engine.GetModelValue(registerVal2)
	local registerVal6 = Engine.GetModelValue(registerVal3)
	if Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO == registerVal6 or Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE == registerVal6 then
		if registerVal5 == 0.000000 then
			return true
		end
	end
	local registerVal7 = arg0:getModel(arg1, "filterMode")
	local registerVal8 = Engine.GetModelValue(registerVal7)
	if registerVal7 and registerVal8 == "extras" then
		if Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO == registerVal6 then
			return false
		end
		return true
	end
	return false
end

function ShouldHideItemWeaponOption(arg0, arg1)
	local registerVal2 = IsCACPersonalizationProgressionEnabled(arg0, arg1)
	if not registerVal2 then
		return true
	end
	local registerVal3 = arg0:getModel()
	registerVal2 = CoD.SafeGetModelValue(registerVal3, "isChallengeClassified")
	if registerVal2 == true then
		return true
	end
	registerVal2 = arg0:getModel(arg1, "weaponOptionSubIndex")
	registerVal3 = arg0:getModel(arg1, "weaponOptionType")
	if registerVal2 and registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal2)
		local registerVal5 = Engine.GetModelValue(registerVal3)
		if Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO == registerVal5 or Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE == registerVal5 then
			if registerVal4 == 0.000000 then
				return true
			else
			else
				if registerVal5 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_INVALID then
					return true
				end
			end
		end
	end
	registerVal4 = arg0:getModel(arg1, "filterMode")
	registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal4 and registerVal5 == "extras" then
		registerVal5 = Engine.GetModelValue(registerVal3)
		if Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO == registerVal5 then
			return false
		end
		return true
	end
	return false
end

function IsWeaponPrestigeItem(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "weaponOptionType")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 and registerVal3 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_INVALID then
		return true
	end
	return false
end

function IsCACPersonalizationProgressionEnabled(arg0, arg1)
	local registerVal3 = IsSpecialContractCamo(arg0, arg1)
	if registerVal3 then
		return true
	end
	if arg0 then
		registerVal3 = arg0:getModel(arg1, "unlockSessionMode")
		if not registerVal3 then
			local registerVal4 = arg0:getModel(arg1, "challengeInfo.unlockSessionMode")
		end
		if registerVal4 then
			registerVal4 = Engine.GetModelValue(registerVal4)
		end
		if registerVal4 and Enum.eModes.MODE_FIRST <= registerVal4 and registerVal4 < Enum.eModes.MODE_COUNT then
			if registerVal4 ~= Enum.eModes.MODE_CAMPAIGN then
				registerVal4 = IsLive()
				if registerVal4 == Enum.eModes.MODE_MULTIPLAYER and registerVal4 then
					registerVal4 = IsMultiplayer()
					registerVal4 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
					if registerVal4 and registerVal4 then
						registerVal4 = IsLive()
						if registerVal4 == Enum.eModes.MODE_ZOMBIES and registerVal4 then
							return true
						end
					end
				end
			end
		end
		return false
	end

function IsClassOptionDisabled(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	if CoD.perController[arg2].classModel and registerVal4 and CoD.perController[arg2].classModel == registerVal4 then
		arg1.disabled = true
		return true
	end
	return false
end

function IsClassSetOptionDisabled(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "classSetId")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.GetCurrentClassSetIndex(arg2)
	if registerVal3 and registerVal4 == registerVal5 then
		return true
	end
	return false
end

function IsCurrentItemClassified(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal3 = Engine.GetModel(registerVal2, "isClassified")
	if registerVal2 and registerVal3 then
		return Engine.GetModelValue(registerVal3)
	end
	return false
end

function IsCurrentACVEquipped(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	local registerVal5 = CoD.CACUtility.GetItemEquippedInSlot((CoD.perController[arg2].weaponCategory .. "cosmeticvariant"), arg2, registerVal3)
	local registerVal6 = arg1:getModel(arg2, "variantIndex")
	if registerVal6 then
		local registerVal7 = Engine.GetModelValue(registerVal6)
		if registerVal5 ~= registerVal7 then
		end
		return true
	end
	return false
end

function IsCACACVItemNew(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg1)
	if not registerVal2 then
		return false
	end
	local registerVal3 = arg0:getModel()
	registerVal2 = CoD.SafeGetModelValue(registerVal3, "isBMClassified")
	if registerVal2 == true then
		return false
	end
	if CoD.WC_Category.ACV.selectedAttachmentWeaponIndex and arg0.attachmentRef and arg0.variantIndex and CoD.CACUtility.EmptyItemIndex < arg0.variantIndex then
		return IsACVItemNewHelper(arg1, CoD.WC_Category.ACV.selectedAttachmentWeaponIndex, arg0.attachmentTableIndex, arg0.variantIndex, Enum.eModes.MODE_MULTIPLAYER)
	end
	return false
end

function IsClassSetsAvailableForCurrentGameMode()
	local registerVal0 = AreCodPointsEnabled(0.000000)
	if registerVal0 then
		registerVal0 = Engine.IsClassSetsAvailableForCurrentGameMode()
	end
	return registerVal0
end

function IsCallingCardBribeActive()
	local registerVal0 = CoD.BlackMarketUtility.GetCurrentBribeString()
	if registerVal0 ~= "MPUI_BM_BRIBE_CALLINGCARD" then
	end
	return true
end

function AreCodPointsEnabled(arg0)
	local registerVal1 = IsLive()
	if registerVal1 then
		registerVal1 = IsBooleanDvarSet("tu4_enableCodPoints")
	end
	return registerVal1
end

function ShouldOnlyShowVials(arg0, arg1)
	local registerVal2 = IsLootReady(arg1)
	if registerVal2 then
		registerVal2 = AreCodPointsEnabled(arg1)
	end
	return (not registerVal2)
end

function IsThermometerUnlockIndexGreaterThanorEqualTo(arg0)
	local registerVal1 = CoD.GetThermometerUnlockIndex()
	if arg0 <= registerVal1 then
		return true
	end
end

function IsThermometerProgressEqualTo(arg0)
	local registerVal1 = CoD.GetThermometerProgress()
	if registerVal1 == arg0 then
		return true
	end
end

function IsCommunityContractBreadCrumbActive(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal2 = Dvar.ui_enablePromoMenu:get()
	if registerVal2 and registerVal1 and registerVal1.ui_community_contract_milestone and registerVal1.ui_seen_community_contract then
		registerVal2 = registerVal1.ui_seen_community_contract:get()
		if registerVal2 == 0.000000 then
			return true
		end
		registerVal2 = registerVal1.ui_community_contract_milestone:get()
		local registerVal3 = CoD.GetThermometerUnlockIndex()
		if registerVal2 ~= registerVal3 then
			return true
		end
	end
	return false
end

function IsTrifectaContractBreadcrumbActive(arg0)
	local registerVal1 = IsTrifectaBundleActive(arg0)
	registerVal1 = IsGrandSlamActive(arg0)
	if not registerVal1 and not registerVal1 then
		return false
	end
	registerVal1 = CoD.GetPlayerStats(arg0)
	if registerVal1 and registerVal1.extraBytes then
		local registerVal2 = registerVal1.extraBytes[3.000000]:get()
		local registerVal3 = Engine.DvarInt(nil, "loot_trifecta_breadcrumb_index")
		if registerVal2 >= registerVal3 then
		end
		return true
	end
end

function IsBlackMarketBreadcrumbActive(arg0)
	local registerVal1 = CoD.GetPlayerStats(arg0)
	local registerVal2 = registerVal1.blackMarketShowBreadcrumb:get()
	if registerVal1 and registerVal1.blackMarketShowBreadcrumb and registerVal2 == 1.000000 then
		return true
	end
	registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal3 = registerVal2.ui_seen_new_contracts:get()
	if registerVal2 and registerVal3 == 0.000000 then
		return true
	end
	registerVal3 = IsExperimentPromotionActive(arg0)
	if registerVal3 then
		return true
	end
	registerVal3 = IsTrifectaContractBreadcrumbActive(arg0)
	if registerVal3 then
		return true
	end
	registerVal3 = IsNoDupesCrateActive(arg0)
	if registerVal3 then
		return true
	end
	registerVal3 = Engine.DvarBool(nil, "loot_noDupeRare20Bundle_active")
	if registerVal3 then
		return true
	end
	return false
end

function IsNewtonsCookbookBreadcrumbActive(arg0)
	local registerVal1 = Engine.DvarBool(nil, "ui_cookbook_discount_active")
	if registerVal1 then
		return true
	end
	return false
end

function HasPlayerSeenLatestBlackMarketPromotion(arg0)
	local registerVal1 = ShouldShowSeasonPassIncentiveOverlay(arg0)
	if registerVal1 then
		return false
	end
	registerVal1 = IsCommunityContractBreadCrumbActive(arg0)
	if registerVal1 then
		return false
	end
	registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal2 = registerVal1.ui_seen_new_contracts:get()
	if registerVal1 and registerVal2 == 0.000000 then
		return false
	end
	registerVal2 = IsExperimentPromotionActive(arg0)
	if registerVal2 then
		return false
	end
	registerVal2 = IsTrifectaContractBreadcrumbActive(arg0)
	if registerVal2 then
		return false
	end
	registerVal2 = IsNoDupesCrateActive(arg0)
	if registerVal2 then
		return false
	end
	registerVal2 = Engine.DvarBool(nil, "loot_noDupeRare20Bundle_active")
	if registerVal2 then
		return false
	end
	registerVal2 = IsGrandSlamActive(arg0)
	registerVal2 = Engine.IsLootReady(arg0)
	registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.BlackMarketUtility.loot_grand_slam_drop_id)
	if registerVal2 and registerVal2 and registerVal2 == 0.000000 then
		return false
	end
	if CoD.BlackMarketUtility.CurrentPromotionIndex == 0.000000 then
		return true
	end
	registerVal2 = CoD.GetPlayerStats(arg0)
	if registerVal2 and registerVal2.extraBytes then
		local registerVal3 = registerVal2.extraBytes[0.000000]:get()
		if registerVal3 ~= CoD.BlackMarketUtility.CurrentPromotionIndex then
		end
		return true
	end
	return true
end

function IsExperimentPromotionActive(arg0)
	local registerVal2 = Engine.DvarBool(nil, "loot_experimentpromo_active")
	registerVal2 = Engine.DvarString(nil, "loot_experimentpromo_name")
	local registerVal3 = Engine.DvarString(nil, "loot_experimentpromo_group")
	if registerVal2 and registerVal2 ~= "" and registerVal3 ~= "" then
		return CoDShared.IsInExperiment(registerVal2, registerVal3)
	end
	return false
end

function PurchaseExperimentCanShowStoreButton(arg0, arg1)
	local registerVal2 = IsChildElementInState(arg1, "BlackMarketCODPointContainerSmall", "DefaultState")
	registerVal2 = IsChildElementInState(arg1, "BlackMarketCODPointContainerSmall", "HiddenForLootSale")
	if not arg1 or registerVal2 then
		registerVal2 = Engine.DvarBool(nil, "ui_purchaseExperiment")
		if registerVal2 then
			return false
		end
	end
	return true
end

function IsPurchaseExperimentActive(arg0, arg1)
	local registerVal2 = Engine.DvarBool(nil, "ui_purchaseExperiment")
	if registerVal2 then
		return true
	end
	return false
end

function IsCodeBundlePromotionActive(arg0)
	local registerVal1 = Engine.DvarBool(nil, "loot_code_bundle_active")
	registerVal1 = LuaUtils.GetSkuName()
	if registerVal1 and registerVal1 == "SceaEnFr" then
		registerVal1 = Engine.HasEntitlementByOwnership(arg0, "codemtx03")
		return (not registerVal1)
	end
	return false
end

function CanAffordTradeAgain(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "itemCost")
	registerVal3 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg1)
	if registerVal2 ~= nil and 0.000000 < registerVal2 and registerVal2 <= registerVal3 then
		return true
	end
	local registerVal4 = arg0:getModel()
	registerVal3 = CoD.SafeGetModelValue(registerVal4, "itemCODPointCost")
	registerVal4 = Engine.GetCoDPoints(arg1)
	if registerVal3 ~= nil and 0.000000 < registerVal3 and registerVal3 <= registerVal4 then
		return true
	end
	local registerVal5 = arg0:getModel()
	registerVal4 = CoD.SafeGetModelValue(registerVal5, "itemBundleCost")
	registerVal5 = CoD.BlackMarketUtility.GetBundleCountForCurrentDropType(arg1)
	if registerVal4 ~= nil and 0.000000 < registerVal4 and registerVal4 <= registerVal5 then
		return true
	end
	return false
end

function IsInventoryBusy(arg0)
	return Engine.IsInventoryBusy(arg0)
end

function CanAffordCrate(arg0, arg1)
	local registerVal2 = CoD.BlackMarketUtility.GetCrateCODPointCost(arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	if 0.000000 < registerVal2 and registerVal2 <= registerVal3 then
		return true
	end
	registerVal3 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(arg1)
	local registerVal4 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
	if 0.000000 < registerVal3 and registerVal3 <= registerVal4 then
		return true
	end
	return false
end

function IsCurrentBundleCountGreaterThan(arg0, arg1)
	local registerVal2 = CoD.BlackMarketUtility.GetCurrentBundleCount(arg0)
	if 0.000000 >= registerVal2 then
	end
	return true
end

function HasSixPackCommonBundles(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentSixPackCommonBundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasDailyDoubleBundles(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentDailyDoubleRareBundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasBundleExperimentBundles(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentBundleExperimentRareBundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasNoDupesBundles(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentNoDupesBundleRareBundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasCodeBundles(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentCodeBundleRareBundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasWeapon3XBundles(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentWeapon3XBundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasLimitedEditionCamoBundles(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentLimitedEditionCamoBundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function BlackMarketListItemCanEquip(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "category")
	if registerVal2 ~= "emblem" and registerVal2 ~= "calling_card" and registerVal2 ~= "specialist_outfit" and registerVal2 ~= "gesture" and registerVal2 ~= "taunt" then
		return false
	end
	local registerVal4 = arg0:getModel()
	registerVal3 = CoD.SafeGetModelValue(registerVal4, "lockItemText")
	if registerVal3 == nil or registerVal3 == "" then
		return true
	end
end

function BlackMarketHideMasterCallingCards()
	return IsJapaneseSku()
end

function IsItemBlackMarketWeapon(arg0, arg1)
	local registerVal2 = IsZombies()
	if arg1 or CoD.PrestigeUtility.isInPermanentUnlockMenu then
		registerVal2 = IsProgressionEnabled(arg1)
		if not registerVal2 then
			return true
		end
	end
	local registerVal4 = arg0:getModel(arg1, "itemIndex")
	if not arg0.itemIndex and registerVal4 then
		registerVal4 = Engine.GetModelValue(registerVal4)
	end
	if registerVal4 then
		registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
		local registerVal5 = Engine.GetItemRef(registerVal4, registerVal4)
		return CoD.BlackMarketUtility.IsBlackMarketItem(registerVal5)
	end
	return false
end

function CanShowWeaponStatsForCampaign(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "weaponIndex")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = Engine.GetItemRef(registerVal3, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal2 and registerVal4 ~= "" and registerVal4 ~= "melee_boxing" then
		local registerVal5 = CoD.BlackMarketUtility.IsBlackMarketItem(registerVal4)
		return (not registerVal5)
	end
	return false
end

function HasEarnedWeaponContract(arg0)
	local registerVal1 = Engine.AreStatsFetched(arg0)
	registerVal1 = Engine.IsLootReady(arg0)
	registerVal1 = Engine.GetInventoryItemQuantity(arg0, Dvar.weapon_contract_incentive_id:get())
	local registerVal2 = Dvar.weapon_contract_max:get()
	if registerVal1 and registerVal1 and registerVal2 <= registerVal1 then
		return true
	end
	registerVal1 = Engine.GetDStat(arg0, "weaponContractData", "completeTimestamp")
	if registerVal1 == 0.000000 then
	end
	return true
end

function IsDailyContractComplete(arg0)
	local registerVal1 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.dailyContractIndex)
	if registerVal1.targetValue > registerVal1.progress then
	end
	return true
end

function AreWeeklyContractsComplete(arg0)
	local registerVal1 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex1)
	local registerVal2 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex2)
	if arg0 or not registerVal2 then
		return false
	end
	if registerVal1.targetValue > registerVal1.progress or registerVal2.targetValue > registerVal2.progress then
	end
	return true
end

function IsDailyContractValid(arg0)
	local registerVal1 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.dailyContractIndex)
	if registerVal1.index == 0.000000 then
	end
	return true
end

function IsIncompleteContractActive(arg0)
	local registerVal1 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.specialContractIndex)
	if registerVal1 == nil or registerVal1.index == 0.000000 then
		local registerVal2 = HasEarnedWeaponContract(arg0)
		return (not registerVal2)
	else
		return (not registerVal1.isAwardGiven)
	end
end

function AreWeeklyContractsValid(arg0)
	local registerVal1 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex1)
	local registerVal2 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex2)
	if arg0 or not registerVal2 then
		return false
	end
	if registerVal1.index == 0.000000 or registerVal2.index == 0.000000 then
	end
	return true
end

function IsProcessingBMContractRewardTask(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "bmRewards.processingTask")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 == nil or registerVal2 ~= true then
	end
	return true
end

function IsLootItemFromCurrentContraband(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "drop")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal5 = Dvar.loot_mpItemVersions:get()
	local registerVal4 = LUI.splitString(registerVal5, ",")
	registerVal5 = tonumber(registerVal3)
	local registerVal6 = tonumber(registerVal4[#])
	if registerVal2 and registerVal3 and 0.000000 < #registerVal5 and registerVal5 == registerVal6 then
		return true
	end
	return false
end

function IsLimitedLootItem(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "emblem")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		return CoD.BlackMarketUtility.IsLimitedBlackMarketItem(registerVal3)
	end
	return false
end

function IsLimitedLootPromoActive(arg0)
	return Engine.DvarBool(nil, "loot_limitedTimeItemPromo_active")
end

function DoesPlayerHaveCurrentLoginReward(arg0)
	if CoD.LoginRewardCamo == true then
		local registerVal2 = Engine.GetLootItemQuantity(arg0, CoD.LoginRewardItemReference, Enum.eModes.MODE_MULTIPLAYER)
	else
		registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.LoginRewardItemID)
	end
	if arg0 or registerVal2 == 0.000000 then
		return false
	end
	return true
end

function ShouldShowLoginRewardPopup(arg0)
	local registerVal1 = Engine.DvarBool(nil, "loot_loginReward_active")
	if registerVal1 then
		registerVal1 = DoesPlayerHaveCurrentLoginReward(arg0)
	end
	return (not registerVal1)
end

function IsCryptokeyWidgetGenericReward(arg0, arg1, arg2)
	if arg1.supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_RANGE then
		return true
	end
	if arg1.supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_MELEE then
		return true
	end
	return false
end

function IsCryptokeyWidgetAvailable(arg0, arg1, arg2)
	local registerVal3 = IsElementInState(arg1, "SixPackCommon")
	registerVal3 = IsSixPackBundleInCooldown(arg2)
	if registerVal3 and registerVal3 then
		return false
	end
	registerVal3 = IsElementInState(arg1, "DailyDouble")
	registerVal3 = IsDailyDoubleBundleInCooldown(arg2)
	if registerVal3 and registerVal3 then
		return false
	end
	return true
end

function IsDecryptionCrateGenericReward(arg0, arg1, arg2)
	if CoD.perController[arg2].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_RANGE then
		return true
	end
	if CoD.perController[arg2].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_MELEE then
		return true
	end
	return false
end

function IsGrandSlamReward(arg0)
	if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.WEAPON_3X then
		return true
	end
	if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.LIMITED_EDITION_CAMO then
		return true
	end
end

function IsDecryptionCrateRare(arg0, arg1, arg2)
	if CoD.perController[arg2].supplyDropType == CoD.BlackMarketUtility.DropTypes.RARE then
		return true
	end
	if CoD.perController[arg2].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_CRATE then
		return true
	end
	return false
end

function HasGenericRewardBundles(arg0)
	if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_RANGE then
		local registerVal1 = CoD.BlackMarketUtility.GetCurrentNoDupeRangeBundleCount(arg0)
		if 0.000000 >= registerVal1 then
		end
		return true
	end
	if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.NO_DUPES_MELEE then
		registerVal1 = CoD.BlackMarketUtility.GetCurrentNoDupeMeleeBundleCount(arg0)
		if 0.000000 >= registerVal1 then
		end
		return true
	end
	return false
end

function HasGrandSlamRewardBundles(arg0)
	if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.WEAPON_3X then
		local registerVal1 = CoD.BlackMarketUtility.GetCurrentWeapon3XBundleCount(arg0)
		if 0.000000 >= registerVal1 then
		end
		return true
	end
	if CoD.perController[arg0].supplyDropType == CoD.BlackMarketUtility.DropTypes.LIMITED_EDITION_CAMO then
		registerVal1 = CoD.BlackMarketUtility.GetCurrentLimitedEditionCamoBundleCount(arg0)
		if 0.000000 >= registerVal1 then
		end
		return true
	end
	return false
end

function HasPlayerSeenZMHDPurchaseRewardPopup(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal1 then
		local registerVal2 = registerVal1.extraBools[7.000000]:get()
		if registerVal2 ~= 1.000000 then
		end
		return true
	end
	return false
end

function ShouldShowZMHDPurchaseRewardPopup(arg0)
	local registerVal1 = Engine.DvarBool(nil, "zmhd_purchase_reward_popup_enabled")
	registerVal1 = HasPlayerSeenZMHDPurchaseRewardPopup(arg0)
	if registerVal1 and not registerVal1 then
		local registerVal2 = Engine.TableLookup(nil, "gamedata/store/common/fpentitlement.csv", 5.000000, "dlc5", CoD.OrbisDurangoPCValue(8.000000, 7.000000, 9.000000))
		local registerVal3 = Engine.GetInventoryItemQuantity(arg0, registerVal2)
		if 0.000000 >= registerVal3 then
		end
		return true
	end
	return false
end

function ShouldShowZMDLCPurchaseRewardPopup(arg0, arg1)
	local registerVal3 = ShouldShowZMDLC1PurchaseRewardPopup(arg0)
	if registerVal3 then
		arg1.dlc1 = true
	end
	registerVal3 = ShouldShowZMDLC2PurchaseRewardPopup(arg0)
	if registerVal3 then
		arg1.dlc2 = true
	end
	registerVal3 = ShouldShowZMDLC3PurchaseRewardPopup(arg0)
	if registerVal3 then
		arg1.dlc3 = true
	end
	registerVal3 = ShouldShowZMDLC4PurchaseRewardPopup(arg0)
	if registerVal3 then
		arg1.dlc4 = true
	end
	return true
end

function ShouldShowZMDLC1PurchaseRewardPopup(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	local registerVal2 = registerVal1.extraBools[3.000000]:get()
	if registerVal1 and registerVal2 == 0.000000 then
		registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.ZMDLCProductIDs.PSNZMDLC1)
		registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.ZMDLCProductIDs.XB1ZMDLC1)
		if 0.000000 < registerVal2 or 0.000000 < registerVal2 then
			return true
		end
	end
	return false
end

function ShouldShowZMDLC2PurchaseRewardPopup(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	local registerVal2 = registerVal1.extraBools[4.000000]:get()
	if registerVal1 and registerVal2 == 0.000000 then
		registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.ZMDLCProductIDs.PSNZMDLC2)
		registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.ZMDLCProductIDs.XB1ZMDLC2)
		if 0.000000 < registerVal2 or 0.000000 < registerVal2 then
			return true
		end
	end
	return false
end

function ShouldShowZMDLC3PurchaseRewardPopup(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	local registerVal2 = registerVal1.extraBools[5.000000]:get()
	if registerVal1 and registerVal2 == 0.000000 then
		registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.ZMDLCProductIDs.PSNZMDLC3)
		registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.ZMDLCProductIDs.XB1ZMDLC3)
		if 0.000000 < registerVal2 or 0.000000 < registerVal2 then
			return true
		end
	end
	return false
end

function ShouldShowZMDLC4PurchaseRewardPopup(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	local registerVal2 = registerVal1.extraBools[6.000000]:get()
	if registerVal1 and registerVal2 == 0.000000 then
		registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.ZMDLCProductIDs.PSNZMDLC4)
		registerVal2 = Engine.GetInventoryItemQuantity(arg0, CoD.ZMDLCProductIDs.XB1ZMDLC4)
		if 0.000000 < registerVal2 or 0.000000 < registerVal2 then
			return true
		end
	end
	return false
end

function ShouldShowZMHDGobbleGumPopup(arg0, arg1)
	if arg1 == CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_PS4_INDEX_ID then
	else
		if arg1 == CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_INDEX_ID then
		end
	end
	local registerVal4 = Engine.DvarBool(nil, "zmhd_gobblegum_popup_xb1_enabled")
	registerVal4 = Engine.IsLootReady(arg0)
	if registerVal4 and registerVal4 then
		registerVal4 = Engine.GetInventoryItemQuantity(arg0, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_SKU_ID)
		if registerVal4 ~= 0.000000 then
		end
		return true
	end
	return false
end

function ShouldShowURMFirstTimePopup(arg0)
	return false
end

function ShouldShowDashboardMessage(arg0)
	local registerVal1 = IsDvarValueEqualTo("ui_zmPlayerMessage", "1")
	if not registerVal1 then
		return false
	end
	local registerVal2 = Dvar.zm_dash_stats_dashboard_ratio:exists()
	registerVal2 = Dvar.zm_dash_stats_dashboard_min_games:exists()
	if 32.000000 or not registerVal2 then
		return false
	end
	registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	if not registerVal2 then
		return false
	end
	local registerVal3 = registerVal2.dashboardingTrackingHistory.bufferFull:get()
	local registerVal4 = registerVal2.dashboardingTrackingHistory.currentDashboardingTrackingHistoryIndex:get()
	local registerVal5 = tonumber(Dvar.zm_dash_stats_dashboard_min_games:get())
	if registerVal3 == 0.000000 and registerVal4 < registerVal5 then
		return false
	end
	if registerVal3 == 0.000000 then
	end
	for index7=0.000000, (registerVal4 - 1.000000), 1.000000 do
		local registerVal11 = registerVal2.dashboardingTrackingHistory.quitType[index7]:get()
		if registerVal11 == CoDShared.zmDashboardStatsQuitTypes.dashboard then
		end
	end
	local registerVal8 = tonumber(Dvar.zm_dash_stats_dashboard_ratio:get())
	if registerVal8 > ((0.000000 + 1.000000) / ((registerVal4 - 1.000000) + 1.000000)) then
	end
	return true
end

function IsPC()
	return CoD.isPC
end

function IsOrbis()
	return CoD.isPS4
end

function IsDurango()
	return CoD.isDurango
end

function Mods_Enabled()
	return LuaUtils.Mods_Enabled()
end

function Mods_IsUsingMods()
	return LuaUtils.Mods_IsUsingMods()
end

function Mods_UsingModsInternalName()
	local registerVal0 = Mods_IsUsingMods()
	if registerVal0 then
		return LuaUtils.Mods_UsingModsInternalName()
	else
		return ""
	end
end

function Mods_UsingModsUgcName()
	local registerVal0 = Mods_IsUsingMods()
	if registerVal0 then
		return LuaUtils.Mods_UsingModsUgcName()
	else
		return ""
	end
end

function Mods_IsUsingUsermap()
	return LuaUtils.Mods_IsUsingUsermap()
end

function Mods_UsingUsermapUgcName()
	return LuaUtils.Mods_UsingUsermapUgcName()
end

function AmICarryingEnemyFlag(arg0)
	local registerVal1 = Engine.GetPlayerNameForClientNum(arg0, Engine.GetPredictedClientNum(arg0))
	if registerVal1 == "" then
		return false
	end
	local registerVal2 = CoD.IsShoutcaster(arg0)
	if registerVal2 then
		local registerVal4 = Engine.GetModelForController(arg0)
		registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal4, "CTF.enemyFlagCarrier"))
		if registerVal1 == registerVal2 then
			return true
		end
		local registerVal5 = Engine.GetModelForController(arg0)
		local registerVal3 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "CTF.friendlyFlagCarrier"))
		if registerVal1 ~= registerVal3 then
		end
		return true
	else
		registerVal3 = Engine.GetModelForController(arg0)
		registerVal2 = Engine.CreateModel(registerVal3, "CTF.enemyFlagCarrier")
		registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal2 == nil or registerVal1 ~= registerVal3 then
		end
		return true
	end
end

function AmICarryingBomb(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = CoD.SafeGetModelValue(registerVal2, "Demolition.defending")
	if registerVal1 == false then
		return true
	end
	registerVal2 = Engine.GetModelForController(arg0)
	registerVal1 = CoD.SafeGetModelValue(registerVal2, "SearchAndDestroy.defending")
	registerVal1 = Engine.GetGametypeSetting("multiBomb")
	registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_BOMB_TIMER_A)
	registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_BOMB_TIMER_B)
	if registerVal1 == false and registerVal1 == 1.000000 and not registerVal1 and not registerVal1 then
		return true
	end
	Engine.GetPredictedClientNum(arg0)
	return IsModelValueEqualTo(arg0, "hudItems.SDBombClient", Engine.GetPredictedClientNum)
end

function IsFractureCountMax(arg0)
	local registerVal1 = IsGameTypeEqualToString("clean")
	registerVal1 = IsModelValueEqualTo(arg0, "hudItems.cleanCarryCount", 10.000000)
	if registerVal1 and registerVal1 then
		return true
	end
end

function IsPropHuntProp(arg0)
	return Engine.IsPropHuntProp(arg0)
end

function HasNetworkConnection()
	local registerVal0 = Engine.CheckNetConnection()
	if registerVal0 ~= true then
	end
	return true
end

function IsPlayerSignedInToLive(arg0)
	local registerVal1 = Engine.IsSignedInToLive(arg0)
	if registerVal1 ~= true then
	end
	return true
end

function IsPlusAuthorized(arg0)
	local registerVal1 = Engine.IsPlusAuthorized(arg0)
	if registerVal1 ~= true then
	end
	return true
end

function IsPlayerConnectedToCodServers(arg0)
	local registerVal1 = Engine.IsDemonwareFetchingDone(arg0)
	if registerVal1 ~= true then
	end
	return true
end

function LobbyConnectedToDedicatedHost()
	return Engine.LobbyConnectedToDedicatedHost()
end

function IsDoubleXP(arg0)
	local registerVal1 = Mods_IsUsingMods()
	if registerVal1 then
		return false
	end
	registerVal1 = IsPublicOrLeagueGame()
	if not registerVal1 then
		registerVal1 = IsZombies()
		registerVal1 = IsLive()
		if arg0 or not registerVal1 then
			return false
		end
	end
	registerVal1 = Engine.GetXPScale(arg0)
	if 2.000000 > registerVal1 then
	end
	return true
end

function IsDoubleWeaponXP(arg0)
	local registerVal1 = Mods_IsUsingMods()
	if registerVal1 then
		return false
	end
	registerVal1 = IsPublicOrLeagueGame()
	if not registerVal1 then
		registerVal1 = IsZombies()
		registerVal1 = IsLive()
		if arg0 or not registerVal1 then
			registerVal1 = LobbyData.GetCurrentMenuTarget()
			if arg0 or registerVal1.kicker ~= "MPUI_PUBLIC_MATCH_LOBBY" then
				return false
			end
		end
	end
	registerVal1 = Engine.GetGunXPScale(arg0)
	if 2.000000 > registerVal1 then
	end
	return true
end

function IsDoubleLootXP(arg0)
	local registerVal1 = Mods_IsUsingMods()
	if registerVal1 then
		return false
	end
	registerVal1 = IsPublicOrLeagueGame()
	if not registerVal1 then
		return false
	end
	registerVal1 = Engine.GetCryptoScale(arg0)
	if not registerVal1 then
		return false
	end
	local registerVal2 = tonumber(registerVal1)
	if 2.000000 > registerVal2 then
	end
	return true
end

function IsLootSaleActive(arg0)
	local registerVal1 = AreCodPointsEnabled(arg0)
	if not registerVal1 then
		return false
	end
	registerVal1 = Dvar.loot_salePercentOff:get()
	if not registerVal1 then
		return false
	end
	local registerVal2 = tonumber(registerVal1)
	if 0.000000 >= registerVal2 then
	end
	return true
end

function IsBribeActive(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentBribeTitle()
	if registerVal1 == nil then
	end
	return true
end

function IsBundleActive(arg0)
	local registerVal1 = Dvar.loot_bundleActive:get()
	local registerVal2 = tonumber(registerVal1)
	if arg0 or registerVal2 <= 0.000000 then
		return false
	end
	registerVal2 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.BUNDLE)
	local registerVal3 = AreCodPointsEnabled(arg0)
	if registerVal2 <= 0.000000 and not registerVal3 then
		return false
	end
	return true
end

function IsHundredBundleActive(arg0)
	local registerVal1 = Dvar.loot_rare100_enabled:get()
	local registerVal2 = tonumber(registerVal1)
	if arg0 or registerVal2 <= 0.000000 then
		return false
	end
	return true
end

function IsRareBundle10for5Active(arg0)
	local registerVal1 = Dvar.rare_bundle_10for5_Active:get()
	local registerVal2 = tonumber(registerVal1)
	if arg0 or registerVal2 <= 0.000000 then
		return false
	end
	return true
end

function IsRare20BundleActive(arg0)
	local registerVal1 = Dvar.rare_20bundle_active:get()
	local registerVal2 = tonumber(registerVal1)
	if arg0 or registerVal2 <= 0.000000 then
		return false
	end
	return true
end

function IsRare20LDBundleActive(arg0)
	local registerVal1 = Dvar.rare_20ldbundle_active:get()
	local registerVal2 = tonumber(registerVal1)
	if arg0 or registerVal2 <= 0.000000 then
		return false
	end
	return true
end

function IsRare15BundleActive(arg0)
	local registerVal1 = Dvar.rare_15bundle_active:get()
	local registerVal2 = tonumber(registerVal1)
	if arg0 or registerVal2 <= 0.000000 then
		return false
	end
	return true
end

function HasHundredBundles(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentHundredBundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasRareBundle10for5s(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentRareBundle10for5Count(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasRare20Bundle(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentRare20BundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasRare20LDBundle(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentRare20LDBundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasRare15Bundle(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentRare15BundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasOutfit3Bundle(arg0)
	local registerVal1 = CoD.BlackMarketUtility.GetCurrentOutfit3BundleCount(arg0)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function IsBlackMarketItemHundredBundle(arg0, arg1)
	return IsElementPropertyValue(arg0, "supplyDropType", CoD.BlackMarketUtility.DropTypes.HUNDRED_BUNDLE)
end

function IsBlackMarketItemRareBundle10for5(arg0, arg1)
	return IsElementPropertyValue(arg0, "supplyDropType", CoD.BlackMarketUtility.DropTypes.RARE_BUNDLE_10FOR5)
end

function IsBlackMarketItemRare20Bundle(arg0, arg1)
	return IsElementPropertyValue(arg0, "supplyDropType", CoD.BlackMarketUtility.DropTypes.RARE_20BUNDLE)
end

function IsTrifectaBundleActive(arg0)
	local registerVal1 = Dvar.loot_trifectaActive:get()
	if not registerVal1 then
		return false
	end
	return true
end

function IsSixPackBundleActive(arg0)
	local registerVal1 = Engine.DvarBool(nil, "loot_sixPack_active")
	if not registerVal1 then
		registerVal1 = CoD.BlackMarketUtility.GetCurrentSixPackCommonBundleCount(arg0)
		if 0.000000 >= registerVal1 then
		end
	end
	return true
end

function IsSixPackBundleInCooldown(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal2 = registerVal1.playerstatslist.ARENA_MAX_RANK.statvalue:getAsString()
	local registerVal4 = Engine.GetServerUTCTimeStr()
	local registerVal3 = Engine.IsInRange(registerVal4, registerVal2, Engine.StringIntegerAddition(registerVal2, tostring(Engine.DvarInt(nil, "loot_sixPack_cooloffSeconds"))))
	if registerVal1 and registerVal3 then
		return true
	end
	registerVal2 = Engine.GetInventoryItem(arg0, Engine.DvarInt(nil, "loot_sixPack_consumable_id"))
	registerVal3 = tonumber(Engine.StringIntegerSubtraction(registerVal2.expireTimeStr, Engine.GetServerUTCTimeStr()))
	if registerVal2 and -CoD.BlackMarketUtility.CooldownTimerBufferSeconds <= registerVal3 then
		return true
	end
	return false
end

function IsDailyDoubleBundleActive(arg0)
	local registerVal1 = Engine.DvarBool(nil, "loot_dailyDouble_active")
	if not registerVal1 then
		registerVal1 = CoD.BlackMarketUtility.GetCurrentDailyDoubleRareBundleCount(arg0)
		if 0.000000 >= registerVal1 then
		end
	end
	return true
end

function IsDailyDoubleBundleInCooldown(arg0)
	local registerVal1 = Engine.GetInventoryItem(arg0, Engine.DvarInt(nil, "loot_dailyDouble_consumable_id"))
	local registerVal2 = tonumber(Engine.StringIntegerSubtraction(registerVal1.expireTimeStr, Engine.GetServerUTCTimeStr()))
	if registerVal1 and -CoD.BlackMarketUtility.CooldownTimerBufferSeconds <= registerVal2 then
		return true
	end
	return false
end

function IsBundleExperimentActive(arg0)
	local registerVal1 = Engine.DvarBool(nil, "loot_3pack_active")
	if not registerVal1 then
		registerVal1 = CoD.BlackMarketUtility.GetCurrentBundleExperimentRareBundleCount(arg0)
		if 0.000000 >= registerVal1 then
		end
	end
	return true
end

function IsNoDupesCrateActive(arg0)
	return Engine.DvarBool(nil, "loot_noDupeRare_active")
end

function IsNoDupesBundleActive(arg0)
	local registerVal1 = Engine.DvarBool(nil, "loot_noDupeRare20Bundle_active")
	if not registerVal1 then
		registerVal1 = CoD.BlackMarketUtility.GetCurrentNoDupesBundleRareBundleCount(arg0)
		if 0.000000 >= registerVal1 then
		end
	end
	return true
end

function IsNoDupesPromoActive(arg0)
	local registerVal1 = Engine.DvarBool(nil, "loot_noDupeRare20Bundle_active")
	if registerVal1 then
		registerVal1 = Engine.DvarBool(nil, "loot_nodupe_experiment_active")
	end
	return (not registerVal1)
end

function IsGrandSlamActive(arg0)
	return Engine.DvarBool(nil, "loot_grandSlam_active")
end

function IsKeysForVialsOfferActive(arg0)
	local registerVal1 = Dvar.loot_vialsFromKeysOffer:get()
	if registerVal1 then
		local registerVal2 = tonumber(registerVal1)
	end
	if 0.000000 >= registerVal2 then
	end
	return true
end

function ShouldHideOfflineNetworkPrompt(arg0)
	local registerVal1 = IsLive()
	if registerVal1 then
		return true
	end
	registerVal1 = ShouldShowOfflineNormalMessage(arg0)
	registerVal1 = ShouldShowOfflineVoluntaryMessage(arg0)
	if not arg0 or registerVal1 then
		return true
	end
	registerVal1 = PlayGoIsStillDownloading(arg0)
	if registerVal1 then
		return true
	end
	return false
end

function ShouldShowOfflineNormalMessage(arg0)
	local registerVal1 = IsLive()
	if not registerVal1 then
		registerVal1 = Engine.IsPlusAuthorized(arg0)
		if not registerVal1 then
			return true
		end
		registerVal1 = Engine.IsSignedInToLive(arg0)
		if not registerVal1 then
			return true
		end
	end
	return false
end

function ShouldShowOfflineVoluntaryMessage(arg0)
	local registerVal1 = IsLive()
	registerVal1 = Engine.IsPlusAuthorized(arg0)
	registerVal1 = Engine.IsSignedInToLive(arg0)
	registerVal1 = IsPlayerConnectedToCodServers(arg0)
	if not registerVal1 and registerVal1 and registerVal1 and registerVal1 then
		return true
	end
	return false
end

function ShouldShowOfflineNetworkErrorMessage(arg0)
	local registerVal1 = ShouldHideOfflineNetworkPrompt(arg0)
	return (not registerVal1)
end

function IsLobbyLocked()
	return LuaUtils.LobbyIsLocked()
end

function IsPlayerJoinable(arg0)
	if arg0.activeWidget ~= nil then
		local registerVal2 = arg0.activeWidget:getModel()
	else
		registerVal2 = arg0:getModel()
	end
	if registerVal2 then
		registerVal2 = Engine.GetModel(registerVal2, "isJoinable")
	end
	registerVal2 = Engine.GetModelValue(registerVal2)
	if arg0 or registerVal2 ~= 1.000000 then
	end
	return true
end

function ShouldLobbyListBeUp()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 ~= LobbyData.UITargets.UI_MODESELECT.id and registerVal1 == LobbyData.UITargets.UI_MPLOBBYMAIN.id or registerVal1 == LobbyData.UITargets.UI_ZMLOBBYONLINE.id then
	end
	return true
end

function ShouldShowQuickJoin()
	local registerVal0 = IsLobbyNetworkModeLAN()
	if registerVal0 then
		return false
	end
	registerVal0 = Engine.DvarInt(nil, "live_social_quickjoin")
	if registerVal0 == 0.000000 then
		return false
	end
	registerVal0 = Engine.GetQuickJoinPlayersCount(0.000000, Enum.PresenceFilter.PRESENCE_FILTER_ONLINE_AND_IN_TITLE)
	if registerVal0 == 0.000000 then
		return false
	end
	registerVal0 = ShouldLobbyListBeUp()
	return (not registerVal0)
end

function ShowHeaderKicker(arg0)
	if arg0.showHeaderKicker ~= true then
	end
	return true
end

function ShowHeaderIcon(arg0)
	if arg0.showHeaderIcon ~= true then
	end
	return true
end

function ShowHeaderEmblem(arg0)
	if arg0.showHeaderEmblem ~= true then
	end
	return true
end

function IsFlyoutMenuOpen(arg0, arg1)
	local registerVal2 = IsGlobalModelValueTrue(arg0, arg1, "GameSettingsFlyoutOpen")
	if not registerVal2 then
		registerVal2 = IsGlobalModelValueTrue(arg0, arg1, "BonusModesFlyoutOpen")
	end
	return registerVal2
end

function IsMP()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot.lobbyMainMode")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
		return true
	end
	return false
end

function IsCP()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot.lobbyMainMode")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
		return true
	end
	return false
end

function IsZM()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot.lobbyMainMode")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
		return true
	end
	return false
end

function IsCPMapVoteHidden(arg0)
	local registerVal1 = IsCampaign()
	if not registerVal1 then
		return false
	end
	registerVal1 = LobbyData.GetLobbyNav()
	if registerVal1 ~= LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME.id and registerVal1 ~= LobbyData.UITargets.UI_CPLOBBYLANCUSTOMGAME.id and registerVal1 ~= LobbyData.UITargets.UI_CP2LOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_CP2LOBBYONLINECUSTOMGAME.id and registerVal1 ~= LobbyData.UITargets.UI_CP2LOBBYLANCUSTOMGAME.id and registerVal1 ~= LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id and registerVal1 == LobbyData.UITargets.UI_DOALOBBYLANGAME.id or registerVal1 == LobbyData.UITargets.UI_DOALOBBYONLINE.id then
		return false
	end
	local registerVal2 = Engine.IsCPInProgress()
	return (not registerVal2)
end

function IsMPMapVoteHidden(arg0)
	local registerVal1 = IsMultiplayer()
	if not registerVal1 then
		return false
	end
	return false
end

function IsZMMapVoteHidden(arg0)
	local registerVal1 = IsZombies()
	if not registerVal1 then
		return false
	end
	registerVal1 = LobbyData.GetLobbyNav()
	if registerVal1 == LobbyData.UITargets.UI_ZMLOBBYONLINE.id then
		return true
	end
	return false
end

function PlayerIsReady(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if arg1 or not registerVal3 then
		return false
	end
	local registerVal4 = arg0:getModel()
	registerVal3 = Engine.GetModel(registerVal4, "isReady")
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 ~= true then
	end
	return true
end

function IsMainModeInvalid()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot.lobbyMainMode")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 == Enum.LobbyMainMode.LOBBY_MAINMODE_INVALID then
		return true
	end
	return false
end

function IsMainModeInvalidAndNotTheaterMode()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot.lobbyMainMode")
	registerVal1 = Engine.GetModelValue(registerVal0)
	registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_THEATER)
	if registerVal1 == Enum.LobbyMainMode.LOBBY_MAINMODE_INVALID and not registerVal1 then
		return true
	end
	return false
end

function ShouldHideLobbyMemberRank()
	local registerVal0 = IsLive()
	registerVal0 = IsMainModeInvalidAndNotTheaterMode()
	if  or registerVal0 then
		return true
	end
	local registerVal1 = Engine.GetGlobalModel()
	registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 ~= LobbyData.UITargets.UI_MODESELECT.id and registerVal1 ~= LobbyData.UITargets.UI_DOALOBBYONLINE.id and registerVal1 ~= LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_DOALOBBYLANGAME.id and registerVal1 ~= LobbyData.UITargets.UI_DOALOBBYLANCUSTOMGAME.id then
	end
	return true
end

function IsLive()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot.lobbyNetworkMode")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		return true
	end
	return false
end

function IsLAN()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot.lobbyNetworkMode")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
		return true
	end
	return false
end

function IsLocal()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot.lobbyNetworkMode")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LOCAL then
		return true
	end
	return false
end

function IsMPPublicMatchLobby()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = CoD.SafeGetModelValue(registerVal1, "lobbyRoot.lobbyNav")
	if registerVal0 ~= LobbyData.UITargets.UI_MPLOBBYONLINE.id and registerVal0 ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id then
	end
	return true
end

function IsCustomLobby()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 ~= LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME.id and registerVal1 ~= LobbyData.UITargets.UI_CP2LOBBYONLINECUSTOMGAME.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEMODGAME.id and registerVal1 ~= LobbyData.UITargets.UI_ZMLOBBYONLINECUSTOMGAME.id then
	end
	return true
end

function IsCustomMPLobby()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id then
	end
	return true
end

function IsPublicLobby()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 ~= LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_CP2LOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id then
	end
	return true
end

function IsGameLobby()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 then
		local registerVal2 = LobbyData:UITargetFromId(registerVal1)
		if registerVal2.lobbyType ~= Enum.LobbyType.LOBBY_TYPE_GAME then
		end
		return true
	end
end

function IsGameLobbyExcept(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.lobbyNav")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 then
		local registerVal3 = LobbyData:UITargetFromId(registerVal2)
		if registerVal3.name then
			if registerVal3.name == arg0 or registerVal3.lobbyType ~= Enum.LobbyType.LOBBY_TYPE_GAME then
			end
		end
		return true
	end
end

function ShouldShowCompetitiveSettingsSummary()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENA.id then
	end
	return true
end

function IsLobbyMode(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.lobbyNav")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 then
		local registerVal3 = LobbyData:UITargetFromId(registerVal2)
		if registerVal3.lobbyMode ~= arg0 then
		end
		return true
	end
end

function IsGameLobbyActive()
	return Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
end

function IsLobbyNetworkModeLAN()
	local registerVal0 = Engine.GetLobbyNetworkMode()
	if registerVal0 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
	end
	return true
end

function IsLobbyNetworkModeLive()
	local registerVal0 = Engine.GetLobbyNetworkMode()
	if registerVal0 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
	end
	return true
end

function IsLobbyHost()
	local registerVal0 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal0 then
		return Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	else
		registerVal0 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		if registerVal0 then
			return Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		end
	end
	return false
end

function IsLobbyPrivateHost()
	return Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
end

function IsLobbyGameHost()
	return Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
end

function ShouldShowPlaylistName()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id and registerVal1 ~= LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id then
	end
	return true
end

function IsLobbyWithTeamAssignment()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYLANGAME.id then
	end
	return true
end

function IsTeamAssignment(arg0)
	local registerVal1 = Engine.GetGametypeSetting("teamAssignment")
	if registerVal1 ~= arg0 then
	end
	return true
end

function CanMuteLobbyPlayerLAN(arg0, arg1)
	local registerVal2 = Engine.GetXUID64(arg0)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "xuid")
	if registerVal2 == registerVal3 then
	end
	return true
end

function IsPlayerMuted(arg0, arg1)
	local registerVal3 = arg1:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "xuid")
	if registerVal2 then
		registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal3 then
			return Engine.IsPlayerMuted(arg0, Enum.LobbyType.LOBBY_TYPE_GAME, registerVal2)
		else
			return Engine.IsPlayerMuted(arg0, Enum.LobbyType.LOBBY_TYPE_PRIVATE, registerVal2)
		end
	end
	return false
end

function IsAddControllerTextItem(arg0)
	return arg0.isAddControllerTextItem
end

function IsPlayerCountItem(arg0)
	return arg0.isPlayerCountItem
end

function IsSelfItem(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "isLocal")
	if registerVal2 ~= nil then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 ~= 1.000000 then
		end
		return true
	end
	return arg0.isSelfItem
end

function IsFriendItem(arg0)
	return arg0.isFriendItem
end

function IsGroupsItem(arg0)
	return arg0.isGroupsItem
end

function ShouldPlayLobbyFadeAnim(arg0, arg1)
	CoD.perController[arg1].returningFromBarracks = false
	if arg0.previousMenuName then
		if arg0.previousMenuName ~= "ModeSelect" then
		end
	end
	return true
end

function ShouldShowAddController(arg0, arg1, arg2)
	return CoD.LobbyBase.SplitscreenControllersAllowed()
end

function ShouldDisableEditCodCasterSettingsButton(arg0)
	return false
end

function ShouldShowEditCodCasterSettingsButton(arg0)
	local registerVal1 = Engine.GetGametypeSetting("allowspectating")
	if registerVal1 == 1.000000 then
		return true
	end
	return false
end

function ShouldShowDLCWidget(arg0, arg1)
	local registerVal2 = ShowPurchasableMap(arg0, arg1)
	if not registerVal2 then
		return false
	end
	local registerVal3 = Engine.GetDLCBits()
	registerVal2 = CoD.BitUtility.IsBitwiseAndNonZero(registerVal3, Engine.GetDLCBitForMapName(arg1))
	if registerVal2 then
		return false
	end
	return true
end

function ShouldSquareOpenStore(arg0, arg1, arg2)
	local registerVal4, registerVal5, registerVal6 = pairs(CoD.ProductFromBit[Enum.eModes.MODE_MULTIPLAYER].products)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = ShowPurchasableMapForDLCBit(arg1, index7)
		local registerVal10 = Engine.GetDLCBits()
		registerVal9 = CoD.BitUtility.IsBitwiseAndNonZero(registerVal10, index7)
		if registerVal9 and not registerVal9 then
		else
		end
	end
	if not true then
		return false
	end
	registerVal4 = IsMenuInState(arg0, "DefaultState")
	if registerVal4 then
		return true
	end
	if arg0[arg2] then
		registerVal4 = IsElementInState(arg0[arg2], "DefaultState")
	end
	return (not registerVal4)
end

function IsLANServerBrowserEmpty()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "serverListRoot")
	registerVal1 = Engine.GetModel(registerVal0, "count")
	local registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 == 0.000000 then
		return true
	end
	return false
end

function LANServerBrowserCheckFilterTest(arg0, arg1)
	local registerVal2 = Dvar.ui_execdemo_gamescom:get()
	if registerVal2 then
		return false
	end
	if arg0.currentFilter == arg1 then
		return true
	end
	if not arg0.currentFilter and arg1 == "all" then
		return true
	end
	return false
end

function LobbyHas4PlayersOrLess()
	local registerVal0 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 then
		registerVal1 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	end
	if registerVal1 > 4.000000 then
	end
	return true
end

function PregameActive()
	local registerVal0 = Engine.GetLobbyPregameState()
	if registerVal0 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_IDLE then
	end
	return true
end

function CharacterDraftActive()
	local registerVal0 = Engine.GetLobbyPregameState()
	if registerVal0 ~= Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CHARACTER_DRAFT then
	end
	return true
end

function ItemRestrictionVoteActive()
	local registerVal0 = Engine.GetLobbyPregameState()
	if registerVal0 ~= Enum.LobbyPregameState.LOBBY_PREGAME_STATE_ITEM_VOTE then
	end
	return true
end

function ItemRestrictionCACEditActive()
	local registerVal0 = Engine.GetLobbyPregameState()
	if registerVal0 ~= Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CAC_EDIT then
	end
	return true
end

function ItemRestrictionScorestreakEditActive()
	local registerVal0 = Engine.GetLobbyPregameState()
	if registerVal0 ~= Enum.LobbyPregameState.LOBBY_PREGAME_STATE_SCORESTREAK_EDIT then
	end
	return true
end

function PregameStateEqualToEnum(arg0)
	local registerVal1 = Engine.GetLobbyPregameState()
	if registerVal1 ~= arg0 then
	end
	return true
end

function CharacterLoadoutDrafted(arg0, arg1, arg2)
	local registerVal3 = CharacterDraftActive()
	if not registerVal3 then
		return false
	end
	registerVal3 = arg1:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetXUID64(arg2)
		local registerVal5 = Engine.GetTeamForXUID(registerVal4)
		local registerVal6 = Engine.GetModel(registerVal3, "itemIndex")
		local registerVal7 = Engine.GetModelValue(registerVal6)
		return Engine.CharacterLoadoutDrafted(registerVal7, registerVal5)
	end
	return false
end

function ItemIsBanned(arg0, arg1, arg2)
	local registerVal3 = CoD.CACUtility.GetItemInfoFromElement(arg2, arg1)
	if registerVal3 then
		local registerVal4 = CoD.CACUtility.ItemSlotBannedByBonuscard(registerVal3.loadoutSlot, registerVal3.itemIndex)
		if registerVal4 then
			return true
		end
		registerVal4 = CoD.CACUtility.ItemSlotBannedByBonuscard(registerVal3.weaponSlot, registerVal3.itemIndex)
		if registerVal4 then
			return true
		end
		if registerVal3.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM or registerVal3.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM_ATTACHMENT then
			registerVal4 = Engine.GetItemVote(registerVal3.itemIndex)
			if registerVal4 == Enum.VoteType.VOTE_TYPE_BAN then
				return true
			else
				registerVal4 = Engine.IsItemIndexRestricted(registerVal3.itemIndex, false)
				if registerVal4 then
					return true
				end
			end
		end
		if registerVal3.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT or registerVal3.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM_ATTACHMENT then
			registerVal4 = Engine.GetAttachmentVote(registerVal3.attachmentIndex)
			if registerVal4 == Enum.VoteType.VOTE_TYPE_BAN then
				return true
			end
		end
		if registerVal3.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM_ATTACHMENT then
			registerVal4 = Engine.GetItemAttachmentVote(registerVal3.itemIndex, registerVal3.attachmentIndex)
			if registerVal4 == Enum.VoteType.VOTE_TYPE_BAN then
				return true
			else
				registerVal4 = Engine.GetAttachmentRestrictionState(registerVal3.attachmentIndex, registerVal3.itemIndex, false)
				if registerVal4 == Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_RESTRICTED then
					return true
				end
			end
		end
		if registerVal3.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT_GROUP then
			registerVal4 = Engine.GetAttachmentGroupVote(registerVal3.itemGroup, registerVal3.attachmentIndex)
			if registerVal4 ~= Enum.VoteType.VOTE_TYPE_BAN then
			end
			return true
		end
	end
	return false
end

function ItemIsBannedLobby(arg0, arg1, arg2)
	local registerVal3 = ItemIsBanned(arg0, arg1, arg2)
	if registerVal3 then
		registerVal3 = LobbyData.GetLobbyNav()
		if registerVal3 == LobbyData.UITargets.UI_MPLOBBYONLINE.id then
		end
		return true
	end
	return false
end

function ItemIsProtected(arg0, arg1, arg2)
	local registerVal3 = CoD.CACUtility.GetItemInfoFromElement(arg2, arg1)
	if registerVal3 then
		if registerVal3.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM then
			local registerVal4 = Engine.GetItemVote(registerVal3.itemIndex)
			if registerVal4 ~= Enum.VoteType.VOTE_TYPE_PROTECT then
			end
			return true
		else
			if registerVal3.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT then
				registerVal4 = Engine.GetAttachmentVote(registerVal3.attachmentIndex)
				if registerVal4 ~= Enum.VoteType.VOTE_TYPE_PROTECT then
				end
				return true
			else
				if registerVal3.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM_ATTACHMENT then
					registerVal4 = Engine.GetItemAttachmentVote(registerVal3.itemIndex, registerVal3.attachmentIndex)
					if registerVal4 ~= Enum.VoteType.VOTE_TYPE_PROTECT then
					end
					return true
				else
					if registerVal3.itemType == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT_GROUP then
						registerVal4 = Engine.GetAttachmentGroupVote(registerVal3.itemGroup, registerVal3.attachmentIndex)
						if registerVal4 ~= Enum.VoteType.VOTE_TYPE_PROTECT then
						end
						return true
					end
				end
			end
		end
	end
	return false
end

function ItemIsInRestrictionState(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.CACUtility.GetItemInfoFromElement(arg2, arg1)
	if registerVal4 then
		if registerVal4.restrictionState ~= arg3 then
		end
		return true
	end
	return false
end

function ClassContainsRestrictedItems(arg0, arg1, arg2)
	local registerVal3 = arg1:getParent()
	registerVal3 = arg1:getParent()
	if arg1 and registerVal3 and registerVal3.id == "BuyExtraSlotsBtn" then
		return false
	end
	registerVal3 = arg1:getModel(arg2, "classNum")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		return CoD.CACUtility.ClassContainsRestrictedItems(arg2, registerVal4)
	end
	return false
end

function ClassContainsRestrictedItemsLobby(arg0, arg1, arg2)
	local registerVal3 = ClassContainsRestrictedItems(arg0, arg1, arg2)
	if registerVal3 then
		registerVal3 = LobbyData.GetLobbyNav()
		if registerVal3 == LobbyData.UITargets.UI_MPLOBBYONLINE.id then
		end
		return true
	end
	return false
end

function AnyClassContainsRestrictedItems(arg0, arg1, arg2)
	return CoD.CACUtility.AnyClassContainsRestrictedItems(arg2)
end

function AnyEquippedScorestreaksBanned(arg0, arg1, arg2)
	return CoD.CACUtility.AnyEquippedScorestreaksBanned(arg2)
end

function AnyCACContentBanned(arg0, arg1, arg2)
	return CoD.CACUtility.AnyCACItemsBanned()
end

function AnyScorestreaksBanned(arg0, arg1, arg2)
	return CoD.CACUtility.AnyStreaksBanned()
end

function AnySpecialistBanned()
	return CoD.CACUtility.AnySpecialistBanned()
end

function EquippedSpecialistBanned(arg0)
	return CoD.CACUtility.EquippedSpecialistBanned(arg0)
end

function CanAffordRaidPurchase(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "cost"))
	local registerVal4 = Engine.GetModelValue(arg0:getModel(arg2, "bank"))
	if registerVal3 > registerVal4 then
	end
	return true
end

function RaidPurchaseItemDisabled(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "id"))
	local registerVal4 = arg0:getModel(arg2, ("disable_" .. registerVal3))
	if registerVal4 == nil then
	end
	return true
end

function RaidPurchaseAllowedForParent(arg0, arg1, arg2)
	local registerVal5 = arg1:getParent()
	local registerVal3 = CanAffordRaidPurchase(arg0, registerVal5, arg2)
	if registerVal3 then
		registerVal5 = arg1:getParent()
		registerVal3 = RaidPurchaseItemDisabled(arg0, registerVal5, arg2)
	end
	return (not registerVal3)
end

function RaidPurchaseAllowed(arg0, arg1, arg2)
	local registerVal3 = CanAffordRaidPurchase(arg0, arg1, arg2)
	if registerVal3 then
		registerVal3 = RaidPurchaseItemDisabled(arg0, arg1, arg2)
	end
	return (not registerVal3)
end

function IsStoreAvailable()
	if not CoD.isZombie then
		local registerVal0 = Engine.IsFFOTDFetched()
	else
	end
	return true
end

function IsPlayerDead(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "clientNum")
	if registerVal2 then
		Engine.GetModelValue(registerVal2)
		return Engine.IsPlayerDead(arg1, Engine.GetModelValue)
	end
	return false
end

function IsPlayerInLastStand(arg0, arg1)
	local registerVal2 = arg0:getParent()
	local registerVal3 = registerVal2:getModel(arg1, "clientNum")
	if registerVal3 then
		Engine.GetModelValue(registerVal3)
		return Engine.IsPlayerInLastStand(arg1, Engine.GetModelValue)
	end
	return false
end

function IsSplitscreenPlayAvailable()
	local registerVal0 = AllowGuestSplitScreenOnline()
	registerVal0 = Engine.GetLobbyNetworkMode()
	if registerVal0 == false and registerVal0 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
		return false
	end
	return CoD.LobbyBase.SplitscreenPlayAvailable()
end

function IsSplitscreenLobbyRoomAvailable()
	return CoD.LobbyBase.SplitscreenLobbyRoomAvailable()
end

function IsSplitscreenPlayerSignedIn()
	local registerVal0 = Engine.GetUsedControllerCount()
	if 1.000000 >= registerVal0 then
	end
	return true
end

function IsThereRoomForAnotherSplitscreenPlayer()
	local registerVal0 = Engine.GetUsedControllerCount()
	local registerVal1 = Dvar.lobby_maxLocalPlayers:get()
	if registerVal0 >= registerVal1 then
	end
	return true
end

function IsWaitingForSignInToPlaySplitscreen()
	local registerVal0 = Engine.GetNonUsedControllerCount()
	if 0.000000 >= registerVal0 then
	end
	return true
end

function IsSplitscreenAndInGame(arg0)
	return Engine.IsSplitscreen()
end

function IsBGBUnlockedForOtherSplitscreenPlayers(arg0, arg1, arg2)
	local registerVal4 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal4 then
	end
	registerVal4 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal5 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	for index4=0.000000, (registerVal5 - 1.000000), 1.000000 do
		local registerVal9 = arg1:getModel()
		local registerVal8 = CoD.SafeGetModelValue(registerVal9, "dlcIndex")
		if CoD.isZombie and 1.000000 < registerVal4 and registerVal8 then
			if registerVal8 < CoD.CONTENT_DLC1_INDEX then
			else
				registerVal9 = Engine.HasEntitlementByOwnership(index4, ("dlc" .. (registerVal8 - CoD.CONTENT_DLCZM0_INDEX)))
				if index4 ~= arg2 and registerVal9 then
					return true
				end
			end
		end
	end
	return false
end

function GamepadsConnectedAny()
	local registerVal0 = Engine.GamepadsConnectedCount()
	if 0.000000 >= registerVal0 then
	end
	return true
end

function GamepadsConnectedIsActive(arg0)
	if CoD.useController then
		local registerVal1 = Engine.GamepadsConnectedIsActive(arg0)
	end
	return registerVal1
end

function HasPerksInAnySlot(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk0_count"))
	if registerVal2 ~= nil and 0.000000 < registerVal2 then
		return true
	end
	local registerVal3 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk1_count"))
	if registerVal3 ~= nil and 0.000000 < registerVal3 then
		return true
	end
	registerVal3 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk2_count"))
	if registerVal3 ~= nil and 0.000000 < registerVal3 then
		return true
	end
	return false
end

function HasPerksInSlot0(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk0_count"))
	if registerVal2 == nil or 0.000000 >= registerVal2 then
	end
	return true
end

function HasOnePerkInSlot0(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk0_count"))
	if registerVal2 == nil or registerVal2 ~= 1.000000 then
	end
	return true
end

function HasTwoPerksInSlot0(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk0_count"))
	if registerVal2 == nil or registerVal2 ~= 2.000000 then
	end
	return true
end

function HasPerksInSlot1(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk1_count"))
	if registerVal2 == nil or 0.000000 >= registerVal2 then
	end
	return true
end

function HasOnePerkInSlot1(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk1_count"))
	if registerVal2 == nil or registerVal2 ~= 1.000000 then
	end
	return true
end

function HasTwoPerksInSlot1(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk1_count"))
	if registerVal2 == nil or registerVal2 ~= 2.000000 then
	end
	return true
end

function HasPerksInSlot2(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk2_count"))
	if registerVal2 == nil or 0.000000 >= registerVal2 then
	end
	return true
end

function HasOnePerkInSlot2(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk2_count"))
	if registerVal2 == nil or registerVal2 ~= 1.000000 then
	end
	return true
end

function HasTwoPerksInSlot2(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "perks.perk2_count"))
	if registerVal2 == nil or registerVal2 ~= 2.000000 then
	end
	return true
end

function IsGameTypeEqualToString(arg0)
	local registerVal1 = Engine.DvarString(nil, "g_gametype")
	if registerVal1 == nil or registerVal1 ~= arg0 then
	end
	return true
end

function ShouldUseClassicHud(arg0)
	return Dvar.tu11_enableClassicMode:get()
end

function HideSpecialistAbilityContainer(arg0)
	local registerVal1 = IsGameTypeEqualToString("gun")
	registerVal1 = IsGameTypeEqualToString("prop")
	if not registerVal1 and not registerVal1 then
		registerVal1 = ShouldUseClassicHud(arg0)
	end
	return registerVal1
end

function IsTeamBasedGame(arg0)
	local registerVal1 = IsInGame()
	if registerVal1 then
		return CoDShared.IsGametypeTeamBased()
	else
		Engine.GetCurrentGameType()
		return CoDShared.IsGametypeTeamBased(Engine.GetCurrentGameType)
	end
end

function IsTeamBasedOrInfect(arg0)
	local registerVal1 = IsInGame()
	if registerVal1 then
		return CoDShared.IsGametypeTeamBased(nil, true)
	else
		local registerVal2 = Engine.GetCurrentGameType()
		return CoDShared.IsGametypeTeamBased(registerVal2, true)
	end
end

function HasMoreThanNPlayersOnATeam(arg0)
	local registerVal1 = tonumber(arg0)
	local registerVal2 = Engine.GetTeams()
	local registerVal4, registerVal5, registerVal6 = pairs(registerVal2.clientTeams)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if not {}[value8.team] then
			{}[value8.team] = {}
		end
		table.insert({}[value8.team], value8)
	end
	registerVal4 = IsTeamBasedGame(nil)
	if registerVal4 then
		if {}[Enum.team_t.TEAM_ALLIES] and registerVal1 < #{}[Enum.team_t.TEAM_ALLIES] then
			return true
		else
			return true
			if {}[Enum.team_t.TEAM_AXIS] and registerVal1 < #{}[Enum.team_t.TEAM_AXIS] and {}[Enum.team_t.TEAM_FREE] and registerVal1 < #{}[Enum.team_t.TEAM_FREE] then
				return true
			end
		end
	end
	return false
end

function CanSwitchTeams()
	local registerVal0 = Engine.GetGametypeSetting("teamAssignment")
	if registerVal0 ~= LuaEnums.TEAM_ASSIGNMENT.AUTO then
	end
	local registerVal1 = Engine.GetUsedControllerCount()
	if 1.000000 >= registerVal1 then
	end
	local registerVal2 = Engine.GetGametypeSetting("allowspectating")
	if registerVal2 == 1.000000 then
	else
	end
	local registerVal3 = CoDShared.IsGametypeTeamBased()
	if registerVal3 and not true then
		return true
	end
	if true then
		return true
	end
	return false
end

function IsSpectatingInvalidPlayer(arg0)
	local registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	if registerVal1 then
		return false
	end
	local registerVal2 = Engine.GetModelForController(arg0)
	registerVal1 = CoD.SafeGetModelValue(registerVal2, "deadSpectator.playerIndex")
	registerVal2 = Engine.GetClientNum(arg0)
	if registerVal1 ~= registerVal2 then
	end
	return true
end

function IsPublicOrLeagueGame(arg0)
	local registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_PUBLIC_MATCH)
	if not registerVal1 then
		registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
	end
	return registerVal1
end

function IsBombBasedGameMode()
	local registerVal0 = Engine.DvarString(nil, "g_gametype")
	if registerVal0 ~= nil then
		if registerVal0 ~= "sd" and registerVal0 ~= "sr" and registerVal0 ~= "dem" then
		end
	end
	return true
end

function IsGametypeSettingsValue(arg0, arg1)
	local registerVal2 = Engine.GetGametypeSetting(arg0)
	if registerVal2 ~= arg1 then
	end
	return true
end

function CustomClassesEnabled()
	local registerVal0 = Engine.GetGametypeSetting("disableCAC")
	if registerVal0 ~= 0.000000 then
	end
	return true
end

function IsGametypeTeambased()
	return CoDShared.IsGametypeTeamBased()
end

function IsGametypeItemSettingDefault(arg0)
	local registerVal1 = arg0:getModel()
	local registerVal2 = arg0:getParent()
	local registerVal3 = Engine.GetModel(registerVal1, "itemIndex")
	local registerVal4 = Engine.GetModel(registerVal1, "attachmentIndex")
	local registerVal5 = Engine.GetModel(registerVal1, "weaponIndex")
	local registerVal6 = Engine.GetModel(registerVal1, "setting")
	local registerVal7 = Engine.GetModel(registerVal1, "tabWidget")
	local registerVal8 = Engine.GetModel(registerVal1, "weaponGroups")
	if registerVal3 then
		local registerVal11 = Engine.GetModelValue(registerVal3)
		local registerVal12 = Engine.GetItemRestrictionState(registerVal11, true)
		registerVal12 = Engine.GetItemRestrictionState(registerVal11)
		if registerVal12 ~= registerVal12 then
		end
		return true
	else
		if registerVal6 then
			registerVal11 = Engine.GetModelValue(registerVal6)
			registerVal12 = Engine.GetGametypeSetting(registerVal11, true)
			registerVal12 = Engine.GetGametypeSetting(registerVal11)
			if registerVal12 ~= registerVal12 then
			end
			return true
		else
			if registerVal4 and registerVal5 then
				registerVal11 = Engine.GetModelValue(registerVal4)
				registerVal12 = Engine.GetModelValue(registerVal5)
				local registerVal13 = Engine.GetAttachmentRestrictionState(registerVal11, registerVal12, true)
				registerVal13 = Engine.GetAttachmentRestrictionState(registerVal11, registerVal12, false)
				if registerVal13 ~= registerVal13 then
				end
				return true
			else
				if registerVal4 and not registerVal8 then
					registerVal11 = Engine.GetModelValue(registerVal4)
					registerVal12 = Engine.AttachmentRestrictionStateChangedForAnyWeapon(registerVal11)
					return (not registerVal12)
				else
					registerVal11 = arg0:getParent()
					if registerVal11 and registerVal7 then
						registerVal11 = Engine.GetModelValue(registerVal7)
						registerVal13 = LUI.startswith(registerVal11, "CoD.")
						if registerVal13 then
							registerVal13 = string.sub(registerVal11, 5.000000)
						end
						return CoD.GameSettingsUtility.UpdateBreadCrumbNodes(registerVal13)
					else
						registerVal11 = arg0:getParent()
						registerVal11 = arg0:getParent()
						registerVal13, registerVal14, registerVal15 = pairs(registerVal11.actionParam)
						for index16,value17 in registerVal13, registerVal14, registerVal15 do
							local registerVal18 = CoD.GameSettingsUtility.UpdateBreadCrumbNodes(value17)
							if CoD.GameSettingsUtility[value17] and not registerVal18 then
								return false
							end
						end
					end
				end
			end
		end
	end
	return true
end

function IsGametypeItemSettingDefaultNew(arg0, arg1)
	if arg0[arg1] == nil then
		return false
	end
	if arg0[arg1] and arg0[arg1].activeWidget and arg0[arg1].activeWidget.showChangeIndicator then
		local registerVal4 = arg0[arg1].activeWidget:showChangeIndicator(arg0[arg1], arg0)
		return (not registerVal4)
	end
	return IsGametypeItemSettingDefault(arg0)
end

function ShouldBootUpHUD(arg0)
	local registerVal1 = Engine.IsVisibilityBitSet(0.000000, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
	if not registerVal1 then
		return false
	end
	return (not arg0.hasBooted)
end

function DamageFeedbackInStage(arg0, arg1)
	local registerVal2 = IsDemoPlaying()
	if registerVal2 then
		registerVal2 = Engine.IsVisibilityBitSet(0.000000, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		registerVal2 = Engine.IsVisibilityBitSet(0.000000, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		if not arg1 or registerVal2 then
			return false
		end
	end
	local registerVal3 = arg0:getModel()
	registerVal2 = CoD.SafeGetModelValue(registerVal3, "damageFeedbackState")
	if registerVal2 then
		if (registerVal2 & Enum.DamageFeedbackState.DAMAGE_FEEDBACK_STATE_MASK) ~= arg1 then
		end
		return true
	end
	return false
end

function DamageFeedbackFlagSet(arg0, arg1)
	local registerVal2 = IsDemoPlaying()
	if registerVal2 then
		registerVal2 = Engine.IsVisibilityBitSet(0.000000, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
		registerVal2 = Engine.IsVisibilityBitSet(0.000000, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
		if not arg1 or registerVal2 then
			return false
		end
	end
	local registerVal3 = arg0:getModel()
	registerVal2 = CoD.SafeGetModelValue(registerVal3, "damageFeedbackState")
	if registerVal2 then
		return CoD.BitUtility.IsBitSet((registerVal2 >> Enum.DamageFeedbackState.DAMAGE_FEEDBACK_STATE_NEXT_UNUSED_BIT), arg1)
	end
	return false
end

function IsWeaponClipGreaterThanOrEqualTo(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal2, "currentWeapon.clipMaxAmmo")
	if registerVal3 == nil then
		return false
	end
	local registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil then
		return false
	end
	if arg1 > registerVal4 then
	end
	return true
end

function IsWeaponClipPercentageLessThan(arg0, arg1)
	local registerVal2 = DataSources.CurrentWeapon.getModel(arg0)
	local registerVal3 = CoD.SafeGetModelValue(registerVal2, "clipMaxAmmo")
	local registerVal4 = CoD.SafeGetModelValue(registerVal2, "ammoInClip")
	if registerVal2 and registerVal3 and registerVal4 then
		if (registerVal4 / registerVal3) >= arg1 then
		end
		return true
	end
	return false
end

function WeaponUsesAmmo(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "currentWeapon.weapon")
	if registerVal2 == nil then
		return false
	end
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == nil then
		return false
	end
	local registerVal4 = IsZombies()
	if registerVal4 then
		registerVal4 = Engine.IsUnlimitedAmmoWeapon(registerVal3)
		registerVal4 = CoD.SafeGetModelValue(registerVal1, "currentWeapon.equippedWeaponReference")
		registerVal4 = CoD.SafeGetModelValue(registerVal1, "currentWeapon.equippedWeaponReference")
		registerVal4 = CoD.SafeGetModelValue(registerVal1, "currentWeapon.equippedWeaponReference")
		registerVal4 = CoD.SafeGetModelValue(registerVal1, "currentWeapon.equippedWeaponReference")
		registerVal4 = CoD.SafeGetModelValue(registerVal1, "currentWeapon.equippedWeaponReference")
		if not registerVal4 and registerVal4 ~= "hero_gravityspikes_melee_zm" and registerVal4 ~= "dragon_gauntlet_flamethrower_zm" and registerVal4 ~= "equip_gasmask_zm" and registerVal4 == "lower_equip_gasmask_zm" or registerVal4 == "equip_hacker_zm" then
			return false
		end
	end
	registerVal4 = Engine.IsWeaponType(registerVal3, "melee")
	registerVal4 = Engine.IsWeaponType(registerVal3, "riotshield")
	if not registerVal4 and not registerVal4 then
		registerVal4 = Engine.IsWeaponType(registerVal3, "grenade")
	else
	end
	return true
end

function WeaponHasAmmo(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "currentWeapon.ammoStock")
	local registerVal3 = Engine.GetModel(registerVal1, "currentWeapon.ammoInClip")
	if registerVal2 == nil or registerVal3 == nil then
		return false
	end
	local registerVal4 = Engine.GetModelValue(registerVal2)
	local registerVal5 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or registerVal5 == nil then
		return false
	end
	if 0.000000 >= (registerVal4 + registerVal5) then
	end
	return true
end

function IsInPrematchPeriod()
	local registerVal0 = Engine.GetGametypeSetting("prematchperiod")
	local registerVal1 = Engine.CurrentGameTime()
	if registerVal1 >= (registerVal0 * 1000.000000) then
	end
	return true
end

function IsLowAmmoClip(arg0)
	local registerVal1 = Engine.IsAmmoClipLow(arg0)
	if registerVal1 then
		return registerVal1
	else
		return false
	end
end

function IsLowAmmoDWClip(arg0)
	local registerVal1 = Engine.IsDWAmmoClipLow(arg0)
	if registerVal1 then
		return registerVal1
	else
		return false
	end
end

function IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
	local registerVal2 = Engine.getHeldGadgetSlotForLoadoutGadget(arg1, Enum.loadoutGadgetType_e.LOADOUT_GADGETS_HERO_WEAPON)
	local registerVal3 = IsModelValueTrue(arg1, "playerAbilities.playerGadget3.isInUse")
	if not registerVal3 then
		return false
	end
	registerVal3 = Engine.isValidGadgetSlot(registerVal2)
	registerVal3 = Engine.IsGadgetCurrentWeapon(arg1, registerVal2)
	if registerVal3 and registerVal3 then
		arg0.wasHeroWeaponActivated = true
		return true
	end
	return false
end

function IsHeroWeaponInUse(arg0, arg1)
	local registerVal2 = Engine.getHeldGadgetSlotForLoadoutGadget(arg1, Enum.loadoutGadgetType_e.LOADOUT_GADGETS_HERO_WEAPON)
	local registerVal3 = Engine.isValidGadgetSlot(registerVal2)
	if registerVal3 then
		registerVal3 = Engine.IsGadgetCurrentWeapon(arg1, registerVal2)
		registerVal3 = IsModelValueGreaterThan(arg1, "playerAbilities.playerGadget3.powerRatio", 0.000000)
		if arg1 or not registerVal3 then
			registerVal3 = IsModelValueTrue(arg1, "playerAbilities.playerGadget3.isInUse")
			if registerVal3 then
				arg0.wasHeroWeaponActivated = true
				return true
			end
		end
		return false
	end
	return false
end

function IsHeroWeaponOrGadgetInUse(arg0, arg1)
	local registerVal2 = IsHeroWeaponInUse(arg0, arg1)
	if registerVal2 then
		return true
	end
	registerVal2 = Engine.getHeldGadgetSlotForLoadoutGadget(arg1, Enum.loadoutGadgetType_e.LOADOUT_GADGETS_OFFHAND_SPECIAL)
	local registerVal3 = Engine.isValidGadgetSlot(registerVal2)
	if not registerVal3 then
		return false
	end
	return IsModelValueTrue(arg1, "playerAbilities.playerGadget3.isInUse")
end

function IsHeroWeaponOrGadgetInUseOrContextualWeaponActive(arg0, arg1)
	local registerVal2 = IsHeroWeaponOrGadgetInUse(arg0, arg1)
	if registerVal2 then
		return true
	end
	registerVal2 = Engine.getHeldGadgetSlotForLoadoutGadget(arg1, Enum.loadoutGadgetType_e.LOADOUT_GADGETS_HERO_WEAPON)
	local registerVal3 = Engine.isValidGadgetSlot(registerVal2)
	registerVal3 = Engine.IsGadgetContextualWeaponActive(arg1, registerVal2)
	if registerVal3 and registerVal3 then
		arg0.wasHeroWeaponActivated = true
		return true
	end
	return false
end

function IsHeroWeaponThiefGadget(arg0)
	return IsModelValueEqualTo(arg0, "playerAbilities.playerGadget3.name", "WEAPON_GADGET_THIEF")
end

function UseHeroWeaponAmmoCounter(arg0, arg1)
	local registerVal2 = IsHeroWeaponInUse(arg0, arg1)
	if registerVal2 then
		registerVal2 = IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.name", "WEAPON_HERO_ARMBLADE")
		if not registerVal2 then
			registerVal2 = IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.name", "WEAPON_HERO_GRAVITYSPIKES")
		else
		end
	end
	return true
end

function IsHeroGadgetInUse(arg0, arg1)
	return IsModelValueTrue(arg1, "playerAbilities.playerGadget3.isInUse")
end

function IsHeroWeaponSpeedBurst(arg0, arg1)
	return IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.name", "WEAPON_GADGET_SPEED_BURST")
end

function HasPerk(arg0, arg1)
	local registerVal2 = IsModelValueEqualTo(arg0, "playerAbilities.playerGadget3.name", "WEAPON_GADGET_COMBAT_EFFICIENCY")
	if registerVal2 then
		registerVal2 = IsModelValueEqualTo(arg0, "playerAbilities.playerGadget3.isInUse", true)
	end
	return registerVal2
end

function IsHeroWeaponOrGadgetEnergyAtLeast(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModelValue(Engine.CreateModel(registerVal2, "playerAbilities.playerGadget3.powerRatio"))
	if registerVal3 == nil then
		return false
	end
	if arg1 > registerVal3 then
	end
	return true
end

function IsBlackMarketSpecialistRouletteActive(arg0)
	local registerVal1 = IsModelValueEqualTo(arg0, "playerAbilities.playerGadget3.rouletteStatus", 1.000000)
	if not registerVal1 then
		registerVal1 = IsModelValueEqualTo(arg0, "playerAbilities.playerGadget3.rouletteStatus", 2.000000)
	end
	return registerVal1
end

function IsBlackMarketSpecialistRouletteInRespin(arg0)
	local registerVal1 = IsModelValueEqualTo(arg0, "playerAbilities.playerGadget3.rouletteStatus", 1.000000)
	if not registerVal1 then
		registerVal1 = IsModelValueEqualTo(arg0, "playerAbilities.playerGadget3.rouletteStatus", 3.000000)
	end
	return registerVal1
end

function IsBlackMarketSpecialistAnyAbilityActive(arg0)
	local registerVal1 = IsBlackMarketSpecialistRouletteActive(arg0)
	if not registerVal1 then
		registerVal1 = IsBlackMarketSpecialistThiefActive(arg0)
	end
	return registerVal1
end

function IsBlackMarketSpecialistThiefActive(arg0)
	local registerVal1 = IsModelValueEqualTo(arg0, "playerAbilities.playerGadget3.thiefStatus", 1.000000)
	if not registerVal1 then
		registerVal1 = IsModelValueEqualTo(arg0, "playerAbilities.playerGadget3.thiefStatus", 2.000000)
	end
	return registerVal1
end

function IsBlackMarketSpecialistThiefCoinActive(arg0)
	local registerVal1 = IsModelValueEqualTo(arg0, "playerAbilities.playerGadget3.thiefWeaponStatus", 0.000000)
	return (not registerVal1)
end

function IsCurrentWeaponReference(arg0, arg1)
	local registerVal4 = CoD.gameMode:lower()
	registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, "currentWeapon.equippedWeaponReference")
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or registerVal4 ~= (arg1 .. "_" .. registerVal4) then
	end
	return true
end

function IsCurrentWeaponMeleeSecondary(arg0)
	local registerVal2 = CoD.gameMode:lower()
	local registerVal3 = Engine.GetModelForController(arg0)
	registerVal2 = Engine.GetModel(registerVal3, "currentWeapon.equippedWeaponReference")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == nil then
		return false
	end
	if registerVal3 == ("knife_loadout" .. ("_" .. registerVal2)) then
		return true
	end
	local registerVal4, registerVal5, registerVal6 = ipairs(CoD.CACUtility.LootMeleeWeapons)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if registerVal3 == (value8 .. ("_" .. registerVal2)) then
			return true
		end
	end
	return false
end

function IsCurrentViewmodelWeaponName(arg0, arg1)
	local registerVal4 = CoD.gameMode:lower()
	registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, "currentWeapon.viewmodelWeaponName")
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or registerVal4 ~= (arg1 .. "_" .. registerVal4) then
	end
	return true
end

function IsCurrentViewmodelWeaponGamemodeHiddenAmmo(arg0)
	local registerVal1 = {}
	registerVal1 = {"ball", "briefcase_bomb", "briefcase_bomb_defuse"}
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "currentWeapon.viewmodelWeaponName")
	registerVal3, registerVal4, registerVal5 = ipairs(registerVal1)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal10 = CoD.gameMode:lower()
		if registerVal2 == (value7 .. "_" .. registerVal10) then
			return true
		end
	end
	return false
end

function IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
	local registerVal2 = Engine.getHeldGadgetSlotForLoadoutGadget(arg1, Enum.loadoutGadgetType_e.LOADOUT_GADGETS_HERO_WEAPON)
	local registerVal3 = Engine.getHeldGadgetSlotForLoadoutGadget(arg1, Enum.loadoutGadgetType_e.LOADOUT_GADGETS_OFFHAND_SPECIAL)
	local registerVal4 = Engine.isValidGadgetSlot(registerVal2)
	if registerVal2 == -1.000000 or not registerVal4 then
		registerVal4 = Engine.isValidGadgetSlot(registerVal3)
		if registerVal3 ~= -1.000000 and registerVal4 then
			registerVal4 = Engine.GetModelForController(arg1)
			local registerVal5 = Engine.GetModelValue(Engine.CreateModel(registerVal4, "playerAbilities.playerGadget3.ammo"))
			if registerVal5 == nil or registerVal5 < 1.000000 then
				arg0.wasHeroWeaponActivated = false
				return true
			end
		end
	end
	return false
end

function WasHeroWeaponGadgetActivated(arg0)
	if arg0.wasHeroWeaponActivated ~= nil then
	else
	end
	return true
end

function isHeroVersion_2_0(arg0, arg1)
	return Engine.isHeroVersion_2_0(arg0, arg1)
end

function IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
	local registerVal2 = IsHeroWeaponGadgetAvailable(arg0, arg1)
	if registerVal2 then
		return true
	end
	registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModelValue(Engine.CreateModel(registerVal2, "playerAbilities.playerGadget3.powerRatio"))
	if registerVal3 == nil or 1.000000 > registerVal3 then
	end
	return true
end

function IsSpecialGadgetAvailable(arg0)
	local registerVal1 = Engine.getHeldGadgetSlotForLoadoutGadget(arg0, Enum.loadoutGadgetType_e.LOADOUT_GADGETS_OFFHAND_SPECIAL)
	local registerVal2 = Engine.isValidGadgetSlot(registerVal1)
	if registerVal2 then
		return Engine.IsGadgetAvailable(arg0, registerVal1)
	end
	return false
end

function IsHeroAbilityWeapon(arg0)
	local registerVal1 = Engine.getHeldGadgetSlotForLoadoutGadget(arg0, Enum.loadoutGadgetType_e.LOADOUT_GADGETS_HERO_WEAPON)
	return Engine.isValidGadgetSlot(registerVal1)
end

function IsHeroAbilityGadget(arg0)
	local registerVal1 = Engine.getHeldGadgetSlotForLoadoutGadget(arg0, Enum.loadoutGadgetType_e.LOADOUT_GADGETS_OFFHAND_SPECIAL)
	return Engine.isValidGadgetSlot(registerVal1)
end

function IsHeroWeaponGadgetAvailable(arg0, arg1)
	local registerVal2 = Engine.getHeldGadgetSlotForLoadoutGadget(arg1, Enum.loadoutGadgetType_e.LOADOUT_GADGETS_HERO_WEAPON)
	local registerVal3 = Engine.isValidGadgetSlot(registerVal2)
	if registerVal3 then
		registerVal3 = Engine.IsGadgetAvailable(arg1, registerVal2)
		if not registerVal3 then
			return false
		end
		registerVal3 = isHeroVersion_2_0(arg1, registerVal2)
		if registerVal3 then
			return Engine.IsGadgetReady(arg1, registerVal2)
		else
			registerVal3 = IsHeroWeaponGadgetAmmoEmpty(arg0, arg1)
			return (not registerVal3)
		end
	end
	return false
end

function IsHeroWeaponGadgetActive(arg0)
	local registerVal1 = Engine.getHeldGadgetSlotForLoadoutGadget(arg0, Enum.loadoutGadgetType_e.LOADOUT_GADGETS_HERO_WEAPON)
	local registerVal2 = Engine.isValidGadgetSlot(registerVal1)
	if registerVal2 then
		return Engine.isGadgetActive(arg0, registerVal1)
	end
	return false
end

function PulseNoLethal(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "hudItems.pulseNoLethal"))
	if registerVal2 == nil or registerVal2 <= 0.000000 then
		return false
	end
	if CoD.CACUtility then
	end
	local registerVal4 = Engine.GetClassItem(arg0, CoD.CACUtility.SelectedClassIndex[arg0], "primarygadget")
	if CoD.CACUtility.SelectedClassIndex[arg0] ~= nil and registerVal4 == CoD.CACUtility.EmptyItemIndex then
		return false
	end
	return true
end

function PulseNoTactical(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "hudItems.pulseNoTactical"))
	if registerVal2 == nil or registerVal2 <= 0.000000 then
		return false
	end
	if CoD.CACUtility then
	end
	local registerVal4 = Engine.GetClassItem(arg0, CoD.CACUtility.SelectedClassIndex[arg0], "secondarygadget")
	if CoD.CACUtility.SelectedClassIndex[arg0] ~= nil and registerVal4 == CoD.CACUtility.EmptyItemIndex then
		return false
	end
	return true
end

function PulseNoAmmo(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "hudItems.pulseNoAmmo"))
	if registerVal2 == nil or 0.000000 >= registerVal2 then
	end
	return true
end

function IsStickyImageActive(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "hudItems.stickyImage"))
	if registerVal2 == "" or registerVal2 == "blacktransparent" then
	end
	return true
end

function IsShockImageBottomActive(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "hudItems.shockImageBottom"))
	if registerVal2 == "" or registerVal2 == "blacktransparent" then
	end
	return true
end

function IsShockImageRightActive(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "hudItems.shockImageRight"))
	if registerVal2 == "" or registerVal2 == "blacktransparent" then
	end
	return true
end

function IsShockImageLeftActive(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "hudItems.shockImageLeft"))
	if registerVal2 == "" or registerVal2 == "blacktransparent" then
	end
	return true
end

function IsShockImageTopActive(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "hudItems.shockImageTop"))
	if registerVal2 == "" or registerVal2 == "blacktransparent" then
	end
	return true
end

function IsArmorOverlayActive(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "hudItems.armorOverlay"))
	if registerVal2 == "" or registerVal2 == "blacktransparent" then
	end
	return true
end

function IsAnyKillstreakInRangeAvailable(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, "killstreaks")
	if not registerVal3 then
		return false
	end
	for index4=arg1, arg2, 1.000000 do
		local registerVal8 = Engine.GetModel(registerVal3, ("killstreak" .. index4 .. ".rewardAmmo"))
		local registerVal9 = Engine.GetModelValue(registerVal8)
		if registerVal9 ~= nil and 0.000000 < registerVal9 then
			return true
		end
	end
	return false
end

function HigherKillstreakHasAmmo(arg0, arg1)
	local registerVal2 = arg1:getParent()
	if registerVal2.gridInfoTable == nil then
		return false
	end
	if 3.000000 <= (3.000000 - registerVal2.gridInfoTable.zeroBasedIndex) then
		return false
	end
	return IsAnyKillstreakInRangeAvailable(arg0, ((3.000000 - registerVal2.gridInfoTable.zeroBasedIndex) + 1.000000), 4.000000)
end

function LowerKillstreakHasAmmo(arg0, arg1)
	local registerVal2 = arg1:getParent()
	if registerVal2.gridInfoTable == nil then
		return false
	end
	if (3.000000 - registerVal2.gridInfoTable.zeroBasedIndex) == 0.000000 then
		return false
	end
	return IsAnyKillstreakInRangeAvailable(arg0, 0.000000, ((3.000000 - registerVal2.gridInfoTable.zeroBasedIndex) - 1.000000))
end

function EarningTowardsThisKillstreak(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "rewardMomentum")
	local registerVal4 = arg1:getModel()
	registerVal3 = Engine.GetModel(registerVal4, "momentumCost")
	local registerVal5 = Engine.GetModelForController(arg0)
	registerVal4 = Engine.GetModel(registerVal5, "killstreaks")
	if arg1.gridInfoTable == nil then
		return false
	end
	if registerVal3 and arg1 or not registerVal4 then
		return false
	end
	registerVal5 = Engine.GetModelValue(registerVal3)
	local registerVal6 = Engine.GetModelValue(registerVal2)
	if registerVal6 ~= nil and registerVal5 == nil or registerVal5 < registerVal6 then
		return false
	end
	for index8=0.000000, (3.000000 - arg1.gridInfoTable.zeroBasedIndex), 1.000000 do
		local registerVal12 = CoD.SafeGetModelValue(registerVal4, ("killstreak" .. index8 .. ".momentumCost"))
		if registerVal12 and registerVal6 < registerVal12 then
			if index8 ~= (3.000000 - arg1.gridInfoTable.zeroBasedIndex) then
			end
			return true
		end
	end
	return false
end

function IsAtLeastHalfGameScore(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal2, "gameScore.scoreLimit")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
	end
	registerVal4 = Engine.GetModel(registerVal2, arg1)
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal4 ~= nil and registerVal5 == nil or registerVal4 > (registerVal5 * 2.000000) then
	end
	return true
end

function IsCursorHintActive(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "hudItems.showCursorHint"))
	if registerVal2 == nil or registerVal2 ~= true then
	end
	return true
end

function IsGameTypeDOA()
	return CoDShared.IsGameTypeDOA()
end

function HideScoreMeterDueToGameType()
	local registerVal0 = Engine.DvarString(nil, "g_gametype")
	if registerVal0 ~= nil then
		if registerVal0 ~= "ctf" and registerVal0 ~= "dem" and registerVal0 ~= "sd" then
		end
	end
	return true
end

function HideCyberCoreWidget(arg0)
	local registerVal1 = Engine.GetCurrentMap()
	registerVal1 = Engine.IsCampaignModeZombies()
	if registerVal1 == "cp_mi_eth_prologue" and not registerVal1 then
		registerVal1 = Engine.GetPlayerStats(arg0)
		registerVal1 = registerVal1.highestMapReached:get()
		if registerVal1 ~= 0.000000 then
		end
		return true
	else
		return false
	end
end

function IsMapName(arg0)
	local registerVal1 = Engine.GetCurrentMap()
	if registerVal1 ~= arg0 then
	end
	return true
end

function IsAnyMapName(...)
	local registerVal0 = {}
	local registerVal1 = select("#", ...)
	registerVal0.n = registerVal1
	registerVal0 = {}
	registerVal1, registerVal2, registerVal3 = ipairs(registerVal0)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		local registerVal6 = Engine.GetCurrentMap()
		if registerVal6 == value5 then
			return true
		end
	end
end

function IsClipAmmoOnesDigitEqualTo(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "ammoInClip")
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	if (registerVal4 % 10.000000) ~= arg2 then
	end
	return true
end

function IsClipAmmoTensDigitEqualTo(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "ammoInClip")
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	if (((registerVal4 % 100.000000) - (registerVal4 % 10.000000)) / 10.000000) ~= arg2 then
	end
	return true
end

function HasRoundLimit(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal1, "gameScore.roundLimit")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if 0.000000 >= registerVal3 then
	end
	return true
end

function IsSingleRound(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal1, "gameScore.roundLimit")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function IsZombieRoundOnesDigitEqualTo(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "roundsPlayed")
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	local registerVal5 = Engine.GetGametypeSetting("startRound")
	if ((registerVal4 - registerVal5) % 10.000000) ~= arg2 then
	end
	return true
end

function IsZombieRoundTensDigitEqualTo(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "roundsPlayed")
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	local registerVal5 = Engine.GetGametypeSetting("startRound")
	if ((((registerVal4 - registerVal5) % 100.000000) - ((registerVal4 - registerVal5) % 10.000000)) / 10.000000) ~= arg2 then
	end
	return true
end

function IsZombieRoundHundredsDigitEqualTo(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "roundsPlayed")
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	local registerVal5 = Engine.GetGametypeSetting("startRound")
	if ((((registerVal4 - registerVal5) % 1000.000000) - ((registerVal4 - registerVal5) % 100.000000)) / 100.000000) ~= arg2 then
	end
	return true
end

function IsParentListInFocus(arg0)
	if arg0.gridInfoTable and arg0.gridInfoTable.parentGrid and arg0.gridInfoTable.parentGrid.hasListFocus then
		return true
	end
	return false
end

function IsDisabled(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "disabledFunction")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 and registerVal3 then
		local registerVal4 = registerVal3()
		arg0.disabled = registerVal4
		return registerVal3()
	end
	registerVal3 = arg0:getModel(arg1, "disabled")
	if registerVal3 then
		registerVal4 = Engine.GetModelValue(registerVal3)
		arg0.disabled = registerVal4
	end
	return arg0.disabled
end

function IsEnabledByGametypeSetting(arg0, arg1)
	if arg0.enabledWithGametypeSetting ~= nil then
		local registerVal2 = Engine.GetGametypeSetting(arg0.enabledWithGametypeSetting)
		if registerVal2 ~= 1.000000 then
		end
		return true
	end
	return true
end

function IsSelected(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "selected")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		arg0.selected = registerVal3
	end
	return arg0.selected
end

function IsStartMenuItemEquipped(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal2, "itemIndex")
	if registerVal2 and registerVal3 then
		if CoD.perController[arg1].startMenu_equippedIndex ~= registerVal3 then
		end
		return true
	end
	return false
end

function IsFirstItem(arg0)
	if arg0.isFirstItem then
		local registerVal1 = arg0:isFirstItem()
	end
	return registerVal1
end

function ShouldDisplayButton(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "tabIcon")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 == "" then
		end
		return true
	end
	return false
end

function IsHeroLocked(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal2, "disabled")
	if registerVal3 then
		return true
	end
	return false
end

function CanSelectContractHeroItem(arg0, arg1)
	local registerVal2 = IsHeroLocked(arg0, arg1)
	if registerVal2 then
		return false
	end
	registerVal2 = IsSelfModelValueTrue(arg0, arg1, "isActivated")
	if not registerVal2 and Dvar.ui_enableAllHeroes then
		registerVal2 = Dvar.ui_enableAllHeroes:get()
	end
	return registerVal2
end

function AllowLootHero(arg0)
	local registerVal1 = IsInPermanentUnlockMenu(arg0)
	if registerVal1 then
		return false
	end
	registerVal1 = IsFirstTimeSetup(arg0, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal1 then
		return false
	end
	registerVal1 = IsLive()
	registerVal1 = Dvar.ui_enableAllHeroes:exists()
	registerVal1 = Dvar.ui_enableAllHeroes:get()
	if registerVal1 and registerVal1 and registerVal1 then
		return true
	end
	registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if arg0 or not registerVal1.TenthSpecialistContract then
		return false
	end
	local registerVal2 = registerVal1.blackjack_contract_count:get()
	registerVal2 = registerVal1.TenthSpecialistContract.active:get()
	if registerVal2 <= 0.000000 and registerVal2 ~= 1.000000 then
		return false
	end
	registerVal2 = IsMPPublicMatchLobby()
	if not registerVal2 then
		return false
	end
	return true
end

function IsCurrentBribeForSpecialist(arg0)
	local registerVal1 = Dvar.loot_bribeCrate_dwid:get()
	if CoD.BlackMarketUtility.BribeSpecialistIndices[registerVal1] then
		local registerVal4 = arg0:getModel()
		local registerVal3 = CoD.SafeGetModelValue(registerVal4, "heroIndex")
		if CoD.BlackMarketUtility.BribeSpecialistIndices[registerVal1] ~= registerVal3 then
		end
	end
	return true
end

function AllowSpecialistBribeWidget(arg0)
	local registerVal1 = LobbyData.GetLobbyNav()
	if registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINE.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENA.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id then
	end
	return true
end

function IsDoubleDailyContract(arg0)
	local registerVal1 = Dvar.daily_contract_cryptokey_reward_count:get()
	if registerVal1 == 10.000000 then
	end
	return true
end

function IsDoubleDailyContract_NoValidation(arg0)
	local registerVal1 = Dvar.daily_contract_cryptokey_reward_count:get()
	if registerVal1 == 10.000000 then
	end
	return true
end

function CanSelfWidgetSelectContractHeroItem(arg0, arg1)
	return CanSelectContractHeroItem(arg0, arg1)
end

function CanSelfWidgetStartNewHeroContract(arg0, arg1)
	return IsSelfModelValueGreaterThan(arg0, arg1, "contractsRemaining", 0.000000)
end

function IsHeroWeaponAbilityNotAvailable(arg0, arg1)
	local registerVal2 = IsCACItemPurchased(arg0, arg1)
	local registerVal3 = IsFirstTimeSetup(arg1, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal4 = IsLive()
	if registerVal4 then
	end
	return registerVal3
end

function IsEdittingHeroOption(arg0)
	if arg0.currentMode == CoD.CCUtility.PersonalizeHeroData.Modes.ExploringOptions then
	end
	return true
end

function IsExploringTaunts(arg0)
	if arg0.currentMode ~= CoD.CCUtility.TauntsData.Modes.ExploringTaunts then
	end
	return true
end

function IsEdittingTaunt(arg0)
	if arg0.currentMode ~= CoD.CCUtility.TauntsData.Modes.EdittingTaunt then
	end
	return true
end

function IsEdittingGestureOption(arg0)
	if arg0.currentMode ~= CoD.CCUtility.TauntsData.Modes.EdittingGesture then
	end
	return true
end

function CurrentPlayerHasGesture(arg0, arg1)
	local registerVal2 = Engine.CurrentSessionMode()
	local registerVal3 = Engine.GetEquippedHero(arg0, registerVal2)
	local registerVal4 = Engine.GetSelectedGestureForHero(arg0, registerVal2, registerVal3, arg1)
	local registerVal5 = Engine.GetHeroBundleInfo(registerVal2, registerVal3)
	local registerVal6 = CoD.CCUtility.TauntsData.GetGestureXAnim(registerVal5, arg1, registerVal4)
	if registerVal6 == "" then
	end
	return true
end

function ShouldShowPromptForGesture(arg0, arg1)
	local registerVal2 = IsSplitscreenAndInGame(arg0)
	if registerVal2 then
		return true
	end
	return CurrentPlayerHasGesture(arg0, arg1)
end

function CurrentPlayerHasAnyGesture(arg0)
	local registerVal1 = Engine.CurrentSessionMode()
	local registerVal2 = Engine.GetEquippedHero(arg0, registerVal1)
	local registerVal3 = Engine.GetHeroBundleInfo(registerVal1, registerVal2)
	for index4=0.000000, (Enum.CharacterGestureTypes.GESTURE_TYPE_COUNT - 1.000000), 1.000000 do
		local registerVal8 = Engine.GetSelectedGestureForHero(arg0, registerVal1, registerVal2, index4)
		local registerVal9 = CoD.CCUtility.TauntsData.GetGestureXAnim(registerVal3, index4, registerVal8)
		if registerVal9 ~= "" then
			return true
		end
	end
	return false
end

function ShouldShowGesturePrompt(arg0)
	local registerVal1 = IsSplitscreenAndInGame(arg0)
	if registerVal1 then
		return true
	end
	return CurrentPlayerHasAnyGesture(arg0)
end

function IsHeroColorOption(arg0)
	return arg0.isColorOption
end

function FirstTimeSetup_IsActive(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "firstTimeFlowState")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 == CoD.CCUtility.FirstTimeFlowState.None then
	end
	return true
end

function FirstTimeSetup_Overview(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "firstTimeFlowState")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 ~= CoD.CCUtility.FirstTimeFlowState.Overview then
	end
	return true
end

function FirstTimeSetup_ChangedCharacter(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "firstTimeFlowState")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 ~= CoD.CCUtility.FirstTimeFlowState.SelectionChanged then
	end
	return true
end

function FirstTimeSetup_Complete(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "firstTimeFlowState")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 ~= CoD.CCUtility.FirstTimeFlowState.Complete then
	end
	return true
end

function IsCurrentSelectedHeroOption(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "optionIndex")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex then
			if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
				if registerVal3 ~= (CoD.CCUtility.Heroes.selectionTable.bodyColors[CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex] + 1.000000) then
				end
				return true
			else
				if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
					if registerVal3 ~= (CoD.CCUtility.Heroes.selectionTable.helmetColors[CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex] + 1.000000) then
					end
					return true
				else
					if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
						if registerVal3 ~= (CoD.CCUtility.Heroes.selectionTable.selectedBody + 1.000000) then
						end
						return true
					else
						if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
							if registerVal3 ~= (CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000) then
							end
							return true
						end
					end
				end
			end
		end
	end
	return false
end

function IsCurrentLockedHeroOption(arg0, arg1)
	local registerVal2 = arg0:getModel()
	if registerVal2 then
		local registerVal3 = CoD.SafeGetModelValue(registerVal2, "isLocked")
		if registerVal3 then
			return true
		end
		registerVal3 = CoD.SafeGetModelValue(registerVal2, "isBMClassified")
		if registerVal3 then
			return true
		end
	end
	return false
end

function IsCurrentNewHeroOption(arg0, arg1, arg2)
	local registerVal3 = IsCampaign()
	registerVal3 = IsMultiplayer()
	if not arg1 or registerVal3 then
		registerVal3 = IsProgressionEnabled(arg2)
		registerVal3 = arg1:getModel(arg2, "optionIndex")
		local registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal3 and registerVal3 and CoD.CCUtility.Heroes.HeroIndexForEdits ~= nil and CoD.CCUtility.PersonalizeHeroData.EdittingArea ~= nil then
			return Engine.IsCharacterCustomizationItemNew(arg2, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea, registerVal4)
		end
	end
	return false
end

function ShouldHideItemHeroOption(arg0, arg1)
	local registerVal2 = IsMultiplayer()
	registerVal2 = IsProgressionEnabled(arg1)
	if arg1 or not registerVal2 then
		return true
	end
	local registerVal3 = arg0:getModel()
	registerVal2 = CoD.SafeGetModelValue(registerVal3, "isColorOption")
	if registerVal2 == true then
		return true
	end
	registerVal2 = arg0:getModel()
	if registerVal2 then
		registerVal3 = CoD.SafeGetModelValue(registerVal2, "optionIndex")
		if registerVal3 == 1.000000 then
			return true
		end
		local registerVal4 = IsSelfModelValueTrue(arg0, arg1, "isClassified")
		registerVal4 = IsSelfModelValueNilOrZero(arg0, arg1, "isBMClassified")
		if not arg1 or not registerVal4 then
			return true
		end
	end
	return false
end

function IsCurrentTauntNew(arg0, arg1, arg2)
	if arg1.index and arg1.xanim and arg1.tauntType then
		return Engine.IsTauntNew(arg2, Enum.eModes.MODE_MULTIPLAYER, CoD.CCUtility.Heroes.HeroIndexForEdits, arg1.tauntType, arg1.index, arg1.xanim)
	end
	return false
end

function IsCurrentGestureNew(arg0, arg1, arg2)
	if arg1.index and arg1.xanim and arg1.heroName and arg1.gestureType and arg1.xanim ~= "" then
		return Engine.IsGestureNew(arg2, Enum.eModes.MODE_MULTIPLAYER, CoD.CCUtility.Heroes.HeroIndexForEdits, arg1.gestureType, arg1.index, (arg1.xanim .. ";" .. arg1.heroName))
	end
	return false
end

function AreAnyTauntsGesturesInListNew(arg0, arg1, arg2)
	local registerVal4 = Engine.GetHeroBundleInfo(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)
	if arg0.tauntType then
		local registerVal7 = CoD.CCUtility.TauntsData.GetTauntCount(registerVal4, arg0.tauntType)
		for index6=0.000000, (registerVal7 - 1.000000), 1.000000 do
			local registerVal10 = CoD.CCUtility.TauntsData.GetTauntXAnim(registerVal4, arg0.tauntType, index6)
			local registerVal11 = Engine.IsTauntNew(arg2, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, arg0.tauntType, index6, registerVal10)
			if registerVal11 then
				return true
			end
		end
	else
		if arg0.gestureType then
			local registerVal6 = Engine.GetHeroList(CoD.CCUtility.customizationMode)
			local registerVal8 = CoD.CCUtility.TauntsData.GetGestureCount(registerVal4, arg0.gestureType)
			for index7=0.000000, (registerVal8 - 1.000000), 1.000000 do
				registerVal11 = CoD.CCUtility.TauntsData.GetGestureXAnim(registerVal4, arg0.gestureType, index7)
				local registerVal12 = Engine.IsGestureNew(arg2, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, arg0.gestureType, index7, (registerVal11 .. ";" .. registerVal6[(CoD.CCUtility.Heroes.HeroIndexForEdits + 1.000000)].assetName))
				if registerVal11 ~= "" and registerVal12 then
					return true
				end
			end
		end
	end
	return false
end

function IsObjectiveActive(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "status")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 ~= "current" and registerVal3 ~= "active" then
		end
		return true
	end
	return false
end

function IsObjectiveComplete(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "status")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 ~= "done" then
		end
		return true
	end
	return false
end

function IsObjectiveFailed(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "status")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 ~= "failed" then
		end
		return true
	end
	return false
end

function IsObjectiveDescription(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "status")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 ~= "description" then
		end
		return true
	end
	return false
end

function IsObjectiveHidden(arg0, arg1)
	local registerVal2 = arg0:getModel()
	if registerVal2 == nil then
		return true
	end
	local registerVal3 = arg0:getModel()
	registerVal2 = Engine.GetModel(registerVal3, "state")
	registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = Engine.GetPredictedClientNum(arg1)
	if registerVal3 == nil or registerVal3 == CoD.OBJECTIVESTATE_INVISIBLE then
		return true
	end
	local registerVal6 = arg0:getModel()
	local registerVal5 = Engine.GetModel(registerVal6, "clientUseMask")
	registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal6 == nil or registerVal6 == 0.000000 then
		return false
	end
	local registerVal7 = Engine.GetPredictedClientNum(arg1)
	if (registerVal6 & (1.000000 << registerVal7)) ~= 0.000000 then
	end
	return true
end

function IsObjectiveRequirementLabelHidden(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "interactivePrompt.activeObjectiveID")
	if registerVal2 then
		registerVal3 = Engine.GetModelValue(registerVal2)
	end
	if registerVal3 and arg0.objIndex == registerVal3 then
		if arg0.recenter then
			arg0:recenter()
		end
		return false
	end
	return true
end

function IsListSelectionMode(arg0, arg1)
	if arg0.currentMode ~= arg1 then
	end
	return true
end

function IsPaintJobCustomItem(arg0, arg1)
	local registerVal2 = DataSources.WeaponOptions.getCurrentFilterItem()
	local registerVal3 = arg0:getModel(arg1, "ref")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal2 == "paintjob" and registerVal3 and registerVal4 == "paintshop_1" then
		return true
	end
	return false
end

function IsPaintJobCustomListButton(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "type")
	local registerVal3 = arg0:getModel(arg1, "paintjobSlot")
	local registerVal4 = arg0:getModel(arg1, "paintjobIndex")
	local registerVal5 = Engine.GetModelValue(registerVal2)
	local registerVal6 = Engine.GetModelValue(registerVal3)
	local registerVal7 = Engine.GetModelValue(registerVal4)
	if registerVal2 and registerVal3 and registerVal4 and registerVal5 == "paintjob" and registerVal6 ~= Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT and registerVal7 ~= Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX then
		return true
	end
	return false
end

function IsCPHeroWeapon(arg0, arg1)
	if CoD.isCampaign and arg0.currentActiveSlot then
		if arg0.currentActiveSlot == CoD.CACUtility.loadoutSlotNames.primaryWeapon or arg0.currentActiveSlot == CoD.CACUtility.loadoutSlotNames.secondaryWeapon then
			local registerVal5 = CoD.GetClassItem(arg1, CoD.perController[arg1].classNum, arg0.currentActiveSlot)
			local registerVal6 = CoD.CACUtility.IsCPHeroWeapon(registerVal5)
			if registerVal6 then
				return true
			end
		end
	end
	return false
end

function IsToggleVariantEnabled()
	local registerVal0 = Dvar.gunsmith_enable_toggle_variant:exists()
	if registerVal0 then
		registerVal0 = Dvar.gunsmith_enable_toggle_variant:get()
	end
	return registerVal0
end

function HasGlobalHintText(arg0)
	return DataSources.PerController.hasHintText(arg0)
end

function HasHintText(arg0)
	local registerVal1 = arg0:getModel()
	local registerVal2 = Engine.GetModel(registerVal1, "hintText")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = Engine.Localize("")
	if registerVal1 and registerVal2 and registerVal3 ~= "" and registerVal3 ~= registerVal4 then
		return true
	end
	return false
end

function PDV_SlotHasCollectible(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "collectibleSlot")
	local registerVal3 = Engine.GetCollectibleInBunkSlot(arg1, Engine.GetModelValue(registerVal2))
	if registerVal2 and registerVal3 ~= nil then
		return true
	end
	return false
end

function IsGunsmithItemWeaponOptionLocked(arg0, arg1, arg2)
	local registerVal3 = IsLive()
	if not registerVal3 then
		registerVal3 = GetUnlockSessionMode(arg1, arg2)
		if registerVal3 == Enum.eModes.MODE_MULTIPLAYER or registerVal3 == Enum.eModes.MODE_ZOMBIES then
			return false
		end
	end
	registerVal3 = arg1:getModel(arg2, "weaponOptionSubIndex")
	local registerVal4 = arg1:getModel(arg2, "weaponOptionType")
	local registerVal5 = CoD.GetCustomization(arg2, "weapon_index")
	if registerVal3 and registerVal4 then
		local registerVal6 = Engine.GetModelValue(registerVal3)
		local registerVal7 = Engine.GetModelValue(registerVal4)
		local registerVal8 = Engine.GetWeaponOptionGroupIndex(registerVal6, registerVal7)
		local registerVal10 = Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, "attachment1")
		if registerVal7 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE and CoD.perController[arg2].gunsmithVariantModel and registerVal10 then
			local registerVal11 = Engine.GetModelValue(registerVal10)
		end
		if Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO == registerVal7 or Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE == registerVal7 then
			if registerVal6 == 0.000000 then
				return false
			else
			else
				if registerVal7 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_INVALID then
					if registerVal6 == 0.000000 then
						return false
					end
					local registerVal9 = Engine.GetAttachmentRef(registerVal11, registerVal6)
					registerVal10, registerVal11, registerVal12 = ipairs(CoD.CACUtility.mpPrestigeAttachments)
					if registerVal9 ==  then
						local registerVal15 = CoD.CACUtility.GetWeaponPLevel(arg2, registerVal11)
						if registerVal15 >=  then
						end
						return true
					end
					return false
				end
			end
		end
		return Engine.IsItemOptionLocked(arg2, registerVal11, registerVal8)
	end
	return false
end

function Gunsmith_OnState(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "param")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.GetModel(registerVal5, registerVal3)
	if registerVal2 and registerVal3 and registerVal4 then
		registerVal5 = Engine.GetModelValue(registerVal4)
		if registerVal5 ~= 1.000000 then
		end
		return true
	end
end

function IsGunsmithCurrentACVEquipped(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelValue(CoD.perController[arg2].gunsmithAttachmentVariantModel)
	local registerVal5 = arg1:getModel(arg2, "variantIndex")
	if registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal5)
		if registerVal4 ~= registerVal6 then
		end
		return true
	end
	return false
end

function IsGunsmithReticleAllowedForOptic(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, arg3)
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = Engine.GetAttachmentRefByIndex(registerVal6)
	if CoD.perController[arg2].gunsmithVariantModel and arg3 and registerVal5 and CoD.CACUtility.EmptyItemIndex < registerVal6 then
		return CoD.CACUtility.attachmentsWithCustReticle[registerVal7]
	end
	return false
end

function Gunsmith_DoesACVExistForAttachment(arg0, arg1, arg2, arg3)
	local registerVal5 = CoD.SafeGetModelValue(CoD.perController[arg2].gunsmithVariantModel, "weaponIndex")
	local registerVal6 = CoD.SafeGetModelValue(CoD.perController[arg2].gunsmithVariantModel, arg3)
	local registerVal7 = Engine.GetItemRef(registerVal5, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal8 = Engine.GetAttachmentCosmeticVariantCountForAttachment(registerVal7, registerVal6)
	if registerVal5 and registerVal6 and registerVal8 and 0.000000 < registerVal8 then
		return true
	end
	return false
end

function Gunsmith_DisablePaintjobVariantSlot(arg0, arg1)
	local registerVal2 = Paintjobs_IsEnabled(arg0, arg1)
	registerVal2 = IsUserContentRestricted(arg1)
	if arg1 or registerVal2 then
		return true
	end
	return false
end

function ShouldHidePaintJobOptionInZM(arg0, arg1, arg2)
	local registerVal3 = IsLive()
	registerVal3 = IsUserContentRestricted(arg2)
	if arg1 or registerVal3 then
		return true
	end
	registerVal3 = CoD.CraftUtility.GetWeaponGroupName(arg2)
	if registerVal3 == "weapon_knife" then
		return true
	end
	return false
end

function Gunsmith_IsEnabled(arg0, arg1)
	local registerVal2 = IsPlayerAGuest(arg1)
	if registerVal2 then
		return false
	end
	registerVal2 = IsIntDvarNonZero("gunsmith_enabled")
	registerVal2 = IsLive()
	if registerVal2 and registerVal2 then
		return true
	end
	return false
end

function Gunsmith_ValidVariantNameEntered(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "Gunsmith.validVariantNameEntered")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= nil and registerVal3 == true then
		arg0:makeFocusableWithoutResettingNavigation()
		return true
	else
		arg0:makeNotFocusable()
		return false
	end
end

function Gunsmith_IsVariantOccupied(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = Engine.GetModel(registerVal3, "variantIndex")
	registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = CoD.CraftUtility.Gunsmith.IsVariantIndexOccupied(registerVal3)
	if registerVal2 and registerVal4 then
		return true
	end
	return false
end

function Gunsmith_IsAttachmentEquipped(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = CoD.CraftUtility.Gunsmith.GetVariantAttachmentList(arg2, CoD.perController[arg2].gunsmithVariantModel)
	local registerVal5 = Engine.GetModel(registerVal3, "attachmentIndex")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7, registerVal8, registerVal9 = ipairs(registerVal4)
	if  == registerVal6 then
		return true
	end
	return false
end

function Gunsmith_IsItemMutuallyExclusiveWithSelection(arg0, arg1)
	local registerVal3 = CoD.CraftUtility.Gunsmith.GetVariantAttachmentList(arg1, CoD.perController[arg1].gunsmithVariantModel)
	local registerVal5 = arg0:getModel(arg1, "attachmentIndex")
	local registerVal6 = CoD.GetCustomization(arg1, "weapon_index")
	local registerVal7 = Engine.GetModelValue(registerVal5)
	registerVal7, registerVal8, registerVal9 = ipairs(registerVal3)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		if CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX < value11 and registerVal7 ~= value11 then
			local registerVal12 = Engine.GetAttachmentIndexByAttachmentTableIndex(registerVal6, registerVal7, Enum.eModes.MODE_MULTIPLAYER)
			local registerVal13 = Engine.GetAttachmentIndexByAttachmentTableIndex(registerVal6, value11, Enum.eModes.MODE_MULTIPLAYER)
			local registerVal14 = Engine.AreAttachmentsCompatible(registerVal6, registerVal12, registerVal13, Enum.eModes.MODE_MULTIPLAYER)
			return (not registerVal14)
		end
	end
	return false
end

function Gunsmith_IsAttachmentNew(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCustomization(arg2, "weapon_index")
	local registerVal4 = arg1:getModel()
	local registerVal5 = Engine.GetModel(registerVal4, "attachmentIndex")
	if registerVal4 and registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal5)
		local registerVal7 = Engine.GetAttachmentIndexByAttachmentTableIndex(registerVal3, registerVal6)
		return Engine.IsAttachmentNew(arg2, registerVal3, registerVal7)
	end
	return false
end

function Gunsmith_IsCamoEquipped(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = arg0:getModel()
	local registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = Engine.GetModel(registerVal3, "itemIndex")
	local registerVal7 = Engine.GetModelValue(registerVal6)
	if registerVal3 and registerVal6 and registerVal5 == registerVal7 then
		return true
	end
	return false
end

function Gunsmith_IsReticleEquipped(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = arg0:getModel()
	local registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = Engine.GetModel(registerVal3, "weaponOptionSubIndex")
	local registerVal7 = Engine.GetModelValue(registerVal6)
	if registerVal3 and registerVal6 and registerVal5 == registerVal7 then
		return true
	end
	return false
end

function Gunsmith_IsCamoNew(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCustomization(arg2, "weapon_index")
	local registerVal4 = arg1:getModel()
	local registerVal5 = Engine.GetModel(registerVal4, "itemIndex")
	if registerVal4 and registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal5)
		return Engine.IsWeaponOptionNew(arg2, registerVal3, registerVal6)
	end
	return false
end

function Gunsmith_IsReticleNew(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCustomization(arg2, "weapon_index")
	local registerVal4 = arg1:getModel()
	local registerVal6 = CoD.SafeGetModelValue(registerVal4, "weaponOptionSubIndex")
	local registerVal7 = CoD.SafeGetModelValue(registerVal4, "weaponOptionType")
	local registerVal8 = CoD.SafeGetModelValue(CoD.perController[arg2].gunsmithVariantModel, "attachment1")
	if registerVal4 and CoD.perController[arg2].gunsmithVariantModel and registerVal6 and registerVal7 and registerVal8 then
		local registerVal9 = Engine.GetWeaponOptionGroupIndex(registerVal6, registerVal7)
		return Engine.IsWeaponOptionNew(arg2, registerVal8, registerVal9)
	end
	return false
end

function Gunsmith_IsACVItemNew(arg0, arg1)
	local registerVal2 = CoD.GetCustomization(arg1, "weapon_index")
	local registerVal6 = arg0:getModel()
	local registerVal5 = CoD.SafeGetModelValue(registerVal6, "isBMClassified")
	if registerVal5 == true then
		return false
	end
	if arg0.attachmentTableIndex and arg0.variantIndex and CoD.CACUtility.EmptyItemIndex < arg0.variantIndex then
		return IsACVItemNewHelper(arg1, registerVal2, arg0.attachmentTableIndex, arg0.variantIndex, Enum.eModes.MODE_MULTIPLAYER)
	end
	return false
end

function Gunsmith_AnyOpticsNew(arg0)
	local registerVal1 = CoD.GetCustomization(arg0, "weapon_index")
	return CoD.CraftUtility.Gunsmith.WeaponHasNewOptics(arg0, registerVal1)
end

function Gunsmith_AnyAttachmentsNew(arg0)
	local registerVal1 = CoD.GetCustomization(arg0, "weapon_index")
	return CoD.CraftUtility.Gunsmith.WeaponHasNewNonOpticAttachments(arg0, registerVal1)
end

function Gunsmith_AnyCamosNew(arg0)
	local registerVal1 = CoD.GetCustomization(arg0, "weapon_index")
	return CoD.CraftUtility.Gunsmith.WeaponHasNewCamos(arg0, registerVal1)
end

function Gunsmith_AnyNewItemsForWeapon(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "itemIndex")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 and CoD.CACUtility.EmptyItemIndex < registerVal3 then
		return CoD.CraftUtility.Gunsmith.WeaponHasAnyNewItems(arg1, registerVal3)
	end
	return false
end

function Gunsmith_AnyNewWeaponsOrAttachmentsForGroupButton(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = Engine.GetModel(registerVal3, "categoryRef")
	if registerVal2 then
		Engine.GetModelValue(registerVal2)
		return CoD.CraftUtility.Gunsmith.AnyNewWeaponsOrAttachmentsForGroup(arg1, Engine.GetModelValue)
	end
	return false
end

function Gunsmith_AnyNewWeaponsOrAttachments(arg0)
	for index1=1.000000, #CoD.Craft.WeaponGroupNames, 1.000000 do
		local registerVal6 = CoD.CraftUtility.Gunsmith.AnyNewWeaponsOrAttachmentsForGroup(arg0, CoD.Craft.WeaponGroupNames[index1].weapon_category)
		if registerVal6 then
			return true
		end
	end
	return false
end

function Gunsmith_IsSpecialWeapon(arg0, arg1, arg2)
	local registerVal3 = CoD.CraftUtility.GetWeaponGroupName(arg2)
	local registerVal5 = CoD.GetCustomization(arg2, "weapon_index")
	local registerVal6 = Engine.GetItemRef(registerVal5, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal3 ~= "weapon_launcher" and registerVal3 ~= "weapon_knife" and registerVal6 == "special_discgun" or registerVal6 == "knife_ballistic" then
	end
	return true
end

function Gunsmith_IsHandguns(arg0, arg1, arg2)
	local registerVal3 = CoD.CraftUtility.GetWeaponGroupName(arg2)
	local registerVal4 = CoD.GetCustomization(arg2, "weapon_index")
	local registerVal5 = Engine.GetItemRef(registerVal4, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal3 ~= "weapon_pistol" then
		if registerVal3 == "weapon_special" and registerVal5 ~= "special_discgun" and registerVal5 ~= "knife_ballistic" then
			return true
		end
	end
	return false
end

function Gunsmith_IsSnipers(arg0, arg1, arg2)
	local registerVal3 = CoD.CraftUtility.GetWeaponGroupName(arg2)
	if registerVal3 ~= "weapon_sniper" then
	end
	return true
end

function Gunsmith_IsLockedForDemo(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal3, "name")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal3 and registerVal4 and registerVal5 == "MP_CLASSIFIED" then
		return true
	end
	return false
end

function Gunsmith_IsVariantCountEmpty(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "itemIndex")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = CoD.CraftUtility.Gunsmith.GetTotalUsedWeaponVariants(registerVal3)
	if registerVal2 and CoD.CACUtility.EmptyItemIndex < registerVal3 and registerVal4 <= 0.000000 then
		return false
	end
	return true
end

function Gunsmith_IsSnapshotWeaponLevelMax(arg0, arg1, arg2)
	local registerVal3 = CoD.CACUtility.GetGunLevelWeaponIndex(arg2, arg1)
	if registerVal3 == CoD.CACUtility.EmptyItemIndex then
		return false
	end
	local registerVal4 = CoD.CraftUtility.Gunsmith.GetSnapshotSessionMode()
	local registerVal5 = CoD.CraftUtility.Gunsmith.GetStatsStorageType(registerVal4)
	local registerVal7 = Engine.GetGunCurrentRank(arg2, registerVal3, registerVal4)
	local registerVal8 = Engine.GetGunNextRank(arg2, registerVal3, registerVal4)
	local registerVal9 = Engine.GetGunCurrentRankXP(arg2, registerVal3, registerVal4)
	local registerVal10 = Engine.StorageGetBuffer(arg2, registerVal5)
	if registerVal10 then
		local registerVal11 = registerVal10.ItemStats[registerVal3].xp:get()
	end
	if registerVal7 ~= registerVal8 or registerVal9 > registerVal11 then
	end
	return true
end

function Gunsmith_IsSnapshotGunLevelExists(arg0, arg1, arg2)
	local registerVal3 = CoD.CACUtility.GetGunLevelWeaponIndex(arg2, arg1)
	local registerVal4 = Engine.IsCampaignGame()
	if registerVal4 then
		registerVal4 = CoD.GetAttachments(registerVal3)
		if registerVal4 then
			registerVal4 = CoD.GetAttachments(registerVal3)
			if 0.000000 >= #registerVal4 then
			end
		end
		if registerVal3 ~= CoD.CACUtility.EmptyItemIndex then
		else
		end
		return true
	end
	if registerVal3 == CoD.CACUtility.EmptyItemIndex then
	end
	return true
end

function Gunsmith_IsNewVariant(arg0)
	if CoD.perController[arg0].emptyVariantSelected and CoD.perController[arg0].emptyVariantSelected == true then
		return true
	end
	return false
end

function Gunsmith_IsCurrentVariantChanged(arg0)
	local registerVal1 = Gunsmith_IsNewVariant(arg0)
	local registerVal2 = CoD.CraftUtility.Gunsmith.IsCurrentVariantChanged(arg0, CoD.perController[arg0].gunsmithVariantModel)
	if not registerVal1 and CoD.perController[arg0].gunsmithVariantModel and registerVal2 then
		return true
	end
	return false
end

function IsAttachmentLockedInWeaponBuildKits(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg1)
	if not registerVal2 then
		return false
	end
	registerVal2 = CoD.GetCustomization(arg1, "weapon_index")
	local registerVal3 = arg0:getModel(arg1, "attachmentIndex")
	if registerVal2 and registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = Engine.GetAttachmentIndexByAttachmentTableIndex(registerVal2, registerVal4, Enum.eModes.MODE_ZOMBIES)
		return IsItemAttachmentLocked(arg1, registerVal2, registerVal5, "IALIWBK")
	end
end

function IsAttachmentSlotLocked(arg0, arg1, arg2)
	local registerVal3 = IsZombies()
	registerVal3 = IsProgressionEnabled(arg1)
	if registerVal3 and not registerVal3 then
		return false
	end
	registerVal3 = arg0:getModel(arg1, "weaponIndex")
	if not registerVal3 then
		return false
	end
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.IsAttachmentSlotLocked(arg1, registerVal4, arg2)
	if registerVal5 == nil then
	end
	return false
end

function IsGridOn(arg0, arg1)
	local registerVal2 = Engine.GetProfileVarInt(arg0, arg1)
	if registerVal2 == 0.000000 then
	end
	return true
end

function Paintjobs_IsOccupied(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = Engine.GetModel(registerVal3, "paintjobSlot")
	local registerVal4 = arg0:getModel()
	registerVal3 = Engine.GetModel(registerVal4, "paintjobIndex")
	registerVal4 = Engine.GetModelValue(registerVal2)
	local registerVal5 = Engine.GetModelValue(registerVal3)
	local registerVal6 = CoD.CraftUtility.Paintjobs.IsPaintjobIndexOccupied(registerVal4, registerVal5)
	if registerVal2 and registerVal3 and registerVal6 then
		return true
	end
	return false
end

function Paintjobs_DisableGroupsFeature()
	local registerVal0 = Dvar.ui_emblemDisableGroups.exists()
	if registerVal0 then
		registerVal0 = Dvar.ui_emblemDisableGroups:get()
	end
	return registerVal0
end

function Paintjobs_IsCountGreaterThanZero(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "itemIndex")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = CoD.CraftUtility.Paintjobs.GetTotalWeaponPaintjobs(registerVal3)
	if registerVal2 and CoD.CACUtility.EmptyItemIndex < registerVal3 and registerVal4 <= 0.000000 then
		return false
	end
	return true
end

function Paintjobs_IsEnabled(arg0, arg1)
	local registerVal2 = IsSplitscreenSafehouse()
	if registerVal2 then
		return false
	end
	registerVal2 = IsPlayerAGuest(arg1)
	if registerVal2 then
		return false
	end
	registerVal2 = IsLive()
	if registerVal2 then
		return true
	end
	return false
end

function IsGroupSlotAvailable(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "Emblem.EmblemProperties.groupsUsed")
	if registerVal2 then
		local registerVal4 = Engine.GetModelValue(registerVal2)
		if registerVal4 >= (Enum.CustomizationTypeGroupCount.CUSTOMIZATION_TYPE_MAX_GROUPS - 1.000000) then
		end
	end
	return true
end

function IsEmptyLayerAvailable(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "Emblem.EmblemProperties.layersUsed")
	if registerVal2 then
		local registerVal5 = Engine.GetModelValue(registerVal2)
		if registerVal5 >= CoD.perController[arg0].totalLayers then
		end
	end
	return true
end

function BrowseModeLinkedLayer(arg0, arg1, arg2)
	local registerVal3 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_BROWSE)
	registerVal3 = Emblems_IsLayerLinked(arg1, arg2)
	registerVal3 = IsModelValueGreaterThanOrEqualTo(arg2, "Emblem.EmblemProperties.linkedLayerCount", 2.000000)
	if registerVal3 and registerVal3 and registerVal3 then
		registerVal3 = Emblem_IsLayerGrouped(arg1, arg2)
		if not registerVal3 then
			registerVal3 = IsGroupSlotAvailable(arg2)
			if registerVal3 then
				registerVal3 = Paintjobs_DisableGroupsFeature()
			else
			end
		end
	end
	return true
end

function BrowseModeGroupedLayer(arg0, arg1, arg2)
	local registerVal3 = IsModelValueEqualToEnum(arg2, "Emblem.EmblemProperties.editorMode", Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_BROWSE)
	registerVal3 = Emblem_IsLayerGrouped(arg1, arg2)
	if registerVal3 and registerVal3 then
		registerVal3 = Paintjobs_DisableGroupsFeature()
	end
	return (not registerVal3)
end

function BrowseModeOneLayerLinked(arg0, arg1, arg2)
	local registerVal3 = IsBrowseMode(arg2)
	if registerVal3 then
		registerVal3 = IsLayerEmpty(arg0, arg1, arg2)
		if not registerVal3 then
			registerVal3 = Emblems_IsLayerLinked(arg1, arg2)
			if registerVal3 then
				registerVal3 = Paintjobs_DisableGroupsFeature()
			else
			end
		end
	end
	return true
end

function BrowseMode(arg0, arg1, arg2)
	local registerVal3 = IsBrowseMode(arg2)
	if registerVal3 then
		registerVal3 = IsLayerEmpty(arg0, arg1, arg2)
		if not registerVal3 then
			registerVal3 = Paintjobs_DisableGroupsFeature()
		else
		end
	end
	return true
end

function GroupsDisabledMode(arg0, arg1, arg2)
	local registerVal3 = Paintjobs_DisableGroupsFeature()
	registerVal3 = IsBrowseMode(arg2)
	if registerVal3 and registerVal3 then
		registerVal3 = IsLayerEmpty(arg0, arg1, arg2)
	end
	return (not registerVal3)
end

function IsUserContentRestricted(arg0)
	return Engine.IsUserContentRestricted(arg0)
end

function IsUserChatRestricted(arg0)
	return Engine.IsUserChatRestricted(arg0)
end

function IsSplitscreenSafehouse()
	local registerVal0 = Engine.IsSplitscreen()
	if CoD.isSafehouse and registerVal0 then
		return true
	end
	return false
end

function IsPaintshopButtonDisabled(arg0)
	local registerVal1 = IsSplitscreenSafehouse()
	if registerVal1 then
		return true
	end
	return Engine.IsUserContentRestricted(arg0)
end

function IsDataVaultEmblemButtonDisabled(arg0)
	local registerVal1 = IsSplitscreenSafehouse()
	if registerVal1 then
		return true
	end
	return Engine.IsUserContentRestricted(arg0)
end

function CraftItemIsReadOnly(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = Engine.GetModel(registerVal3, "readOnly")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 and registerVal3 == 1.000000 then
		return true
	end
	return false
end

function Challenges_IsCategoryLocked(arg0, arg1, arg2)
	local registerVal3 = CoD.ChallengesUtility.GetGameModeInfo()
	if not registerVal3 then
		return returnTable
	end
	local registerVal4 = Engine.GetPlayerStats(arg1, CoD.STATS_LOCATION_NORMAL, registerVal3.index)
	local registerVal5 = registerVal4.PlayerStatsList.RANK.StatValue:get()
	local registerVal6 = registerVal4.PlayerStatsList.PLEVEL.StatValue:get()
	local registerVal9 = Engine.GetChallengeInfoForImages(arg1, arg2, registerVal3.index)
	if #arg1 == 0.000000 then
		if arg0 ~= nil then
			local registerVal12 = {}
			registerVal12.name = "set_unlock_instructions"
			registerVal12.rank = registerVal5
			registerVal12.plevel = registerVal6
			registerVal12.unlockRank = nil
			registerVal12.unlockPLevel = nil
			registerVal12.mode = registerVal3.index
			arg0:processEvent(registerVal12)
		end
		return true
	end
	local registerVal10, registerVal11, registerVal12 = ipairs(registerVal9)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		if value14.currentChallengeRow ~= nil then
			return false
		end
		if value14.challengeRow ~= nil then
			local registerVal17 = tonumber(Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. registerVal3.name .. "/statsmilestones" .. (value14.tableNum + 1.000000) .. ".csv"), value14.challengeRow, CoD.ChallengesUtility.UnlockRankCol))
			local registerVal18 = tonumber(Engine.TableLookupGetColumnValueForRow(("gamedata/stats/" .. registerVal3.name .. "/statsmilestones" .. (value14.tableNum + 1.000000) .. ".csv"), value14.challengeRow, CoD.ChallengesUtility.UnlockPLevelCol))
			if registerVal17 == nil then
			end
			if registerVal18 == nil then
			end
			if nil == nil or nil == nil then
			end
			if 0.000000 < 0.000000 then
			end
			if 0.000000 < 0.000000 then
			end
		end
	end
	if 0.000000 < registerVal6 then
		return false
	end
	if registerVal6 == 0.000000 and 0.000000 <= registerVal5 then
		return false
	end
	if arg0 ~= nil then
		registerVal12 = {}
		registerVal12.name = "set_unlock_instructions"
		registerVal12.rank = registerVal5
		registerVal12.plevel = registerVal6
		registerVal12.unlockRank = 0.000000
		registerVal12.unlockPLevel = 0.000000
		registerVal12.mode = registerVal3.index
		arg0:processEvent(registerVal12)
	end
	return true
end

function IsPercentTextAt100Percent(arg0)
	local registerVal1 = type(arg0)
	if registerVal1 ~= "string" then
		return false
	end
	registerVal1 = Engine.Localize("MPUI_PERCENT", 100.000000)
	if arg0 ~= registerVal1 then
	end
	return true
end

function TextHeightGreaterThan(arg0, arg1, arg2)
	if arg0[arg1] == nil then
		return false
	end
	local registerVal4, registerVal5 = arg0[arg1]:getTextWidthAndHeight()
	if arg2 >= registerVal5 then
	end
	return true
end

function Emblems_CanEnterEmblemEditor(arg0, arg1)
	local registerVal2 = CraftSlotsFullByStorageType(arg1, Enum.StorageFileType.STORAGE_EMBLEMS)
	if not registerVal2 then
		return true
	else
		registerVal2 = IsPreBuiltEmblemTab(arg1)
		if not registerVal2 then
			return true
		end
	end
	return false
end

function Emblems_IsDefaultEmblemEquipped(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "emblemIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.GetProfileVarInt(arg2, "default_emblem_index")
	if registerVal3 and registerVal5 ~= CoD.CraftUtility.Emblems.INVALID_DEFAULT_EMBLEMINDEX and registerVal5 == registerVal4 then
		return true
	end
	return false
end

function Emblem_IsOccupied(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal4 = arg0:getModel()
	local registerVal3 = Engine.GetModel(registerVal4, "emblemIndex")
	registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = CoD.CraftUtility.Emblems.IsEmblemIndexOccupied(registerVal4)
	if registerVal2 and registerVal3 and registerVal5 then
		return true
	end
	return false
end

function Emblems_IsEnabled(arg0, arg1)
	local registerVal2 = IsPlayerAGuest(arg1)
	if registerVal2 then
		return false
	end
	return true
end

function CommunityOptionsEnabled()
	return true
end

function Emblems_IsLayerLinked(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "isLinked")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		return registerVal3
	else
		return false
	end
end

function Emblem_IsLayerGrouped(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "isGrouped")
	if registerVal2 then
		return Engine.GetModelValue(registerVal2)
	end
	return false
end

function Emblem_IsLayerGroupedByLayerIndex(arg0, arg1)
	local registerVal2 = CoD.GetCustomization(arg1, "type")
	if CoD.perController[arg1].selectedLayerIndex ~= nil then
		local registerVal4 = Engine.GetSelectedLayerData(arg1, CoD.perController[arg1].selectedLayerIndex, registerVal2)
		return registerVal4.isGrouped
	end
	return false
end

function IsEmblemEmpty(arg0)
	local registerVal2 = CoD.GetCustomization(arg0, "type")
	return Engine.IsEmblemEmpty(arg0, registerVal2, CoD.perController[arg0].totalLayers)
end

function Emblem_IsAnyLayerEmpty(arg0)
	local registerVal2 = CoD.GetCustomization(arg0, "type")
	local registerVal3 = Engine.GetUsedLayerCount(arg0, registerVal2, CoD.perController[arg0].totalLayers)
	if CoD.perController[arg0].totalLayers == registerVal3 then
		return false
	end
	return true
end

function IsPaintjobAllSidesEmpty(arg0)
	local registerVal2 = Engine.IsEmblemEmpty(arg0, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT, Enum.CustomizationTypeLayerCount.CUSTOMIZATION_TYPE_PAINTSHOP_MAX_LAYERS)
	local registerVal3 = Engine.IsEmblemEmpty(arg0, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_TOP, Enum.CustomizationTypeLayerCount.CUSTOMIZATION_TYPE_PAINTSHOP_MAX_LAYERS)
	local registerVal4 = Engine.IsEmblemEmpty(arg0, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_RIGHT, Enum.CustomizationTypeLayerCount.CUSTOMIZATION_TYPE_PAINTSHOP_MAX_LAYERS)
	return registerVal4
end

function IsLayerEmpty(arg0, arg1, arg2)
	if arg0.layerCarousel ~= nil then
	end
	if arg0.layerCarousel.layoutItems[arg0.layerCarousel.currentStartRow][arg0.layerCarousel.currentStartColumn] then
		local registerVal3 = arg0.layerCarousel.layoutItems[arg0.layerCarousel.currentStartRow][arg0.layerCarousel.currentStartColumn]:getModel(arg2, "layerIndex")
		if not registerVal3 then
			return true
		end
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = Engine.GetSelectedLayerIconID(arg2, registerVal4)
		if registerVal5 == CoD.emblem.INVALID_ID then
			return true
		else
			return false
		end
	end
	return true
end

function IsEditMode(arg0)
	local registerVal1 = CoD.GetEditorProperties(arg0, "editorMode")
	if registerVal1 ~= Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT then
	end
	return true
end

function IsBrowseMode(arg0)
	local registerVal1 = CoD.GetEditorProperties(arg0, "editorMode")
	if registerVal1 ~= Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_BROWSE then
	end
	return true
end

function IsClipboardEmpty(arg0)
	local registerVal1 = CoD.GetEditorProperties(arg0, "isClipboardEmpty")
	if registerVal1 ~= CoD.emblem.CLIPBOARDSTATE.EMPTY then
	end
	return true
end

function IsClipboardEmblemGrouped(arg0)
	return Engine.IsClipboardEmblemGrouped()
end

function Emblem_HideClipboard(arg0, arg1)
	local registerVal2 = CoD.GetEditorProperties(arg1, "editorMode")
	if registerVal2 == Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT then
		return true
	else
		local registerVal3 = IsClipboardEmpty(arg1)
		if registerVal3 then
			return true
		end
	end
	return false
end

function Emblem_CanPastFromClipboard(arg0, arg1)
	local registerVal2 = CoD.GetEditorProperties(arg1, "editorMode")
	local registerVal3 = IsGroupSlotAvailable(arg1)
	local registerVal4 = IsClipboardEmblemGrouped(arg1)
	if registerVal2 == Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_BROWSE then
		if not registerVal4 then
			return true
		else
			if registerVal4 and registerVal3 then
				return true
			end
		end
	end
	return false
end

function IsSelectedColorEmpty(arg0, arg1)
	local registerVal2 = CoD.GetEditorProperties(arg1, "colorNum")
	local registerVal3 = CoD.GetEditorProperties(arg1, "isColor0NoColor")
	local registerVal4 = CoD.GetEditorProperties(arg1, "isColor1NoColor")
	if registerVal2 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0 and registerVal3 == 1.000000 then
		return true
	else
		if registerVal2 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1 and registerVal4 == 1.000000 then
			return true
		end
	end
	return false
end

function Emblems_IsIconNew(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "iconID")
	registerVal3 = CoD.CraftUtility.GetDecalCategoryTypeByID(CoD.perController[arg1].selectedDecalCategory)
	if registerVal2 and registerVal3 and registerVal3 == "BLACKMARKET" then
		return Engine.IsEmblemIconNew(arg1, registerVal2)
	end
	return false
end

function Emblems_IsAnyEmblemNew(arg0)
	return CoD.CraftUtility.Emblems.IsAnyEmblemNew(arg0)
end

function Emblems_IsEmblemNew(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "emblemIndex")
	if registerVal2 then
		if CoD.perController[arg1].selectedEmblemTabStorageType == Enum.StorageFileType.STORAGE_EMBLEMS_LOOT then
			registerVal3 = CoD.BlackMarketUtility.GetLootEmblemSortIndexFromEmblemId(registerVal2)
		end
		return CoD.CraftUtility.Emblems.IsEmblemNew(arg1, registerVal3, CoD.perController[arg1].selectedEmblemTabStorageType)
	end
	return false
end

function Emblems_IsMaterialNew(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "materialID")
	registerVal3 = CoD.CraftUtility.GetMaterialCategoryTypeByID(CoD.perController[arg1].selectedMaterialCategory)
	if registerVal2 and registerVal3 and registerVal3 ~= "general" then
		return CoD.CraftUtility.Emblems.IsMaterialNew(arg1, registerVal2)
	end
	return false
end

function CallingCards_IsEnabled(arg0, arg1)
	local registerVal2 = IsPlayerAGuest(arg1)
	if registerVal2 then
		return false
	end
	return true
end

function CallingCards_IsGetPublicProfileComplete(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal2, "CallingCardsIdentity.GetPublicProfileComplete")
	if registerVal3 then
		local registerVal5 = Engine.GetModelValue(registerVal3)
	end
	return registerVal5
end

function CallingCards_IsNew(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "iconId")
	if registerVal2 then
		return Engine.IsEmblemBackgroundNew(arg1, registerVal2)
	end
	return false
end

function CallingCards_IsAnyNew(arg0)
	BlackMarketHideMasterCallingCards()
	return Engine.IsAnyEmblemBackgroundNew(arg0, BlackMarketHideMasterCallingCards)
end

function IsViewingSideBetCallingCardSet(arg0)
	if CoD.perController[arg0].BlackMarketUtility_CurrentCallingCardSetName ~= CoD.BlackMarketUtility.SideBetSetName then
	end
	return true
end

function CraftSlotsFullByStorageType(arg0, arg1)
	local registerVal2 = IsLive()
	registerVal2 = CoD.CraftUtility.GetUsedSlotsByFileType(arg0, arg1)
	local registerVal3 = CoD.CraftUtility.GetTotalAllowedSlotsByFileType(arg0, arg1)
	if registerVal2 and registerVal3 <= registerVal2 then
		return true
	end
	return false
end

function IsPreBuiltEmblemTab(arg0)
	if CoD.perController[arg0].selectedEmblemTabStorageType == Enum.StorageFileType.STORAGE_DEFAULT_EMBLEMS or CoD.perController[arg0].selectedEmblemTabStorageType == Enum.StorageFileType.STORAGE_EMBLEMS_LOOT then
		return true
	end
	return false
end

function IsEmblemEditor(arg0)
	local registerVal1 = CoD.GetCustomization(arg0, "type")
	if registerVal1 ~= Enum.CustomizationType.CUSTOMIZATION_TYPE_EMBLEM then
	end
	return true
end

function IsPaintshop(arg0)
	local registerVal1 = CoD.GetCustomization(arg0, "type")
	if registerVal1 ~= Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT and registerVal1 ~= Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_TOP and registerVal1 ~= Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_RIGHT then
	end
	return true
end

function IsMaxPrestigeLevel(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetCurrentPLevel(arg0)
	local registerVal2 = Engine.GetPrestigeCap(CoD.PrestigeUtility.GetPrestigeGameMode())
	if registerVal2 > registerVal1 then
	end
	return true
end

function IsMaxPrestigeLevelForMode(arg0, arg1)
	local registerVal2 = CoD.PrestigeUtility.GetCurrentPLevel(arg0, arg1)
	local registerVal3 = Engine.GetPrestigeCap(arg1)
	if registerVal3 > registerVal2 then
	end
	return true
end

function IsPrestigeLevelAtZero(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetCurrentPLevel(arg0)
	if registerVal1 ~= 0.000000 then
	end
	return true
end

function IsAtXPCap(arg0)
	local registerVal1 = Engine.GetPlayerStats(arg0, CoD.STATS_LOCATION_NORMAL, CoD.PrestigeUtility.GetPrestigeGameMode())
	local registerVal2 = registerVal1.PlayerStatsList.RANKXP.StatValue:get()
	local registerVal3 = Engine.GetXPCap(CoD.PrestigeUtility.GetPrestigeGameMode())
	if registerVal3 > registerVal2 then
	end
	return true
end

function IsPrestigeRewardSpent(arg0, arg1)
	CoD.PrestigeUtility.GetPrestigeGameMode()
	return Engine.IsPrestigeTokenSpentByType(arg0, arg1, CoD.PrestigeUtility.GetPrestigeGameMode)
end

function IsInPermanentUnlockMenu(arg0)
	return CoD.PrestigeUtility.isInPermanentUnlockMenu
end

function IsInBubblegumSelectMenu(arg0, arg1)
	return IsGlobalModelValueTrue(arg0, arg1, "inBubblegumBuffSelectMenu")
end

function IsPermanentlyUnlocked(arg0, arg1)
	local registerVal4 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal5 = arg0:getModel(arg1, "itemIndex")
	if not arg0.itemIndex and registerVal5 then
		registerVal5 = Engine.GetModelValue(registerVal5)
	end
	if registerVal5 then
		registerVal5 = Engine.GetItemCost(registerVal5, registerVal4)
		if registerVal5 == 0.000000 then
			return true
		end
		return Engine.IsItemPermanentlyUnlocked(arg1, registerVal5, registerVal4)
	end
	return false
end

function HavePermanentUnlockTokens(arg0)
	local registerVal1 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal2 = Engine.GetPermanentUnlockCount(arg0, registerVal1)
	if 0.000000 >= registerVal2 then
	end
	return true
end

function PlayerGainedPrestigeMaster(arg0, arg1)
	local registerVal2 = CoD.GetPlayerStats(arg0, CoD.STATS_LOCATION_NORMAL, arg1)
	local registerVal3 = Engine.GetXPCap(arg1)
	local registerVal4 = Engine.GetPrestigeCap(arg1)
	local registerVal5 = registerVal2.PlayerStatsList.RANKXP.StatValue:get()
	local registerVal6 = registerVal2.PlayerStatsList.PLEVEL.StatValue:get()
	if registerVal3 > registerVal5 or registerVal6 ~= (registerVal4 - 1.000000) then
	end
	return true
end

function IsGameModeParagonCapable(arg0)
	return LuaUtils.IsGameModeParagonCapable(arg0)
end

function IsInParagonCapableGameMode()
	Engine.CurrentSessionMode()
	return IsGameModeParagonCapable(Engine.CurrentSessionMode)
end

function IsPrestigeMasterFromRankModel(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if arg2 ~= "" and registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg2)
	end
	local registerVal5 = Engine.GetModelValue(registerVal4)
	registerVal4 = tonumber(registerVal5)
	if registerVal4 == nil or (CoD.MAX_RANK + 1.000000) >= registerVal4 then
	end
	return true
end

function CompetitiveSettingsEnabled(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.lobbyNav")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 == LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id or registerVal2 == LobbyData.UITargets.UI_MPLOBBYLANGAME.id then
		local registerVal3 = Engine.GetGametypeSetting("pregameItemVoteEnabled")
		if registerVal3 ~= 1.000000 then
		end
		local registerVal4 = Engine.GetGametypeSetting("pregameDraftEnabled")
		if registerVal4 ~= 1.000000 then
		end
		if not registerVal1 or true then
			return true
		end
	end
	return false
end

function CharacterDraftEnabled()
	local registerVal0 = Engine.GetGametypeSetting("pregameDraftEnabled")
	if registerVal0 ~= 1.000000 then
	end
	return true
end

function PregameItemVoteEnabled()
	local registerVal0 = Engine.GetGametypeSetting("pregameItemVoteEnabled")
	if registerVal0 ~= 1.000000 then
	end
	return true
end

function IsArenaMode()
	return LuaUtils.IsArenaMode()
end

function ArenaRankIncreased(arg0)
	local registerVal1 = Engine.GetPlaylistID()
	local registerVal2 = Engine.GetPlaylistInfoByID(registerVal1)
	local registerVal3 = CoD.GetPlayerStats(arg0)
	local registerVal4 = registerVal3.arenaStats[registerVal2.playlist.arenaSlot].matchStartPoints:get()
	local registerVal5 = CoD.ArenaUtility.GetRank(registerVal4)
	local registerVal6 = registerVal3.arenaStats[registerVal2.playlist.arenaSlot].points:get()
	local registerVal7 = CoD.ArenaUtility.GetRank(registerVal6)
	if registerVal5 >= registerVal7 then
	end
	return true
end

function WonLastTeamBasedMatch(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if not registerVal1 then
		return false
	end
	local registerVal3 = registerVal1.AfterActionReportStats.alliesScore:get()
	local registerVal4 = registerVal1.AfterActionReportStats.axisScore:get()
	local registerVal5 = registerVal1.AfterActionReportStats.team:get()
	if registerVal5 ~= Enum.team_t.TEAM_ALLIES and registerVal5 ~= Enum.team_t.TEAM_AXIS then
		return false
	end
	if registerVal5 == Enum.team_t.TEAM_ALLIES then
		if registerVal4 >= registerVal3 then
		end
		return true
	else
		if registerVal3 >= registerVal4 then
		end
		return true
	end
end

function LostLastTeamBasedMatch(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if not registerVal1 then
		return false
	end
	local registerVal3 = registerVal1.AfterActionReportStats.alliesScore:get()
	local registerVal4 = registerVal1.AfterActionReportStats.axisScore:get()
	local registerVal5 = registerVal1.AfterActionReportStats.team:get()
	if registerVal5 ~= Enum.team_t.TEAM_ALLIES and registerVal5 ~= Enum.team_t.TEAM_AXIS then
		return false
	end
	if registerVal5 == Enum.team_t.TEAM_ALLIES then
		if registerVal3 >= registerVal4 then
		end
		return true
	else
		if registerVal4 >= registerVal3 then
		end
		return true
	end
end

function IsBetaSeason()
	local registerVal0 = Engine.GetCurrentArenaSeason()
	if 0.000000 > registerVal0 or registerVal0 >= 2.000000 then
	end
	return true
end

function SelectedPlayerIsArenaMaster(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "arenaPoints")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 ~= nil and registerVal3 ~= nil then
		return CoD.ArenaUtility.IsMaster(registerVal3)
	end
	return false
end

function ArenaChallengesEnabled()
	return Dvar.arena_enableArenaChallenges:get()
end

function IsParamModelEqualTo(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(arg0)
	if registerVal2 ~= arg1 then
	end
	return true
end

function IsParamModelEqualToString(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(arg0)
	if registerVal2 ~= arg1 then
	end
	return true
end

function IsModelParameterValueEnum(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(arg0)
	if registerVal2 ~= arg1 then
	end
	return true
end

function IsModelValueNonEmptyString(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, arg1)
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == nil or registerVal3 == "" then
	end
	return true
end

function IsModelValueTrue(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, arg1)
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == nil or registerVal3 ~= true then
	end
	return true
end

function IsModelValueGreaterThan(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, arg1)
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or arg2 >= registerVal4 then
	end
	return true
end

function IsModelValueLessThan(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, arg1)
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or registerVal4 >= arg2 then
	end
	return true
end

function IsModelValueGreaterThanOrEqualTo(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, arg1)
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 ~= nil and arg2 == nil or arg2 > registerVal4 then
	end
	return true
end

function IsModelValueLessThanOrEqualTo(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, arg1)
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or registerVal4 > arg2 then
	end
	return true
end

function IsModelValueEqualTo(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, arg1)
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or registerVal4 ~= arg2 then
	end
	return true
end

function IsModelValueEqualToEitherValue(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.GetModel(registerVal5, arg1)
	registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 ~= nil then
		if registerVal5 ~= arg2 and registerVal5 ~= arg3 then
		end
	end
	return true
end

function IsModelValueEqualToEnum(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, arg1)
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or registerVal4 ~= arg2 then
	end
	return true
end

function IsModelValueEnumBitSet(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, arg1)
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 ~= nil then
		local registerVal5 = CoD.BitUtility.IsBitSet(registerVal4, arg2)
	else
	end
	return true
end

function ModelValueStartsWith(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, arg1)
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 ~= nil then
		local registerVal5 = LUI.startswith(registerVal4, arg2)
	else
	end
	return true
end

function ModelValueStartsWithAny(arg0, arg1, ...)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, arg1)
	if not registerVal2 then
		return false
	end
	registerVal3 = {}
	local registerVal4 = select("#", ...)
	registerVal3.n = registerVal4
	registerVal3 = {}
	registerVal4, registerVal5, registerVal6 = ipairs(registerVal3)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = LUI.startswith(registerVal2, value8)
		if registerVal9 then
			return true
		end
	end
	return false
end

function IsControllerModelValueEqualToSelfModelValue(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if not registerVal4 then
		return false
	end
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal5 = Engine.GetModel(registerVal6, arg2)
	if not registerVal5 then
		return false
	end
	local registerVal7 = arg0:getModel()
	registerVal6 = Engine.GetModel(registerVal7, arg3)
	if not registerVal6 then
		return false
	end
	registerVal7 = Engine.GetModelValue(registerVal5)
	local registerVal8 = Engine.GetModelValue(registerVal6)
	if registerVal7 ~= registerVal8 then
	end
	return true
end

function IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if not registerVal4 then
		return false
	end
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal5 = Engine.GetModel(registerVal6, arg2)
	if not registerVal5 then
		return false
	end
	local registerVal7 = arg0:getModel()
	registerVal6 = Engine.GetModel(registerVal7, arg3)
	if not registerVal6 then
		return false
	end
	registerVal7 = Engine.GetModelValue(registerVal5)
	local registerVal8 = Engine.GetModelValue(registerVal6)
	if registerVal8 > registerVal7 then
	end
	return true
end

function IsControllerModelValueDefaultID64Value(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg1)
	if arg2 ~= "" and registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg2)
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	local registerVal5 = Engine.DefaultID64Value()
	if registerVal4 == nil or registerVal4 ~= registerVal5 then
	end
	return true
end

function IsGlobalModelValueEqualToSelfModelValue(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if not registerVal4 then
		return false
	end
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, arg2)
	if not registerVal5 then
		return false
	end
	local registerVal7 = arg0:getModel()
	registerVal6 = Engine.GetModel(registerVal7, arg3)
	if not registerVal6 then
		return false
	end
	registerVal7 = Engine.GetModelValue(registerVal5)
	local registerVal8 = Engine.GetModelValue(registerVal6)
	if registerVal7 ~= registerVal8 then
	end
	return true
end

function IsSelfModelValueNil(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if arg2 ~= "" and registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg2)
	end
	if registerVal4 ~= nil then
	end
	return true
end

function IsSelfModelValueNilOrZero(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if arg2 ~= "" and registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg2)
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 ~= nil and registerVal4 ~= 0.000000 then
	end
	return true
end

function IsSelfModelValueNonEmptyString(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if arg2 ~= "" and registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg2)
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil or registerVal4 == "" then
	end
	return true
end

function IsSelfModelValueTrue(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if arg2 ~= "" and registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg2)
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil or registerVal4 ~= true then
	end
	return true
end

function IsSelfEnumModelValueTrue(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if arg2 ~= "" and registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg2)
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil or registerVal4 ~= true then
	end
	return true
end

function IsSelfModelValueGreaterThan(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if arg2 ~= "" and registerVal4 then
		local registerVal5 = Engine.GetModel(registerVal4, arg2)
	end
	registerVal5 = Engine.GetModelValue(registerVal5)
	if registerVal5 == nil or arg3 >= registerVal5 then
	end
	return true
end

function IsSelfModelValueLessThan(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if arg2 ~= "" and registerVal4 then
		local registerVal5 = Engine.GetModel(registerVal4, arg2)
	end
	registerVal5 = Engine.GetModelValue(registerVal5)
	if registerVal5 == nil or registerVal5 >= arg3 then
	end
	return true
end

function IsSelfModelValueGreaterThanOrEqualTo(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if arg2 ~= "" and registerVal4 then
		local registerVal5 = Engine.GetModel(registerVal4, arg2)
	end
	registerVal5 = Engine.GetModelValue(registerVal5)
	if registerVal5 == nil or arg3 > registerVal5 then
	end
	return true
end

function IsSelfModelValueLessThanOrEqualTo(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if arg2 ~= "" and registerVal4 then
		local registerVal5 = Engine.GetModel(registerVal4, arg2)
	end
	registerVal5 = Engine.GetModelValue(registerVal5)
	if registerVal5 == nil or registerVal5 > arg3 then
	end
	return true
end

function IsSelfModelValueEqualTo(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if arg2 ~= "" and registerVal4 then
		local registerVal5 = Engine.GetModel(registerVal4, arg2)
	end
	registerVal5 = Engine.GetModelValue(registerVal5)
	if registerVal5 == nil or registerVal5 ~= arg3 then
	end
	return true
end

function IsSelfModelValueEqualToEitherValue(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg0:getModel()
	if arg2 ~= "" and registerVal5 then
		local registerVal6 = Engine.GetModel(registerVal5, arg2)
	end
	registerVal6 = Engine.GetModelValue(registerVal6)
	if registerVal6 ~= nil then
		if registerVal6 ~= arg3 and registerVal6 ~= arg4 then
		end
	end
	return true
end

function IsSelfModelValueEqualToAnyValue(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = arg0:getModel()
	if arg2 ~= "" and registerVal6 then
		local registerVal7 = Engine.GetModel(registerVal6, arg2)
	end
	registerVal7 = Engine.GetModelValue(registerVal7)
	if registerVal7 ~= nil then
		if registerVal7 ~= arg3 and registerVal7 ~= arg4 and registerVal7 ~= arg5 then
		end
	end
	return true
end

function IsSelfModelValueEqualToAnyValue5(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal8 = arg0:getModel()
	if arg2 ~= "" and registerVal8 then
		local registerVal9 = Engine.GetModel(registerVal8, arg2)
	end
	registerVal9 = Engine.GetModelValue(registerVal9)
	if registerVal9 ~= nil then
		if registerVal9 ~= arg3 and registerVal9 ~= arg4 and registerVal9 ~= arg5 and registerVal9 ~= arg6 and registerVal9 ~= arg7 then
		end
	end
	return true
end

function IsSelfModelValueEqualToEnum(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if arg2 ~= "" and registerVal4 then
		local registerVal5 = Engine.GetModel(registerVal4, arg2)
	end
	registerVal5 = Engine.GetModelValue(registerVal5)
	if registerVal5 == nil or registerVal5 ~= arg3 then
	end
	return true
end

function IsSelfModelValueEqualToEnumOrSelfModelNil(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if registerVal4 == nil then
		return true
	end
	return IsSelfModelValueEqualToEnum(arg0, arg1, arg2, arg3)
end

function IsSelfModelValueEqualToSelfTeam(arg0, arg1, arg2)
	local registerVal3 = CoD.GetTeamID(arg1)
	if registerVal3 == Enum.team_t.TEAM_SPECTATOR then
		local registerVal4 = CoD.ShoutcasterProfileVarBool(arg1, "shoutcaster_flip_scorepanel")
		if registerVal4 then
		else
		end
	end
	return IsSelfModelValueEqualTo(arg0, arg1, arg2, Enum.team_t.TEAM_ALLIES)
end

function IsGlobalModelValueNonEmptyString(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, arg2)
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or registerVal4 == "" then
	end
	return true
end

function IsGlobalModelValueTrue(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, arg2)
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == nil or registerVal4 ~= true then
	end
	return true
end

function IsGlobalModelValueEqualTo(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.GetModel(registerVal5, arg2)
	registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 == nil or registerVal5 ~= arg3 then
	end
	return true
end

function IsGlobalModelValueEqualToEnum(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.GetModel(registerVal5, arg2)
	registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 == nil or registerVal5 ~= arg3 then
	end
	return true
end

function IsGlobalModelValueGreaterThan(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, arg1)
	registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = tonumber(registerVal4)
	if registerVal4 == nil or arg2 >= registerVal5 then
	end
	return true
end

function IsGlobalModelValueLessThan(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, arg1)
	registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = tonumber(registerVal4)
	if registerVal4 == nil or registerVal5 >= arg2 then
	end
	return true
end

function IsSelfModelValueEnumBitSet(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if arg2 ~= "" and registerVal4 then
		local registerVal5 = Engine.GetModel(registerVal4, arg2)
	end
	registerVal5 = Engine.GetModelValue(registerVal5)
	if registerVal5 ~= nil then
		local registerVal6 = CoD.BitUtility.IsBitSet(registerVal5, arg3)
	else
	end
	return true
end

function IsSelfModelValueMyXuid(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg2)
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	local registerVal5 = Engine.GetXUID64(arg1)
	if registerVal4 == nil or registerVal4 ~= registerVal5 then
	end
	return true
end

function IsSelfModelValueMyXuidOrAnyLocalPlayerOnGameOver(arg0, arg1, arg2)
	local registerVal4 = arg0:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, arg2)
	local registerVal6 = IsInGame()
	registerVal6 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
	if registerVal6 and registerVal6 then
		registerVal6 = Engine.GetMaxControllerCount()
	end
	for index6=0.000000, (registerVal6 - 1.000000), 1.000000 do
		local registerVal10 = Engine.IsControllerBeingUsed(index6)
		registerVal10 = Engine.GetXUID64(index6)
		if registerVal10 and registerVal3 == registerVal10 then
			return true
		end
	end
	return false
end

function IsDpadButton(arg0)
	local registerVal1 = Engine.GetModelValue(arg0)
	if registerVal1 ~= nil then
		local registerVal2 = CoD.BitUtility.IsBitwiseAndNonZero(registerVal1, Enum.LUIButtonFlags.FLAG_DPAD)
	end
	return true
end

function IsRepeatButtonPress(arg0)
	local registerVal1 = Engine.GetModelValue(arg0)
	if registerVal1 ~= nil then
		local registerVal2 = CoD.BitUtility.IsBitwiseAndNonZero(registerVal1, Enum.LUIButtonFlags.FLAG_ISREPEAT)
	else
	end
	return true
end

function IsPartyLeaderStatusVisible()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 then
		local registerVal2 = LobbyData:UITargetFromId(registerVal1)
		local registerVal3 = Engine.GetLobbyNetworkMode()
		if registerVal3 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN and registerVal2.id == LobbyData.UITargets.UI_MODESELECT.id then
			return false
		end
		if registerVal2.isAdvertised then
			return false
		end
		return true
	end
	return false
end

function ShowClientInRedForMissingDLC(arg0, arg1)
	local registerVal2 = IsLobbyHost()
	if not registerVal2 then
		return false
	end
	local registerVal3 = arg0:getModel()
	registerVal2 = CoD.SafeGetModelValue(registerVal3, "dlcBits")
	if registerVal2 then
		registerVal3 = IsCustomLobby()
		if registerVal3 then
			local registerVal4 = Engine.GetGlobalModel()
			registerVal3 = CoD.SafeGetModelValue(registerVal4, "MapVote.mapVoteMapNext")
			registerVal4 = Engine.GetDLCBitForMapName(registerVal3)
			if registerVal4 then
				local registerVal5 = CoD.BitUtility.IsBitwiseAndNonZero(registerVal2, registerVal4)
			end
			return true
		end
		registerVal3 = CoD.LobbyUtility.ShouldShowDLCWarningsBasedOnHost()
		registerVal3 = IsLobbyHost()
		if registerVal3 and registerVal3 then
			registerVal3 = CoD.GetKnownDLCBits()
			registerVal4 = Engine.GetDLCBits()
			return CoD.IsClientMissingDLC((registerVal3 & registerVal4), registerVal2)
		end
	end
	return false
end

function ShowMissingMapsListInLobbySlide(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "dlcBits")
	if registerVal2 then
		registerVal3 = IsCustomLobby()
		if registerVal3 then
			local registerVal4 = Engine.GetGlobalModel()
			registerVal3 = CoD.SafeGetModelValue(registerVal4, "MapVote.mapVoteMapNext")
			registerVal4 = Engine.GetDLCBitForMapName(registerVal3)
			if registerVal4 then
				local registerVal5 = CoD.BitUtility.IsBitwiseAndNonZero(registerVal2, registerVal4)
			end
			return true
		end
		registerVal3 = CoD.LobbyUtility.ShouldShowDLCWarningsBasedOnHost()
		if registerVal3 then
			registerVal3 = CoD.GetKnownDLCBits()
			registerVal4 = Engine.GetDLCBits()
			if (registerVal3 & registerVal4) == ((registerVal3 & registerVal4) & registerVal2) then
			end
			return true
		end
	end
	return false
end

function IsLobbyStatusVisible()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	local registerVal2 = LobbyData:UITargetFromId(registerVal1)
	if registerVal1 and registerVal2.isAdvertised then
		return true
	end
	return false
end

function IsPartyPrivacyVisible()
	local registerVal0 = Engine.GetLobbyNetworkMode()
	if registerVal0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
		return false
	end
	local registerVal1 = Engine.GetGlobalModel()
	registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 then
		local registerVal2 = LobbyData:UITargetFromId(registerVal1)
		if registerVal2.isAdvertised == true then
			return false
		end
		return true
	end
	return false
end

function IsSelfModelRankValueGreaterThan(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "rank")
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	local registerVal5 = tonumber(registerVal4)
	registerVal5 = tonumber(registerVal4)
	if registerVal5 == nil or arg2 >= registerVal5 then
	end
	return true
end

function HasNumHessActive(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, "hudItems.hess1.type")
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal3 ~= nil and registerVal4 ~= 0.000000 then
	end
	local registerVal5 = Engine.GetModelForController(arg0)
	registerVal4 = Engine.GetModel(registerVal5, "hudItems.hess2.type")
	registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal4 ~= nil and registerVal5 ~= 0.000000 then
	end
	if (1.000000 + 1.000000) ~= arg1 then
	end
	return true
end

function CanUseSharedLoadouts(arg0)
	if not CoD.isCampaign then
		return false
	end
	local registerVal1 = Dvar.lobby_enableLoadoutDataStreamingInGame:get()
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, "ChooseClassCPClientMenu")
	if registerVal3 then
		registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "numActiveClients"))
	end
	if registerVal1 ~= true or 1.000000 >= registerVal4 then
	end
	return true
end

function IsInTheaterMode()
	local registerVal0 = IsGameLobbyActive()
	if not registerVal0 then
		return false
	end
	registerVal0 = IsLobbyMode(Enum.LobbyMode.LOBBY_MODE_THEATER)
	if not registerVal0 then
		return false
	end
	return true
end

function LobbyModeTheater()
	return IsLobbyMode(Enum.LobbyMode.LOBBY_MODE_THEATER)
end

function IsFilmNotSelected()
	local registerVal0 = IsFilmSelected()
	return (not registerVal0)
end

function IsFilmSelected()
	local registerVal0 = Engine.LobbyGetDemoInformation()
	local registerVal2 = Engine.DefaultID64Value()
	if registerVal0 and registerVal0.fileID ~= registerVal2 then
		return true
	end
	return false
end

function IsStartFilmButtonDisabled()
	local registerVal0 = IsFilmSelected()
	if not registerVal0 then
		return true
	end
	registerVal0 = IsFilmReadyForPlayback()
	if not registerVal0 then
		return true
	end
	registerVal0 = MapVoteTimerActive()
	if registerVal0 then
		return true
	end
	return false
end

function IsCreateHighlightReelButtonDisabled()
	local registerVal0 = IsFilmSelected()
	if not registerVal0 then
		return true
	end
	registerVal0 = IsFilmReadyForPlayback()
	if not registerVal0 then
		return true
	end
	registerVal0 = MapVoteTimerActive()
	if registerVal0 then
		return true
	end
	registerVal0 = Engine.LobbyGetDemoInformation()
	if registerVal0.fileCategory then
		if registerVal0.fileCategory ~= "film" and registerVal0.fileCategory ~= "recentgames" then
			return true
		end
	end
	return false
end

function IsShoutcastFilmButtonDisabled()
	local registerVal0 = IsFilmSelected()
	if not registerVal0 then
		return true
	end
	registerVal0 = IsFilmReadyForPlayback()
	if not registerVal0 then
		return true
	end
	registerVal0 = MapVoteTimerActive()
	if registerVal0 then
		return true
	end
	registerVal0 = Engine.LobbyGetDemoInformation()
	if registerVal0.fileCategory then
		if registerVal0.fileCategory ~= "film" and registerVal0.fileCategory ~= "recentgames" then
			return true
		end
	end
	return false
end

function IsUploadClipButtonDisabled()
	local registerVal0 = Engine.IsDemoClipPlaying()
	local registerVal1 = Engine.IsDemoClipRecording()
	local registerVal2 = Engine.GetDemoSegmentCount()
	local registerVal3 = Engine.IsRepositioningCameraMarker()
	if not registerVal0 and not registerVal1 and registerVal2 <= 0.000000 or registerVal3 then
		return true
	else
		return false
	end
end

function IsCustomizeHighlightReelButtonDisabled()
	local registerVal0 = Engine.IsDemoClipRecording()
	local registerVal1 = Engine.IsRepositioningCameraMarker()
	local registerVal2 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal0 and not registerVal1 and registerVal1 or not registerVal3 then
		return true
	else
		return false
	end
end

function IsJumpToStartButtonDisabled()
	local registerVal0 = Engine.IsDemoClipRecording()
	local registerVal1 = Engine.IsRepositioningCameraMarker()
	local registerVal2 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal0 and not registerVal1 and registerVal1 or not registerVal3 then
		return true
	else
		return false
	end
end

function IsDemoPlaying()
	return Engine.IsDemoPlaying()
end

function IsDemoClipPlaying()
	return Engine.IsDemoClipPlaying()
end

function IsDemoClipPreviewRunning()
	return Engine.IsDemoClipPreviewRunning()
end

function IsDemoCreatingHighlightReel()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "demo.isCreatingHighlightReel")
	if registerVal0 then
		registerVal1 = Engine.GetModelValue(registerVal0)
		if registerVal1 ~= true then
		end
		return true
	end
	return false
end

function IsDemoCapturingScreenshot()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "demo.isCapturingScreenshot")
	if registerVal0 then
		registerVal1 = Engine.GetModelValue(registerVal0)
		if registerVal1 ~= true then
		end
		return true
	end
	return false
end

function IsDemoRestrictedBasicMode()
	return CoD.DemoUtility.IsRestrictedBasicMode()
end

function IsDemoContextBasicMode()
	local registerVal0 = GetDemoContextMode()
	if registerVal0 ~= Enum.demoContextMode.DEMO_CONTEXT_MODE_BASIC then
	end
	return true
end

function IsDemoContextPlaybackMode()
	local registerVal0 = GetDemoContextMode()
	if registerVal0 ~= Enum.demoContextMode.DEMO_CONTEXT_MODE_PLAYBACK then
	end
	return true
end

function IsDemoContextDirectorMode()
	local registerVal0 = GetDemoContextMode()
	if registerVal0 ~= Enum.demoContextMode.DEMO_CONTEXT_MODE_DIRECTOR then
	end
	return true
end

function IsDemoContextObjectLinkMode()
	local registerVal0 = GetDemoContextMode()
	if registerVal0 ~= Enum.demoContextMode.DEMO_CONTEXT_MODE_OBJECT_LINK then
	end
	return true
end

function IsDemoContextLighterMode()
	local registerVal0 = GetDemoContextMode()
	if registerVal0 ~= Enum.demoContextMode.DEMO_CONTEXT_MODE_LIGHTER then
	end
	return true
end

function IsDemoContextHighlightReelMode()
	local registerVal0 = GetDemoContextMode()
	if registerVal0 ~= Enum.demoContextMode.DEMO_CONTEXT_MODE_HIGHLIGHT_REEL then
	end
	return true
end

function IsDemoContextBasicOrHighlightReelMode()
	local registerVal0 = IsDemoContextBasicMode()
	if not registerVal0 then
		registerVal0 = IsDemoContextHighlightReelMode()
	end
	return registerVal0
end

function ClipsAvailable(arg0)
	local registerVal1 = Engine.FileshareGetQuota(arg0, "clip_private")
	if 0.000000 >= registerVal1.categorySlotsAvailable then
	end
	return true
end

function ShowOutOfClipsWarning(arg0)
	local registerVal1 = Dvar.tu9_noClipsWarning:exists()
	registerVal1 = Engine.DvarBool(nil, "tu9_noClipsWarning")
	if registerVal1 and registerVal1 then
		registerVal1 = ClipsAvailable(arg0)
	end
	return (not registerVal1)
end

function ShouldAddDollyCameraMarker(arg0)
	local registerVal1 = IsDemoContextDirectorMode()
	if not registerVal1 then
		return false
	end
	registerVal1 = Engine.ProfileBool(arg0, "demo_autoDollyRecord")
	if registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueGreaterThan(arg0, "demo.highlightedDollyCamMarker", -1.000000)
	if registerVal1 then
		return false
	end
	return true
end

function ShouldStartAutoDollyCamera(arg0)
	local registerVal1 = IsDemoContextDirectorMode()
	if not registerVal1 then
		return false
	end
	registerVal1 = Engine.ProfileBool(arg0, "demo_autoDollyRecord")
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueGreaterThan(arg0, "demo.highlightedDollyCamMarker", -1.000000)
	if registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.isRecordingDollyCameraPath")
	if registerVal1 then
		return false
	end
	return true
end

function ShouldStopAutoDollyCamera(arg0)
	local registerVal1 = IsDemoContextDirectorMode()
	if not registerVal1 then
		return false
	end
	registerVal1 = Engine.ProfileBool(arg0, "demo_autoDollyRecord")
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.isRecordingDollyCameraPath")
	if not registerVal1 then
		return false
	end
	return true
end

function ShouldEditDollyCameraMarker(arg0)
	local registerVal1 = IsDemoContextDirectorMode()
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.isRecordingDollyCameraPath")
	if registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueGreaterThan(arg0, "demo.highlightedDollyCamMarker", -1.000000)
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.editingDollyCameraMarker")
	if registerVal1 then
		return false
	end
	return true
end

function IsEditingDollyCameraMarker(arg0)
	local registerVal1 = IsDemoContextDirectorMode()
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueGreaterThan(arg0, "demo.highlightedDollyCamMarker", -1.000000)
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.editingDollyCameraMarker")
	if not registerVal1 then
		return false
	end
	return true
end

function IsRepositioningDollyCameraMarker(arg0)
	local registerVal1 = IsDemoContextDirectorMode()
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.editingDollyCameraMarker")
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.isRepositioningDollyCamMarker")
	if not registerVal1 then
		return false
	end
	return true
end

function IsFreeCameraLockedOnEntity(arg0)
	local registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.isFreeCameraLockedOnEntity")
	if not registerVal1 then
		return false
	end
	return true
end

function CanFreeCameraLockOnEntity(arg0)
	local registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.isFreeCameraEntityLockOnAllowed")
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueGreaterThan(arg0, "demo.highlightedFreeCameraLockOnEntity", 0.000000)
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.isFreeCameraLockedOnEntityActive")
	if registerVal1 then
		return false
	end
	return true
end

function ShouldAddLightmanMarker(arg0)
	local registerVal1 = IsDemoContextLighterMode()
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueGreaterThan(arg0, "demo.highlightedLightmanMarker", -1.000000)
	if registerVal1 then
		return false
	end
	return true
end

function ShouldEditLightmanMarker(arg0)
	local registerVal1 = IsDemoContextLighterMode()
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueGreaterThan(arg0, "demo.highlightedLightmanMarker", -1.000000)
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.editingLightmanMarker")
	if registerVal1 then
		return false
	end
	return true
end

function IsEditingLightmanMarker(arg0)
	local registerVal1 = IsDemoContextLighterMode()
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueGreaterThan(arg0, "demo.highlightedLightmanMarker", -1.000000)
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.editingLightmanMarker")
	if not registerVal1 then
		return false
	end
	return true
end

function IsRepositioningLightmanMarker(arg0)
	local registerVal1 = IsDemoContextLighterMode()
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.editingLightmanMarker")
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.isRepositioningLightmanMarker")
	if not registerVal1 then
		return false
	end
	return true
end

function IsInLightmanColorPicker(arg0)
	local registerVal1 = IsDemoContextLighterMode()
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.editingLightmanMarker")
	if not registerVal1 then
		return false
	end
	registerVal1 = IsGlobalModelValueTrue(nil, arg0, "demo.showLightmanColorPicker")
	if not registerVal1 then
		return false
	end
	return true
end

function ReachedLowestLightmanFloatParamValue(arg0, arg1)
	if not arg0.btnId then
		return true
	end
	if arg0.btnId == "lightmanlightintensity" then
		local registerVal4 = Engine.GetGlobalModel()
		local registerVal3 = Engine.GetModel(registerVal4, "demo.currentLightmanMarkerLightIntensity")
	else
		if arg0.btnId == "lightmanlightrange" then
			registerVal4 = Engine.GetGlobalModel()
			registerVal3 = Engine.GetModel(registerVal4, "demo.currentLightmanMarkerLightRange")
		end
	end
	if not registerVal3 then
		return true
	end
	registerVal3 = Engine.GetModelValue(registerVal3)
	if registerVal3 < 0.190000 then
		return true
	end
	return false
end

function ReachedHighestLightmanFloatParamValue(arg0, arg1)
	if not arg0.btnId then
		return true
	end
	if arg0.btnId == "lightmanlightintensity" then
		local registerVal4 = Engine.GetGlobalModel()
		local registerVal3 = Engine.GetModel(registerVal4, "demo.currentLightmanMarkerLightIntensity")
	else
		if arg0.btnId == "lightmanlightrange" then
			registerVal4 = Engine.GetGlobalModel()
			registerVal3 = Engine.GetModel(registerVal4, "demo.currentLightmanMarkerLightRange")
		end
	end
	if not registerVal3 then
		return true
	end
	registerVal3 = Engine.GetModelValue(registerVal3)
	if 9.910000 < registerVal3 then
		return true
	end
	return false
end

function IsSegmentInSelectedState(arg0, arg1)
	local registerVal2 = CoD.DemoUtility.Timeline_GetSelectedSegmentModel()
	local registerVal3 = arg0:getModel()
	registerVal3 = Engine.GetModel(registerVal2, "selected")
	if registerVal2 and registerVal2 == registerVal3 and registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		return registerVal4
	end
	return false
end

function IsTimelineEditorInMoveState(arg0)
	local registerVal1 = CoD.DemoUtility.Timeline_GetSelectedSegmentModel()
	if registerVal1 == nil then
	end
	return true
end

function SegmentCountGreaterThan(arg0, arg1)
	local registerVal2 = Engine.GetDemoSegmentCount()
	if arg1 >= registerVal2 then
	end
	return true
end

function CanChangeSegmentTransition(arg0, arg1)
	local registerVal2 = Engine.GetDemoSegmentCount()
	local registerVal4 = arg0:getModel()
	local registerVal3 = Engine.GetModel(registerVal4, "segmentNumber")
	if registerVal3 then
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 >= registerVal2 then
		end
		return true
	end
	return false
end

function IsSegmentTransition(arg0, arg1, arg2)
	local registerVal4 = arg0:getModel()
	local registerVal3 = Engine.GetModel(registerVal4, "segmentNumber")
	if registerVal3 then
		registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = tonumber(Engine.GetDemoSegmentInformation((registerVal4 - 1.000000), "transitionValue"))
		if registerVal5 ~= arg2 then
		end
		return true
	end
	return false
end

function HideVehicleReticle(arg0, arg1, arg2)
	if arg2.modelName == "vehicleType" then
	end
	local registerVal4 = arg0:getModel(arg1, "vehicleType")
	if not arg2.modelValue and registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
	end
	if registerVal5 ~= "spawner_enemy_54i_vehicle_raps_suicide_player" then
	end
	return true
end

function VehicleHasEnemyLock(arg0, arg1)
	local registerVal2 = IsSelfEnumModelValueTrue(arg0, arg1, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_UP)
	registerVal2 = IsSelfEnumModelValueTrue(arg0, arg1, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_DOWN)
	registerVal2 = IsSelfEnumModelValueTrue(arg0, arg1, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_LEFT)
	if not registerVal2 and not registerVal2 and not registerVal2 then
		registerVal2 = IsSelfEnumModelValueTrue(arg0, arg1, Enum.MissileLockedOnDirection.MISSILE_LOCKED_ON_DIRECTION_RIGHT)
	end
	return registerVal2
end

function IsVehicleOfType(arg0, ...)
	local registerVal1 = {}
	local registerVal2 = select("#", ...)
	registerVal1.n = registerVal2
	registerVal1 = {}
	local registerVal3 = Engine.GetModelForController(arg0)
	registerVal2 = Engine.GetModel(registerVal3, "vehicle.vehicleType")
	registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal1)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = string.find(registerVal3, ("_" .. value8))
		if registerVal9 then
			return true
		end
	end
	return false
end

function IsSelfPlayerName(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "isSelfPlayerName")
	if registerVal2 then
		local registerVal4 = Engine.GetModelValue(registerVal2)
	end
	return registerVal4
end

function ShouldDisplayFactionIconAtPrematchCountdown(arg0)
	local registerVal1 = CoDShared.IsGametypeTeamBased()
	if not registerVal1 then
		return false
	end
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "factions")
	registerVal1 = CoD.SafeGetModelValue(registerVal2, "playerFactionDisplayName")
	if registerVal1 == nil then
	end
	return true
end

function MapVoteInState(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "lobbyRoot.mapVote")
	if registerVal1 == nil then
		return false
	end
	local registerVal3 = Engine.GetGlobalModel()
	registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.lobbyNav")
	registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = LobbyData:UITargetFromId(registerVal3)
	if registerVal3 and registerVal4.lobbyType ~= Enum.LobbyType.LOBBY_TYPE_GAME then
		return false
	end
	registerVal4 = Engine.GetModelValue(registerVal1)
	local registerVal5 = tonumber(arg0)
	if registerVal5 ~= registerVal4 then
	end
	return true
end

function MapVotePreviousSelectable()
	local registerVal0 = MapVoteInState("1")
	if not registerVal0 then
		return false
	end
	local registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 then
	end
	registerVal1 = Engine.GetPlaylistPrevCount(Enum.LobbyModule.LOBBY_MODULE_HOST)
	local registerVal2 = Dvar.lobbyMapVotePrevMapPlayCount:get()
	if registerVal2 <= registerVal1 then
		return false
	end
	return true
end

function MapVoteTimerActive()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "MapVote.timerActive")
	if registerVal0 == nil then
		return false
	end
	registerVal1 = LobbyData.GetLobbyNav()
	local registerVal2 = LobbyData:UITargetFromId(registerVal1)
	if registerVal2.lobbyTimerType == LuaEnums.TIMER_TYPE.TESTING then
		return false
	end
	local registerVal3 = Engine.GetModelValue(registerVal0)
	if registerVal3 == nil or registerVal3 == 0.000000 then
	end
	return true
end

function IsScorestreakEquipped(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal3 and registerVal4 ~= CoD.CACUtility.EmptyItemIndex then
		local registerVal6 = arg0:getModel()
		local registerVal5 = CoD.CACUtility.GetAttachedItemSlot(registerVal6, registerVal4, CoD.CACUtility.KillstreakNameList)
		if registerVal5 == nil then
		end
		return true
	end
	return false
end

function IsValidScorestreakIndex(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "itemIndex")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 == CoD.CACUtility.EmptyItemIndex then
		end
		return true
	end
	return false
end

function IsGamepad(arg0)
	if CoD.useController then
		local registerVal1 = Engine.LastInput_Gamepad(arg0)
	end
	return registerVal1
end

function IsMouse(arg0)
	if CoD.useMouse then
		local registerVal1 = Engine.LastInput_Mouse(arg0)
	end
	return registerVal1
end

function IsDurangoGamepad(arg0)
	local registerVal1 = IsDurango()
	registerVal1 = IsPC()
	if not registerVal1 and registerVal1 then
		registerVal1 = Engine.GamepadType(arg0)
		if registerVal1 ~= Enum.gamepadType_e.GAMEPAD_TYPE_DURANGO then
		end
	end
	return true
end

function IsOrbisGamepad(arg0)
	local registerVal1 = IsOrbis()
	registerVal1 = Engine.LastInput_Vita(arg0)
	if arg0 or registerVal1 then
		registerVal1 = IsPC()
		if registerVal1 then
			registerVal1 = Engine.GamepadType(arg0)
			if registerVal1 ~= Enum.gamepadType_e.GAMEPAD_TYPE_ORBIS then
			end
		end
	end
	return true
end

function IsVitaGamepad(arg0)
	local registerVal1 = IsOrbis()
	if registerVal1 then
		registerVal1 = Engine.LastInput_Vita(arg0)
	end
	return registerVal1
end

function AutomaticallyOpenAAR(arg0)
	local registerVal1 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal1 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if 1.000000 < registerVal1 or 1.000000 < registerVal1 then
		return false
	end
	registerVal1 = CoD.GetPlayerStats(arg0)
	local registerVal2 = registerVal1.AfterActionReportStats.lobbyPopup:get()
	if registerVal2 == "summary" or registerVal2 == "promotion" then
		return true
	end
end

function WasCampaignSoloGame(arg0)
	local registerVal1 = Engine.GetScoreboardTeamClientCount(Enum.team_t.TEAM_ALLIES)
	if registerVal1 ~= 1.000000 then
	end
	return true
end

function IsAARValid(arg0)
	local registerVal1 = CoD.AARUtility.UseTestData()
	if registerVal1 then
		return true
	end
	registerVal1 = CoD.GetPlayerStats(arg0, CoD.STATS_LOCATION_STABLE)
	local registerVal2 = registerVal1.PlayerStatsList.RANK.StatValue:get()
	if registerVal1 and registerVal1.PlayerStatsList and registerVal1.PlayerStatsList.RANK and registerVal1 or not registerVal2 then
		return false
	end
	registerVal2 = CoD.GetPlayerStats(arg0)
	local registerVal3 = Engine.IsMultiplayerGame()
	registerVal3 = IsArenaMode()
	if registerVal3 and not registerVal3 then
		registerVal3 = Engine.GetCurrentGameType()
		if registerVal3 ~= "" and registerVal1 or not registerVal2.PlayerStatsByGameType[registerVal3] then
			return false
		end
	end
	registerVal3 = registerVal2.AfterActionReportStats.lobbyPopup:get()
	if registerVal3 == "summary" then
		return true
	end
	local registerVal4 = Engine.GetModelForController(arg0)
	registerVal3 = Engine.GetModel(registerVal4, "aarType")
	if registerVal3 then
		registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = IsLAN()
		if registerVal1 or registerVal4 ~= "lan" then
			registerVal5 = IsLAN()
			if not registerVal5 then
				if registerVal4 ~= "custom" and registerVal4 ~= "public" then
				end
			end
		end
		return true
	end
end

function CanShowAAR(arg0)
	local registerVal1 = Engine.IsMultiplayerGame()
	local registerVal2 = Engine.IsZombiesGame()
	if registerVal1 and CoD.mpFreshStartPerformed then
		return false
	end
	if registerVal2 and CoD.zmFreshStartPerformed then
		return false
	end
	local registerVal3 = IsFreeRunLobby()
	if registerVal3 then
		return false
	end
	registerVal3 = IsInTheaterMode()
	if registerVal3 then
		return false
	end
	if not registerVal1 then
	else
		registerVal3 = CoD.AARUtility.UseTestData()
		if not registerVal3 then
			registerVal3 = Engine.IsStableStatsBufferInitialized(arg0)
		end
	end
	return registerVal3
end

function AnyRewardsEarnedDuringMatch(arg0)
	return CoD.AARUtility.AnyRewardsEarnedDuringMatch(arg0)
end

function HasFriends(arg0)
	local registerVal1 = Engine.GetFriendsCount(arg0, Enum.PresenceFilter.PRESENCE_FILTER_ALL)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function HasRecentPlayers(arg0)
	local registerVal1 = Engine.GetRecentPlayersCount(arg0, Enum.PresenceFilter.PRESENCE_FILTER_ALL)
	if 0.000000 >= registerVal1 then
	end
	return true
end

function IsSocialPlayersListEmpty(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "socialRoot")
	registerVal2 = Engine.CreateModel(registerVal1, "tab")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= nil then
		if registerVal3 == "friends" then
			return HasFriends(arg0)
		else
			if registerVal3 == "recent" then
				return HasRecentPlayers(arg0)
			end
		end
	end
	return false
end

function IsSocialGroupsTabOpen(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = CoD.SafeGetModelValue(registerVal2, "socialRoot.tab")
	if registerVal1 ~= "groups" then
	end
	return true
end

function IsInTitle(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "activity")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 == Enum.PresenceActivity.PRESENCE_ACTIVITY_ONLINE_NOT_IN_TITLE then
			return false
		else
			if registerVal3 == Enum.PresenceActivity.PRESENCE_ACTIVITY_OFFLINE then
				return false
			end
		end
	end
	return true
end

function IsJoinable(arg0, arg1)
	local registerVal2 = LuaUtils.LobbyIsLocked()
	if registerVal2 then
		return false
	end
	local registerVal3 = Engine.GetGlobalModel()
	registerVal2 = Engine.GetModel(registerVal3, "socialRoot")
	registerVal3 = CoD.SafeGetModelValue(registerVal2, "tab")
	local registerVal4 = arg0:getModel(arg1, "joinable")
	if registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
		if registerVal5 == Enum.LobbyJoinable.LOBBY_JOINABLE_YES then
			return true
		else
			local registerVal6 = arg0:getModel(arg1, "friend")
			local registerVal7 = Engine.GetModelValue(registerVal6)
			if registerVal5 == Enum.LobbyJoinable.LOBBY_JOINABLE_YES_FRIENDS_ONLY and registerVal3 ~= "recent" and registerVal3 ~= "groupMembers" and registerVal6 and registerVal7 then
				return true
			end
		end
	end
	return false
end

function IsSocialPartyLeader(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "leader")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == 1.000000 then
		return true
	end
	return false
end

function IsSelectedFriendXuidEqualToControllerXuid(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "Social.selectedFriendXUID"))
	local registerVal3 = Engine.GetXUID64(arg0)
	if registerVal2 ~= registerVal3 then
	end
	return true
end

function ShouldHideJoinButton(arg0, arg1, arg2)
	local registerVal3 = PropertyIsTrue(arg0, arg2)
	if not registerVal3 then
		registerVal3 = IsSelectedFriendXuidEqualToControllerXuid(arg1)
	end
	return registerVal3
end

function HideWinnersLabelsAndInfo(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "gameScore.draw")
	local registerVal3 = Engine.GetGametypeSetting("teamCount")
	if registerVal3 >= 2.000000 then
	end
	if registerVal2 then
		local registerVal4 = Engine.GetModelValue(registerVal2)
	end
	if not registerVal1 or true then
		return true
	end
end

function IsScoreboardPingAsBars(arg0, arg1)
	local registerVal2 = Dvar.cg_ScoresPing_Interval:get()
	if 1.000000 >= registerVal2 then
	end
	return true
end

function ScoreboardVisible(arg0)
	local registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
	if not registerVal1 then
		registerVal1 = IsModelValueEqualTo(arg0, "forceScoreboard", 1.000000)
	end
	return registerVal1
end

function IsScoreboardPlayerMuted(arg0, arg1)
	local registerVal3 = arg1:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "clientNum")
	return Engine.IsPlayerMutedByClientNum(arg0, Enum.LobbyType.LOBBY_TYPE_GAME, registerVal2)
end

function IsScoreboardPlayerCodCaster(arg0, arg1)
	local registerVal3 = arg1:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "clientNum")
	if registerVal2 ~= nil and 0.000000 <= registerVal2 then
		registerVal3 = Engine.GetTeamID(arg0, registerVal2)
		if registerVal3 ~= Enum.team_t.TEAM_SPECTATOR then
		end
		return true
	end
	return false
end

function ScoreboardMuteButtonPromptHidden(arg0, arg1)
	local registerVal2 = ScoreboardVisible(arg1)
	if not registerVal2 then
		return true
	end
	registerVal2 = CoD.IsShoutcaster(arg1)
	if registerVal2 then
		return true
	end
	local registerVal3 = Engine.GetModelForController(arg1)
	registerVal2 = Engine.GetModel(registerVal3, "scoreboardInfo.muteButtonPromptVisible")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 and not registerVal3 then
		return true
	end
	local registerVal4 = arg0:getModel()
	registerVal3 = CoD.SafeGetModelValue(registerVal4, "clientNum")
	registerVal4 = Engine.GetMatchScoreboardClientXuid(registerVal3)
	if registerVal3 ~= nil and registerVal4 ~= nil then
	end
	return true
end

function ScoreboardCanShowGamerCard(arg0, arg1)
	if not CoD.isDurango then
		return false
	end
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "clientNum")
	if registerVal2 == nil or registerVal2 < 0.000000 then
		return false
	end
	registerVal3 = Engine.GetMatchScoreboardClientXuid(registerVal2)
	if registerVal3 == nil then
	end
	return true
end

function IsScoreboardPlayerSelf(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "clientNum")
	if registerVal2 then
		local registerVal3 = CoD.IsShoutcaster(arg1)
		if registerVal3 then
			registerVal3 = Engine.GetPredictedClientNum(arg1)
			local registerVal4 = Engine.GetModelValue(registerVal2)
			if registerVal3 ~= registerVal4 then
			end
			return true
		else
			local registerVal5 = IsInGame()
			registerVal5 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			if registerVal5 and registerVal5 then
				registerVal5 = Engine.GetMaxControllerCount()
			end
			for index5=0.000000, (registerVal5 - 1.000000), 1.000000 do
				local registerVal9 = Engine.IsControllerBeingUsed(index5)
				if registerVal9 then
					if CoD.isPC then
						registerVal9 = Engine.GetModelValue(registerVal2)
						if registerVal9 and 0.000000 <= registerVal9 then
							local registerVal10 = Engine.GetMatchScoreboardClientXuid(registerVal9)
							local registerVal11 = Engine.GetXUID64(index5)
							if registerVal10 ~= registerVal11 then
							end
							return true
						else
							registerVal10 = GetScoreboardPlayerName(index5, Engine.GetModelValue(registerVal2))
							registerVal9 = string.gsub(registerVal10, "%[.+%]", "")
							registerVal10 = Engine.GetSelfGamertag(index5)
							if registerVal9 == registerVal10 then
								return true
							end
						end
					end
				end
			end
		end
	end
	return false
end

function ShowMatchBonus(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal2, "gameScore.isRoundEnd")
	local registerVal4 = Engine.GetModel(registerVal2, "gameScore.matchBonus")
	if registerVal4 then
		local registerVal6 = Engine.GetModelValue(registerVal4)
	end
	registerVal6 = Engine.GetModelValue(registerVal3)
	if not arg1 or registerVal6 == 0.000000 then
	end
	return true
end

function IsVictory(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "gameScore.isRoundEnd")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = Engine.GetModel(registerVal1, "gameScore.victory")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if not registerVal3 then
	else
	end
	return true
end

function IsDefeat(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "gameScore.isRoundEnd")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = Engine.GetModel(registerVal1, "gameScore.defeat")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if not registerVal3 then
	else
	end
	return true
end

function IsStarterPack(arg0)
	if CoD.isPC then
		local registerVal1 = Engine.IsStarterPack()
	end
	return registerVal1
end

function IsStarterPackMaxLevel(arg0)
	local registerVal1 = IsStarterPack(arg0)
	registerVal1 = CoD.GetPlayerStats(arg0)
	local registerVal2 = registerVal1.PlayerStatsList.RANK.StatValue:get()
	if registerVal1 and registerVal1 and registerVal2 and CoD.MAX_RANK_STARTER_PACK then
		if CoD.MAX_RANK_STARTER_PACK > registerVal2 then
		end
		return true
	end
	return false
end

function IsStarterPackWatermarkHidden(arg0, arg1)
	local registerVal2 = IsStarterPack(arg1)
	if registerVal2 then
		registerVal2 = IsCurrentMenu(arg0, "MPAAR")
		if registerVal2 then
			registerVal2 = IsStarterPackMaxLevel(arg1)
		end
	end
	return true
end

function IsStarterPackRestrictedButton(arg0, arg1)
	if arg0.starterPackUpgrade ~= true then
	end
	return true
end

function IsStarterPackNotAvailableButton(arg0, arg1)
	local registerVal2 = IsStarterPack(arg1)
	registerVal2 = IsStarterPackRestrictedButton(arg0, arg1)
	if arg1 or not registerVal2 then
		registerVal2 = IsChunkDownloading(arg0, arg1)
	end
	return registerVal2
end

function IsChunksRestrictedButtonByParty(arg0, arg1)
	if not arg0 then
		return false
	end
	local registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal3 then
	end
	local registerVal4 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	if #registerVal4.sessionClients == 1.000000 then
		return false
	end
	local registerVal5, registerVal6, registerVal7 = ipairs(registerVal4.sessionClients)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal10 = PartyMemberMissingContent(value9, arg0.requiredChunk)
		if registerVal10 then
			return true
		end
	end
	return false
end

function IsStarterPackRestrictedButtonByParty(arg0, arg1)
	if not arg0 then
		return false
	end
	local registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal3 then
	end
	local registerVal4 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	if #registerVal4.sessionClients == 1.000000 then
		return false
	end
	local registerVal5 = IsStarterPackRestrictedButton(arg0, arg1)
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal4.sessionClients)
	if registerVal5 and .isStarterPack == 1.000000 then
		return true
	end
	return false
end

function IsRestrictedButtonByParty(arg0, arg1)
	if not arg0 then
		return false
	end
	local registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal3 then
	end
	local registerVal4 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	if #registerVal4.sessionClients == 1.000000 then
		return false
	end
	local registerVal5 = IsStarterPackRestrictedButton(arg0, arg1)
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal4.sessionClients)
	if registerVal5 and .isStarterPack == 1.000000 then
		return true
	else
		local registerVal11 = PartyMemberMissingContent(, arg0.requiredChunk)
		if registerVal11 then
			return true
		end
	end
	return false
end

function IsChunkDownloading(arg0, arg1)
	local registerVal2 = IsGameModeOwned(arg0.requiredChunk)
	if registerVal2 == true then
		registerVal2 = IsGameModeInstalled(arg1, arg0.requiredChunk)
	else
	end
	return true
end

function IsFreeRunFinished(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "FreeRun")
	local registerVal3 = Engine.GetModel(registerVal2, "runState")
	local registerVal5 = Engine.GetModelValue(registerVal3)
	if registerVal5 == 2.000000 then
	end
	return true
end

function ShouldShowFreerunTimeClips(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "FreeRun.freeRunInfo.bestTime")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == nil or registerVal3 <= 0.000000 then
		return false
	end
	local registerVal5 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.CreateModel(registerVal5, "FreeRun.runState")
	registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 ~= CoD.FreerunUtility.FR_STATE_RUNNING then
	end
	return true
end

function IsFreeRunMap(arg0)
	if CoD.mapsTable[arg0] then
		if CoD.mapsTable[arg0].isFreeRunMap == nil or CoD.mapsTable[arg0].isFreeRunMap ~= true then
		end
		return true
	end
	return false
end

function IsFreeRunLobby()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	if registerVal1 == LobbyData.UITargets.UI_FRLOBBYONLINEGAME.id or registerVal1 == LobbyData.UITargets.UI_FRLOBBYLANGAME.id then
		return true
	end
	return false
end

function ShouldShowPartyPrivacy(arg0)
	local registerVal1 = Engine.GetLobbyUIScreen()
	local registerVal2 = LobbyData:UITargetFromId(registerVal1)
	local registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal3 and registerVal2.lobbyMode == Enum.LobbyMode.LOBBY_MODE_CUSTOM then
	end
	local registerVal5 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal5 then
		return false
	end
	registerVal5 = Engine.GetLobbyUIScreen()
	local registerVal6 = LobbyData:UITargetFromId(registerVal5)
	if registerVal6.maxClients <= 1.000000 then
		return false
	end
	return true
end

function ShouldShowLeaveParty(arg0)
	local registerVal1 = Engine.GetLobbyUIScreen()
	local registerVal2 = LobbyData:UITargetFromId(registerVal1)
	local registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal3 and registerVal2.lobbyMode == Enum.LobbyMode.LOBBY_MODE_CUSTOM then
	end
	local registerVal6 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal6 == false then
	end
	registerVal6 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
	if #registerVal6.sessionClients == 1.000000 then
		return false
	end
	local registerVal8, registerVal9, registerVal10 = ipairs(registerVal6.sessionClients)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		if value12.isLocal == 1.000000 then
		end
	end
	if (0.000000 + 1.000000) == #registerVal6.sessionClients then
		return false
	end
	registerVal8 = LuaUtils.LobbyIsLocked()
	if registerVal8 then
		return false
	end
	return true, CoDLUIDecompiler.LuaRegister
end

function ShouldShowPromotePlayer(arg0)
	return false
end

function ShouldShowBootPlayer(arg0)
	local registerVal1 = Engine.GetLobbyUIScreen()
	local registerVal2 = LobbyData:UITargetFromId(registerVal1)
	local registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal3 and registerVal2.lobbyMode == Enum.LobbyMode.LOBBY_MODE_CUSTOM then
	end
	local registerVal5 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal5 then
		return false
	end
	registerVal5 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	if #registerVal5.sessionClients == 1.000000 then
		return false
	end
	local registerVal7, registerVal8, registerVal9 = ipairs(registerVal5.sessionClients)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		if value11.isLocal == 1.000000 then
		end
	end
	if (0.000000 + 1.000000) == #registerVal5.sessionClients then
		return false
	end
	registerVal7 = LuaUtils.LobbyIsLocked()
	if registerVal7 then
		return false
	end
	return true
end

function IsBleedOutVisible(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "stateFlags")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 and registerVal3 ~= nil then
		local registerVal6 = {}
		registerVal6 = {Enum.BleedOutStateFlags.BLEEDOUT_STATE_FLAG_BLEEDING_OUT, Enum.BleedOutStateFlags.BLEEDOUT_STATE_FLAG_BEING_REVIVED}
		return CoD.BitUtility.IsAnyBitSet(registerVal3, registerVal6)
	end
	return false
end

function PaintshopEditAvailable(arg0, arg1)
	local registerVal2 = IsPC()
	registerVal2 = IsPrimaryControllerIndex(arg1)
	if registerVal2 and not registerVal2 then
		return false
	end
	return true
end

function DropDownListIsInUse(arg0)
	return arg0.inUse
end

function CheckBoxOptionChecked(arg0, arg1)
	if arg1.menu then
	else
	end
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = CoD.PCUtil.GetOptionInfo(registerVal3, arg1.controller)
		local registerVal5 = type(registerVal4.currentValue)
		if registerVal5 == "number" then
			registerVal5 = math.abs((registerVal4.currentValue - registerVal4.highValue))
			if registerVal5 >= 0.010000 then
			end
			return true
		else
			registerVal5 = type(registerVal4.currentValue)
			if registerVal5 == "string" then
				if registerVal4.currentValue ~= registerVal4.highValue then
				end
				return true
			end
		end
	end
	return false
end

function ShouldOpenGraphicsConfirm(arg0, arg1, arg2)
	return CoD.PCUtil.IsOptionsDirty(arg2)
end

function ShouldHideButtonPromptForPC(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5 = {"Button", "Label"}
	local registerVal3 = CoD.PCUtil.GetElementModelValues(arg0, registerVal5)
	if CoD.isPC and registerVal3 then
		if registerVal3.Label ~= "" then
			if registerVal3.Label == "MENU_SELECT" and registerVal3.Button == Enum.LUIButton.LUI_KEY_XBA_PSCROSS then
				if arg2 then
					if arg2.menuName == "Scorestreaks" or arg2.menuName == "StartMenu_Options_MusicTracks" then
						return false
					end
				end
				return true
			end
		end
	end
	return false
end

function IsServerBrowserEnabled()
	local registerVal0 = Dvar.serverbrowser_show:get()
	if not registerVal0 then
		registerVal0 = Dvar.mods_enabled:get()
	end
	return registerVal0
end

function IsFilterActive(arg0, arg1)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "attribute")
		if registerVal4 then
			local registerVal5 = Engine.GetModelValue(registerVal4)
			if registerVal5 == "any" then
				local registerVal6 = Engine.SteamServerBrowser_IsAnyAttributeFilterActive()
			else
				registerVal6 = Engine.SteamServerBrowser_IsAttributeFilterActive(registerVal5)
			else
				registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "type"))
				registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal3, "id"))
				if registerVal6 == "any" then
					local registerVal7 = Engine.SteamServerBrowser_IsAnyFilterActive(registerVal5)
				else
					registerVal7 = Engine.SteamServerBrowser_IsFilterActive(registerVal5, registerVal6)
				end
			end
		end
	end
	return registerVal7
end

function IsSteamServerBrowserEmpty()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "serverBrowser")
	registerVal1 = Engine.CreateModel(registerVal0, "serverListCount")
	local registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 == nil or registerVal2 == 0.000000 then
		return true
	end
	return false
end

function IsSteamServerBrowserUpdating()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "serverBrowser")
	registerVal1 = Engine.CreateModel(registerVal0, "serverListUpdatedCount")
	local registerVal2 = Engine.GetModelValue(registerVal1)
	if 0.000000 >= registerVal2 then
	end
	return true
end

function SteamServerSortMatchesHeaderAscending(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "serverBrowser")
	registerVal2 = Engine.CreateModel(registerVal1, "serverListSortType")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if arg0.ascendingSort and registerVal3 then
		if arg0.ascendingSort ~= registerVal3 then
		end
		return true
	end
	return false
end

function SteamServerSortMatchesHeaderDescending(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "serverBrowser")
	registerVal2 = Engine.CreateModel(registerVal1, "serverListSortType")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if arg0.descendingSort and registerVal3 then
		if arg0.descendingSort ~= registerVal3 then
		end
		return true
	end
	return false
end

function SteamServerIsCurrentServerTypeFavorites(arg0)
	local registerVal1 = Engine.SteamServerBrowser_GetCurrentServerRequestType()
	if registerVal1 == Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_FAVORITES then
		return true
	end
	return false
end

function SteamServerIsCurrentServerTypeHistory(arg0)
	local registerVal1 = Engine.SteamServerBrowser_GetCurrentServerRequestType()
	if registerVal1 == Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_HISTORY then
		return true
	end
	return false
end

function DropdownListIsInUse_Console(arg0)
	return arg0.inUse
end

function ShouldShowMOTD(arg0)
	return Engine.ShouldShowMOTD(arg0)
end

function ShouldShowMtxCommsMOTD(arg0)
	local registerVal1 = Dvar.ui_execdemo_beta:get()
	if registerVal1 then
		return false
	end
	registerVal1 = ShouldSkipMtxCommsMOTD(arg0)
	if registerVal1 then
		return false
	end
	registerVal1 = Engine.GetMarketingMessage(arg0, "motd")
	if registerVal1 ~= nil then
		return true
	end
	return false
end

function ShouldShowMtxCommsMOTDPopup(arg0)
	local registerVal1 = Engine.GetMarketingMessage(arg0, "motd")
	local registerVal2 = ShouldSkipMtxCommsMOTD(arg0)
	if registerVal2 then
		return false
	end
	if registerVal1 ~= nil and registerVal1.messageViewReported ~= true then
		return true
	end
	return false
end

function ShouldSkipMtxCommsMOTD(arg0)
	local registerVal1 = Engine.GetMarketingMessage(arg0, "motd")
	if registerVal1 ~= nil then
		if registerVal1.action == "pass" or registerVal1.action == "skip" then
			return true
		end
	end
	return false
end

function FeaturedWidgetControllerVisible(arg0)
	local registerVal1 = Engine.GetFeaturedCardsData()
	if registerVal1 ~= nil and 2.000000 <= registerVal1.validCardsCount then
		return true
	else
		local registerVal2 = HasLiveEvent(arg0)
		registerVal2 = IsExperimentPromotionActive(arg0)
		if not registerVal1 or registerVal2 then
			if 1.000000 <= registerVal1.validCardsCount then
				return true
			else
			else
				registerVal2 = HasLiveEvent(arg0)
				registerVal2 = IsExperimentPromotionActive(arg0)
				if registerVal2 and registerVal2 then
					return true
				else
					registerVal2 = Dvar.ui_enableZMHDFeaturedCard:get()
					registerVal2 = Dvar.ui_enableZMHDFeaturedCard:get()
					if registerVal2 == 1.000000 or registerVal2 == "1" then
						return true
					else
						if CoD.isZombie then
							return true
						else
							return false
						end
					end
				end
			end
		end
	end
end

function IsBubbleGumBuffEquipped(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if not registerVal3 then
		return false
	end
	local registerVal4 = Engine.GetModel(registerVal3, "itemIndex")
	if not registerVal4 then
		return false
	end
	local registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = Engine.GetEquippedBubbleGumPack(arg2)
	for index7=0.000000, (CoD.BubbleGumBuffs.NumBuffsPerPack - 1.000000), 1.000000 do
		local registerVal11 = Engine.GetBubbleGumBuff(arg2, registerVal6, index7)
		if registerVal11 == registerVal5 then
			return true
		end
	end
	return false
end

function IsOutOfLobbyBubbleGum(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "itemIndex")
	if not registerVal2 then
		return false
	end
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = CoD.CACUtility.IsItemConsumable(registerVal3)
	if not registerVal4 then
		return false
	end
	registerVal4 = arg0:getModel(arg1, "remaining")
	if not registerVal4 then
		return false
	end
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 ~= 0.000000 then
	end
	return true
end

function HasBGBTokensRemaining(arg0, arg1)
	local registerVal2 = Engine.GetZMVials(arg1)
	if 0.000000 >= registerVal2 then
	end
	if true == false then
		return false
	end
	local registerVal3 = arg0:getModel(arg1, "price")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.GetZMVials(arg1)
	if registerVal4 > registerVal5 then
	end
	return true
end

function IsOwedVials(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	if not registerVal1 then
		return false
	end
	local registerVal2 = Dvar.tu5_enableVialsOwed:exists()
	if registerVal2 then
		registerVal2 = registerVal1.vialsOwed:get()
		if 0.000000 < registerVal2 then
			registerVal2 = Dvar.tu5_enableVialsOwed:get()
		else
		end
		return true
	else
		registerVal2 = registerVal1.vialsOwed:get()
		if 0.000000 >= registerVal2 then
		end
		return true
	end
end

function HasSeenMegaChewFactoryFirstTimePopup(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	if registerVal1 then
		local registerVal2 = registerVal1.extraBools[0.000000]:get()
		if registerVal2 ~= 1.000000 then
		end
		return true
	end
	return false
end

function HasSeenNewtonsCookbookFirstTimePopup(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	if registerVal1 then
		local registerVal2 = registerVal1.extraBools[2.000000]:get()
		if registerVal2 ~= 1.000000 then
		end
		return true
	end
	return false
end

function HasGobbleGumCookbookUses(arg0)
	local registerVal1 = CoD.BubbleGumBuffUtility.GetTotalRemainingDistills(arg0)
	local registerVal2 = CoD.BubbleGumBuffUtility.GetRecipeDistillCost()
	if registerVal2 > registerVal1 then
	end
	return true
end

function CanGetFreeGobblegumCookbookUses(arg0)
	local registerVal1 = CoD.BubbleGumBuffUtility.GetRemainingUsesForDistill(arg0, CoD.BubbleGumBuffUtility.FREE_DISTILL)
	local registerVal2 = CoD.BubbleGumBuffUtility.GetRecipeDistillCost()
	registerVal1 = CoD.BubbleGumBuffUtility.GetDistillCooldown(arg0, CoD.BubbleGumBuffUtility.FREE_DISTILL)
	if registerVal1 >= registerVal2 or registerVal1 > 0.000000 then
	end
	return true
end

function HasGobbleGumCookbookIngredients(arg0)
	local registerVal1 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "haveAllIngredients")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	return registerVal3
end

function ShowGobbleGumDistillTimer(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "distillID")
	if registerVal2 then
		if registerVal2 == CoD.BubbleGumBuffUtility.FREE_DISTILL then
			registerVal3 = CoD.BubbleGumBuffUtility.GetDistillCooldown(arg1, registerVal2)
			registerVal3 = CoD.BubbleGumBuffUtility.GetRemainingUsesForDistill(arg1, CoD.BubbleGumBuffUtility.FREE_DISTILL)
			local registerVal4 = CoD.BubbleGumBuffUtility.GetRecipeDistillCost()
			if 0.000000 >= registerVal3 or registerVal3 >= registerVal4 then
			end
			return true
		else
			registerVal3 = CoD.BubbleGumBuffUtility.GetDistillCooldown(arg1, registerVal2)
			if 0.000000 >= registerVal3 then
			end
			return true
		end
	end
	return false
end

function IsGobbleGumIngredientType(arg0, arg1, arg2)
	local registerVal5 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg0)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "recipeIndex"))
	local registerVal4 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeForIndex(arg0, registerVal3)
	local registerVal7 = Engine.TableLookup(arg0, "gamedata/stats/zm/zm_statsTable.csv", 0.000000, registerVal4.ingredients[arg1].itemIndex, 20.000000)
	if registerVal4.ingredients[arg1] and registerVal7 then
		if arg2 ~= registerVal7 then
		end
		return true
	end
	return false
end

function IsGobbleGumResultType(arg0, arg1)
	local registerVal4 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "recipeIndex"))
	local registerVal3 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeForIndex(arg0, registerVal2)
	local registerVal6 = Engine.TableLookup(arg0, "gamedata/stats/zm/zm_statsTable.csv", 0.000000, registerVal3.result.itemIndex, 20.000000)
	if registerVal3.result and registerVal6 then
		if arg1 ~= registerVal6 then
		end
		return true
	end
	return false
end

function IsModelOnesDigitEqualTo(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg0)
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg1)
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	if (registerVal4 % 10.000000) ~= arg2 then
	end
	return true
end

function IsModelTensDigitEqualTo(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg0)
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg1)
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	if (((registerVal4 % 100.000000) - (registerVal4 % 10.000000)) / 10.000000) ~= arg2 then
	end
	return true
end

function IsModelHundredsDigitEqualTo(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg0)
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, arg1)
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	if (((registerVal4 % 1000.000000) - (registerVal4 % 100.000000)) / 100.000000) ~= arg2 then
	end
	return true
end

function IsConsumableCountOnesDigitEqualTo(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "itemIndex")
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	local registerVal5 = GetConsumableCountFromIndex(arg1, registerVal4)
	if (registerVal5 % 10.000000) ~= arg2 then
	end
	return true
end

function IsConsumableCountTensDigitEqualTo(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "itemIndex")
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	local registerVal5 = GetConsumableCountFromIndex(arg1, registerVal4)
	if (((registerVal5 % 100.000000) - (registerVal5 % 10.000000)) / 10.000000) ~= arg2 then
	end
	return true
end

function IsConsumableCountHundredsDigitEqualTo(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "itemIndex")
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	local registerVal5 = GetConsumableCountFromIndex(arg1, registerVal4)
	if (((registerVal5 % 1000.000000) - (registerVal5 % 100.000000)) / 100.000000) ~= arg2 then
	end
	return true
end

function IsConsumableCountGreaterThanOrEqualTo(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "itemIndex")
	end
	registerVal4 = Engine.GetModelValue(registerVal4)
	if registerVal4 == nil then
		return false
	end
	local registerVal5 = GetConsumableCountFromIndex(arg1, registerVal4)
	if arg2 > registerVal5 then
	end
	return true
end

function IsShowcaseWeaponEquipped(arg0, arg1)
	local registerVal5 = arg0:getModel()
	local registerVal4 = Engine.GetModel(registerVal5, "itemIndex")
	if not registerVal4 then
		return false
	end
	registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = Engine.GetHeroShowcaseWeaponAttribute(arg1, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, "weaponIndex")
	if registerVal5 ~= registerVal6 then
	end
	return true
end

function InCharacterCustomizationMode(arg0)
	if CoD.CCUtility.customizationMode ~= arg0 then
	end
	return true
end

function CharacterHasAnyWeaponUnlocked(arg0, arg1)
	local registerVal2 = IsProgressionEnabled(arg0)
	if not registerVal2 then
		registerVal2 = IsLive()
		registerVal2 = IsFirstTimeSetup(arg0, Enum.eModes.MODE_MULTIPLAYER)
		if arg1 or not registerVal2 then
			return true
		end
	end
	if not arg1.heroIndex then
		local registerVal4 = arg1:getModel()
		local registerVal3 = CoD.SafeGetModelValue(registerVal4, "heroIndex")
	end
	if not registerVal3 then
		return false
	end
	registerVal3 = IsMultiplayer()
	registerVal3 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
	local registerVal5 = CoDShared.IsLootHero(registerVal3[(registerVal3 + 1.000000)])
	if registerVal3 and registerVal3[(registerVal3 + 1.000000)] and registerVal5 then
		return true
	end
	for index3=0.000000, (Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_COUNT - 1.000000), 1.000000 do
		local registerVal7 = Engine.GetLoadoutInfoForHero(Enum.eModes.MODE_MULTIPLAYER, registerVal3, index3)
		local registerVal8 = Engine.IsItemLocked(arg0, registerVal7.itemIndex, Enum.eModes.MODE_MULTIPLAYER)
		registerVal8 = Engine.IsItemPurchased(arg0, registerVal7.itemIndex, Enum.eModes.MODE_MULTIPLAYER)
		if not registerVal8 and registerVal8 then
			return true
		end
	end
	return false
end

function IsCharacterBlackjack(arg0, arg1)
	local registerVal2 = arg1:getModel(arg0, "heroIndex")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = CoD.CCUtility.GetBlackjackHeroIndex()
	if registerVal3 ~= registerVal4 then
	end
	return true
end

function IsBlackjackContractActive(arg0)
	local registerVal1 = Engine.ConsumableGet(arg0, "blackjack", "consumed")
	local registerVal2 = Engine.ConsumableGet(arg0, "blackjack", "awarded")
	if registerVal1 >= registerVal2 then
	end
	return true
end

function IsCodPointsSaleActivated(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "metadata")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = Dvar.store_activateCPSale:exists()
	registerVal4 = Dvar.store_activateCPSale:get()
	registerVal4 = CoD.StoreUtility.IsCodPointSalePackage(registerVal3)
	if registerVal2 and registerVal4 and registerVal4 == "1" and registerVal4 then
		return true
	end
	return false
end

function ShouldDisplayDiscountedSeasonPass(arg0, arg1)
	local registerVal2 = Dvar.store_seasonpassdiscount:exists()
	registerVal2 = Dvar.store_seasonpassdiscount:get()
	if arg1 or registerVal2 == "0" then
		return false
	end
	registerVal2 = LuaUtils.GetSkuName()
	if registerVal2 == nil then
		return false
	end
	local registerVal3 = IsOrbis()
	if registerVal3 and registerVal2 ~= "SceaEnFr" and registerVal2 ~= "SceaMsEn" and registerVal2 ~= "SceaBpEn" then
		return false
	end
	registerVal3 = Engine.OwnSeasonPass(arg1)
	if registerVal3 then
		return false
	end
	registerVal3 = Engine.HasEntitlement(arg1, "dlc1")
	if not registerVal3 then
		return false
	end
	return true
end

function ShouldShowInfiniteWarfareCategory(arg0)
	local registerVal1 = IsOrbis()
	if registerVal1 then
		registerVal1 = IsJapaneseSku()
		registerVal1 = IsChineseSku()
		if not arg0 or registerVal1 then
			return false
		end
		return true
	end
	return false
end

function ShouldShowStrongholdCategory(arg0)
	local registerVal1 = IsOrbis()
	if registerVal1 then
		registerVal1 = IsChineseSku()
		if registerVal1 then
			return false
		end
		return true
	end
	return false
end

function HideExtraSlotsPurchaseButton(arg0, arg1)
	if CoD.perController[arg1].selectedStoreCategory == "EXTRASLOTS" then
		return false
	end
end

function HasStoreItems(arg0)
	if CoD.perController[arg0].selectedStoreCategory then
		if CoD.perController[arg0].selectedStoreCategory ~= "EXTRASLOTS" and CoD.perController[arg0].selectedStoreCategory ~= "ESPORTS" and CoD.perController[arg0].selectedStoreCategory == "EXTRAPACKS" or CoD.perController[arg0].selectedStoreCategory == "OUTFITS" then
			return true
		end
		local registerVal1 = Engine.GetStoreProductsByCategory(arg0, CoD.perController[arg0].selectedStoreCategory)
		if 0.000000 >= #arg0 then
		end
		return true
	end
	return false
end

function HideProductNameAndDesc()
	return false
end

function IsLootReady(arg0)
	return Engine.IsLootReady(arg0)
end

function IsDemoBuild()
	return Dvar.ui_execdemo:get()
end

function IsDemoBuildCP()
	return Dvar.ui_execdemo_cp:get()
end

function IsDemoBuildBeta()
	return Dvar.ui_execdemo_beta:get()
end

function DisableStore()
	local registerVal0 = Dvar.live_store_enable:get()
	if not registerVal0 then
		return true
	end
	if CoD.isPC then
		return true
	end
	registerVal0 = IsOrbis()
	registerVal0 = Dvar.live_store_disable_lang:exists()
	registerVal0 = Dvar.live_store_disable_lang:get()
	local registerVal1 = Dvar.loc_availableLanguages:get()
	registerVal0 = Dvar.live_store_disable_region:exists()
	registerVal0 = Dvar.live_store_disable_region:get()
	registerVal1 = Engine.GetSkuRegion()
	if registerVal0 and registerVal0 and registerVal0 == registerVal1 and registerVal0 and registerVal0 == registerVal1 then
		return true
	end
	return false
end

function DisableBlackMarket()
	return false
end

function DisableSteamStore()
	local registerVal0 = Dvar.live_store_enable:get()
	if not registerVal0 then
		return true
	end
	return (not CoD.isPC)
end

function ShouldOpenGraphicsAndSoundOptions()
	local registerVal0 = IsDurango()
	if registerVal0 then
		return true
	end
	registerVal0 = Dvar.ui_execdemo:get()
	if registerVal0 then
		registerVal0 = Dvar.ui_execdemo:get()
		if registerVal0 then
			registerVal0 = Dvar.ui_execdemo_beta:get()
		end
	end
	return true
end

function IsGamesComBuild()
	return LuaUtils.IsGamescomBuild()
end

function ShouldOpenNetworkOptions()
	return true
end

function IsBlackhatHacking(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "hudItems.blackhat.status"))
	if registerVal1 ~= CoD.BlackhatStatus.Hacking then
	end
	return true
end

function IsBlackhatBreaching(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "hudItems.blackhat.status"))
	if registerVal1 ~= CoD.BlackhatStatus.Breaching then
	end
	return true
end

function IsBrightnessSliderPipEmpty(arg0)
	if arg0.gridInfoTable.parentGrid.activeWidget then
	end
	if arg0.gridInfoTable.parentGrid.activeWidget.gridInfoTable.zeroBasedIndex < arg0.gridInfoTable.zeroBasedIndex then
		return true
	end
end

function IsAlertOverlay(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "categoryType")
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal3 ~= CoD.OverlayUtility.OverlayTypes.Alert and registerVal3 ~= CoD.OverlayUtility.OverlayTypes.Error then
		end
		return true
	end
	return false
end

function HasOverlayBackAction(arg0)
	if arg0[CoD.OverlayUtility.GoBackPropertyName] == nil then
	end
	return true
end

function HasOverlayContinueAction(arg0)
	if arg0[CoD.OverlayUtility.ContinuePropertyName] == nil then
	end
	return true
end

function IsPrimaryControllerIndex(arg0)
	local registerVal1 = Engine.GetPrimaryController()
	if registerVal1 == arg0 then
		return true
	end
	return false
end

function IsCodCasterQuickSettingEnabled(arg0, arg1, arg2)
	if not arg1.profileVar then
		return false
	end
	return CoD.ShoutcasterProfileVarBool(arg2, arg1.profileVar)
end

function IsCodCaster(arg0)
	local registerVal1 = CoD.IsShoutcaster(arg0)
	if registerVal1 then
		return true
	end
	return false
end

function IsCodCasterProfileValueEqualTo(arg0, arg1, arg2)
	local registerVal3 = CoD.ShoutcasterProfileVarValue(arg0, arg1)
	if registerVal3 == nil or registerVal3 ~= arg2 then
	end
	return true
end

function ShouldHideCodCasterHud(arg0)
	local registerVal1 = IsGlobalModelValueGreaterThan(arg0, "scoreboard.team1.count", 0.000000)
	registerVal1 = IsGlobalModelValueGreaterThan(arg0, "scoreboard.team2.count", 0.000000)
	if not registerVal1 and not registerVal1 then
		return true
	end
	return false
end

function IsCodCasterSpectatingPlayerInTeam(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "deadSpectator.playerTeam")
	if registerVal2 ~= arg1 then
	end
	return true
end

function ShouldPresentMOTDBanner(arg0, arg1)
	local registerVal3 = Engine.GetMarketingMessage(arg0, "registration")
	if registerVal3 ~= nil then
		local registerVal5 = LUI.startswith(registerVal3.action, "store")
		if registerVal3.action ~= "registration" and registerVal3.action ~= "opt-in" and not registerVal5 and registerVal3.action ~= "blackmarket" and registerVal3.action ~= "drmonty" and registerVal3.action ~= "contracts" and registerVal3.action == "promo" or registerVal3.action == "expand" then
			return true
		end
	end
	local registerVal4 = ShouldShowMtxCommsMOTDPopup(arg0)
	if registerVal4 then
		registerVal4 = Engine.GetMarketingMessage(arg0, "motd")
		if registerVal4 == nil or not registerVal4.hasBanner then
			return false
		end
		if true == true then
			local registerVal6 = Engine.GetGlobalModel()
			registerVal5 = Engine.GetModel(registerVal6, "MtxCommsRegistration")
			local registerVal7 = Engine.GetModel(registerVal5, "content_short")
			Engine.SetModelValue(registerVal7, registerVal4.bannerTitle)
			registerVal7 = Engine.GetModel(registerVal5, "action")
			Engine.SetModelValue(registerVal7, registerVal4.bannerAction)
			registerVal7 = Engine.GetModel(registerVal5, "image")
			Engine.SetModelValue(registerVal7, registerVal4.bannerImage)
			registerVal7 = Engine.GetModel(registerVal5, "action_title")
			Engine.SetModelValue(registerVal7, registerVal4.bannerActionString)
			registerVal7 = Engine.GetModel(registerVal5, "locationID")
			Engine.SetModelValue(registerVal7, 1.000000)
		end
		return true
	end
	return false
end

function IsInventoryWidgetVisible(arg0, arg1)
	return IsModelValueEqualTo(arg0, ("zmInventory." .. arg1), 1.000000)
end

function IsInventoryPieceVisible(arg0, arg1)
	return IsModelValueEqualTo(arg0, ("zmInventory." .. arg1), 1.000000)
end

function IsEitherInventoryItemVisible(arg0, arg1, arg2)
	local registerVal3 = IsModelValueEqualTo(arg0, ("zmInventory." .. arg1), 1.000000)
	if not registerVal3 then
		registerVal3 = IsModelValueEqualTo(arg0, ("zmInventory." .. arg2), 1.000000)
	end
	return registerVal3
end

function IsAnyInventoryItemVisible3(arg0, arg1, arg2, arg3)
	local registerVal4 = IsModelValueEqualTo(arg0, ("zmInventory." .. arg1), 1.000000)
	registerVal4 = IsModelValueEqualTo(arg0, ("zmInventory." .. arg2), 1.000000)
	if not registerVal4 and not registerVal4 then
		registerVal4 = IsModelValueEqualTo(arg0, ("zmInventory." .. arg3), 1.000000)
	end
	return registerVal4
end

function IsAnyInventoryItemVisible4(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = IsModelValueEqualTo(arg0, ("zmInventory." .. arg1), 1.000000)
	registerVal5 = IsModelValueEqualTo(arg0, ("zmInventory." .. arg2), 1.000000)
	registerVal5 = IsModelValueEqualTo(arg0, ("zmInventory." .. arg3), 1.000000)
	if not registerVal5 and not registerVal5 and not registerVal5 then
		registerVal5 = IsModelValueEqualTo(arg0, ("zmInventory." .. arg4), 1.000000)
	end
	return registerVal5
end

function IsAnyInventoryModelGreaterThan3(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = IsModelValueGreaterThan(arg0, ("zmInventory." .. arg1), arg2)
	registerVal7 = IsModelValueGreaterThan(arg0, ("zmInventory." .. arg3), arg4)
	if not registerVal7 and not registerVal7 then
		registerVal7 = IsModelValueGreaterThan(arg0, ("zmInventory." .. arg5), arg6)
	end
	return registerVal7
end

function FuseBoxVisible(arg0, arg1)
	if CoD.Zombie[arg1] then
		local registerVal4 = Engine.GetModelForController(arg0)
		local registerVal3 = Engine.GetModel(registerVal4, ("zmInventory." .. CoD.Zombie.ZOD_CRAFTABLE_POLICE_BOX .. "_" .. CoD.Zombie[arg1]))
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 ~= 1.000000 then
		end
		return true
	end
end

function RocketShieldBlueprintPieceVisible(arg0, arg1)
	if CoD.Zombie[arg1] then
		local registerVal4 = Engine.GetModelForController(arg0)
		local registerVal3 = Engine.GetModel(registerVal4, ("zmInventory." .. CoD.Zombie[arg1]))
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 ~= 1.000000 then
		end
		return true
	end
end

function IDGunBlueprintPieceVisible(arg0, arg1)
	if CoD.Zombie[arg1] then
		local registerVal4 = Engine.GetModelForController(arg0)
		local registerVal3 = Engine.GetModel(registerVal4, ("zmInventory." .. CoD.Zombie.ZOD_CRAFTABLE_IDGUN .. "_" .. CoD.Zombie[arg1]))
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 ~= 1.000000 then
		end
		return true
	end
end

function SummonningKeyVisible(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.CLIENTFIELD_ZOD_CRAFTABLE_PIECE_QUEST_KEY))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function SummoningKeyBeingUsed(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.USED_QUEST_KEY))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if CoD.Zombie.PLAYER_USED_QUEST_KEY_NONE >= registerVal3 or registerVal3 >= CoD.Zombie.PLAYER_USED_QUEST_KEY_STATES then
	end
	return true
end

function SummoningKeyBeingUsedByOtherPlayer(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.USED_QUEST_KEY))
	registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal6 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal6, "zmInventory.player_character_identity"))
	if CoD.Zombie.PLAYER_USED_QUEST_KEY_NONE < registerVal3 and registerVal3 >= CoD.Zombie.PLAYER_USED_QUEST_KEY_STATES or registerVal3 == registerVal4 then
	end
	return true
end

function SummoningKeyMissing(arg0)
	local registerVal1 = CheckMemento(arg0, CoD.Zombie.ZOD_NAME_BOXER)
	local registerVal2 = CheckMemento(arg0, CoD.Zombie.ZOD_NAME_DETECTIVE)
	local registerVal3 = CheckMemento(arg0, CoD.Zombie.ZOD_NAME_FEMME)
	local registerVal4 = CheckMemento(arg0, CoD.Zombie.ZOD_NAME_MAGICIAN)
	local registerVal6 = SummonningKeyVisible(arg0)
	return (not registerVal6)
end

function IsRitualItemInState(arg0, arg1, arg2)
	if CoD.Zombie[arg1] and CoD.Zombie[arg2] then
		local registerVal5 = Engine.GetModelForController(arg0)
		local registerVal4 = Engine.GetModel(registerVal5, ("zmInventory." .. CoD.Zombie.CLIENTFIELD_QUEST_STATE_BASE .. CoD.Zombie[arg1]))
		registerVal5 = Engine.GetModelValue(registerVal4)
		if registerVal5 ~= CoD.Zombie[arg2] then
		end
		return true
	end
end

function IsRitualItemHeldBy(arg0, arg1, arg2)
	if CoD.Zombie[arg1] and CoD.Zombie[arg2] then
		local registerVal5 = Engine.GetModelForController(arg0)
		local registerVal4 = Engine.GetModel(registerVal5, ("zmInventory." .. CoD.Zombie.CLIENTFIELD_HOLDER_OF_BASE .. CoD.Zombie[arg1]))
		registerVal5 = Engine.GetModelValue(registerVal4)
		if registerVal5 ~= CoD.Zombie[arg2] then
		end
		return true
	end
end

function IsRitualItemMissing(arg0, arg1)
	if CoD.Zombie[arg1] then
		local registerVal4 = Engine.GetModelForController(arg0)
		local registerVal3 = Engine.GetModel(registerVal4, ("zmInventory." .. CoD.Zombie.CLIENTFIELD_CHECK_BASE .. CoD.Zombie[arg1] .. CoD.Zombie.MEMENTO_SUFFIX))
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 ~= 1.000000 then
		end
		local registerVal5 = IsRitualItemInState(arg0, arg1, "CLIENTFIELD_ZOD_UI_QUEST_STATE_NEED_MEMENTO")
		return registerVal5
	end
end

function IsRitualItemBeingUsed(arg0, arg1)
	if CoD.Zombie[("PLAYER_USED_QUEST_KEY_" .. arg1)] then
		local registerVal4 = Engine.GetModelForController(arg0)
		local registerVal3 = Engine.GetModel(registerVal4, ("zmInventory." .. CoD.Zombie.USED_QUEST_KEY_LOCATION))
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 ~= CoD.Zombie[("PLAYER_USED_QUEST_KEY_" .. arg1)] then
		end
		return true
	end
end

function IsRitualItemWithAnotherPlayer(arg0, arg1)
	if CoD.Zombie[arg1] then
		local registerVal4 = Engine.GetModelForController(arg0)
		local registerVal3 = Engine.GetModel(registerVal4, ("zmInventory." .. CoD.Zombie.CLIENTFIELD_CHECK_BASE .. CoD.Zombie[arg1] .. CoD.Zombie.MEMENTO_SUFFIX))
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 ~= 1.000000 then
		end
		local registerVal7 = Engine.GetModelForController(arg0)
		local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal7, "zmInventory.player_character_identity"))
		local registerVal6 = IsRitualItemHeldBy(arg0, arg1, CoD.Zombie.GetCharacterEnumString(registerVal5))
		return (not registerVal6)
	end
end

function HasTalonSpikeItem(arg0, arg1)
	if not CoD.Zombie[arg1] then
		return false
	end
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, ("zmInventory." .. CoD.Zombie.CRAFTABLE_GRAVITYSPIKE .. "_" .. CoD.Zombie[arg1]))
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowGasMaskPartsWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_GASMASK_PARTS))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function HasGasMaskItem(arg0, arg1)
	if not CoD.Zombie[arg1] then
		return false
	end
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, ("zmInventory." .. CoD.Zombie.CRAFTABLE_GASMASK .. "_" .. CoD.Zombie[arg1]))
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowMachineToolsPartsWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_MACHINETOOLS_PARTS))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function HasMachineToolsItem(arg0, arg1)
	if not CoD.Zombie[arg1] then
		return false
	end
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, ("zmInventory." .. CoD.Zombie[arg1] .. "_" .. CoD.Zombie.CRAFTABLE_MACHINETOOLS))
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowWonderWeaponPartsWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_WONDERWEAPON_PARTS))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function HasWonderWeaponItem(arg0, arg1)
	if not CoD.Zombie[arg1] then
		return false
	end
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, ("zmInventory." .. CoD.Zombie.CRAFTABLE_WONDERWEAPON .. "_" .. CoD.Zombie[arg1]))
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowSkullPartsWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_SKULL_PARTS))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowBucketPartsWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_BUCKET_PARTS))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowingAnyBucketPart(arg0)
	local registerVal1 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
	if not registerVal1 then
		registerVal1 = ShowBucketOrSeedWidget(arg0)
	end
	return registerVal1
end

function IsBucketAtLevel(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, ("zmInventory." .. CoD.Zombie.CRAFTABLE_BUCKET .. "_" .. CoD.Zombie.CRAFTABLE_BUCKET_TYPE))
	if registerVal3 ~= arg1 then
	end
	return true
end

function IsBucketWaterType(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, ("zmInventory." .. CoD.Zombie.CRAFTABLE_BUCKET .. "_" .. CoD.Zombie.CRAFTABLE_BUCKET_WATER_TYPE))
	if registerVal3 ~= arg1 then
	end
	return true
end

function IsBucketWaterLevel(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, ("zmInventory." .. CoD.Zombie.CRAFTABLE_BUCKET .. "_" .. CoD.Zombie.CRAFTABLE_BUCKET_WATER_LEVEL))
	if registerVal3 ~= arg1 then
	end
	return true
end

function ShowSeedPartsWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_SEED_PARTS))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowBucketOrSeedWidget(arg0)
	local registerVal1 = ShowBucketPartsWidget(arg0)
	if not registerVal1 then
		registerVal1 = ShowSeedPartsWidget(arg0)
	end
	return registerVal1
end

function HasBucketSeedItem(arg0, arg1)
	if not CoD.Zombie[arg1] then
		return false
	end
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, ("zmInventory." .. CoD.Zombie.CRAFTABLE_BUCKET .. "_" .. CoD.Zombie[arg1]))
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function SprayerMissing(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.POD_SPRAYER_HINT_RANGE))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == 1.000000 then
		registerVal3 = SprayerFound(arg0)
	else
	end
	return true
end

function SprayerFound(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.POD_SPRAYER_HELD))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function SprayerInUse(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.PLAYER_USING_SPRAYER))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowQuestItemsWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_QUEST_ITEMS))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowIDGunPartsWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_IDGUN_PARTS))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowRocketShieldPartsWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_ROCKETSHIELD_PARTS))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowGravitySpikePartsWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_GRAVITYSPIKE_PARTS))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowFuseBoxWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_FUSES))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowEggWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_EGG))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowSprayerWidget(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.WIDGET_SPRAYER))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function QuestEggInState(arg0, arg1)
	if CoD.Zombie[arg1] then
		local registerVal4 = Engine.GetModelForController(arg0)
		local registerVal3 = Engine.GetModel(registerVal4, ("zmInventory." .. CoD.Zombie.PLAYER_SWORD_QUEST_EGG_STATE))
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 ~= CoD.Zombie[arg1] then
		end
		return true
	end
end

function QuestEggQuest1Complete(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, ("zmInventory." .. CoD.Zombie.PLAYER_SWORD_QUEST_COMPLETED_LEVEL_1))
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function ShowTrialsCompletedWidgetStalingrad(arg0)
	local registerVal1 = IsModelValueGreaterThan(arg0, "trialWidget.challenge1state", 0.000000)
	registerVal1 = IsModelValueGreaterThan(arg0, "trialWidget.challenge2state", 0.000000)
	if not registerVal1 and not registerVal1 then
		registerVal1 = IsModelValueGreaterThan(arg0, "trialWidget.challenge3state", 0.000000)
	end
	return registerVal1
end

function IsGenesisEECompleted(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = CoD.SafeGetModelValue(registerVal2, "GenesisEndGameEE")
	if registerVal1 ~= 1.000000 then
	end
	return true
end

function ChatClientShow(arg0)
	return CoD.isPC
end

function ChatClientEnabled(arg0)
	local registerVal1 = ChatClientShow(arg0)
	if registerVal1 then
		registerVal1 = Dvar.chatClientEnabled:get()
		if registerVal1 ~= true then
		end
	end
	return true
end

function ChatClientIsAvailable(arg0, arg1, arg2)
	local registerVal3 = ChatClientEnabled(arg2)
	if registerVal3 then
		registerVal3 = Engine.ChatClient_IsAvailable(arg2)
	end
	return registerVal3
end

function ChatClientIsChatting(arg0)
	local registerVal1 = ChatClientEnabled(arg0)
	if registerVal1 then
		registerVal1 = Engine.ChatClient_IsChatting(arg0)
	end
	return registerVal1
end

function ChatClientAnySubMenuOpen(arg0)
	local registerVal1 = ChatClientShow(arg0)
	if not registerVal1 then
		return false
	end
	local registerVal2 = CoD.ChatClientUtility.GetMenuInputChannelShowModel()
	if registerVal2 ~= nil then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if 0.000000 >= registerVal3 then
		end
	end
	registerVal3 = CoD.ChatClientUtility.GetMenuSettingsShowModel()
	if not true and registerVal3 ~= nil then
		registerVal3 = Engine.GetModelValue(registerVal3)
		if 0.000000 >= registerVal3 then
		end
	end
	return true
end

function CharacterCustomization_IsEnabled(arg0)
	local registerVal1 = LuaUtils.IsGamescomBuild()
	registerVal1 = Dvar.ui_execdemo_beta:get()
	if not arg0 or registerVal1 then
		return false
	end
	return true
end

function IsArabicSku()
	if CoD.isPC then
		local registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_ENGLISHARABIC)
		registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_ARABIC)
		if not CoD.LANGUAGE_ENGLISHARABIC or registerVal0 then
			return true
		else
			registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_ENGLISHARABIC)
			registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_ARABIC)
			if registerVal0 and registerVal0 then
				return true
			end
		end
	end
	return false
end

function IsChineseSku()
	if CoD.isPC then
		local registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_TRADITIONALCHINESE)
		registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_SIMPLIFIEDCHINESE)
		if not CoD.LANGUAGE_TRADITIONALCHINESE or registerVal0 then
			return true
		else
			registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_TRADITIONALCHINESE)
			registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_SIMPLIFIEDCHINESE)
			if registerVal0 and registerVal0 then
				return true
			end
		end
	end
	return false
end

function IsJapaneseSku()
	if CoD.isPC then
		local registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_FULLJAPANESE)
		registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_JAPANESE)
		if not CoD.LANGUAGE_FULLJAPANESE or registerVal0 then
			return true
		else
			registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_FULLJAPANESE)
			registerVal0 = Engine.IsLanguageSupportedInSKU(CoD.LANGUAGE_JAPANESE)
			if registerVal0 and registerVal0 then
				return true
			end
		end
	end
	return false
end

function IsCurrentLanguageEnglish()
	local registerVal0 = Dvar.loc_language:get()
	if registerVal0 == CoD.LANGUAGE_ENGLISH or registerVal0 == CoD.LANGUAGE_ENGLISHARABIC then
		return true
	end
	return false
end

function IsCurrentTextLanguageEnglish()
	local registerVal0 = Dvar.loc_language:get()
	if registerVal0 == CoD.LANGUAGE_ENGLISH then
		return true
	end
	return false
end

function IsCurrentLanguageArabic()
	local registerVal0 = Dvar.loc_language:get()
	if registerVal0 == CoD.LANGUAGE_ARABIC then
		return true
	end
	return false
end

function IsCurrentLanguageFrench()
	local registerVal0 = Dvar.loc_language:get()
	if registerVal0 == CoD.LANGUAGE_FRENCH then
		return true
	end
	return false
end

function IsCurrentLanguageJapanese()
	local registerVal0 = Dvar.loc_language:get()
	if registerVal0 == CoD.LANGUAGE_JAPANESE then
		return true
	end
	return false
end

function ShouldDisplayLanguageSelectionScreen()
	local registerVal0 = IsArabicSku()
	registerVal0 = IsJapaneseSku()
	if not  or registerVal0 then
		return true
	end
	registerVal0 = IsChineseSku()
	registerVal0 = Dvar.loc_systemLanguage:get()
	if registerVal0 and registerVal0 ~= CoD.LANGUAGE_PORTUGUESE then
		return true
	end
	return false
end

function IsCurrentLanguageReversed()
	return Engine.IsCurrentLanguageReversed()
end

function FeaturedCards_IsEnabled(arg0, arg1)
	local registerVal2 = LobbyData.GetLobbyNav()
	if registerVal2 ~= LobbyData.UITargets.UI_MODESELECT.id and registerVal2 ~= LobbyData.UITargets.UI_MPLOBBYMAIN.id and registerVal2 ~= LobbyData.UITargets.UI_ZMLOBBYONLINE.id then
		return false
	end
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "FeaturedCardsRoot", true)
	registerVal4 = Engine.CreateModel(registerVal3, "Enabled", true)
	local registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = HasLiveEvent(arg1)
	return true
	registerVal6 = IsExperimentPromotionActive(arg1)
	if registerVal6 and registerVal6 then
		return true
	end
	if registerVal2 == LobbyData.UITargets.UI_ZMLOBBYONLINE.id then
		return true
	end
	registerVal6 = Dvar.ui_enableZMHDFeaturedCard:get()
	registerVal6 = Dvar.ui_enableZMHDFeaturedCard:get()
	if registerVal6 == 1.000000 or registerVal6 == "1" then
		return true
	end
	registerVal6 = Engine.GetFeaturedCardsData()
	local registerVal7 = Dvar.live_featuredEnabled:get()
	if registerVal7 == false or registerVal6.enabled == false then
		return false
	end
	if registerVal6.validCardsCount == 0.000000 then
		return false
	end
	return true
end

function ConnectionMeter_isEnabled(arg0, arg1)
	local registerVal2 = Dvar.ui_enableConnectionMetricGraphs:get()
	if registerVal2 == 0.000000 then
		return false
	end
	registerVal2 = Engine.ProfileInt(arg1, "showConnectionMeter")
	if registerVal2 ~= 1.000000 then
		return false
	end
	return true
end

function HighestMapReachedGreaterThan(arg0, arg1)
	local registerVal2 = CoD.GetPlayerStats(arg0)
	if registerVal2.highestMapReached then
		local registerVal3 = registerVal2.highestMapReached:get()
	end
	if registerVal3 == nil or arg1 >= registerVal3 then
	end
	return true
end

function MissionRecordMapComplete(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "MissionRecordVaultMapInfo.mapId"))
	local registerVal3 = Engine.GetDStat(arg1, "PlayerStatsByMap", registerVal2, "hasBeenCompleted")
	if registerVal3 == 1.000000 then
		return true
	end
	return false
end

function IsGameInstalled()
	local registerVal0 = Engine.IsCpStillDownloading()
	if not registerVal0 then
		registerVal0 = Engine.IsMpStillDownloading()
	else
	end
	return true
end

function IsGameModeInstalled(arg0, arg1)
	if arg1 == Enum.eModes.MODE_CAMPAIGN then
		local registerVal2 = Engine.IsCpStillDownloading()
		if registerVal2 ~= false then
		end
		return true
	else
		if arg1 == Enum.eModes.MODE_MULTIPLAYER then
			registerVal2 = Engine.IsMpStillDownloading()
			if registerVal2 ~= false then
			end
			return true
		else
			if arg1 == Enum.eModes.MODE_ZOMBIES then
				registerVal2 = Engine.IsZmStillDownloading()
				if registerVal2 ~= false then
				end
				return true
			else
				return false
			end
		end
	end
end

function PlayGoIsStillDownloading(arg0)
	if CoD.isPC then
		return false
	end
	local registerVal1 = Engine.IsMpStillDownloading()
	registerVal1 = Engine.IsMpInitialStillDownloading()
	registerVal1 = Engine.IsCpStillDownloading()
	registerVal1 = Engine.IsZmStillDownloading()
	registerVal1 = Engine.IsZmInitialStillDownloading()
	if not registerVal1 and not registerVal1 and not registerVal1 and not arg0 or registerVal1 then
		return true
	end
	return false
end

function ShouldShowCampaignResetOption(arg0)
	local registerVal1 = Engine.GetPrimaryController()
	if arg0 ~= registerVal1 then
	end
	return true
end

function ZMDoubleXPWidgetVisible(arg0)
	local registerVal1 = IsZombies()
	if registerVal1 then
		registerVal1 = IsLAN()
		if not registerVal1 then
			registerVal1 = IsModelValueEqualTo(arg0, "doubleXPTimeRemaining", 0.000000)
			if registerVal1 then
				registerVal1 = IsZMDoubleXPWeekend(arg0)
			else
			end
		end
	end
	return true
end

function IsZMDoubleXPWeekend(arg0)
	local registerVal1 = Engine.IsInGame()
	if registerVal1 then
		registerVal1 = Engine.IsDoubleXPWeekend(arg0)
		if registerVal1 then
			registerVal1 = IsDoubleXP(arg0)
		end
		return registerVal1
	else
		registerVal1 = Engine.GetPlaylistInfoByID(150.000000)
		local registerVal2 = LuaUtils.PlaylistRulesIncludes(registerVal1, "xpGroups group_party2")
		local registerVal4 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		if registerVal4 then
		end
		registerVal4 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
		local registerVal5 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_GUEST)
		local registerVal6 = LuaUtils.PlaylistRulesIncludes(registerVal1, "scr_xpscalezm 2")
		if registerVal6 then
			if registerVal2 and 2.000000 > (registerVal4 - registerVal5) then
			end
		end
		return true
	end
end

function IsZMDoubleVialActive(arg0)
	local registerVal1 = Engine.DvarBool(nil, "communityChallengeBonusAllowed")
	if registerVal1 then
		registerVal1 = Engine.IsInGame()
		if registerVal1 then
			registerVal1 = Engine.GetZMVialScale(arg0)
			if 1.000000 >= registerVal1 then
			end
			return true
		else
			registerVal1 = Engine.CheckDoubleXPGroup(arg0, CoD.XPGROUPS.DOUBLEXP_GROUP_PARTY6)
			if registerVal1 then
				registerVal1 = Engine.GetPlaylistInfoByID(150.000000)
				return LuaUtils.PlaylistRulesIncludes(registerVal1, "scr_vialsAwardedScale 2.0")
			end
		end
		return false
	else
		registerVal1 = Engine.IsInGame()
		if registerVal1 then
			registerVal1 = Engine.GetZMVialScale(arg0)
			if 1.000000 >= registerVal1 then
			end
			return true
		else
			registerVal1 = Engine.GetPlaylistInfoByID(150.000000)
			return LuaUtils.PlaylistRulesIncludes(registerVal1, "scr_vialsAwardedScale 2.0")
		end
	end
end

function IsZMDoubleWeaponXP(arg0)
	local registerVal1 = Engine.IsInGame()
	if registerVal1 then
		return IsDoubleWeaponXP(arg0)
	else
		registerVal1 = Engine.GetPlaylistInfoByID(150.000000)
		return LuaUtils.PlaylistRulesIncludes(registerVal1, "scr_gunxpscalezm 2")
	end
end

function IsZMFreeGumPerRoundActive(arg0)
	local registerVal1 = Engine.IsInGame()
	if registerVal1 then
		return Engine.DvarBool(arg0, "scr_firstGumFree")
	else
		registerVal1 = Engine.GetPlaylistInfoByID(150.000000)
		return LuaUtils.PlaylistRulesIncludes(registerVal1, "scr_firstGumFree 1")
	end
end

function IsLiquidDiviniumSaleActive(arg0)
	local registerVal1 = Engine.DvarFloat("loot_ld_salePercentOff")
	if 0.000000 >= registerVal1 then
	end
	return true
end

function IsLiquidDiviniumMegaBundleActive(arg0)
	return Engine.DvarBool(nil, "loot_ld_mega_bundle_enabled")
end

function IsLiquidDiviniumUltraRarePromoActive(arg0)
	return Engine.DvarBool(nil, "loot_ld_ultra_rare_enabled")
end

function IsUltraRareMegaGobblegumPromoActive(arg0)
	local registerVal1 = Engine.DvarBool(nil, "loot_ld_urm_gobblegum_enabled")
	if registerVal1 then
		registerVal1 = Engine.DvarInt(nil, "loot_ld_urm_purchase_sku")
		local registerVal2 = Engine.GetInventoryItemQuantity(arg0, registerVal1)
		if registerVal2 ~= 0.000000 then
		end
		return true
	end
	return false
end

function ShouldShowLiquidDiviniumPromoBanner(arg0)
	local registerVal1 = AreCodPointsEnabled(arg0)
	registerVal1 = IsLiquidDiviniumSaleActive(arg0)
	registerVal1 = IsLiquidDiviniumUltraRarePromoActive(arg0)
	registerVal1 = IsUltraRareMegaGobblegumPromoActive(arg0)
	if registerVal1 and not registerVal1 and not registerVal1 and not registerVal1 then
		registerVal1 = IsLiquidDiviniumMegaBundleActive(arg0)
	end
	return registerVal1
end

function IsDistillCODPointsSaleActive(arg0)
	local registerVal1 = Engine.DvarFloat("loot_distill_salePercentOff")
	if 0.000000 >= registerVal1 then
	end
	return true
end

function IsDistillLDSaleActive(arg0)
	local registerVal1 = Engine.DvarFloat("ld_distill_salePercentOff")
	if 0.000000 >= registerVal1 then
	end
	return true
end

function EnableCombatRecordCompare(arg0)
	return true
end

function IsCPCombatRecordLockedForSocialPlayerInfo(arg0, arg1)
	local registerVal2 = arg1:getModel(arg0, "cpRank")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 and registerVal3 then
		if registerVal3 >= 1.000000 then
		end
		return true
	end
	return false
end

function IsMPCombatRecordLockedForSocialPlayerInfo(arg0, arg1)
	local registerVal3 = arg1:getModel(arg0, "mpRank")
	local registerVal4 = arg1:getModel(arg0, "mpPrestige")
	local registerVal5 = Engine.GetModelValue(registerVal3)
	local registerVal6 = Engine.GetModelValue(registerVal4)
	if registerVal3 and registerVal4 and registerVal5 and registerVal6 then
		if registerVal5 >= 7.000000 or registerVal6 >= 1.000000 then
		end
		return true
	end
	return false
end

function IsZMCombatRecordLockedForSocialPlayerInfo(arg0, arg1)
	local registerVal3 = arg1:getModel(arg0, "zmRank")
	local registerVal4 = arg1:getModel(arg0, "zmPrestige")
	local registerVal5 = Engine.GetModelValue(registerVal3)
	local registerVal6 = Engine.GetModelValue(registerVal4)
	if registerVal3 and registerVal4 and registerVal5 and registerVal6 then
		if registerVal5 >= 2.000000 or registerVal6 >= 1.000000 then
		end
		return true
	end
	return false
end

function IsCampaignCombatRecordMode()
	local registerVal0 = CoD.GetCombatRecordMode()
	if registerVal0 ~= Enum.eModes.MODE_CAMPAIGN then
	end
	return true
end

function IsMultiplayerCombatRecordMode()
	local registerVal0 = CoD.GetCombatRecordMode()
	if registerVal0 ~= Enum.eModes.MODE_MULTIPLAYER then
	end
	return true
end

function IsZombiesCombatRecordMode()
	local registerVal0 = CoD.GetCombatRecordMode()
	if registerVal0 ~= Enum.eModes.MODE_ZOMBIES then
	end
	return true
end

function IsComparingStats(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModel(registerVal2, "CombatRecordComparing")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if arg0 or not registerVal2 then
		return false
	end
	local registerVal3 = Engine.GetGlobalModel()
	registerVal2 = Engine.GetModel(registerVal3, "OtherPlayerStats.InProgress")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal1 or registerVal3 then
		return false
	end
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.GetModel(registerVal4, "OtherPlayerStats.Success")
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal1 or not registerVal4 then
		return false
	end
	return true
end

function IsCombatRecordForRemotePlayer()
	return CoD.CombatRecordOtherPlayerStats
end

function CombatRecordProfileSnapshotShouldShowSnapshot(arg0)
	local registerVal1 = DataSources.CombatRecordProfileSnapshot.getModel(arg0)
	local registerVal2 = CoD.SafeGetModelValue(registerVal1, "fileId")
	local registerVal3 = Engine.DefaultID64Value()
	if registerVal1 and registerVal2 ~= registerVal3 then
		return true
	end
	return false
end

function IsStorageValueAtLeast(arg0, arg1, arg2, arg3)
	local registerVal4 = DataSources.StorageGlobal.getModel(arg0)
	local registerVal5 = CoD.SafeGetModelValue(registerVal4, arg1)
	if registerVal5 then
		local registerVal6 = StorageLookup(arg0, arg2, registerVal5)
		local registerVal7 = tonumber(registerVal6)
		if arg3 > registerVal7 then
		end
		return true
	end
	return false
end

function IsStorageValueEqualTo(arg0, arg1, arg2, arg3)
	local registerVal4 = DataSources.StorageGlobal.getModel(arg0)
	local registerVal5 = CoD.SafeGetModelValue(registerVal4, arg1)
	if registerVal5 then
		local registerVal6 = StorageLookup(arg0, arg2, registerVal5)
		local registerVal7 = tonumber(registerVal6)
		if registerVal7 ~= arg3 then
		end
		return true
	end
	return false
end

function CanOpenTwitch(arg0)
	return false
end

function HasLiveEvent(arg0)
	local registerVal1 = DataSources.LiveEventViewer.getModel(arg0)
	local registerVal2 = CoD.SafeGetModelValue(registerVal1, "stream")
	if registerVal2 == "" then
	end
	return true
end

function IsMLGStream(arg0)
	local registerVal1 = DataSources.LiveEventViewer.getModel(arg0)
	local registerVal2 = CoD.SafeGetModelValue(registerVal1, "stream")
	local registerVal3 = LUI.startswith(registerVal2, "mlg/")
	return registerVal3
end

function HasLiveEventStreamQualities()
	local registerVal0 = DataSources.LiveEventViewer.getModel()
	local registerVal1 = CoD.SafeGetModelValue(registerVal0, "currentQuality")
	if registerVal1 == "" then
	end
	return true
end

function ElementHasText(arg0, arg1)
	if arg0[arg1] and arg0[arg1].getText then
		local registerVal2 = arg0[arg1]:getText()
		local registerVal3 = Engine.Localize("")
		if registerVal2 == "" or registerVal2 == registerVal3 then
		end
		return true
	end
end

function IsNotLobbyGameHostOrNotPrimaryController(arg0)
	local registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal2 = Engine.GetPrimaryController()
	if registerVal2 ~= arg0 then
	end
	if registerVal1 then
	end
	return true
end

function DoesPlayerHaveExtraSlotsItem(arg0)
	local registerVal1 = tonumber(CoD.StoreUtility.GetInventoryItemValueByItemName(CoD.StoreUtility.ExtraSlotsProductDesc, CoD.StoreUtility.InventoryItems.itemIdColumn))
	local registerVal2 = Engine.GetInventoryItemQuantity(arg0, registerVal1)
	if 0.000000 >= registerVal2 then
	end
	return true
end

function DoesPlayerHaveEsportsPackItem(arg0, arg1)
	local registerVal2 = IsPerControllerTablePropertyValue(arg1, "selectedStoreCategory", "ESPORTS")
	registerVal2 = IsPerControllerTablePropertyValue(arg1, "selectedStoreCategory", "EXTRAPACKS")
	if not arg1 or registerVal2 then
		registerVal2 = arg0:getModel(arg1, "skuID")
		if registerVal2 then
			local registerVal3 = Engine.GetModelValue(registerVal2)
			local registerVal4 = Engine.GetInventoryItemQuantity(arg1, registerVal3)
			if 0.000000 >= registerVal4 then
			end
			return true
		end
	end
	return false
end

function DoesPlayerHaveExtraPackItem(arg0, arg1)
	local registerVal2 = IsPerControllerTablePropertyValue(arg1, "selectedStoreCategory", "EXTRAPACKS")
	registerVal2 = arg0:getModel(arg1, "skuID")
	if registerVal2 and registerVal2 then
		local registerVal3 = Engine.GetModelValue(registerVal2)
		local registerVal4 = Engine.GetInventoryItemQuantity(arg1, registerVal3)
		if 0.000000 >= registerVal4 then
		end
		return true
	end
	return false
end

function DoesPlayerHaveOutfitItem(arg0, arg1)
	local registerVal2 = IsPerControllerTablePropertyValue(arg1, "selectedStoreCategory", "OUTFITS")
	registerVal2 = arg0:getModel(arg1, "skuID")
	local registerVal3 = tonumber(Engine.GetModelValue(registerVal2))
	local registerVal4, registerVal5, registerVal6 = ipairs(CoD.BlackMarketUtility.UniqueSpecialistOutfits)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.skuId == registerVal3 or value8.skuContractId == registerVal3 then
			local registerVal9 = Engine.GetInventoryItemQuantity(arg1, value8.bodyId)
			registerVal9 = Engine.GetInventoryItemQuantity(arg1, value8.contractId)
			if 0.000000 >= registerVal9 and 0.000000 >= registerVal9 then
			end
			return true
		end
	end
	return false
end

function ShouldShowLobbyEE()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.lobbyNav")
	registerVal1 = Engine.GetModelValue(registerVal0)
	local registerVal2 = IsZombies()
	if registerVal2 then
		if registerVal1 ~= LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_ZMLOBBYONLINECUSTOMGAME.id then
		end
	end
	return true
end

function ShouldDeselectAllTracks(arg0)
	local registerVal1 = DataSources.MusicTracksBase.getCurrentFilterTotalSelectedModel(arg0)
	local registerVal2 = DataSources.MusicTracksBase.getCurrentFilterTotalCountModel(arg0)
	local registerVal3 = Engine.GetModelValue(registerVal1)
	local registerVal4 = Engine.GetModelValue(registerVal2)
	if registerVal4 > registerVal3 then
	end
	return true
end

function IsSpecialContractAvailable(arg0, arg1, arg2)
	local registerVal3 = IsSelfModelValueTrue(arg1, arg2, "isGroupButton")
	if registerVal3 then
		return true
	end
	registerVal3 = IsSelfModelValueTrue(arg1, arg2, "isComplete")
	if not registerVal3 then
		registerVal3 = IsControllerModelValueEqualToSelfModelValue(arg1, arg2, "CurrentSpecialContract.index", "index")
	else
	end
	return true
end

function IsSpecialContractActive(arg0, arg1, arg2)
	local registerVal3 = IsSelfModelValueTrue(arg1, arg2, "isGroupButton")
	registerVal3 = IsModelValueTrue(arg2, "CurrentSpecialContract.isComplete")
	if registerVal3 and registerVal3 then
		return false
	end
	return IsControllerModelValueEqualToSelfModelValue(arg1, arg2, "CurrentSpecialContract.index", "index")
end

function IsViewingSpecialContractCallingCardSet(arg0)
	local registerVal1, registerVal2, registerVal3 = ipairs(CoD.ChallengesUtility.SpecialContractCategories)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5 == CoD.perController[arg0].BlackMarketUtility_CurrentCallingCardSetName then
			return true
		end
	end
	return false
end

function IsShowcaseWeaponClassified(arg0, arg1, arg2)
	local registerVal3 = IsCACItemContractLocked(arg1, arg2)
	if registerVal3 then
		return true
	end
	return IsSelfModelValueTrue(arg1, arg2, "isBMClassified")
end

function IsSpecialContractTimerActive(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel(arg2, "activeDvar")
	if registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
	end
	if registerVal5 ~= "" then
		registerVal5 = Engine.DvarBool(nil, registerVal5)
	else
	end
	return true
end

function IsSpecialContractHidden(arg0, arg1, arg2)
	local registerVal3 = IsSelfModelValueTrue(arg1, arg2, "isComplete")
	registerVal3 = IsControllerModelValueEqualToSelfModelValue(arg1, arg2, "CurrentSpecialContract.index", "index")
	if not arg1 or registerVal3 then
		return false
	end
	return IsSpecialContractTimerActive(arg0, arg1, arg2)
end

function ShouldShowGunMeter(arg0, arg1)
	local registerVal2 = Dvar.tu27_showGunMeter:get()
	if registerVal2 and not CoD.BlackMarketUtility.NoGunMeter[CoD.perController[arg1].supplyDropType] then
		return true
	end
	return false
end

function ShowPrivacySettingsButton(arg0)
	local registerVal1 = IsBooleanDvarSet("live_useRegulation")
	registerVal1 = Engine.IsUserGuest(arg0)
	registerVal1 = IsInGame()
	registerVal1 = Engine.SessionModeIsMode(CoD.SESSIONMODE_ONLINE)
	if registerVal1 and not registerVal1 and not registerVal1 and registerVal1 then
		registerVal1 = Engine.GetUserRegulationPreference(arg0)
		if 0.000000 < #arg0 then
			return true
		end
		local registerVal2 = Engine.GetRegulations(arg0)
		if 0.000000 < #arg0 then
			return true
		end
	end
	return false
end

function IsOnLastPrivacySettingsDescPage(arg0)
	local registerVal1 = DataSources.PrivacySettingManagementForm.getModel(arg0)
	local registerVal2 = tonumber(Engine.GetModelValue(Engine.GetModel(registerVal1, "currentPage")))
	if not registerVal2 then
	end
	local registerVal3 = tonumber(Engine.GetModelValue(Engine.GetModel(registerVal1, "lastPage")))
	if not registerVal3 then
	end
	if 0.000000 > 1.000000 and 0.000000 > 0.000000 then
	end
	return true
end

