-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.AllocationSpentWidget")
require("ui.uieditor.widgets.CAC.UnlockTokensWidget")
local function __FUNC_29A_(arg0, arg1)
	local function __FUNC_31A_(arg2)
		UpdateAllocationBar(arg0, arg0.allocationSpent, arg1)
	end

	arg0:subscribeToElementModel(arg0, "allocationSpent", __FUNC_31A_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ClassAllocation = registerVal2
local function __FUNC_39A_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ClassAllocation)
	registerVal2.id = "ClassAllocation"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 35.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, 0.000000, -297.000000)
	registerVal3:setTopBottom(true, false, 37.500000, -4.500000)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.TitleNumBrdr = registerVal3
	local registerVal4 = CoD.AllocationSpentWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -291.000000, 36.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal4.AllocationBar10:setAlpha(0.000000)
	registerVal4.AllocationBar11:setAlpha(0.000000)
	registerVal4.AllocationBar12:setAlpha(0.000000)
	registerVal4.AllocationBar13:setAlpha(0.000000)
	registerVal4.AllocationBar14:setAlpha(0.000000)
	registerVal4.AllocationBar15:setAlpha(0.000000)
	registerVal4.AllocationBar16:setAlpha(0.000000)
	local function __FUNC_11CB_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_11CB_)
	local function __FUNC_121A_(arg0, arg2)
		UpdateAllocationBar(registerVal2, arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("update_class", __FUNC_121A_)
	registerVal2:addElement(registerVal4)
	registerVal2.allocationSpent = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, true, -72.000000, -46.000000)
	registerVal5:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal5:setRGB(0.580000, 0.640000, 0.650000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setText(Engine.Localize("/"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.TextBoxSlash = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, true, -45.000000, -6.000000)
	registerVal6:setTopBottom(true, false, 3.000000, 35.000000)
	registerVal6:setRGB(0.840000, 0.860000, 0.870000)
	registerVal6:setText(Engine.Localize(GetMaxAllocationAmount(arg1, "10")))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.totalCapacityLabel = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, true, -109.000000, -61.000000)
	registerVal7:setTopBottom(true, false, 3.000000, 35.000000)
	registerVal7:setRGB(0.840000, 0.860000, 0.870000)
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_12B6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "allocationSpent", true, __FUNC_12B6_)
	registerVal2:addElement(registerVal7)
	registerVal2.capacityValueLabel = registerVal7
	local registerVal8 = CoD.UnlockTokensWidget.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -543.000000, -304.000000)
	registerVal8:setTopBottom(true, false, -1.000000, 43.000000)
	registerVal8.tokenLabel:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.UnlockTokensWidget = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_136E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.TitleNumBrdr:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.allocationSpent:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextBoxSlash:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.totalCapacityLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.capacityValueLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockTokensWidget:setLeftRight(false, true, -239.000000, 0.000000)
		registerVal2.UnlockTokensWidget:setTopBottom(true, false, -1.000000, 43.000000)
		registerVal2.UnlockTokensWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_136E_
	registerVal9.NoAllocationBar = registerVal10
	registerVal10 = {}
	local function __FUNC_16D7_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.TitleNumBrdr:setLeftRight(false, true, 473.000000, -297.000000)
		registerVal2.TitleNumBrdr:setTopBottom(true, false, 37.500000, -4.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.AllocationBar10:completeAnimation()
		registerVal4.AllocationBar11:completeAnimation()
		registerVal4.AllocationBar12:completeAnimation()
		registerVal4.AllocationBar13:completeAnimation()
		registerVal4.AllocationBar14:completeAnimation()
		registerVal4.AllocationBar15:completeAnimation()
		registerVal4.AllocationBar16:completeAnimation()
		registerVal2.allocationSpent:setLeftRight(false, true, -291.000000, 36.000000)
		registerVal2.allocationSpent:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.allocationSpent.AllocationBar10:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar11:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar12:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar13:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar14:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar15:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar16:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockTokensWidget:setLeftRight(false, true, -543.000000, -304.000000)
		registerVal2.UnlockTokensWidget:setTopBottom(true, false, -1.000000, 43.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_16D7_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1C08_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.TitleNumBrdr:setLeftRight(false, true, 340.000000, -430.000000)
		registerVal2.TitleNumBrdr:setTopBottom(true, false, 37.500000, -4.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.AllocationBar10:completeAnimation()
		registerVal4.AllocationBar11:completeAnimation()
		registerVal4.AllocationBar12:completeAnimation()
		registerVal4.AllocationBar13:completeAnimation()
		registerVal4.AllocationBar14:completeAnimation()
		registerVal4.AllocationBar15:completeAnimation()
		registerVal4.AllocationBar16:completeAnimation()
		registerVal2.allocationSpent:setLeftRight(false, true, -424.000000, -97.000000)
		registerVal2.allocationSpent:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.allocationSpent.AllocationBar10:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar11:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar12:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar13:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar14:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar15:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar16:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockTokensWidget:setLeftRight(false, true, -644.000000, -454.000000)
		registerVal2.UnlockTokensWidget:setTopBottom(true, false, -1.000000, 44.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1C08_
	registerVal9.Alloc17 = registerVal10
	registerVal10 = {}
	local function __FUNC_2137_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.TitleNumBrdr:setLeftRight(false, true, 359.000000, -411.000000)
		registerVal2.TitleNumBrdr:setTopBottom(true, false, 37.500000, -4.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.AllocationBar10:completeAnimation()
		registerVal4.AllocationBar11:completeAnimation()
		registerVal4.AllocationBar12:completeAnimation()
		registerVal4.AllocationBar13:completeAnimation()
		registerVal4.AllocationBar14:completeAnimation()
		registerVal4.AllocationBar15:completeAnimation()
		registerVal4.AllocationBar16:completeAnimation()
		registerVal2.allocationSpent:setLeftRight(false, true, -405.000000, -78.000000)
		registerVal2.allocationSpent:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.allocationSpent.AllocationBar10:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar11:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar12:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar13:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar14:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar15:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar16:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockTokensWidget:setLeftRight(false, true, -625.000000, -435.000000)
		registerVal2.UnlockTokensWidget:setTopBottom(true, false, -1.000000, 44.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_2137_
	registerVal9.Alloc16 = registerVal10
	registerVal10 = {}
	local function __FUNC_2668_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.TitleNumBrdr:setLeftRight(false, true, 378.000000, -392.000000)
		registerVal2.TitleNumBrdr:setTopBottom(true, false, 37.500000, -4.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.AllocationBar10:completeAnimation()
		registerVal4.AllocationBar11:completeAnimation()
		registerVal4.AllocationBar12:completeAnimation()
		registerVal4.AllocationBar13:completeAnimation()
		registerVal4.AllocationBar14:completeAnimation()
		registerVal4.AllocationBar15:completeAnimation()
		registerVal4.AllocationBar16:completeAnimation()
		registerVal2.allocationSpent:setLeftRight(false, true, -386.000000, -59.000000)
		registerVal2.allocationSpent:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.allocationSpent.AllocationBar10:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar11:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar12:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar13:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar14:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar15:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar16:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockTokensWidget:setLeftRight(false, true, -606.000000, -416.000000)
		registerVal2.UnlockTokensWidget:setTopBottom(true, false, -1.000000, 44.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_2668_
	registerVal9.Alloc15 = registerVal10
	registerVal10 = {}
	local function __FUNC_2B9C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.TitleNumBrdr:setLeftRight(false, true, 397.000000, -373.000000)
		registerVal2.TitleNumBrdr:setTopBottom(true, false, 37.500000, -4.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.AllocationBar10:completeAnimation()
		registerVal4.AllocationBar11:completeAnimation()
		registerVal4.AllocationBar12:completeAnimation()
		registerVal4.AllocationBar13:completeAnimation()
		registerVal4.AllocationBar14:completeAnimation()
		registerVal4.AllocationBar15:completeAnimation()
		registerVal4.AllocationBar16:completeAnimation()
		registerVal2.allocationSpent:setLeftRight(false, true, -367.000000, -40.000000)
		registerVal2.allocationSpent:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.allocationSpent.AllocationBar10:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar11:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar12:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar13:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar14:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar15:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar16:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockTokensWidget:setLeftRight(false, true, -587.000000, -397.000000)
		registerVal2.UnlockTokensWidget:setTopBottom(true, false, -1.000000, 44.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_2B9C_
	registerVal9.Alloc14 = registerVal10
	registerVal10 = {}
	local function __FUNC_30D0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.TitleNumBrdr:setLeftRight(false, true, 416.000000, -354.000000)
		registerVal2.TitleNumBrdr:setTopBottom(true, false, 37.500000, -4.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.AllocationBar10:completeAnimation()
		registerVal4.AllocationBar11:completeAnimation()
		registerVal4.AllocationBar12:completeAnimation()
		registerVal4.AllocationBar13:completeAnimation()
		registerVal4.AllocationBar14:completeAnimation()
		registerVal4.AllocationBar15:completeAnimation()
		registerVal4.AllocationBar16:completeAnimation()
		registerVal2.allocationSpent:setLeftRight(false, true, -348.000000, -21.000000)
		registerVal2.allocationSpent:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.allocationSpent.AllocationBar10:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar11:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar12:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar13:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar14:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar15:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar16:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockTokensWidget:setLeftRight(false, true, -568.000000, -378.000000)
		registerVal2.UnlockTokensWidget:setTopBottom(true, false, -1.000000, 44.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_30D0_
	registerVal9.Alloc13 = registerVal10
	registerVal10 = {}
	local function __FUNC_3604_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.TitleNumBrdr:setLeftRight(false, true, 435.000000, -335.000000)
		registerVal2.TitleNumBrdr:setTopBottom(true, false, 37.500000, -4.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.AllocationBar10:completeAnimation()
		registerVal4.AllocationBar11:completeAnimation()
		registerVal4.AllocationBar12:completeAnimation()
		registerVal4.AllocationBar13:completeAnimation()
		registerVal4.AllocationBar14:completeAnimation()
		registerVal4.AllocationBar15:completeAnimation()
		registerVal4.AllocationBar16:completeAnimation()
		registerVal2.allocationSpent:setLeftRight(false, true, -329.000000, -2.000000)
		registerVal2.allocationSpent:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.allocationSpent.AllocationBar10:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar11:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar12:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar13:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar14:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar15:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar16:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockTokensWidget:setLeftRight(false, true, -549.000000, -359.000000)
		registerVal2.UnlockTokensWidget:setTopBottom(true, false, -1.000000, 44.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_3604_
	registerVal9.Alloc12 = registerVal10
	registerVal10 = {}
	local function __FUNC_3B38_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.TitleNumBrdr:setLeftRight(false, true, 454.000000, -316.000000)
		registerVal2.TitleNumBrdr:setTopBottom(true, false, 37.500000, -4.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.AllocationBar10:completeAnimation()
		registerVal4.AllocationBar11:completeAnimation()
		registerVal4.AllocationBar12:completeAnimation()
		registerVal4.AllocationBar13:completeAnimation()
		registerVal4.AllocationBar14:completeAnimation()
		registerVal4.AllocationBar15:completeAnimation()
		registerVal4.AllocationBar16:completeAnimation()
		registerVal2.allocationSpent:setLeftRight(false, true, -310.000000, 17.000000)
		registerVal2.allocationSpent:setTopBottom(true, false, 1.000000, 33.000000)
		registerVal2.allocationSpent.AllocationBar10:setAlpha(1.000000)
		registerVal2.allocationSpent.AllocationBar11:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar12:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar13:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar14:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar15:setAlpha(0.000000)
		registerVal2.allocationSpent.AllocationBar16:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.UnlockTokensWidget:setLeftRight(false, true, -530.000000, -340.000000)
		registerVal2.UnlockTokensWidget:setTopBottom(true, false, -1.000000, 44.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_3B38_
	registerVal9.Alloc11 = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "NoAllocationBar"
	local function __FUNC_406C_(arg0, arg1, arg2)
		return IsCampaign()
	end

	registerVal12.condition = __FUNC_406C_
	local registerVal13 = {}
	registerVal13.stateName = "Alloc17"
	local function __FUNC_40B8_(arg0, arg2, arg3)
		return IsClassAllocationInState(arg1, 17.000000)
	end

	registerVal13.condition = __FUNC_40B8_
	local registerVal14 = {}
	registerVal14.stateName = "Alloc16"
	local function __FUNC_411F_(arg0, arg2, arg3)
		return IsClassAllocationInState(arg1, 16.000000)
	end

	registerVal14.condition = __FUNC_411F_
	local registerVal15 = {}
	registerVal15.stateName = "Alloc15"
	local function __FUNC_4183_(arg0, arg2, arg3)
		return IsClassAllocationInState(arg1, 15.000000)
	end

	registerVal15.condition = __FUNC_4183_
	local registerVal16 = {}
	registerVal16.stateName = "Alloc14"
	local function __FUNC_41E7_(arg0, arg2, arg3)
		return IsClassAllocationInState(arg1, 14.000000)
	end

	registerVal16.condition = __FUNC_41E7_
	local registerVal17 = {}
	registerVal17.stateName = "Alloc13"
	local function __FUNC_424B_(arg0, arg2, arg3)
		return IsClassAllocationInState(arg1, 13.000000)
	end

	registerVal17.condition = __FUNC_424B_
	local registerVal18 = {}
	registerVal18.stateName = "Alloc12"
	local function __FUNC_42AF_(arg0, arg2, arg3)
		return IsClassAllocationInState(arg1, 12.000000)
	end

	registerVal18.condition = __FUNC_42AF_
	local registerVal19 = {}
	registerVal19.stateName = "Alloc11"
	local function __FUNC_4313_(arg0, arg2, arg3)
		return IsClassAllocationInState(arg1, 11.000000)
	end

	registerVal19.condition = __FUNC_4313_
	registerVal11 = {registerVal12, registerVal13, registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_4377_(arg0)
		arg0.TitleNumBrdr:close()
		arg0.allocationSpent:close()
		arg0.UnlockTokensWidget:close()
		arg0.capacityValueLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4377_)
	if __FUNC_29A_ then
		__FUNC_29A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ClassAllocation.new = __FUNC_39A_
