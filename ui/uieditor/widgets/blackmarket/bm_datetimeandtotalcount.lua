-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_DateTimeAndTotalCount = registerVal1
function CoD.BM_DateTimeAndTotalCount.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_DateTimeAndTotalCount)
	registerVal2.id = "BM_DateTimeAndTotalCount"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 247.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 43.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -32.500000, 279.500000)
	registerVal3:setTopBottom(true, false, -2.500000, 45.500000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_common_timedate_backing"))
	registerVal2:addElement(registerVal3)
	registerVal2.backing = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -122.000000, 122.000000)
	registerVal4:setTopBottom(true, false, 5.000000, 22.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setLetterSpacing(0.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_919_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "dateTime", true, __FUNC_919_)
	registerVal2:addElement(registerVal4)
	registerVal2.dateTimeReceived = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -122.500000, 122.500000)
	registerVal5:setTopBottom(true, false, 20.000000, 38.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_9D2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "duplicateText", true, __FUNC_9D2_)
	registerVal2:addElement(registerVal5)
	registerVal2.TotalCount = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A8A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.dateTimeReceived:setLeftRight(false, false, -122.000000, 122.000000)
		registerVal2.dateTimeReceived:setTopBottom(true, false, 5.000000, 22.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalCount:setLeftRight(false, false, -122.500000, 122.500000)
		registerVal2.TotalCount:setTopBottom(true, false, 20.000000, 38.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A8A_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_C8D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.dateTimeReceived:setLeftRight(false, false, -122.000000, 122.000000)
		registerVal2.dateTimeReceived:setTopBottom(true, false, -2.000000, 15.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TotalCount:setLeftRight(false, false, -122.500000, 122.500000)
		registerVal2.TotalCount:setTopBottom(true, false, 12.000000, 30.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C8D_
	registerVal6.Condensed = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_E91_(arg0)
		arg0.dateTimeReceived:close()
		arg0.TotalCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E91_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

