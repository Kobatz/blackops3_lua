-- Decompiled with CoDLUIDecompiler by JariK

CoD.PowerUps = {}
CoD.PowerUps.IconSize = 48.000000
CoD.PowerUps.UpgradeIconSize = 36.000000
CoD.PowerUps.Spacing = 8.000000
CoD.PowerUps.STATE_OFF = 0.000000
CoD.PowerUps.STATE_ON = 1.000000
CoD.PowerUps.STATE_FLASHING_OFF = 2.000000
CoD.PowerUps.STATE_FLASHING_ON = 3.000000
CoD.PowerUps.FLASHING_STAGE_DURATION = 500.000000
CoD.PowerUps.MOVING_DURATION = 500.000000
local registerVal1 = {}
registerVal1.r = 1.000000
registerVal1.g = 0.000000
registerVal1.b = 0.000000
CoD.PowerUps.UpGradeIconColorRed = registerVal1
CoD.PowerUps.ClientFieldNames = {}
registerVal1 = {}
registerVal1.clientFieldName = "powerup_instant_kill"
local registerVal2 = RegisterMaterial("specialty_instakill_zombies")
registerVal1.material = registerVal2
CoD.PowerUps.ClientFieldNames[1.000000] = registerVal1
registerVal1 = {}
registerVal1.clientFieldName = "powerup_double_points"
registerVal2 = RegisterMaterial("specialty_doublepoints_zombies")
registerVal1.material = registerVal2
registerVal2 = RegisterMaterial("specialty_doublepoints_zombies_blue")
registerVal1.z_material = registerVal2
CoD.PowerUps.ClientFieldNames[2.000000] = registerVal1
registerVal1 = {}
registerVal1.clientFieldName = "powerup_fire_sale"
registerVal2 = RegisterMaterial("specialty_firesale_zombies")
registerVal1.material = registerVal2
CoD.PowerUps.ClientFieldNames[3.000000] = registerVal1
registerVal1 = {}
registerVal1.clientFieldName = "powerup_bon_fire"
registerVal2 = RegisterMaterial("zom_icon_bonfire")
registerVal1.material = registerVal2
CoD.PowerUps.ClientFieldNames[4.000000] = registerVal1
registerVal1 = {}
registerVal1.clientFieldName = "powerup_mini_gun"
registerVal2 = RegisterMaterial("t7_hud_zm_powerup_deathmachine")
registerVal1.material = registerVal2
CoD.PowerUps.ClientFieldNames[5.000000] = registerVal1
registerVal1 = {}
registerVal1.clientFieldName = "powerup_zombie_blood"
registerVal2 = RegisterMaterial("t7_zm_hd_specialty_zmblood")
registerVal1.material = registerVal2
CoD.PowerUps.ClientFieldNames[6.000000] = registerVal1
CoD.PowerUps.UpgradeClientFieldNames = {}
registerVal1 = {}
registerVal1.clientFieldName = (CoD.PowerUps.ClientFieldNames[1.000000].clientFieldName .. "_ug")
registerVal2 = RegisterMaterial("specialty_instakill_zombies")
registerVal1.material = registerVal2
registerVal1.color = CoD.PowerUps.UpGradeIconColorRed
CoD.PowerUps.UpgradeClientFieldNames[1.000000] = registerVal1
function LUI.createMenu.PowerUpsArea(arg0)
	local registerVal1 = CoD.Menu.NewSafeAreaFromState("PowerUpsArea", arg0)
	registerVal1:setOwner(arg0)
	local registerVal2 = CoD.SplitscreenScaler.new(nil, CoD.Zombie.SplitscreenMultiplier)
	registerVal1.scaleContainer = registerVal2
	registerVal1.scaleContainer:setLeftRight(false, false, 0.000000, 0.000000)
	registerVal1.scaleContainer:setTopBottom(false, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal1.scaleContainer)
	registerVal1.powerUps = {}
	for index6=1.000000, #CoD.PowerUps.ClientFieldNames, 1.000000 do
		local registerVal10 = LUI.UIElement.new()
		registerVal10:setLeftRight(false, false, -(CoD.PowerUps.IconSize * 0.500000), (CoD.PowerUps.IconSize * 0.500000))
		registerVal10:setTopBottom(false, true, (-((CoD.PowerUps.IconSize + CoD.PowerUps.UpgradeIconSize) + 10.000000) - 25.000000), -25.000000)
		registerVal10:registerEventHandler("transition_complete_off_fade_out", CoD.PowerUps.PowerUpIcon_UpdatePosition)
		registerVal10 = LUI.UIImage.new()
		registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal10:setTopBottom(false, true, -CoD.PowerUps.IconSize, 0.000000)
		registerVal10:setAlpha(0.000000)
		registerVal10:addElement(registerVal10)
		registerVal10.powerUpIcon = registerVal10
		local registerVal11 = LUI.UIImage.new()
		registerVal11:setLeftRight(false, false, (-CoD.PowerUps.UpgradeIconSize / 2.000000), (CoD.PowerUps.UpgradeIconSize / 2.000000))
		registerVal11:setTopBottom(true, false, 0.000000, CoD.PowerUps.UpgradeIconSize)
		registerVal11:setAlpha(0.000000)
		registerVal10:addElement(registerVal11)
		registerVal10.upgradePowerUpIcon = registerVal11
		registerVal10.powerupId = nil
		registerVal1.scaleContainer:addElement(registerVal10)
		registerVal1.powerUps[index6] = registerVal10
		registerVal1:registerEventHandler(CoD.PowerUps.ClientFieldNames[index6].clientFieldName, CoD.PowerUps.Update)
		registerVal1:registerEventHandler((CoD.PowerUps.ClientFieldNames[index6].clientFieldName .. "_ug"), CoD.PowerUps.UpgradeUpdate)
	end
	registerVal1.activePowerUpCount = 0.000000
	local registerVal9 = Engine.GetModelForController(arg0)
	local registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	local function __FUNC_1A06_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_1A06_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_PLAYER_IN_AFTERLIFE))
	local function __FUNC_1A91_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_1A91_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	local function __FUNC_1B1D_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_1B1D_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	local function __FUNC_1BA9_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_1BA9_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT))
	local function __FUNC_1C35_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_1C35_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_1CC1_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_1CC1_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	local function __FUNC_1D4D_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_1D4D_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	local function __FUNC_1DD9_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_1DD9_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	local function __FUNC_1E65_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_1E65_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_SCOPED))
	local function __FUNC_1EF1_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_1EF1_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED))
	local function __FUNC_1F7D_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_1F7D_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	local function __FUNC_2009_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_2009_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	local function __FUNC_2095_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_2095_)
	registerVal9 = Engine.GetModelForController(arg0)
	registerVal8 = Engine.GetModel(registerVal9, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	local function __FUNC_2121_(arg1)
		CoD.PowerUps.UpdateVisibility(registerVal1, arg0)
	end

	registerVal1:subscribeToModel(registerVal8, __FUNC_2121_)
	registerVal1:registerEventHandler("powerups_update_position", CoD.PowerUps.UpdatePosition)
	registerVal1.visible = true
	return registerVal1
end

function CoD.PowerUps.UpdateVisibility(arg0, arg1)
	local registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
	registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_PLAYER_IN_AFTERLIFE)
	registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
	registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
	registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
	registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
	registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
	if registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 then
		registerVal2 = CoD.IsShoutcaster(arg1)
		registerVal2 = CoD.ShoutcasterProfileVarBool(arg1, "shoutcaster_teamscore")
		if arg1 or registerVal2 then
			registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
			registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
			registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_SCOPED)
			registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
			registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_IS_FLASH_BANGED)
			registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
			if not registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 and not registerVal2 then
				arg0:setAlpha(1.000000)
				arg0.visible = true
				if not arg0.visible and arg0.visible then
					arg0:setAlpha(0.000000)
					arg0.visible = nil
				end
			end
		end
	end
end

function CoD.PowerUps.Update(arg0, arg1)
	CoD.PowerUps.UpdateState(arg0, arg1)
	CoD.PowerUps.UpdatePosition(arg0, arg1)
end

function CoD.PowerUps.UpdateState(arg0, arg1)
	local registerVal3 = CoD.PowerUps.GetExistingPowerUpIndex(arg0, arg1.name)
	if registerVal3 ~= nil then
		if arg1.newValue == CoD.PowerUps.STATE_ON then
			arg0.powerUps[registerVal3].powerUpId = arg1.name
			arg0.powerUps[registerVal3].powerUpIcon:setImage(CoD.PowerUps.GetMaterial(arg0, arg1.controller, arg1.name))
			arg0.powerUps[registerVal3].powerUpIcon:setAlpha(1.000000)
		else
			if arg1.newValue == CoD.PowerUps.STATE_OFF then
				arg0.powerUps[registerVal3].powerUpIcon:beginAnimation("off_fade_out", CoD.PowerUps.FLASHING_STAGE_DURATION)
				arg0.powerUps[registerVal3].powerUpIcon:setAlpha(0.000000)
				arg0.powerUps[registerVal3].upgradePowerUpIcon:beginAnimation("off_fade_out", CoD.PowerUps.FLASHING_STAGE_DURATION)
				arg0.powerUps[registerVal3].upgradePowerUpIcon:setAlpha(0.000000)
				arg0.powerUps[registerVal3].powerUpId = nil
				arg0.activePowerUpCount = (arg0.activePowerUpCount - 1.000000)
			else
				if arg1.newValue == CoD.PowerUps.STATE_FLASHING_OFF then
					arg0.powerUps[registerVal3].powerUpIcon:beginAnimation("fade_out", CoD.PowerUps.FLASHING_STAGE_DURATION)
					arg0.powerUps[registerVal3].powerUpIcon:setAlpha(0.000000)
				else
					if arg1.newValue == CoD.PowerUps.STATE_FLASHING_ON then
						arg0.powerUps[registerVal3].powerUpIcon:beginAnimation("fade_in", CoD.PowerUps.FLASHING_STAGE_DURATION)
						arg0.powerUps[registerVal3].powerUpIcon:setAlpha(1.000000)
					else
						if arg1.newValue == CoD.PowerUps.STATE_ON or arg1.newValue == CoD.PowerUps.STATE_FLASHING_ON then
							local registerVal4 = CoD.PowerUps.GetFirstAvailablePowerUpIndex(arg0)
							if registerVal4 ~= nil then
								arg0.powerUps[registerVal4].powerUpId = arg1.name
								arg0.powerUps[registerVal4].powerUpIcon:setImage(CoD.PowerUps.GetMaterial(arg0, arg1.controller, arg1.name))
								arg0.powerUps[registerVal4].powerUpIcon:setAlpha(1.000000)
								arg0.activePowerUpCount = (arg0.activePowerUpCount + 1.000000)
							end
						end
					end
				end
			end
		end
	end
end

function CoD.PowerUps.UpgradeUpdate(arg0, arg1)
	CoD.PowerUps.UpgradeUpdateState(arg0, arg1)
end

function CoD.PowerUps.UpgradeUpdateState(arg0, arg1)
	local registerVal3 = CoD.PowerUps.GetExistingPowerUpIndex(arg0, string.sub(arg1.name, 0.000000, -4.000000))
	if registerVal3 ~= nil then
		if arg1.newValue == CoD.PowerUps.STATE_ON then
			arg0.powerUps[registerVal3].upgradePowerUpIcon:setImage(CoD.PowerUps.GetUpgradeMaterial(arg0, arg1.name))
			arg0.powerUps[registerVal3].upgradePowerUpIcon:setAlpha(1.000000)
			CoD.PowerUps.SetUpgradeColor(arg0.powerUps[registerVal3].upgradePowerUpIcon, arg1.name)
		else
			if arg1.newValue == CoD.PowerUps.STATE_OFF then
				arg0.powerUps[registerVal3].upgradePowerUpIcon:beginAnimation("off_fade_out", CoD.PowerUps.FLASHING_STAGE_DURATION)
				arg0.powerUps[registerVal3].upgradePowerUpIcon:setAlpha(0.000000)
			else
				if arg1.newValue == CoD.PowerUps.STATE_FLASHING_OFF then
					arg0.powerUps[registerVal3].upgradePowerUpIcon:beginAnimation("fade_out", CoD.PowerUps.FLASHING_STAGE_DURATION)
					arg0.powerUps[registerVal3].upgradePowerUpIcon:setAlpha(0.000000)
				else
					if arg1.newValue == CoD.PowerUps.STATE_FLASHING_ON then
						arg0.powerUps[registerVal3].upgradePowerUpIcon:beginAnimation("fade_in", CoD.PowerUps.FLASHING_STAGE_DURATION)
						arg0.powerUps[registerVal3].upgradePowerUpIcon:setAlpha(1.000000)
					end
				end
			end
		end
	end
end

function CoD.PowerUps.GetMaterial(arg0, arg1, arg2)
	for index4=1.000000, #CoD.PowerUps.ClientFieldNames, 1.000000 do
		if CoD.PowerUps.ClientFieldNames[index4].clientFieldName == arg2 then
		else
		end
	end
	return CoD.PowerUps.ClientFieldNames[index4].material
end

function CoD.PowerUps.GetUpgradeMaterial(arg0, arg1)
	for index3=1.000000, #CoD.PowerUps.UpgradeClientFieldNames, 1.000000 do
		if CoD.PowerUps.UpgradeClientFieldNames[index3].clientFieldName == arg1 then
		else
		end
	end
	return CoD.PowerUps.UpgradeClientFieldNames[index3].material
end

function CoD.PowerUps.SetUpgradeColor(arg0, arg1)
	for index3=1.000000, #CoD.PowerUps.UpgradeClientFieldNames, 1.000000 do
		if CoD.PowerUps.UpgradeClientFieldNames[index3].clientFieldName == arg1 then
			if CoD.PowerUps.UpgradeClientFieldNames[index3].color then
				arg0:setRGB(CoD.PowerUps.UpgradeClientFieldNames[index3].color.r, CoD.PowerUps.UpgradeClientFieldNames[index3].color.g, CoD.PowerUps.UpgradeClientFieldNames[index3].color.b)
			else
			end
		end
	end
end

function CoD.PowerUps.GetExistingPowerUpIndex(arg0, arg1)
	for index2=1.000000, #CoD.PowerUps.ClientFieldNames, 1.000000 do
		if arg0.powerUps[index2].powerUpId == arg1 then
			return index2
		end
	end
	return nil
end

function CoD.PowerUps.GetFirstAvailablePowerUpIndex(arg0)
	for index1=1.000000, #CoD.PowerUps.ClientFieldNames, 1.000000 do
		if not arg0.powerUps[index1].powerUpId then
			return index1
		end
	end
	return nil
end

function CoD.PowerUps.PowerUpIcon_UpdatePosition(arg0, arg1)
	if arg1.interrupted ~= true then
		local registerVal4 = {}
		registerVal4.name = "powerups_update_position"
		arg0:dispatchEventToParent(registerVal4)
	end
end

function CoD.PowerUps.UpdatePosition(arg0, arg1)
	for index6=1.000000, #CoD.PowerUps.ClientFieldNames, 1.000000 do
		if arg0.powerUps[index6].powerUpId ~= nil then
			if not nil then
			else
			end
			arg0.powerUps[index6]:beginAnimation("move", CoD.PowerUps.MOVING_DURATION)
			arg0.powerUps[index6]:setLeftRight(false, false, ((nil + CoD.PowerUps.IconSize) + CoD.PowerUps.Spacing), (((nil + CoD.PowerUps.IconSize) + CoD.PowerUps.Spacing) + CoD.PowerUps.IconSize))
		end
	end
end

