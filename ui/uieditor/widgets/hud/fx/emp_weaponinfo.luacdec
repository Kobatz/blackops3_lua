-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C7_(arg0, arg1)
	local registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_HUD_VISIBLE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_EMP_ACTIVE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_VEHICLE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_GAME_ENDED)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_IN_KILLCAM)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_HUD_HARDCORE)
	if registerVal3 and registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
		registerVal3 = CoD.IsShoutcaster(arg1.controller)
		if registerVal3 then
			registerVal3 = CoD.ShoutcasterProfileVarBool(arg1.controller, "shoutcaster_inventory")
			registerVal3 = Engine.IsSpectatingActiveClient(arg1.controller)
			registerVal3 = CoD.FSM_VISIBILITY(arg1.controller)
			if registerVal3 and registerVal3 and registerVal3 == 0.000000 then
				arg0:setAlpha(1.000000)
				arg0.visible = true
				if arg0.visible ~= true and arg0.visible == true then
					arg0:setAlpha(0.000000)
					arg0.visible = nil
				end
			end
		end
	end

local function __FUNC_82F_(arg0, arg1)
	arg0:setAlpha(0.000000)
	local function __FUNC_ECB_(arg2)
		local registerVal3 = {}
		registerVal3.controller = arg1
		__FUNC_1C7_(arg0, registerVal3)
	end

	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_VISIBLE))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_EMP_ACTIVE))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_CAMERA_MODE_MOVIECAM))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_DEMO_ALL_GAME_HUD_HIDDEN))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_VEHICLE))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_GUIDED_MISSILE))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_IN_REMOTE_KILLSTREAK_STATIC))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SPECTATING_CLIENT))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_GAME_ENDED))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_PLAYER_DEAD))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_HUD_HARDCORE))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
	registerVal6 = Engine.GetModel(registerVal3, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SELECTING_LOCATION))
	arg0:subscribeToModel(registerVal6, __FUNC_ECB_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.EMP_WeaponInfo = registerVal3
local function __FUNC_F20_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EMP_WeaponInfo)
	registerVal2.id = "EMP_WeaponInfo"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 341.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 171.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 37.000000, 341.000000)
	registerVal3:setTopBottom(true, false, -13.000000, 171.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_ammowidget_empstub1"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_emp"))
	registerVal3:setShaderVector(0.000000, 35.930000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.830000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.490000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.EMPWeaponInfo = registerVal3
	if __FUNC_82F_ then
		__FUNC_82F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.EMP_WeaponInfo.new = __FUNC_F20_
