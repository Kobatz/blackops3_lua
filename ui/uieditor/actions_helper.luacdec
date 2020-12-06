-- Decompiled with CoDLUIDecompiler by JariK

function SendClientScriptMenuChangeNotifyHelper(arg0, arg1, arg2, arg3)
	if arg2 then
	end
	if arg3 then
		local registerVal8 = CoD.GetLocalClientAdjustedNum(arg0)
		Engine.SendClientScriptNotify(arg0, ("menu_change" .. registerVal8), arg1, "opened", arg3)
	else
		registerVal8 = CoD.GetLocalClientAdjustedNum(arg0)
		Engine.SendClientScriptNotify(arg0, ("menu_change" .. registerVal8), arg1, "opened")
	end
end

function CloseAllOccludingMenus(arg0, arg1)
	if arg0.occludedBy.occludedBy == nil then
	else
	end
	local registerVal4 = GoBackToMenu(arg0.occludedBy.occludedBy, arg1, arg0.menuName)
	return 
end

function LobbyTheaterLaunchDemo(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
	if 1.000000 < registerVal4 then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, "MENU_TOO_MANY_CLIENTS_FOR_THEATER")
		return 
	end
	registerVal4 = Engine.LobbyGetDemoInformation()
	if not registerVal4 then
		return 
	end
	if arg3 == nil then
	end
	local registerVal5 = Dvar.ui_mapname:get()
	local registerVal6 = Engine.IsMapValid(registerVal5)
	if not registerVal6 then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, "MENU_DLC_WARNING_MISSING_MAP_PACK_THEATER")
		return 
	end
	registerVal4.controller = arg2
	registerVal4.demoMode = ""
	Engine.LobbyUpdateDemoInformation(registerVal4)
	if registerVal4.mainMode ~= Enum.eModes.MODE_INVALID then
		registerVal6 = Engine.GetAbbreviationForMode(registerVal4.mainMode)
		Engine.SwitchMode(arg2, registerVal6)
	end
	CoD.LobbyBase.LaunchDemo(arg0, arg2, Enum.LobbyType.LOBBY_TYPE_GAME)
end

function GetSessionModeFromPresenceActivity(arg0)
	if arg0 == Enum.PresenceActivity.PRESENCE_ACTIVITY_OFFLINE then
		return Enum.eModes.MODE_INVALID
	else
		if Enum.PresenceActivity.PRESENCE_ACTIVITY_MENU_INLOBBY <= arg0 and arg0 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_MENU_LAST then
			return Enum.eModes.MODE_INVALID
		else
			if Enum.PresenceActivity.PRESENCE_ACTIVITY_CP_FIRST <= arg0 and arg0 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_CP_LAST then
				return Enum.eModes.MODE_CAMPAIGN
			else
				if Enum.PresenceActivity.PRESENCE_ACTIVITY_MP_FIRST <= arg0 and arg0 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_MP_LAST then
					return Enum.eModes.MODE_MULTIPLAYER
				else
					if Enum.PresenceActivity.PRESENCE_ACTIVITY_ZM_FIRST <= arg0 and arg0 <= Enum.PresenceActivity.PRESENCE_ACTIVITY_ZM_LAST then
						return Enum.eModes.MODE_ZOMBIES
					end
				end
			end
		end
	end
end

function SetFocusToLoadoutWidgetAfterSetItem(arg0)
	if arg0.weaponSlotTable and arg0.currentActiveSlot and arg0.weaponSlotTable[arg0.currentActiveSlot] and arg0.weaponSlotTable[arg0.currentActiveSlot] then
		if arg0.weaponSlotTable[arg0.currentActiveSlot].widget then
			local registerVal4 = {}
			registerVal4.name = "gain_focus"
			registerVal4.skipGainFocus = true
			arg0.weaponSlotTable[arg0.currentActiveSlot].widget:processEvent(registerVal4)
		else
			registerVal4 = {}
			registerVal4.name = "gain_focus"
			registerVal4.skipGainFocus = true
			arg0.weaponSlotTable[arg0.currentActiveSlot]:dispatchEventToParent(registerVal4)
		end
	end
end

function OpenGenericPopup(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal8 = arg0:getParent()
	registerVal8 = registerVal8:openPopup(arg2, arg1)
	if not CoD.MenuNavigation then
		CoD.MenuNavigation = {}
	end
	if not CoD.MenuNavigation[arg1] then
		CoD.MenuNavigation[arg1] = {}
	end
	local registerVal11 = {}
	registerVal11 = {registerVal8.menuName}
	table.insert(CoD.MenuNavigation[arg1], registerVal11)
	if arg3 and arg3 ~= "" then
		registerVal8:setContent(Engine.Localize(arg3))
	end
	if arg4 and arg4 ~= "" then
		registerVal8:setSubContent(Engine.Localize(arg4))
	end
	if arg5 and arg5 ~= "" then
		registerVal8:setButton1Text(Engine.Localize(arg5))
	end
	local registerVal10 = type(arg6)
	if arg6 and registerVal10 == "string" and arg6 ~= "" and _G[arg6] then
	end
	registerVal10 = type(_G[arg6])
	if registerVal10 == "function" then
		registerVal8:setButton1Action(arg6)
	end
	return registerVal8
end

function GetListItem(arg0, arg1)
	table.insert({}, arg1)
	local registerVal3 = arg1:getParent()
	if 1.000000 <= #registerVal3 then
		return {}[##registerVal3]
	end
	return initialElement
end

function RemoveItemFromClassSlot(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModel(CoD.perController[arg1].classModel, arg0)
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal5, "itemIndex"))
	if CoD.CACUtility.EmptyItemIndex < registerVal6 then
		local registerVal7 = Engine.GetItemRef(registerVal6)
		CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, arg0, CoD.CACUtility.EmptyItemIndex)
		if registerVal7 == "bonuscard_perk_1_greed" and not arg2 then
			RemoveItemFromClassSlot("specialty4", arg1)
		else
			if registerVal7 == "bonuscard_perk_2_greed" and not arg2 then
				RemoveItemFromClassSlot("specialty5", arg1)
			else
				if registerVal7 == "bonuscard_perk_3_greed" and not arg2 then
					RemoveItemFromClassSlot("specialty6", arg1)
				else
					local registerVal8 = LUI.startswith(registerVal7, "bonuscard_primary_gunfighter")
					if registerVal8 then
						registerVal8 = CoD.CACUtility.PrimaryGunfighterEquippedCount(CoD.perController[arg1].classModel)
						RemoveItemFromClassSlot("primaryattachment6", arg1)
						RemoveItemFromClassSlot("primaryattachment5", arg1)
						if registerVal8 < 2.000000 and registerVal8 < 1.000000 then
							RemoveItemFromClassSlot("primaryattachment4", arg1)
						else
							if registerVal7 == "bonuscard_secondary_gunfighter" then
								RemoveItemFromClassSlot("secondaryattachment3", arg1)
							else
								if registerVal7 == "bonuscard_overkill" then
									RemoveItemFromClassSlot("secondary", arg1)
									registerVal8 = Engine.IsCampaignGame()
									if registerVal8 then
										registerVal8 = Engine.TableLookup(arg1, CoD.statsTable, 4.000000, "pistol_standard", 0.000000)
										CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, "secondary", tonumber(registerVal8))
									else
										if registerVal7 == "bonuscard_two_tacticals" then
											RemoveItemFromClassSlot("primarygadget", arg1)
										else
											if registerVal7 == "bonuscard_danger_close" then
												registerVal8 = CoD.CACUtility.IsBonusCardEquipped("bonuscard_two_tacticals", CoD.perController[arg1].classModel)
												if not registerVal8 then
													RemoveItemFromClassSlot("primarygadgetattachment1", arg1)
												else
													if arg0 == "primary" or arg0 == "secondary" then
														registerVal8 = CoD.CACUtility.GetAttachmentListForSlot(arg0)
														local registerVal9, registerVal10, registerVal11 = ipairs(registerVal8)
														for index12,value13 in registerVal9, registerVal10, registerVal11 do
															RemoveItemFromClassSlot(value13, arg1)
														end
														registerVal9, registerVal10, registerVal11 = pairs(CoD.CACUtility.weaponOptionGroupNames)
														for index12,value13 in registerVal9, registerVal10, registerVal11 do
															local registerVal15 = Engine.GetModel(CoD.perController[arg1].classModel, (arg0 .. value13))
															if registerVal15 then
																CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, (arg0 .. value13), CoD.CACUtility.EmptyItemIndex)
															end
														end
														registerVal9 = CoD.CACUtility.GetCACWeaponACVList(arg0)
														registerVal10, registerVal11, registerVal12 = ipairs(registerVal9)
														for index13,value14 in registerVal10, registerVal11, registerVal12 do
															RemoveItemFromClassSlot(value14, arg1)
														end
														CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, (arg0 .. "paintjobslot"), Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
														CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, (arg0 .. "paintjobindex"), Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX)
														CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, (arg0 .. CoD.CACUtility[(arg0 .. "WeaponPrestigeSlot")]), CoD.CACUtility.EmptyItemIndex)
													else
														if arg0 ~= "primarygadget" and arg0 == "secondarygadget" or arg0 == "specialgadget" then
															if arg0 == "secondarygadget" then
															else
																if arg0 == "specialgadget" then
																end
															end
															registerVal9, registerVal10, registerVal11 = ipairs(CoD.CACUtility.SpecialGadgetAttachmentSlotNameList)
															for index12,value13 in registerVal9, registerVal10, registerVal11 do
																RemoveItemFromClassSlot(value13, arg1)
															end
														else
															registerVal8 = LUI.startswith(arg0, "primaryattachment")
															registerVal8 = LUI.startswith(arg0, "secondaryattachment")
															if not arg1 or registerVal8 then
																registerVal9 = LUI.startswith(arg0, "secondary")
																if registerVal9 then
																end
																registerVal9 = Engine.GetModel(CoD.perController[arg1].classModel, ("secondary" .. ".itemIndex"))
																registerVal10 = Engine.GetModelValue(registerVal9)
																registerVal11 = Engine.GetAttachmentRef(registerVal10, registerVal6)
																if registerVal9 and registerVal11 then
																	local registerVal13 = CoD.CACUtility.AttachmentHasCustomReticle(registerVal11)
																	if registerVal13 then
																	end
																	registerVal13 = Engine.GetModel(CoD.perController[arg1].classModel, ("secondary" .. "reticle"))
																	if registerVal13 then
																		CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, ("secondary" .. "reticle"), CoD.CACUtility.EmptyItemIndex)
																	end
																end
																registerVal11 = Engine.GetModel(CoD.perController[arg1].classModel, (arg0 .. "cosmeticvariant"))
																if registerVal11 then
																	CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, (arg0 .. "cosmeticvariant"), CoD.CACUtility.EmptyItemIndex)
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
						end
					end
				end
			end
		end
		CoD.CACUtility.GetCustomClassModel(arg1, CoD.perController[arg1].classNum, CoD.perController[arg1].classModel)
		return true
	end
	return false
end

function CanEquipMultiplePrimaryGunfighterWildcard(arg0, arg1)
	local registerVal2 = LUI.startswith(arg0, "bonuscard")
	if not registerVal2 then
		return false
	end
	registerVal2 = Engine.GetItemRef(arg1)
	if registerVal2 == "bonuscard_primary_gunfighter" then
		return true
	end
	return false
end

function AttemptAttachItem(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	if arg0.getEquippedLoadoutSlot then
		local registerVal10 = arg0:getEquippedLoadoutSlot(arg1, arg5)
	end
	registerVal10 = Engine.GetModel(arg2, "allocationSpent")
	if not registerVal10 then
		local registerVal11 = Engine.GetModel(CoD.perController[arg1].classModel, "allocationSpent")
	end
	registerVal11 = CoD.CACUtility.GetMutuallyExclusiveSlotName(arg4, arg1, arg5)
	for index12=1.000000, #arg1, 1.000000 do
		if registerVal11[index12] ~= "" then
			if arg1 or registerVal10 ~= mutuallyExclusiveItemSlot then
				local registerVal17 = Engine.IsCampaignGame()
				if registerVal17 then
					if registerVal11[index12] == "primary" or registerVal11[index12] == "secondary" then
						return true
					end
				end
				RemoveItemFromClassSlot(registerVal11[index12], arg1)
			end
		end
	end
	local registerVal12 = CoD.GetClassItem(arg1, arg3, arg4)
	CoD.perController[arg1].overCapacityItemIndex = nil
	if CoD.CACUtility.EmptyItemIndex < registerVal12 or registerVal10 then
		if not registerVal10 then
		end
		local registerVal14 = Engine.GetItemRef(registerVal12)
		if registerVal14 == "bonuscard_perk_1_greed" then
			RemoveItemFromClassSlot("specialty4", arg1)
		else
			if registerVal14 == "bonuscard_perk_2_greed" then
				RemoveItemFromClassSlot("specialty5", arg1)
			else
				if registerVal14 == "bonuscard_perk_3_greed" then
					RemoveItemFromClassSlot("specialty6", arg1)
				else
					if registerVal14 == "bonuscard_primary_gunfighter" then
						local registerVal15 = CoD.CACUtility.SpecificWildcardEquippedCount(CoD.perController[arg1].classModel, "bonuscard_primary_gunfighter")
						RemoveItemFromClassSlot("primaryattachment6", arg1)
						RemoveItemFromClassSlot("primaryattachment5", arg1)
						if registerVal15 <= 2.000000 and registerVal15 <= 1.000000 then
							RemoveItemFromClassSlot("primaryattachment4", arg1)
						else
							if registerVal14 == "bonuscard_secondary_gunfighter" then
								RemoveItemFromClassSlot("secondaryattachment3", arg1)
							else
								if registerVal14 == "bonuscard_overkill" then
									RemoveItemFromClassSlot("secondary", arg1)
									registerVal15 = Engine.IsCampaignGame()
									if registerVal15 then
										registerVal15 = Engine.TableLookup(arg1, CoD.statsTable, 4.000000, "pistol_standard", 0.000000)
										CoD.SetClassItem(arg1, arg3, "secondary", tonumber(registerVal15))
									else
										if registerVal14 == "bonuscard_two_tacticals" then
											RemoveItemFromClassSlot("primarygadget", arg1)
										else
											registerVal15 = CoD.CACUtility.IsBonusCardEquipped("bonuscard_two_tacticals", CoD.perController[arg1].classModel)
											if registerVal14 == "bonuscard_danger_close" and not registerVal15 then
												RemoveItemFromClassSlot("primarygadgetattachment1", arg1)
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
		RemoveItemFromClassSlot(arg4, arg1, true)
		RemoveItemFromClassSlot(arg4, arg1, false)
	end
	if not true then
		registerVal14 = Engine.GetModelValue(registerVal11)
		registerVal15 = IsCampaign()
		registerVal15 = Engine.GetMaxAllocation(arg1)
		if not arg1 or registerVal14 < registerVal15 then
		else
			CoD.perController[arg1].overCapacityItemIndex = arg5
			registerVal15 = OpenPopup(arg0, "OverCapacity", arg1)
			local registerVal16 = {}
			registerVal16.classNum = arg3
			registerVal16.slotName = arg4
			registerVal16.itemIndex = arg5
			registerVal15.acceptData = registerVal16
			return false
		end
	end
	if true == true and CoD.CACUtility.EmptyItemIndex < arg5 then
		registerVal14 = Engine.GetItemRef(arg5)
		if registerVal14 == "bonuscard_overkill" then
			RemoveItemFromClassSlot("secondary", arg1)
			registerVal15 = Engine.IsCampaignGame()
			if registerVal15 then
				registerVal16 = CoD.GetClassItem(arg1, arg3, CoD.CACUtility.loadoutSlotNames.primaryWeapon)
				registerVal17 = tonumber(Engine.TableLookup(arg1, CoD.statsTable, 4.000000, "smg_standard", 0.000000))
				if registerVal16 == registerVal17 then
					local registerVal18 = tonumber(Engine.TableLookup(arg1, CoD.statsTable, 4.000000, "ar_standard", 0.000000))
					CoD.SetClassItem(arg1, arg3, "secondary", registerVal18)
				else
					CoD.SetClassItem(arg1, arg3, "secondary", registerVal17)
				else
					if registerVal14 == "bonuscard_two_tacticals" then
						RemoveItemFromClassSlot("primarygadget", arg1)
					end
				end
			end
		end
		CoD.SetClassItem(arg1, arg3, arg4, arg5)
	end
	if not arg6 then
		CoD.CACUtility.GetCustomClassModel(arg1, arg3, CoD.perController[arg1].classModel)
	end
	return true
end

function ToggleGadgetMod(arg0, arg1, arg2)
	if not arg0.weaponSlotTable[arg2] then
		return 
	end
	local registerVal4 = arg0.weaponSlotTable[arg2].widget:getModel(arg1, "weaponSlot")
	local registerVal5 = arg0:getModel()
	local registerVal6 = Engine.GetModelValue(registerVal4)
	local registerVal7, registerVal8, registerVal9 = CoD.CACUtility.GetCACSlotStatus(arg1, registerVal5, registerVal6)
	if registerVal4 and registerVal5 and registerVal7 == CoD.CACUtility.CACStatusAvailable.AVAILABLE then
		if registerVal8 then
			RemoveItemFromClassSlot(registerVal6, arg1)
			arg0:playSound("unequip_item")
		else
			local registerVal13 = LUI.startswith(registerVal6, "primarygadget")
			if not registerVal13 then
			end
			registerVal13 = arg0:getModel(arg1, ("secondarygadget" .. ".itemIndex"))
			if registerVal13 then
				local registerVal14 = Engine.GetModelValue(registerVal13)
				local registerVal15 = Engine.GetNumGadgetAttachments(registerVal14, false)
				for index16=1.000000, registerVal15, 1.000000 do
					local registerVal20 = Engine.IsTakeTwoGadgetAttachment(registerVal14, index16)
					if registerVal20 then
						registerVal20 = AttemptAttachItem(arg0, arg1, registerVal5, CoD.perController[arg1].classNum, registerVal6, index16)
						UpdateButtonPromptState(arg0, element, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
						arg0:playSound("equip_mod")
					end
				end
			end
		end
		registerVal14 = {}
		registerVal14.name = "update_state"
		registerVal14.controller = arg1
		arg0:processEvent(registerVal14)
		registerVal14 = {}
		registerVal14.name = "update_button_prompts"
		registerVal14.controller = arg1
		arg0:processEvent(registerVal14)
		registerVal14 = LUI.startswith(arg2, "primarygadgetattachment")
		if registerVal14 then
			registerVal14 = Engine.GetWeaponString(arg1, CoD.perController[arg1].classNum, "primarygadget")
		else
			registerVal14 = LUI.startswith(arg2, "secondarygadgetattachment")
			if registerVal14 then
				registerVal14 = Engine.GetWeaponString(arg1, CoD.perController[arg1].classNum, "secondarygadget")
			end
		end
		if not arg1 or registerVal20 == false then
			local registerVal17 = CoD.GetLocalClientAdjustedNum(arg1)
			Engine.SendClientScriptNotify(arg1, ("CustomClass_remove" .. registerVal17))
		else
			if registerVal14 and registerVal14 ~= "" then
				registerVal17 = CoD.GetLocalClientAdjustedNum(arg1)
				Engine.SendClientScriptNotify(arg1, ("CustomClass_update" .. registerVal17), arg2, registerVal14, "select01")
			end
		end
	end
end

function AttachWeaponVariant(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal13 = IsProgressionEnabled(arg1)
	if arg1 or not arg3.isVariantLinkBroken then
		CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, (arg2 .. "gunsmithvariant"), arg3.cacVariantIndex)
	end
	RemoveItemFromClassSlot(arg2, arg1)
	AttemptAttachItem(arg0, arg1, CoD.perController[arg1].classModel, CoD.perController[arg1].classNum, arg2, arg3.weaponIndex, true)
	CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, (arg2 .. "camo"), arg3.camoIndex)
	CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, (arg2 .. "reticle"), arg3.reticleIndex)
	if arg3.paintjobSlot and arg3.paintjobSlot ~= Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT and arg3.paintjobIndex ~= Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX then
		CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, (arg2 .. "paintjobslot"), arg3.paintjobSlot)
		CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, (arg2 .. "paintjobindex"), arg3.paintjobIndex)
	end
	local registerVal15, registerVal16, registerVal17 = ipairs(arg5)
	for index18,value19 in registerVal15, registerVal16, registerVal17 do
		if not value19.isLocked then
			local registerVal21, registerVal22, registerVal23 = ipairs(CoD.CACUtility.BonuscardSlotNameList)
			for index24,value25 in registerVal21, registerVal22, registerVal23 do
				local registerVal26 = CoD.CACUtility.ItemEquippedInSlot(value25, arg1, CoD.perController[arg1].classModel)
				if not registerVal26 then
				else
				end
			end
			if value25 then
				AttemptAttachItem(arg0, arg1, CoD.perController[arg1].classModel, CoD.perController[arg1].classNum, value25, value19.itemIndex, true)
			end
		end
	end
	registerVal15, registerVal16, registerVal17 = ipairs(arg4)
	for index18,value19 in registerVal15, registerVal16, registerVal17 do
		if CoD.CACUtility.EmptyItemIndex < value19 then
			AttemptAttachItem(arg0, arg1, CoD.perController[arg1].classModel, CoD.perController[arg1].classNum, (arg2 .. "attachment" .. index18), value19, true)
			CoD.SetClassItem(arg1, CoD.perController[arg1].classNum, ((arg2 .. "attachment" .. index18) .. "cosmeticvariant"), arg3.attachmentVariant[index18])
		end
	end
	CoD.CACUtility.GetCustomClassModel(arg1, CoD.perController[arg1].classNum, CoD.perController[arg1].classModel)
end

function SetConfirmationInfoInternal(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg2)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.GetModel(registerVal5, "UnlockTokenInfo")
	registerVal5 = Engine.GetModel(registerVal4, "itemIndex")
	Engine.SetModelValue(registerVal5, registerVal3)
	local registerVal6 = Engine.GetModel(registerVal4, "xpBarInfo")
	if registerVal6 then
		local registerVal7 = CoD.GetPlayerStats(arg1)
		local registerVal8 = registerVal7.PlayerStatsList.RANKXP.StatValue:get()
		local registerVal9 = registerVal7.PlayerStatsList.RANK.StatValue:get()
		local registerVal10 = registerVal7.PlayerStatsList.PLEVEL.StatValue:get()
		local registerVal11, registerVal12 = CoD.AARUtility.GetMinMaxXPForRank(registerVal9, arg1)
		if not registerVal12 then
		end
		local registerVal13, registerVal14 = CoD.AARUtility.GetLevelAndLevelIconForRank(registerVal9, registerVal10)
		local registerVal15, registerVal16 = CoD.AARUtility.GetLevelAndLevelIconForRank((registerVal9 + 1.000000), registerVal10)
		local registerVal17 = IsInParagonCapableGameMode()
		registerVal17 = Engine.GetPrestigeCap()
		if registerVal17 and registerVal10 == registerVal17 then
			registerVal17 = registerVal7.PlayerStatsList.PARAGON_RANKXP.StatValue:get()
			registerVal17 = registerVal7.PlayerStatsList.PARAGON_RANK.StatValue:get()
			registerVal17, registerVal18 = CoD.AARUtility.GetMinMaxXPForParagonRank(registerVal17, arg1)
			if not registerVal18 then
			end
			registerVal17 = Engine.GetParagonRankDisplayLevel(registerVal17)
			registerVal17 = Engine.GetParagonRankDisplayLevel((registerVal17 + 1.000000))
			registerVal17 = registerVal7.PlayerStatsList.PARAGON_ICON_ID.StatValue:get()
			if registerVal17 ~= CoD.PrestigeUtility.INVALID_PARAGON_ICON_ID then
				registerVal18 = Engine.GetParagonIconById(registerVal17)
			end
		end
		registerVal18 = Engine.GetModel(registerVal6, "rankXP")
		Engine.SetModelValue(registerVal18, registerVal17)
		registerVal18 = Engine.GetModel(registerVal6, "xpEarned")
		Engine.SetModelValue(registerVal18, 0.000000)
		registerVal18 = Engine.GetModel(registerVal6, "xpNeeded")
		Engine.SetModelValue(registerVal18, (registerVal17 - registerVal17))
		registerVal18 = Engine.GetModel(registerVal6, "currLevel")
		Engine.SetModelValue(registerVal18, registerVal17)
		registerVal18 = Engine.GetModel(registerVal6, "currLevelIcon")
		Engine.SetModelValue(registerVal18, registerVal18)
		registerVal18 = Engine.GetModel(registerVal6, "nextLevel")
		Engine.SetModelValue(registerVal18, registerVal17)
		registerVal18 = Engine.GetModel(registerVal6, "nextLevelIcon")
		Engine.SetModelValue(registerVal18, registerVal18)
	end
	CoD.perController[arg1].UnlockTokenInfo = registerVal4
end

function SetWeaponOptionAsOldInternal(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel(arg2, "weaponOptionSubIndex")
	local registerVal5 = arg1:getModel(arg2, "weaponOptionType")
	local registerVal6 = arg1:getModel(arg2, "unlockSessionMode")
	local registerVal7 = Engine.GetModelValue(registerVal4)
	local registerVal8 = Engine.GetModelValue(registerVal5)
	local registerVal9 = Engine.GetModelValue(registerVal6)
	local registerVal10 = Engine.GetWeaponOptionGroupIndex(registerVal7, registerVal8)
	Engine.SetWeaponOptionAsOld(arg2, arg3, registerVal10, registerVal9)
	local registerVal12 = arg0.categoryTabs.Tabs.grid:getItemAt((arg0.categoryTabs.Tabs.grid.savedActiveIndex + 1.000000))
	local registerVal13 = registerVal12:getModel(arg2, "breadcrumbCount")
	if registerVal4 and registerVal5 and registerVal6 and registerVal8 ~= Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_PAINTJOB and registerVal8 ~= Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_INVALID and CoD.CACUtility.EmptyItemIndex < registerVal7 and arg0.categoryTabs and arg0.categoryTabs.Tabs.grid and registerVal12 and registerVal13 then
		if registerVal12.filterEnum < Enum.WeaponOptionFilter.WEAPONOPTION_FILTER_MODE_COUNT then
			local registerVal15 = Engine.WeaponOptionNewItemCount(arg2, arg3, registerVal8, registerVal12.filterEnum)
		else
			registerVal15 = Engine.WeaponOptionNewModeAgnosticItemCount(arg2, arg3, registerVal8, registerVal12.filterEnum)
		end
		Engine.SetModelValue(registerVal13, registerVal15)
	end
end

function SetACVASOldInternal(arg0, arg1, arg2, arg3, arg4)
	Engine.SetACVItemOld(arg0, arg1, arg2, arg3, arg4)
end

function GetCPDifficulty(arg0, arg1)
	local registerVal2 = Engine.GetProfileVarInt(arg0, arg1)
	if registerVal2 ~= 0.000000 then
		return (registerVal2 - 1.000000)
	end
end

function SetCPDifficulty(arg0, arg1, arg2)
	Engine.SetProfileVar(arg0, arg1, (arg2 + 1.000000))
end

function SetHeroCardStateToDefault(arg0, arg1, arg2, arg3)
	local registerVal4 = GetListItem(arg1, arg2)
	arg2:setState("DefaultState", true)
	if registerVal4.activeWidget then
		registerVal4:setActiveItem(registerVal4.activeWidget)
	end
end

function NotifyScriptCharacterLoadoutChange(arg0, arg1)
	if arg1 == Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_GADGET then
	end
	local registerVal6 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal6), "changeFrozenMoment", "ability")
end

function PreviewGesture_Internal(arg0, arg1)
	local registerVal5 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal5), "previewGesture", arg1)
end

function PreviewTaunt_Internal(arg0, arg1)
	local registerVal5 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal5), "previewTaunt", arg1)
end

function SetBrowseMode(arg0)
	CoD.SetEditorProperties(arg0, Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_BROWSE, "editorMode")
end

function EmblemEditor_SetLayerAndGroupCount(arg0, arg1)
	local registerVal3 = Engine.GetUsedLayerCount(arg0, arg1, CoD.perController[arg0].totalLayers)
	local registerVal4 = Engine.Localize("MENU_EMBLEM_LAYERS_USED_FRACTION", registerVal3, CoD.perController[arg0].totalLayers)
	CoD.SetEditorProperties(arg0, registerVal4, "layersUsedFraction")
	CoD.SetEditorProperties(arg0, registerVal3, "layersUsed")
	local registerVal6 = Engine.GetUsedGroupCount(arg0, arg1, CoD.perController[arg0].totalGroups)
	local registerVal7 = Engine.Localize("MENU_EMBLEM_LAYERS_USED_FRACTION", registerVal6, (CoD.perController[arg0].totalGroups - 1.000000))
	CoD.SetEditorProperties(arg0, registerVal7, "groupsUsedFraction")
	CoD.SetEditorProperties(arg0, registerVal6, "groupsUsed")
end

function EmblemEditor_SetScaleMode(arg0, arg1)
	CoD.SetEditorProperties(arg0, arg1, "scaleMode")
	Engine.ExecNow(arg0, ("emblemSetScaleMode " .. arg1))
end

function EmblemEditor_SetMaterialScaleMode(arg0, arg1)
	CoD.SetEditorProperties(arg0, arg1, "materialScaleMode")
	Engine.ExecNow(arg0, ("setMaterialScaleMode " .. arg1))
end

function EmblemEditor_GetLayerAndGroupIndex(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "layerIndex")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = arg0:getModel(arg1, "groupIndex")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	return (registerVal3 .. " " .. registerVal5)
end

function EmblemEditor_SetupDrawEmblem(arg0, arg1, arg2)
	local registerVal3 = EmblemEditor_GetLayerAndGroupIndex(arg1, arg0)
	arg1.emblemLayer.layerIcon.layerIcon:setupDrawEmblemLayer(GetEmblemLayerAndGroupIndex(arg0, registerVal3))
	local registerVal4 = EmblemEditor_GetLayerAndGroupIndex(arg2, arg0)
	arg2.emblemLayer.layerIcon.layerIcon:setupDrawEmblemLayer(GetEmblemLayerAndGroupIndex(arg0, registerVal4))
end

function EmblemEditor_SetSelectedLayerIndex(arg0, arg1)
	local registerVal2 = arg1:getModel(arg0, "layerIndex")
	if registerVal2 then
		local registerVal4 = Engine.GetModelValue(registerVal2)
		CoD.perController[arg0].selectedLayerIndex = registerVal4
	end
end

function EmblemEditor_RecordComScoreEvent(arg0, arg1, arg2, arg3)
	if arg0.occludedMenu and arg0.occludedMenu.openTime then
		local registerVal5 = Engine.milliseconds()
	end
	registerVal5 = Engine.GetEmblemSummaryString()
	LUI.CoDMetrics.EmblemEvent(arg1, (registerVal5 - arg0.occludedMenu.openTime), registerVal5, arg2, arg3)
end

function EmblemChooseColor_SetupSelectedLayerColorModel(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetSelectedLayerColor(arg0)
	local registerVal3 = CoD.ConvertColor(registerVal2.red, registerVal2.green, registerVal2.blue)
	local registerVal4 = Engine.GetModel(registerVal1, "Emblem.EmblemSelectedLayerColor")
	local registerVal5 = Engine.GetModel(registerVal4, "color")
	Engine.SetModelValue(registerVal5, registerVal3)
	local registerVal7 = Engine.GetModel(registerVal4, "red")
	Engine.SetModelValue(registerVal7, (registerVal2.red * CoD.emblem.MAX_COLOR_COMPONENT_VALUE))
	registerVal7 = Engine.GetModel(registerVal4, "green")
	Engine.SetModelValue(registerVal7, (registerVal2.green * CoD.emblem.MAX_COLOR_COMPONENT_VALUE))
	registerVal7 = Engine.GetModel(registerVal4, "blue")
	Engine.SetModelValue(registerVal7, (registerVal2.blue * CoD.emblem.MAX_COLOR_COMPONENT_VALUE))
	local registerVal6 = Engine.GetSelectedLayerColor1(arg0)
	registerVal7 = CoD.ConvertColor(registerVal6.red, registerVal6.green, registerVal6.blue)
	local registerVal8 = Engine.GetModel(registerVal1, "Emblem.EmblemSelectedLayerColor1")
	local registerVal9 = Engine.GetModel(registerVal8, "color")
	Engine.SetModelValue(registerVal9, registerVal7)
	local registerVal11 = Engine.GetModel(registerVal8, "red")
	Engine.SetModelValue(registerVal11, (registerVal6.red * CoD.emblem.MAX_COLOR_COMPONENT_VALUE))
	registerVal11 = Engine.GetModel(registerVal8, "green")
	Engine.SetModelValue(registerVal11, (registerVal6.green * CoD.emblem.MAX_COLOR_COMPONENT_VALUE))
	registerVal11 = Engine.GetModel(registerVal8, "blue")
	Engine.SetModelValue(registerVal11, (registerVal6.blue * CoD.emblem.MAX_COLOR_COMPONENT_VALUE))
	CoD.SetNoColorDataModel(arg0)
end

function EmblemChooseColor_SetPointerPosition(arg0, arg1)
	local registerVal2, registerVal3 = arg0:getLocalSize()
	arg0.pointer:setLeftRight(true, false, (registerVal2 * arg1), ((registerVal2 * arg1) + 2.000000))
end

function EmblemChooseColor_SetShaderParams(arg0, arg1)
	local registerVal2 = CoD.GetSelectedColor(arg0)
	if registerVal2 ~= nil then
		arg1.redBar.bar:setShaderVector(0.000000, 0.000000, registerVal2.green, registerVal2.blue, 1.000000)
		arg1.redBar.bar:setShaderVector(1.000000, 1.000000, registerVal2.green, registerVal2.blue, 1.000000)
		EmblemChooseColor_SetPointerPosition(arg1.redBar, registerVal2.red)
		arg1.greenBar.bar:setShaderVector(0.000000, registerVal2.red, 0.000000, registerVal2.blue, 1.000000)
		arg1.greenBar.bar:setShaderVector(1.000000, registerVal2.red, 1.000000, registerVal2.blue, 1.000000)
		EmblemChooseColor_SetPointerPosition(arg1.greenBar, registerVal2.green)
		arg1.blueBar.bar:setShaderVector(0.000000, registerVal2.red, registerVal2.green, 0.000000, 1.000000)
		arg1.blueBar.bar:setShaderVector(1.000000, registerVal2.red, registerVal2.green, 1.000000, 1.000000)
		EmblemChooseColor_SetPointerPosition(arg1.blueBar, registerVal2.blue)
	end
end

function EmblemChooseColor_GetColorMixerElement(arg0, arg1)
	local registerVal2 = CoD.GetEditorProperties(arg1, "isGradientMode")
	if registerVal2 == 0.000000 then
		return arg0.colorMixerContainer.colorMixer
	else
		return arg0.colorGradientMixerContainer.colorMixer
	end
end

function EmblemChooseColor_GetGradientSliderElement(arg0, arg1)
	return arg0.colorGradientContainer.gradientSlider
end

function EmblemChooseColor_ModifyColorModelValue(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(arg0)
	local registerVal3 = CoD.ClampColor((registerVal2 + arg1), 0.000000, 255.000000)
	Engine.SetModelValue(arg0, registerVal3)
end

function EmblemChooseColor_SetColorModelValue(arg0, arg1)
	local registerVal2 = CoD.ClampColor(arg1, 0.000000, 255.000000)
	Engine.SetModelValue(arg0, registerVal2)
end

function EmblemChooseColor_SetLayerColor(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(arg0:getModel(arg1, "red"))
	local registerVal3 = Engine.GetModelValue(arg0:getModel(arg1, "green"))
	local registerVal4 = Engine.GetModelValue(arg0:getModel(arg1, "blue"))
	local registerVal6 = CoD.GetEditorProperties(arg1, "colorNum")
	Engine.ExecNow(arg1, ("emblemSetLayerColor " .. registerVal6 .. " " .. (registerVal2 * (1.000000 / CoD.emblem.MAX_COLOR_COMPONENT_VALUE)) .. " " .. (registerVal3 * (1.000000 / CoD.emblem.MAX_COLOR_COMPONENT_VALUE)) .. " " .. (registerVal4 * (1.000000 / CoD.emblem.MAX_COLOR_COMPONENT_VALUE))))
end

function EmblemChooseColor_SetPreviewColorModel(arg0, arg1)
	local registerVal2 = Engine.GetModelForController(arg1)
	local registerVal3 = CoD.GetSelectedColor(arg1)
	if registerVal3 ~= nil then
		local registerVal4 = CoD.ConvertColor(registerVal3.red, registerVal3.green, registerVal3.blue)
		local registerVal5 = arg0:getModel(arg1, "color")
		Engine.SetModelValue(registerVal5, registerVal4)
	end
end

function EmblemChooseColor_SetBarProperties(arg0, arg1, arg2, arg3)
	EmblemChooseColor_SetLayerColor(arg1, arg3)
	EmblemChooseColor_SetPreviewColorModel(arg1, arg3)
	EmblemChooseColor_SetShaderParams(arg3, arg0)
end

function EmblemGradient_SetupSwatchLastSavedColor(arg0, arg1, arg2)
	local registerVal3 = DataSources.EmblemSelectedLayerEdittingColor.getModel(arg2)
	arg0.colorGradientSwatchContainer:setModel(registerVal3)
	arg0.colorGradientMixerContainer.colorMixer:setModel(registerVal3)
end

function EmblemGradient_UpdateGradientVisuals(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "Emblem.EmblemSelectedLayerProperties.gradient_fill"))
	registerVal4 = Engine.GetSelectedLayerColor(arg0)
	local registerVal5 = Engine.GetSelectedLayerColor1(arg0)
	EmblemChooseColor_SetPointerPosition(arg1, (registerVal2 / CoD.emblem.MAX_GRADIENT_SLIDER_VALUE))
	if registerVal4 ~= nil and registerVal5 ~= nil then
		arg1.bar:setShaderVector(0.000000, registerVal4.red, registerVal4.green, registerVal4.blue, registerVal4.alpha)
		arg1.bar:setShaderVector(1.000000, registerVal5.red, registerVal5.green, registerVal5.blue, registerVal5.alpha)
		arg1.bar:setShaderVector(2.000000, (registerVal2 / CoD.emblem.MAX_GRADIENT_SLIDER_VALUE), 0.000000, 0.000000, 0.000000)
	end
end

function PaintJobEditor_RecordComScoreEvent(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg0.occludedMenu and arg0.occludedMenu.openTime then
		local registerVal7 = Engine.milliseconds()
	end
	registerVal7 = Engine.GetModel(arg2, "paintjobName")
	local registerVal8 = Engine.GetModelValue(registerVal7)
	local registerVal9 = Engine.GetModelValue(Engine.GetModel(arg2, "weaponIndex"))
	local registerVal10 = Engine.GetPaintshopSummaryString()
	LUI.CoDMetrics.PaintshopEvent(arg1, arg3, (registerVal7 - arg0.occludedMenu.openTime), registerVal9, registerVal8, registerVal10, arg4, arg5)
end

function GroupNotifyPopupButtonAction(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.CreateModel(registerVal3, "groups")
	local registerVal5 = Engine.GetModelValue(Engine.CreateModel(registerVal4, "notificationError"))
	local registerVal6 = IsProcessingGroupTask(arg2)
	if registerVal6 then
		return 
	end
	if not registerVal5 then
		arg0.onSuccessAction(arg0, arg1, arg2)
		if arg0.onSuccessAction and arg0.onFailureAction then
			arg0.onFailureAction(arg0, arg1, arg2)
		end
	end
	GoBack(arg0, arg2)
end

function OpenGroupsNotifyPopup(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	if arg6 == nil then
	end
	local registerVal12 = Engine.GetModelForController(arg2)
	local registerVal11 = Engine.GetModel(registerVal12, "groups.closeAutomaticallyAfterEvent")
	Engine.SetModelValue(registerVal11, false)
	if arg3 then
		local registerVal10 = GetProcessingGroupTaskModel(arg2)
		Engine.SetModelValue(registerVal10, true)
	end
	local function __FUNC_8AD2_(arg0, arg1, arg2, arg3, arg4)
		GroupNotifyPopupButtonAction(arg4, arg1, arg2)
	end

	local function __FUNC_8B36_(arg0, arg1, arg2, arg3)
		GroupNotifyPopupButtonAction(arg3, nil, arg2)
	end

	registerVal10 = CoD.OverlayUtility.CreateOverlay(arg2, arg0, "GroupsNotificationPopup", arg2, "$(groups.notificationTitle)", "$(groups.notificationMessage)", nil, "MENU_OK", __FUNC_8AD2_, __FUNC_8B36_)
	registerVal10.onSuccessAction = arg5
	registerVal10.onFailureAction = arg7
	registerVal12 = Engine.GetModelForController(arg2)
	registerVal11 = Engine.GetModel(registerVal12, "groups.eventUpdate")
	local registerVal13 = Engine.GetModelForController(arg2)
	registerVal12 = Engine.GetModel(registerVal13, "groups.eventName")
	registerVal10.skipDelay = arg8
	if arg3 then
		local function __FUNC_8B9A_(arg0)
			local registerVal1 = Engine.GetModelValue(registerVal12)
			if registerVal1 == arg4 then
				local function __FUNC_8CEA_()
					local registerVal1 = GetProcessingGroupTaskModel(arg2)
					Engine.SetModelValue(registerVal1, false)
					local registerVal2 = Engine.GetModelForController(arg2)
					local registerVal0 = Engine.GetModelValue(Engine.GetModel(registerVal2, "groups.notificationError"))
					if false then
						if registerVal0 then
							local registerVal3 = Engine.GetModelForController(arg2)
							registerVal2 = Engine.GetModel(registerVal3, "groups.closeAutomaticallyAfterEvent")
							Engine.SetModelValue(registerVal2, false)
							arg7(registerVal10, arg1, arg2)
							registerVal1 = GoBack(registerVal10, arg2)
							if arg7 and arg5 then
								arg5(registerVal1, arg1, arg2)
							end
						end
					end
				end

				if registerVal10.skipDelay then
					__FUNC_8CEA_()
				else
					registerVal10:addElement(LUI.UITimer.newElementTimer(200.000000, true, __FUNC_8CEA_))
				end
			end
		end

		registerVal10:subscribeToModel(registerVal11, __FUNC_8B9A_)
	end
	return registerVal10
end

function InitializeCreateGroup(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal3, "groups.createGroup")
	local registerVal6 = Engine.CreateModel(registerVal4, "name")
	Engine.SetModelValue(registerVal6, "")
	registerVal6 = Engine.CreateModel(registerVal4, "default_name")
	Engine.SetModelValue(registerVal6, Engine.LocalizeWithoutLocsMarkers("GROUPS_DEFAULT_NAME"))
	registerVal6 = Engine.CreateModel(registerVal4, "privacy")
	Engine.SetModelValue(registerVal6, Enum.GroupPrivacy.GROUP_PRIVACY_PUBLIC)
	registerVal6 = Engine.CreateModel(registerVal4, "description")
	Engine.SetModelValue(registerVal6, "")
	registerVal6 = Engine.CreateModel(registerVal4, "default_description")
	Engine.SetModelValue(registerVal6, Engine.LocalizeWithoutLocsMarkers("GROUPS_DEFAULT_DESCRIPTION"))
	registerVal6 = Engine.CreateModel(registerVal4, "emblem")
	Engine.SetModelValue(registerVal6, "uie_t7_medal_baked")
	registerVal6 = Engine.CreateModel(registerVal4, "tooltip_title")
	Engine.SetModelValue(registerVal6, "")
	registerVal6 = Engine.CreateModel(registerVal4, "tooltip_description")
	Engine.SetModelValue(registerVal6, "")
	registerVal6 = Engine.CreateModel(registerVal4, "friends_invited_count")
	Engine.SetModelValue(registerVal6, 0.000000)
	registerVal6 = Engine.CreateModel(registerVal4, "friends_count")
	Engine.SetModelValue(registerVal6, 0.000000)
	Engine.CreateModel(registerVal4, "createdGroupId")
	Engine.ExecNow(arg2, "emblemgetprofile")
	Engine.SetGroupEmblemForGroupCreation(arg2)
end

function SetGroupLeaderboardInfo(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	if not arg7 then
		Engine.SetGroupLeaderboardInfo(arg0, arg1, arg2, arg3, arg4, arg5)
	end
	local function __FUNC_958A_(arg0)
		local registerVal2 = Engine.GetModelForController(arg0)
		local registerVal1 = Engine.CreateModel(registerVal2, "groups.selectedGroup")
		local registerVal3 = Engine.CreateModel(registerVal1, "lbDef")
		Engine.SetModelValue(registerVal3, arg1)
		registerVal3 = Engine.CreateModel(registerVal1, "lbTimeFrame")
		Engine.SetModelValue(registerVal3, arg2)
		registerVal3 = Engine.CreateModel(registerVal1, "lbHardcore")
		Engine.SetModelValue(registerVal3, arg3)
		registerVal3 = Engine.CreateModel(registerVal1, "lbArena")
		Engine.SetModelValue(registerVal3, arg4)
		registerVal3 = Engine.CreateModel(registerVal1, "lbSortType")
		Engine.SetModelValue(registerVal3, arg5)
		registerVal3 = Engine.CreateModel(registerVal1, "lbInitialized")
		Engine.SetModelValue(registerVal3, arg6)
		if CoD.LeaderboardUtility.leaderboardInfo[arg1] then
		end
		registerVal3 = CoD.LeaderboardUtility.GetDurationFilterString(arg2)
		if not registerVal3 then
		end
		local registerVal5 = Engine.CreateModel(registerVal1, "lbTypeString")
		Engine.SetModelValue(registerVal5, CoD.LeaderboardUtility.leaderboardInfo[arg1].title)
		registerVal5 = Engine.CreateModel(registerVal1, "lbTimeFrameString")
		Engine.SetModelValue(registerVal5, "")
		if not arg3 then
		end
		local registerVal6 = Engine.CreateModel(registerVal1, "lbHardcoreString")
		Engine.SetModelValue(registerVal6, "")
	end

	__FUNC_958A_(arg0)
	if arg0 ~= 0.000000 then
		__FUNC_958A_(0.000000)
	end
end

function OpenCreateGroupMenu(arg0, arg1, arg2)
	local registerVal3 = arg0:getParentMenu()
	NavigateToMenu(registerVal3, "CreateGroup", true, arg2)
end

function GroupsSocialChangeTabFrameWidget(arg0, arg1, arg2, arg3)
	if not arg3 then
		return 
	end
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "groups.frameWidget")
	local registerVal6 = Engine.GetModelForController(arg2)
	registerVal5 = Engine.GetModel(registerVal6, "groups.frameType")
	Engine.SetModelValue(registerVal5, arg3)
	if arg3 == "main" then
		local registerVal7 = IsUserContentRestricted(arg2)
		registerVal7 = IsUserChatRestricted(arg2)
		if not arg1 or registerVal7 then
		end
		Engine.SetModelValue(registerVal4, "CoD.GroupsSocialMainFrameWidgetDisabled")
	else
		if arg3 == "members" then
			local registerVal8 = Engine.GetGlobalModel()
			registerVal7 = Engine.CreateModel(registerVal8, "socialRoot.tab")
			Engine.SetModelValue(registerVal7, "groupMembers")
			Engine.SetModelValue(registerVal4, "CoD.GroupsSocialMembersFrameWidget")
		else
			if arg3 == "invites" then
				Engine.SetModelValue(registerVal4, "CoD.GroupsSocialInvitesFrameWidget")
			end
		end
	end
end

function ResetGroupDirtyData(arg0)
	CoD.perController[arg0].groupsDataDirty = {}
end

function MarkGroupDataDirty(arg0, arg1, arg2)
	if not CoD.perController[arg0].groupsDataDirty then
		CoD.perController[arg0].groupsDataDirty = {}
	end
	CoD.perController[arg0].groupsDataDirty[arg1] = arg2
end

function SetGroupsNotifyInformation(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal6 = Engine.GetModel(registerVal4, "groups.notificationTitle")
	Engine.SetModelValue(registerVal6, arg1)
	registerVal6 = Engine.GetModel(registerVal4, "groups.notificationMessage")
	Engine.SetModelValue(registerVal6, arg2)
	registerVal6 = Engine.GetModel(registerVal4, "groups.notificationError")
	Engine.SetModelValue(registerVal6, arg3)
end

function ValidateCreateGroupInformation(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.createGroup.name"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.createGroup.description"))
	if registerVal4 == "" then
		OpenGenericSmallPopup(arg0, arg2, "GROUPS_MISSING_GROUP_NAME_TITLE", "GROUPS_MISSING_GROUP_NAME_TEXT", nil, "MENU_OK")
		return false
	end
	return true
end

function Leaderboard_MoveUp_Friends(arg0, arg1, arg2)
	SelectAboveItemIfPossible(arg0, arg1, arg2)
end

function Leaderboard_MoveUp_All(arg0, arg1, arg2)
	local registerVal3 = SelectAboveItemIfPossible(arg0, arg1, arg2)
	if registerVal3 then
		return 
	end
	registerVal3 = arg1:getModel()
	if not registerVal3 then
		return 
	end
	local registerVal6 = arg1:getModel()
	registerVal3 = tonumber(Engine.GetModelValue(Engine.GetModel(registerVal6, "position")))
	if 1.000000 < registerVal3 then
		CoD.perController[arg2].pivotPosition = (registerVal3 - 1.000000)
		CoD.perController[arg2].leaderboardTopOrBottom = CoD.LeaderboardUtility.BOTTOM
		Engine.GetLeaderboardRow(arg2, (registerVal3 - 1.000000), CoD.GetCombatRecordMode())
	end
end

function Leaderboard_MoveDown_Friends(arg0, arg1, arg2)
	SelectBelowItemIfPossible(arg0, arg1, arg2)
end

function Leaderboard_MoveDown_All(arg0, arg1, arg2)
	local registerVal3 = SelectBelowItemIfPossible(arg0, arg1, arg2)
	if registerVal3 then
		return 
	end
	registerVal3 = arg1:getModel()
	if not registerVal3 then
		return 
	end
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "leaderboard")
	registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "totalResults"))
	local registerVal7 = arg1:getModel()
	local registerVal4 = tonumber(Engine.GetModelValue(Engine.GetModel(registerVal7, "position")))
	if registerVal4 < registerVal3 then
		CoD.perController[arg2].pivotPosition = (registerVal4 + 1.000000)
		CoD.perController[arg2].leaderboardTopOrBottom = CoD.LeaderboardUtility.TOP
		Engine.GetLeaderboardRow(arg2, (registerVal4 + 1.000000), CoD.GetCombatRecordMode())
	end
end

function Leaderboard_PageUp_Friends(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	if registerVal3.activeWidget ~= nil then
		if registerVal3.activeWidget.gridInfoTable.gridRowIndex == 1.000000 then
			return 
		end
		local registerVal7 = math.max((registerVal3.activeWidget.gridInfoTable.gridRowIndex - registerVal3.vCount), 1.000000)
		local registerVal8 = registerVal3:getItemAtPosition(registerVal7, 1.000000, true)
	end
	if registerVal8 then
		registerVal3:setActiveItem(registerVal8)
	end
end

function Leaderboard_PageUp_All(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	if not registerVal3.activeWidget then
		return 
	end
	if 0.000000 < (registerVal3.activeWidget.gridInfoTable.gridRowIndex - registerVal3.vCount) then
		local registerVal8 = registerVal3:getItemAtPosition((registerVal3.activeWidget.gridInfoTable.gridRowIndex - registerVal3.vCount), 1.000000, true)
		registerVal3:setActiveItem(registerVal8)
		return 
	end
	registerVal8 = arg1:getModel()
	if not registerVal8 then
		return 
	end
	local registerVal11 = arg1:getModel()
	registerVal8 = tonumber(Engine.GetModelValue(Engine.GetModel(registerVal11, "position")))
	if registerVal8 == 1.000000 then
		return 
	end
	if (registerVal8 - registerVal3.vCount) < 1.000000 then
		local registerVal10 = registerVal3:getItemAtPosition(1.000000, 1.000000, true)
		registerVal3:setActiveItem(registerVal10)
		return 
	end
	CoD.perController[arg2].pivotPosition = (registerVal8 - registerVal3.vCount)
	CoD.perController[arg2].leaderboardTopOrBottom = CoD.LeaderboardUtility.TOP
	Engine.GetLeaderboardRow(arg2, (registerVal8 - registerVal3.vCount), CoD.GetCombatRecordMode())
end

function Leaderboard_PageDown_Friends(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	if registerVal3.activeWidget ~= nil then
		if registerVal3.activeWidget.gridInfoTable.gridRowIndex == registerVal3.requestedRowCount then
			return 
		end
		local registerVal7 = math.min((registerVal3.activeWidget.gridInfoTable.gridRowIndex + registerVal3.vCount), registerVal3.requestedRowCount)
		local registerVal8 = registerVal3:getItemAtPosition(registerVal7, 1.000000, true)
	end
	if registerVal8 then
		registerVal3:setActiveItem(registerVal8)
	end
end

function Leaderboard_PageDown_All(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	if not registerVal3.activeWidget then
		return 
	end
	if (registerVal3.activeWidget.gridInfoTable.gridRowIndex + registerVal3.vCount) <= registerVal3.requestedRowCount then
		local registerVal8 = registerVal3:getItemAtPosition((registerVal3.activeWidget.gridInfoTable.gridRowIndex + registerVal3.vCount), 1.000000, true)
		registerVal3:setActiveItem(registerVal8)
		return 
	end
	registerVal8 = arg1:getModel()
	if not registerVal8 then
		return 
	end
	local registerVal11 = Engine.GetGlobalModel()
	local registerVal10 = Engine.GetModel(registerVal11, "leaderboard")
	registerVal8 = Engine.GetModelValue(Engine.GetModel(registerVal10, "totalResults"))
	local registerVal12 = arg1:getModel()
	local registerVal9 = tonumber(Engine.GetModelValue(Engine.GetModel(registerVal12, "position")))
	if registerVal9 == registerVal8 then
		return 
	end
	if registerVal8 < (registerVal9 + registerVal3.vCount) then
		registerVal11 = registerVal3:getItemAtPosition(registerVal3.requestedRowCount, 1.000000, true)
		registerVal3:setActiveItem(registerVal11)
		return 
	end
	CoD.perController[arg2].pivotPosition = (registerVal9 + registerVal3.vCount)
	CoD.perController[arg2].leaderboardTopOrBottom = CoD.LeaderboardUtility.BOTTOM
	Engine.GetLeaderboardRow(arg2, (registerVal9 + registerVal3.vCount), CoD.GetCombatRecordMode())
end

function Leaderboard_GoToTopOfList_Friends(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	local registerVal4 = registerVal3:getItemAtPosition(1.000000, 1.000000, true)
	if registerVal4 == arg1 then
		return 
	end
	if registerVal4 then
		registerVal3:setActiveItem(registerVal4)
	end
end

function Leaderboard_GoToTopOfList_All(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	local registerVal4 = registerVal3:getItemAtPosition(1.000000, 1.000000, true)
	local registerVal8 = registerVal4:getModel()
	local registerVal5 = tonumber(Engine.GetModelValue(Engine.GetModel(registerVal8, "position")))
	if registerVal5 == 1.000000 then
		if registerVal4 ~= arg1 then
			registerVal3:setActiveItem(registerVal4)
		end
		return 
	end
	CoD.perController[arg2].pivotPosition = 1.000000
	CoD.perController[arg2].leaderboardTopOrBottom = CoD.LeaderboardUtility.TOP
	Engine.GetLeaderboardRow(arg2, 1.000000, CoD.GetCombatRecordMode())
end

function Gunsmith_ClearItemName(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "Gunsmith.GunsmithSelectedItemProperties.itemName")
	Engine.SetModelValue(registerVal1, "")
end

function Gunsmith_RecordComScoreEvent(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg0.occludedMenu and arg0.occludedMenu.openTime then
		local registerVal7 = Engine.milliseconds()
	end
	registerVal7 = Engine.GetModelValue(Engine.GetModel(arg2, "variantName"))
	local registerVal8 = Engine.GetModelValue(Engine.GetModel(arg2, "weaponIndex"))
	local registerVal9 = CoD.CraftUtility.GetDDLRoot(arg1, CoD.CraftUtility.Gunsmith.GetFileType())
	local registerVal11 = Engine.GetModelValue(Engine.GetModel(arg2, "variantIndex"))
	local registerVal13 = CoD.CraftUtility.Gunsmith.GetSortedAttachmentList(arg1, CoD.perController[arg1].gunsmithVariantModel)
	for index14=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
		if 0.000000 < registerVal13.baseAttachmentList[index14] then
			local registerVal19 = string.len("")
			if 0.000000 < registerVal19 then
			end
		end
	end
	LUI.CoDMetrics.GunsmithEvent(arg1, arg3, (registerVal7 - arg0.occludedMenu.openTime), registerVal8, registerVal7, (("" .. ",") .. registerVal13.baseAttachmentList[index14]), arg4, arg5)
end

function Store_UpdatePSStoreIconCount(arg0, arg1)
	if CoD.perController[arg0].psStoreIconCount == nil then
		CoD.perController[arg0].psStoreIconCount = 0.000000
	end
	local registerVal3 = math.max((CoD.perController[arg0].psStoreIconCount + arg1), 0.000000)
	CoD.perController[arg0].psStoreIconCount = registerVal3
end

function ShouldUnloadMod(arg0)
	local registerVal1 = Mods_IsUsingMods()
	if registerVal1 and arg0 and arg0.unloadMod == true then
		return true
	end
	return false
end

function CheckNavRestrictions(arg0, arg1, arg2, arg3)
	local registerVal4 = IsChunkDownloading(arg1, arg2)
	if registerVal4 then
		local registerVal8 = Engine.Localize("PLATFORM_DOWNLOADING_CONTENT")
		OpenGenericSmallPopup(arg0, arg2, "PLATFORM_INSTALLATION_NEEDED", registerVal8, "starterpack_install_dialog_pc", "MENU_OK")
		return true
	else
		registerVal4 = IsStarterPack(arg2)
		registerVal4 = IsStarterPackRestrictedButton(arg1, arg2)
		if registerVal4 and registerVal4 then
			StarterParckPurchase(arg0, arg2, arg3)
			return true
		else
			registerVal4 = IsStarterPackRestrictedButtonByParty(arg1, arg2)
			if registerVal4 then
				registerVal8 = Engine.Localize("PLATFORM_STARTER_PACK_MEMBER_MISSING_CONTENT")
				OpenGenericSmallPopup(arg0, arg2, "MENU_WARNING", registerVal8, "starterpack_attention_dialog_pc", "MENU_OK")
				return true
			else
				registerVal4 = IsChunksRestrictedButtonByParty(arg1, arg2)
				if registerVal4 then
					registerVal8 = Engine.Localize("PLATFORM_MEMBER_MISSING_CONTENT")
					OpenGenericSmallPopup(arg0, arg2, "MENU_WARNING", registerVal8, "starterpack_attention_dialog_pc", "MENU_OK")
					return true
				else
					registerVal4 = ShouldUnloadMod(arg1)
					if registerVal4 then
						CoD.ModsUtility.NeedToUnload(arg0, arg2, arg3)
						return true
					end
				end
			end
		end
	end
	return false
end

function SelectLiveEventQuality_Internal(arg0)
	local registerVal1 = Dvar.hls_quality:get()
	if arg0 and arg0 ~= registerVal1 then
		Dvar.hls_quality:set(arg0)
		CoD.LiveEventUpdateCurrentFeed()
		registerVal1 = DataSources.LiveEventViewer.getModel()
		local registerVal2 = Engine.GetModel(registerVal1, "stream")
		if registerVal1 and registerVal2 then
			Engine.ForceNotifyModelSubscriptions(registerVal2)
		end
		registerVal2 = DataSources.VoDViewer.getModel()
		local registerVal3 = Engine.GetModel(registerVal2, "stream")
		if registerVal2 and registerVal3 then
			Engine.ForceNotifyModelSubscriptions(registerVal3)
		end
	end
end

function CallingCard_TrackCWLEquip(arg0, arg1)
	local registerVal2 = IsLive()
	registerVal2 = IsPerControllerTablePropertyValue(arg0, "uploadProfile", true)
	registerVal2 = Engine.GetEmblemBackgroundId()
	local registerVal3 = Engine.TableLookup(nil, CoD.backgroundsTable, 1.000000, registerVal2, 10.000000)
	local registerVal4 = CoD.StoreUtility.DoesInventoryItemExistsByName(registerVal3)
	if registerVal2 and registerVal2 and registerVal4 then
		registerVal4 = Engine.TableLookup(nil, CoD.backgroundsTable, 1.000000, registerVal2, 3.000000)
		LUI.CoDMetrics.InventoryItemEquipped(arg0, registerVal4, registerVal2, arg1)
	end
end

function SetEmblemBackground_Internal(arg0, arg1)
	local registerVal2 = IsLive()
	if registerVal2 then
		registerVal2 = Engine.GetEmblemBackgroundId()
		if registerVal2 ~= arg1 then
			Engine.ExecNow(arg0, ("emblemSelectBackground " .. arg1))
			CoD.perController[arg0].uploadProfile = true
			Engine.ExecNow(arg0, "emblemSetProfile")
		else
			Engine.ExecNow(arg0, ("emblemSelectBackground " .. arg1))
			Engine.SetProfileVar(arg0, "default_background_index", arg1)
			Engine.ExecNow(arg0, "invalidateEmblemComponent")
		end
	end
end

function FileshareCategorySelectorCategoryChanged(arg0, arg1, arg2, arg3)
	if arg1 ~= nil and arg1 ~= "" then
		CoD.FileshareUtility.SetCurrentCategory(arg1)
	else
		CoD.FileshareUtility.SetCurrentCategory("paintjob")
	end
	local registerVal4 = CoD.FileshareUtility.GetIsGroupsMode(arg0)
	if registerVal4 then
		if arg1 == "favorites" then
		else
			if arg1 == "featured" then
			end
		end
		Engine.FileshareFetchGroupContent(arg0, arg1, Enum.FileshareGroupsDataType.FILESHARE_GROUPS_DATA_FEATURED)
	else
		registerVal4 = CoD.FileshareUtility.GetIsCommunityMode(arg0)
		if registerVal4 then
			Engine.FileshareFetchCommunityContent(arg0, arg1, arg2)
		else
			registerVal4 = CoD.FileshareUtility.GetIsUserMode(arg0)
			if registerVal4 then
				registerVal4 = CoD.FileshareUtility.GetCurrentUser()
				if arg2 == Enum.FileshareCommunityDataType.FILESHARE_COMMUNITY_DATA_RECENT_GAMES then
					local registerVal5 = CoD.FileshareUtility.RenameToFileshareTableCategory(arg1)
					Engine.FileshareFetchCommunityContent(arg0, registerVal5, arg2, registerVal4)
				else
					CoD.FileshareUtility.FetchContentForUser(arg0, registerVal4)
				end
			end
		end
	end
	registerVal4 = CoD.FileshareUtility.GetPreviousCategory()
	if registerVal4 ~= arg1 or arg3 == true then
		ResetThumbnailViewer(arg0)
		CoD.FileshareUtility.SetDirty()
	end
	CoD.FileshareUtility.ProcessUIIndex(arg0, arg1, 0.000000)
	CoD.FileshareUtility.SetPreviousCategory(arg1)
	registerVal5 = CoD.FileshareUtility.ShouldSetPreviewIconSizeShort(arg1)
	if registerVal5 then
		FileshareSetPreviewIconSizeShort()
	else
		FileshareSetPreviewIconSizeNormal()
	end
	CoD.FileshareUtility.SetCurrentFilter("", "")
	CoD.FileshareUtility.SetShowFileDetails(false)
	CoD.FileshareUtility.SetShowPublishNewDetails(false)
	CoD.FileshareUtility.SetShowCreateButton(false)
end

function OpenShowcaseCustomGames(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.SetPreviousCategory("customgame")
	CoD.FileshareUtility.SetCurrentCategory("customgame")
	CoD.FileshareUtility.SetCurrentFilter("", "")
	local registerVal6 = FileshareIsCurrentUserContext(arg2)
	registerVal6 = CoD.FileshareUtility.GetIsCommunityMode(arg2)
	if registerVal6 and registerVal6 == false then
	end
	CoD.FileshareUtility.SetShowCreateButton(true)
	OpenOverlay(arg0, "MyShowcase_CustomGames", arg2)
end

function OpenShowcaseScreenshots(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.SetPreviousCategory("screenshot")
	CoD.FileshareUtility.SetCurrentCategory("screenshot")
	CoD.FileshareUtility.SetCurrentFilter("", "")
	local registerVal6 = FileshareIsCurrentUserContext(arg2)
	if registerVal6 then
	end
	CoD.FileshareUtility.SetShowCreateButton(true)
	PreserveThumbnails(arg2, true)
	OpenOverlay(arg0, "MyShowcase_Screenshots", arg2)
	PreserveThumbnails(arg2, false)
end

function OpenShowcaseRecentGames(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.SetPreviousCategory("recentgames")
	CoD.FileshareUtility.SetCurrentCategory("recentgames")
	CoD.FileshareUtility.SetCurrentFilter("", "")
	local registerVal6 = FileshareIsCurrentUserContext(arg2)
	if registerVal6 then
	end
	CoD.FileshareUtility.SetShowCreateButton(false)
	OpenOverlay(arg4, "MyShowcase_RecentGames", arg2)
end

function OpenShowcaseClips(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.SetPreviousCategory("clip")
	CoD.FileshareUtility.SetCurrentCategory("clip")
	CoD.FileshareUtility.SetCurrentFilter("", "")
	local registerVal6 = FileshareIsCurrentUserContext(arg2)
	if registerVal6 then
	end
	CoD.FileshareUtility.SetShowCreateButton(true)
	PreserveThumbnails(arg2, true)
	OpenOverlay(arg4, "MyShowcase_Clips", arg2)
	PreserveThumbnails(arg2, false)
end

function OpenShowcaseLocalClips(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.SetPreviousCategory("clip_private")
	CoD.FileshareUtility.SetCurrentCategory("clip_private")
	CoD.FileshareUtility.SetCurrentFilter("", "")
	local registerVal6 = FileshareIsCurrentUserContext(arg2)
	if registerVal6 then
	end
	CoD.FileshareUtility.SetShowCreateButton(false)
	PreserveThumbnails(arg2, true)
	OpenOverlay(arg4, "MyShowcase_Clips", arg2)
	PreserveThumbnails(arg2, false)
end

function PublishClip(arg0, arg1)
	local registerVal2 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	local registerVal3 = CoD.FileshareUtility.GetPublishName()
	local registerVal4 = CoD.FileshareUtility.GetPublishDescription()
	local registerVal5 = CoD.FileshareUtility.GetIsCommunityMode(arg0)
	local registerVal6 = Engine.SetupTransferData(arg0, "clip_private", registerVal2, registerVal5)
	if registerVal6 then
		Engine.PublishClip(arg0, "clip", registerVal2, registerVal3, registerVal4)
	else
		GoBack(arg1, arg0)
		FileshareShowErrorToast(arg1, nil, arg0)
	end
end

function PublishScreenshot(arg0, arg1)
	local registerVal2 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	local registerVal3 = CoD.FileshareUtility.GetPublishName()
	local registerVal4 = CoD.FileshareUtility.GetPublishDescription()
	local registerVal5 = CoD.FileshareUtility.GetIsCommunityMode(arg0)
	local registerVal6 = Engine.SetupTransferData(arg0, "screenshot_private", registerVal2, registerVal5)
	if registerVal6 then
		Engine.PublishScreenshot(arg0, "screenshot", registerVal2, registerVal3, registerVal4)
	else
		GoBack(arg1, arg0)
		FileshareShowErrorToast(arg1, nil, arg0)
	end
end

function FileshareUpdateDetailsViewModel(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.FileshareUtility.GetCurrentCategory()
	local registerVal5, registerVal6 = CoD.FileshareUtility.GetCurrentFilter()
	local registerVal8 = CoD.FileshareUtility.GetIsCommunityMode(arg2)
	registerVal8 = CoD.FileshareUtility.GetIsGroupsMode(arg2)
	if not arg1 or registerVal8 then
		registerVal8 = Engine.FileshareGetCommunitySlotData(arg2, registerVal4, registerVal5, registerVal6, arg3)
	else
		registerVal8 = Engine.FileshareGetSlotData(arg2, registerVal4, registerVal5, registerVal6, arg3)
	end
	registerVal8 = CoD.FileshareUtility.GetIsGroupsMode(arg2)
	if registerVal8 then
		registerVal8 = CoD.FileshareUtility.GetSelectedItemProperty("fileCategory")
	end
	local registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.CreateModel(registerVal9, "FileshareSelectedItem", false)
	registerVal9, registerVal10, registerVal11 = ipairs(CoD.FileshareUtility.FileProperties)
	for index12,value13 in registerVal9, registerVal10, registerVal11 do
		if registerVal8[value13] ~= nil then
			local registerVal14 = Engine.CreateModel(registerVal8, value13)
			Engine.SetModelValue(registerVal14, registerVal8[value13])
		end
	end
	registerVal9 = Engine.CreateModel(registerVal8, "codeIndex")
	Engine.SetModelValue(registerVal9, arg3)
	registerVal10 = Engine.CreateModel(registerVal8, "showDetailsViewSpinner")
	registerVal11 = Engine.GetModelValue(Engine.CreateModel(registerVal8, "renderFileId"))
	local registerVal12 = Engine.GetModelValue(Engine.CreateModel(registerVal8, "fileId"))
	if registerVal11 == registerVal12 then
		Engine.SetModelValue(registerVal10, 0.000000)
	else
		if registerVal8 ~= "emblem" then
			Engine.SetModelValue(registerVal10, 1.000000)
		end
	end
	if registerVal8.weaponIndex ~= nil then
		registerVal14 = Engine.ToUpper(Engine.Localize(Engine.GetItemName(registerVal8.weaponIndex)))
	end
	local registerVal15 = Engine.CreateModel(registerVal8, "weaponName")
	Engine.SetModelValue(registerVal15, registerVal14)
	CoD.FileshareUtility.SetSelectedItem(registerVal8)
	arg0:setModel(registerVal8, arg2)
	FileshareSetSelectedItem(arg0, arg1, arg2, "true")
	CoD.FileshareUtility.ProcessUIIndex(arg2, registerVal8, arg3)
end

function MediaManagerGetQuotaForCategory(arg0, arg1)
	if arg1 == "screenshot_private" or arg1 == "clip_private" then
		local registerVal3 = Engine.FileshareGetQuota(arg0, arg1)
	else
		registerVal3 = Engine.MediaManagerGetQuota(arg0, arg1)
	end
	return registerVal3
end

function MediaManagerUpdateSlotsUsed(arg0, arg1)
	if arg1 then
		local registerVal2 = MediaManagerGetQuotaForCategory(arg0, arg1)
		local registerVal4 = Engine.GetGlobalModel()
		local registerVal3 = Engine.CreateModel(registerVal4, "MediaManager", false)
		registerVal4 = Engine.CreateModel(registerVal3, "slotsUsed", false)
		Engine.SetModelValue(registerVal4, registerVal2.categorySlotsUsed)
	end
end

function MediaManagerSetSlotModel(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "MediaManager", false)
	registerVal5 = Engine.CreateModel(registerVal4, "isBuyMoreSlot", false)
	local registerVal6 = Engine.CreateModel(registerVal4, "createTime", false)
	local registerVal7 = Engine.CreateModel(registerVal4, "authorName", false)
	Engine.SetModelValue(registerVal5, arg1)
	Engine.SetModelValue(registerVal6, arg2)
	Engine.SetModelValue(registerVal7, arg3)
	ForceNotifyGlobalModel(arg0, "MediaManager.createTime")
	ForceNotifyGlobalModel(arg0, "MediaManager.authorName")
end

function MediaManagerFetchPaintjobsData(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "Paintshop.Mode")
	Engine.SetModelValue(registerVal1, Enum.PaintshopMode.PAINTSHOPMODE_WEAPONLIST)
	registerVal2 = CoD.CraftUtility.Paintjobs.ParseDDL(arg0, Enum.StorageFileType.STORAGE_PAINTJOBS)
end

function MediaManagerFetchVariantsData(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "Gunsmith.Mode")
	Engine.SetModelValue(registerVal1, Enum.GunsmithMode.GUNSMITHMODE_WEAPONLIST)
	registerVal2 = CoD.CraftUtility.Gunsmith.ParseDDL(arg0, Enum.StorageFileType.STORAGE_GUNSMITH)
end

function ShowcaseSetSelectedFriendXUID(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.FileshareUtility.GetSelectedItemProperty("fileAuthorName")
	local registerVal5 = CoD.FileshareUtility.GetSelectedItemProperty("fileAuthorXuid")
	local registerVal6 = Engine.GetPlayerInfo(arg2, registerVal5)
	local registerVal7 = Engine.GetModelForController(arg2)
	local registerVal8 = Engine.CreateModel(registerVal7, "Social.selectedFriendXUID")
	Engine.SetModelValue(registerVal8, registerVal5)
	local registerVal9 = Engine.CreateModel(registerVal7, "Social.selectedFriendGamertag")
	Engine.SetModelValue(registerVal9, registerVal4)
	local registerVal10 = Engine.CreateModel(registerVal7, "Social.hideSelectedFriendShowcase")
	if arg3 ~= nil then
		Engine.SetModelValue(registerVal10, arg3)
	else
		Engine.SetModelValue(registerVal10, false)
	end
end

function AddGroupShowcaseItemToUnfeaturedList(arg0, arg1)
	if not CoD.groupUnfeaturedList then
		CoD.groupUnfeaturedList = {}
	end
	local registerVal2 = tostring(arg0)
	if not CoD.groupUnfeaturedList[registerVal2] then
		CoD.groupUnfeaturedList[registerVal2] = {}
	end
	local registerVal3, registerVal4, registerVal5 = ipairs(CoD.groupUnfeaturedList[registerVal2])
	if  == arg1 then
		return 
	end
	table.insert(CoD.groupUnfeaturedList[registerVal2], arg1)
end

function RemoveGroupShowcaseItemFromUnfeaturedList(arg0, arg1)
	local registerVal2 = tostring(arg0)
	local registerVal3, registerVal4, registerVal5 = ipairs(CoD.groupUnfeaturedList[registerVal2])
	if  == arg1 then
		table.remove(CoD.groupUnfeaturedList[registerVal2], )
	else
	end
end

function LoginRewardConfirmationAction(arg0)
	local registerVal1 = DoesPlayerHaveCurrentLoginReward(arg0)
	if not registerVal1 then
		local registerVal8 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
		local registerVal9, registerVal10, registerVal11 = pairs(CoD.LoginRewardReceivedStatPath)
		for index12,value13 in registerVal9, registerVal10, registerVal11 do
		end
		registerVal8[value13]:set(1.000000)
		Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
		registerVal9 = Engine.Localize(Engine.TableLookup(nil, CoD.attachmentTable, 21.000000, "overgrowth_camo", 7.000000))
		registerVal10 = Engine.Localize("MPUI_CAMO")
		registerVal11 = Engine.TableLookup(nil, CoD.attachmentTable, 21.000000, "overgrowth_camo", 6.000000)
		CoD.OverlayUtility.ShowToast("LootBonusCamo", registerVal9, registerVal10, registerVal11, nil, nil, nil)
	end
end

function SetNextPreStartPopup(arg0, arg1)
	if arg1 ~= nil then
		local registerVal2 = Engine.GetModelForController(arg0)
		local registerVal4 = Engine.CreateModel(registerVal2, "PreStart.NextPopup")
		Engine.SetModelValue(registerVal4, arg1)
	end
end

function ProceedToNextPreStartPopup(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "PreStart.NextPopup")
	registerVal4 = Engine.GetModelValue(registerVal3)
	Engine.SetModelValue(registerVal3, "")
	if registerVal4 == "LoginReward" then
		local registerVal5 = GoBack(arg2, arg1)
		OpenLoginRewardPopup(registerVal5, arg1)
		return 
	else
		if registerVal4 == "ZMHDPurchaseReward" then
			registerVal5 = GoBack(arg2, arg1)
			OpenZMHDPurchaseRewardPopup(registerVal5, arg1)
			return 
		else
			if registerVal4 == "ZMHDGobbleGumPS4" then
				registerVal5 = GoBack(arg2, arg1)
				OpenZMHDGobbleGumPopup(registerVal5, arg1, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_PS4_INDEX_ID)
				return 
			else
				if registerVal4 == "ZMHDGobbleGumXB1" then
					registerVal5 = GoBack(arg2, arg1)
					OpenZMHDGobbleGumPopup(registerVal5, arg1, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_INDEX_ID)
					return 
				else
					if registerVal4 == "URMFirstTime" then
						registerVal5 = GoBack(arg2, arg1)
						OpenURMFirstTimePopup(registerVal5, arg1)
						return 
					else
						Close(arg0, arg1)
					end
				end
			end
		end
	end
end

