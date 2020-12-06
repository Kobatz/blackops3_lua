-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_ConnectionMeter_PingImage = registerVal1
function CoD.StartMenu_ConnectionMeter_PingImage.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.StartMenu_ConnectionMeter_PingImage)
	registerVal2.id = "StartMenu_ConnectionMeter_PingImage"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 31.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_icon_network_wired1"))
	registerVal2:addElement(registerVal3)
	registerVal2.Level1Image = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_network_wired2"))
	registerVal2:addElement(registerVal4)
	registerVal2.Level2Image = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_network_wired3"))
	registerVal2:addElement(registerVal5)
	registerVal2.Level3Image = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_icon_network_wired4"))
	registerVal2:addElement(registerVal6)
	registerVal2.Level4Image = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_icon_network_wireless4"))
	registerVal2:addElement(registerVal7)
	registerVal2.WirelessLevel4Image = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_icon_network_wireless3"))
	registerVal2:addElement(registerVal8)
	registerVal2.WirelessLevel3Image = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_icon_network_wireless2"))
	registerVal2:addElement(registerVal9)
	registerVal2.WirelessLevel2Image = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 29.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_icon_network_wireless1"))
	registerVal2:addElement(registerVal10)
	registerVal2.WirelessLevel1Image = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_E25_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Level4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WirelessLevel4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WirelessLevel3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.WirelessLevel2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WirelessLevel1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_E25_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_11B6_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Level4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WirelessLevel4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WirelessLevel3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.WirelessLevel2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WirelessLevel1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_11B6_
	registerVal11.Level1 = registerVal12
	registerVal12 = {}
	local function __FUNC_154B_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Level4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WirelessLevel4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WirelessLevel3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.WirelessLevel2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WirelessLevel1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_154B_
	registerVal11.Level2 = registerVal12
	registerVal12 = {}
	local function __FUNC_18DF_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Level4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WirelessLevel4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WirelessLevel3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.WirelessLevel2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WirelessLevel1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_18DF_
	registerVal11.Level3 = registerVal12
	registerVal12 = {}
	local function __FUNC_1C73_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Level4Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WirelessLevel4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WirelessLevel3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.WirelessLevel2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WirelessLevel1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1C73_
	registerVal11.Level4 = registerVal12
	registerVal12 = {}
	local function __FUNC_2007_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Level4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WirelessLevel4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WirelessLevel3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.WirelessLevel2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WirelessLevel1Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_2007_
	registerVal11.WirelessLevel1 = registerVal12
	registerVal12 = {}
	local function __FUNC_239B_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Level4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WirelessLevel4Image:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WirelessLevel3Image:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.WirelessLevel2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WirelessLevel1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_239B_
	registerVal11.WirelessLevel2 = registerVal12
	registerVal12 = {}
	local function __FUNC_274F_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Level4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WirelessLevel4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WirelessLevel3Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.WirelessLevel2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WirelessLevel1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_274F_
	registerVal11.WirelessLevel3 = registerVal12
	registerVal12 = {}
	local function __FUNC_2AE3_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Level1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Level2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Level3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Level4Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WirelessLevel4Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.WirelessLevel3Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.WirelessLevel2Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.WirelessLevel1Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_2AE3_
	registerVal11.WirelessLevel4 = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Level1"
	local function __FUNC_2E77_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "NETSTATS_LATENCY", 300.000000)
	end

	registerVal14.condition = __FUNC_2E77_
	local registerVal15 = {}
	registerVal15.stateName = "Level2"
	local function __FUNC_2F09_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "NETSTATS_LATENCY", 200.000000)
		if registerVal3 then
			registerVal3 = IsSelfModelValueLessThanOrEqualTo(arg2, arg1, "NETSTATS_LATENCY", 299.000000)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_2F09_
	local registerVal16 = {}
	registerVal16.stateName = "Level3"
	local function __FUNC_2FED_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "NETSTATS_LATENCY", 100.000000)
		if registerVal3 then
			registerVal3 = IsSelfModelValueLessThanOrEqualTo(arg2, arg1, "NETSTATS_LATENCY", 199.000000)
		end
		return registerVal3
	end

	registerVal16.condition = __FUNC_2FED_
	local registerVal17 = {}
	registerVal17.stateName = "Level4"
	local function __FUNC_30D1_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "NETSTATS_LATENCY", 0.000000)
		if registerVal3 then
			registerVal3 = IsSelfModelValueLessThanOrEqualTo(arg2, arg1, "NETSTATS_LATENCY", 99.000000)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_30D1_
	local registerVal18 = {}
	registerVal18.stateName = "WirelessLevel1"
	local function __FUNC_31B5_(arg0, arg1, arg2)
		return true
	end

	registerVal18.condition = __FUNC_31B5_
	local registerVal19 = {}
	registerVal19.stateName = "WirelessLevel2"
	local function __FUNC_31E8_(arg0, arg1, arg2)
		return true
	end

	registerVal19.condition = __FUNC_31E8_
	local registerVal20 = {}
	registerVal20.stateName = "WirelessLevel3"
	local function __FUNC_321C_(arg0, arg1, arg2)
		return true
	end

	registerVal20.condition = __FUNC_321C_
	local registerVal21 = {}
	registerVal21.stateName = "WirelessLevel4"
	local function __FUNC_3250_(arg0, arg1, arg2)
		return true
	end

	registerVal21.condition = __FUNC_3250_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19, registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_3284_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "NETSTATS_LATENCY"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "NETSTATS_LATENCY", true, __FUNC_3284_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

