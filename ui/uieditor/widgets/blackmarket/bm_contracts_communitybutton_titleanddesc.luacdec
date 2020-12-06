-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_CommunityButton_TitleAndDesc = registerVal1
function CoD.BM_Contracts_CommunityButton_TitleAndDesc.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_CommunityButton_TitleAndDesc)
	registerVal2.id = "BM_Contracts_CommunityButton_TitleAndDesc"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 234.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 233.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 18.500000)
	registerVal3:setRGB(0.460000, 0.800000, 0.750000)
	registerVal3:setText(LocalizeToUpperString("CONTRACT_COMMUNITY_CONTRACT_ZMHD_TITLE"))
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal3:setLetterSpacing(-0.500000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_98E_(arg0, arg1)
		UpdateWidgetHeightToMultilineText(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_98E_)
	registerVal2:addElement(registerVal3)
	registerVal2.SpecialContractName = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 233.500000)
	registerVal4:setTopBottom(false, true, 1.000000, 19.000000)
	registerVal4:setRGB(0.880000, 0.880000, 0.880000)
	registerVal4:setText("")
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.SpecialContractDesc = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9FC_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_9FC_
	local function __FUNC_A5E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.GainFocus = __FUNC_A5E_
	local function __FUNC_ABE_()
		registerVal2:setupElementClipCounter(0.000000)
		registerVal2.nextClip = "Focus"
	end

	registerVal6.Focus = __FUNC_ABE_
	local function __FUNC_B47_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.LoseFocus = __FUNC_B47_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_BA6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_BA6_
	local function __FUNC_C06_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.GainFocus = __FUNC_C06_
	local function __FUNC_C66_()
		registerVal2:setupElementClipCounter(0.000000)
		registerVal2.nextClip = "Focus"
	end

	registerVal6.Focus = __FUNC_C66_
	local function __FUNC_CEF_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.LoseFocus = __FUNC_CEF_
	registerVal5.Complete = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Complete"
	local function __FUNC_D4E_(arg0, arg1, arg2)
		return IsThermometerProgressEqualTo(1.000000)
	end

	registerVal8.condition = __FUNC_D4E_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

