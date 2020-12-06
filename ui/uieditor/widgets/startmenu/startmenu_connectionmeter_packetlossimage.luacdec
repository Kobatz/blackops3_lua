-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_ConnectionMeter_PacketLossImage = registerVal1
function CoD.StartMenu_ConnectionMeter_PacketLossImage.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.StartMenu_ConnectionMeter_PacketLossImage)
	registerVal2.id = "StartMenu_ConnectionMeter_PacketLossImage"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 31.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_network_packet1"))
	registerVal2:addElement(registerVal3)
	registerVal2.Level1Image = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_network_packet2"))
	registerVal2:addElement(registerVal4)
	registerVal2.Level2Image = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_network_packet3"))
	registerVal2:addElement(registerVal5)
	registerVal2.Level3Image = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_854_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_854_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_A09_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A09_
	registerVal6.Level1 = registerVal7
	registerVal7 = {}
	local function __FUNC_BC2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_BC2_
	registerVal6.Level2 = registerVal7
	registerVal7 = {}
	local function __FUNC_D7A_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D7A_
	registerVal6.Level3 = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Level1"
	local function __FUNC_F32_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "NETSTATS_PACKETLOSS", 5.000000)
	end

	registerVal9.condition = __FUNC_F32_
	local registerVal10 = {}
	registerVal10.stateName = "Level2"
	local function __FUNC_FC8_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "NETSTATS_PACKETLOSS", 2.000000)
		if registerVal3 then
			registerVal3 = IsSelfModelValueLessThan(arg2, arg1, "NETSTATS_PACKETLOSS", 5.000000)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_FC8_
	local registerVal11 = {}
	registerVal11.stateName = "Level3"
	local function __FUNC_10A7_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "NETSTATS_PACKETLOSS", 0.000000)
		if registerVal3 then
			registerVal3 = IsSelfModelValueLessThan(arg2, arg1, "NETSTATS_PACKETLOSS", 2.000000)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_10A7_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1183_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "NETSTATS_PACKETLOSS"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "NETSTATS_PACKETLOSS", true, __FUNC_1183_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

