-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D0_(arg0, arg1)
	local registerVal3 = CoD.FileshareUtility.GetRootModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "currentCategoryQuota")
end

local function __FUNC_2B4_(arg0, arg1)
	CoD.FileshareUtility.UpdateCurrentQuota(arg1)
	local function __FUNC_3D1_(arg0)
		CoD.FileshareUtility.UpdateCurrentQuota(arg1)
	end

	local registerVal2 = arg0:subscribeToGlobalModel(arg1, "FileshareRoot", "ready", __FUNC_3D1_)
	arg0.fileshareReadySubscription = registerVal2
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.FileshareSlotsAvailable = registerVal3
local function __FUNC_463_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1D0_ then
		__FUNC_1D0_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareSlotsAvailable)
	registerVal2.id = "FileshareSlotsAvailable"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 237.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 57.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal3:setRGB(1.000000, 0.220000, 0.220000)
	registerVal2:addElement(registerVal3)
	registerVal2.CountLowBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 57.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.CountBG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 57.000000, 237.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.TextBG = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 60.990000, 237.010000)
	registerVal6:setTopBottom(true, false, 3.000000, 27.000000)
	registerVal6:setTTF("fonts/default.ttf")
	local function __FUNC_ED9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(FileshareGetSlotString(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "FileshareRoot", "currentCategoryQuota", __FUNC_ED9_)
	registerVal2:addElement(registerVal6)
	registerVal2.LblSlotsAvailable = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 0.000000, 57.000000)
	registerVal7:setTopBottom(true, false, 3.000000, 27.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_FBA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "FileshareRoot", "currentCategoryQuota", __FUNC_FBA_)
	registerVal2:addElement(registerVal7)
	registerVal2.TxtSlots = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 290.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.WaitingBG = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 2.650000, 230.650000)
	registerVal9:setTopBottom(true, false, 3.500000, 27.500000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setText(Engine.Localize("MENU_FILESHARE_WAITING"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.LblWaiting = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1072_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.CountBG:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.LblSlotsAvailable:setLeftRight(true, false, 60.990000, 237.010000)
		registerVal2.LblSlotsAvailable:setTopBottom(true, false, 3.000000, 27.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.WaitingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LblWaiting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1072_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_12F6_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.CountBG:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.WaitingBG:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LblWaiting:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_12F6_
	registerVal10.Waiting = registerVal11
	registerVal11 = {}
	local function __FUNC_14A2_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.CountBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.LblSlotsAvailable:setLeftRight(true, false, 60.990000, 237.010000)
		registerVal2.LblSlotsAvailable:setTopBottom(true, false, 3.000000, 27.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.WaitingBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.LblWaiting:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_14A2_
	registerVal10.NoSlots = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Waiting"
	local function __FUNC_1721_(arg0, arg2, arg3)
		local registerVal3 = FileshareIsReady(arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_1721_
	local registerVal14 = {}
	registerVal14.stateName = "NoSlots"
	local function __FUNC_177A_(arg0, arg2, arg3)
		local registerVal3 = FileshareShowcaseSlotsAvailable(arg1)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_177A_
	registerVal12 = {registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "fileshareRoot.ready")
	local function __FUNC_17E1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.ready"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal12, __FUNC_17E1_)
	local function __FUNC_1909_(arg0)
		arg0.LblSlotsAvailable:close()
		arg0.TxtSlots:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1909_)
	if __FUNC_2B4_ then
		__FUNC_2B4_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FileshareSlotsAvailable.new = __FUNC_463_
