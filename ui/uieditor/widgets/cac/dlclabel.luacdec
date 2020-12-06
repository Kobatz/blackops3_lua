-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DLCLabel = registerVal1
function CoD.DLCLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DLCLabel)
	registerVal2.id = "DLCLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 52.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -20.400000, 0.400000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_zombie_dlclabel_right"))
	registerVal2:addElement(registerVal3)
	registerVal2.DLCLabelYellowRight = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 20.800000, -20.400000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_zombie_dlclabel_center"))
	registerVal2:addElement(registerVal4)
	registerVal2.DLCLabelYellowCenter = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 20.800000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_zombie_dlclabel_left"))
	registerVal2:addElement(registerVal5)
	registerVal2.DLCLabelYellowLeft = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -20.400000, 0.400000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_zombie_dlclabel_right_greyscale"))
	registerVal2:addElement(registerVal6)
	registerVal2.DLCLabelGreyRight = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 20.800000, -20.400000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_zombie_dlclabel_center_greyscale"))
	registerVal2:addElement(registerVal7)
	registerVal2.DLCLabelGreyCenter = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 20.800000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_zombie_dlclabel_left_greyscale"))
	registerVal2:addElement(registerVal8)
	registerVal2.DLCLabelGreyLeft = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(false, true, -67.600000, -16.000000)
	registerVal9:setTopBottom(false, false, -11.180000, 13.820000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setTTF("fonts/escom.ttf")
	local function __FUNC_C79_(arg0, arg1)
		ScaleWidgetToLabelRightAligned(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal9, "setText", __FUNC_C79_)
	registerVal2:addElement(registerVal9)
	registerVal2.Text = registerVal9
	local function __FUNC_CE5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(GetBGBDLCStringFromIndex("ZMUI_DLC_NUM", registerVal1)))
		end
	end

	registerVal2.Text:linkToElementModel(registerVal2, "dlcIndex", true, __FUNC_CE5_)
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_DE2_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.DLCLabelYellowRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DLCLabelYellowCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DLCLabelYellowLeft:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DLCLabelGreyRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DLCLabelGreyCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DLCLabelGreyLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_DE2_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1121_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_1121_
	registerVal10.HasDLC = registerVal11
	registerVal11 = {}
	local function __FUNC_1182_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.DLCLabelYellowRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DLCLabelYellowCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DLCLabelYellowLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DLCLabelGreyRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DLCLabelGreyCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DLCLabelGreyLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1182_
	registerVal10.Invisible = registerVal11
	registerVal11 = {}
	local function __FUNC_14BC_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.DLCLabelYellowRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DLCLabelYellowCenter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DLCLabelYellowLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DLCLabelGreyRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.DLCLabelGreyCenter:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.DLCLabelGreyLeft:setAlpha(1.000000)
		registerVal2.DLCLabelGreyLeft:setImage(RegisterImage("uie_t7_zombie_dlclabel_left_greyscale"))
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_14BC_
	registerVal10.Greyscale = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "HasDLC"
	local function __FUNC_1827_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemDLCPurchased(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACItemFromDLC(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_1827_
	local registerVal14 = {}
	registerVal14.stateName = "Invisible"
	local function __FUNC_18BD_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal14.condition = __FUNC_18BD_
	local registerVal15 = {}
	registerVal15.stateName = "Greyscale"
	local function __FUNC_1908_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACItemDLCPurchased(arg0, arg2, arg1)
			if not registerVal3 then
				registerVal3 = AlwaysFalse()
			else
			end
		end
		return true
	end

	registerVal15.condition = __FUNC_1908_
	registerVal12 = {registerVal13, registerVal14, registerVal15}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_19D2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_19D2_)
	local function __FUNC_1AEF_(arg0)
		arg0.Text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1AEF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

