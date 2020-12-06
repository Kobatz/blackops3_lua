-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_FlyingBee_Leg_Hind_Left = registerVal1
function CoD.CallingCard_FlyingBee_Leg_Hind_Left.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCard_FlyingBee_Leg_Hind_Left)
	registerVal2.id = "CallingCard_FlyingBee_Leg_Hind_Left"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 53.330000)
	registerVal3:setTopBottom(true, false, -21.340000, 85.340000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_flyingbee_leg_bf"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_542_()
		registerVal2:setupElementClipCounter(0.000000)
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_542_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

