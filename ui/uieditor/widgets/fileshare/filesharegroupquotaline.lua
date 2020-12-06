-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareGroupQuotaLine = registerVal1
function CoD.FileshareGroupQuotaLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FileshareGroupQuotaLine)
	registerVal2.id = "FileshareGroupQuotaLine"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 360.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 162.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 28.000000)
	registerVal3:setRGB(0.240000, 0.240000, 0.240000)
	registerVal2:addElement(registerVal3)
	registerVal2.CountBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 157.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 28.000000)
	registerVal4:setRGB(0.240000, 0.240000, 0.240000)
	registerVal2:addElement(registerVal4)
	registerVal2.NameBG = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 32.000000, 127.000000)
	registerVal5:setTopBottom(true, false, 4.500000, 23.500000)
	registerVal5:setTTF("fonts/default.ttf")
	local function __FUNC_1139_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "locName", true, __FUNC_1139_)
	registerVal2:addElement(registerVal5)
	registerVal2.GroupName = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 5.000000, 27.000000)
	registerVal6:setTopBottom(true, false, 3.000000, 25.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.GroupImage = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, true, -68.190000, -34.190000)
	registerVal7:setTopBottom(true, false, 2.500000, 24.500000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_11F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(FileshareSlotsTextColor(arg1, registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "slotsFull", true, __FUNC_11F2_)
	local function __FUNC_12B0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "slotsUsed", true, __FUNC_12B0_)
	registerVal2:addElement(registerVal7)
	registerVal2.TxtUsed = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(false, true, -34.190000, -28.190000)
	registerVal8:setTopBottom(true, false, 3.500000, 25.500000)
	registerVal8:setText(Engine.Localize("/"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.LblSlash = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, true, -27.190000, -1.190000)
	registerVal9:setTopBottom(true, false, 2.500000, 24.500000)
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_136A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "quota", true, __FUNC_136A_)
	registerVal2:addElement(registerVal9)
	registerVal2.TxtTotal = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, 166.010000, -61.990000)
	registerVal10:setTopBottom(true, false, 7.500000, 20.500000)
	registerVal10:setRGB(0.330000, 0.330000, 0.330000)
	registerVal2:addElement(registerVal10)
	registerVal2.BarBG = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, 166.010000, -61.990000)
	registerVal11:setTopBottom(true, false, 13.000000, 15.000000)
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal11:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1422_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "barColor", true, __FUNC_1422_)
	local function __FUNC_14B3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal11:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "fraction", true, __FUNC_14B3_)
	registerVal2:addElement(registerVal11)
	registerVal2.BarFraction = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 166.010000, 187.010000)
	registerVal12:setTopBottom(true, false, 3.500000, 24.500000)
	registerVal12:setRGB(1.000000, 0.000000, 0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_icon_error_overlays"))
	local function __FUNC_1608_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setAlpha(FileshareSlotsFullWarningIconAlpha(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "slotsFull", true, __FUNC_1608_)
	registerVal2:addElement(registerVal12)
	registerVal2.slotfullWarningImage0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, -0.190000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13:setRGB(0.000000, 0.000000, 0.000000)
	registerVal13:setAlpha(0.700000)
	registerVal2:addElement(registerVal13)
	registerVal2.Dimmer = registerVal13
	local function __FUNC_16D1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.GroupImage:linkToElementModel(registerVal2, "image", true, __FUNC_16D1_)
	local function __FUNC_1784_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setRGB(FileshareSlotsTextColor(arg1, registerVal1))
		end
	end

	registerVal2.LblSlash:linkToElementModel(registerVal2, "slotsFull", true, __FUNC_1784_)
	local function __FUNC_1844_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setRGB(FileshareSlotsTextColor(arg1, registerVal1))
		end
	end

	registerVal2.TxtTotal:linkToElementModel(registerVal2, "slotsFull", true, __FUNC_1844_)
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1904_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal11:completeAnimation()
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.Dimmer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1904_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_1A2A_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal7:completeAnimation()
		registerVal2.TxtUsed:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.TxtTotal:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal9, {})
		registerVal13:completeAnimation()
		registerVal2.Dimmer:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1A2A_
	registerVal14.DimArabic = registerVal15
	registerVal15 = {}
	local function __FUNC_1C74_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal13:completeAnimation()
		registerVal2.Dimmer:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1C74_
	registerVal14.Dim = registerVal15
	registerVal15 = {}
	local function __FUNC_1D72_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal7:completeAnimation()
		registerVal2.TxtUsed:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.TxtTotal:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.Dimmer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1D72_
	registerVal14.DefaultStateArabic = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "DimArabic"
	local function __FUNC_1FE4_(arg0, arg2, arg3)
		local registerVal3 = FileshareIsQuotaLineDim(registerVal2, arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_1FE4_
	local registerVal18 = {}
	registerVal18.stateName = "Dim"
	local function __FUNC_2076_(arg0, arg2, arg3)
		return FileshareIsQuotaLineDim(registerVal2, arg1)
	end

	registerVal18.condition = __FUNC_2076_
	local registerVal19 = {}
	registerVal19.stateName = "DefaultStateArabic"
	local function __FUNC_20D5_(arg0, arg1, arg2)
		return IsCurrentLanguageArabic()
	end

	registerVal19.condition = __FUNC_20D5_
	registerVal16 = {registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_212D_(arg0)
		arg0.GroupName:close()
		arg0.GroupImage:close()
		arg0.TxtUsed:close()
		arg0.LblSlash:close()
		arg0.TxtTotal:close()
		arg0.BarFraction:close()
		arg0.slotfullWarningImage0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_212D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

