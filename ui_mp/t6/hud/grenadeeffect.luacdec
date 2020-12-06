-- Decompiled with CoDLUIDecompiler by JariK

CoD.GrenadeEffect = {}
function CoD.GrenadeEffect.new(arg0)
	local registerVal1 = LUI.UIElement.new()
	registerVal1:setAlpha(0.000000)
	local registerVal2, registerVal3 = Engine.GetUserSafeArea()
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(false, false, (-registerVal2 / 2.000000), (registerVal2 / 2.000000))
	registerVal4:setTopBottom(false, false, (-registerVal3 / 2.000000), (registerVal3 / 2.000000))
	registerVal1:addElement(registerVal4)
	registerVal1.safeArea = registerVal4
	registerVal1:registerEventHandler("prox_grenade_notify", CoD.GrenadeEffect.GrenadeExplode)
	local function __FUNC_670_(arg1)
		local registerVal3 = {}
		registerVal3.controller = arg0
		CoD.GrenadeEffect.UpdateVisibility(registerVal1, registerVal3)
	end

	local registerVal6 = Engine.GetModelForController(arg0)
	local registerVal9 = Engine.GetModel(registerVal6, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_FINAL_KILLCAM))
	registerVal1:subscribeToModel(registerVal9, __FUNC_670_)
	registerVal9 = Engine.GetModel(registerVal6, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM))
	registerVal1:subscribeToModel(registerVal9, __FUNC_670_)
	registerVal9 = Engine.GetModel(registerVal6, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_UI_ACTIVE))
	registerVal1:subscribeToModel(registerVal9, __FUNC_670_)
	return registerVal1
end

function CoD.GrenadeEffect.UpdateVisibility(arg0, arg1)
	local registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_FINAL_KILLCAM)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_UI_ACTIVE)
	registerVal3 = Engine.IsVisibilityBitSet(arg1.controller, Enum.UIVisibilityBit.BIT_ROUND_END_KILLCAM)
	if not registerVal3 and not registerVal3 and not registerVal3 then
		arg0:setAlpha(1.000000)
		arg0.visible = true
		if arg0.visible ~= true and arg0.visible == true then
			arg0:setAlpha(0.000000)
			arg0.visible = nil
		end
	end
	arg0:dispatchEventToChildren(arg1)
end

function CoD.GrenadeEffect.GrenadeExplode(arg0, arg1)
	if arg1.data[1.000000] <= 30.000000 then
		local registerVal24 = math.random(0.000000, 30.000000)
		registerVal24 = math.random(0.000000, 256.000000)
	else
		registerVal24 = math.random(0.000000, 30.000000)
		if 90.000000 < arg1.data[2.000000] then
		end
	end
	registerVal24 = LUI.UIElement.new()
	registerVal24:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal24:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal24:setAlpha(0.000000)
	arg0.safeArea:addElement(registerVal24)
	local registerVal36 = math.random(0.000000, 30.000000)
	registerVal36 = math.random(0.000000, 0.000000)
	registerVal36 = math.random(0.000000, 256.000000)
	registerVal24:registerEventHandler("transition_complete_state_full_alpha", CoD.GrenadeEffect.SwitchToAlphaMed)
	registerVal24:registerEventHandler("transition_complete_state_alpha_med", CoD.GrenadeEffect.SwitchToZeroAlpha)
	registerVal24:registerEventHandler("transition_complete_state_alpha_zero", CoD.GrenadeEffect.CloseOut)
	registerVal24:beginAnimation("state_full_alpha", 100.000000)
	registerVal24:setAlpha(1.000000)
	registerVal24.image = dropletsImage
end

function CoD.GrenadeEffect.SwitchToAlphaMed(arg0, arg1)
	if arg1.interrupted ~= true then
		arg0:beginAnimation("state_alpha_med", 1000.000000, true, false)
		arg0:setAlpha(0.700000)
	end
end

function CoD.GrenadeEffect.SwitchToZeroAlpha(arg0, arg1)
	if arg1.interrupted ~= true then
		arg0:beginAnimation("state_alpha_zero", 5000.000000, false, true)
		arg0:setAlpha(0.000000)
	end
end

function CoD.GrenadeEffect.CloseOut(arg0, arg1)
	if arg1.interrupted ~= true then
		arg0:close()
	end
end

